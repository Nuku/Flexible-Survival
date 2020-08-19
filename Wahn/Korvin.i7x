Version 3 of Korvin by Wahn begins here.
[ Original written by Stripes                                             ]
[ Version 2.1 - Korvin training/collaring                                 ]
[ Version 3 - Expanded by Wahn & moved                                    ]

[ GSD_pet                                                                 ]
[   0 = not met                                                           ]
[   1 = met him                                                           ]
[   2 = player lost                                                       ]
[   3 = lost again                                                        ]
[   4 = player locked                                                     ]
[  10 = player won                                                        ]
[  11 = won again                                                         ]
[  12 = recruited                                                         ]
[  13 = sexed up                                                          ]
[  14 = sexed up again                                                    ]
[  15 = pending collar                                                    ]
[  20-59 - subby                                                          ]
[  60-99 - confident                                                      ]
[ 100 = banished                                                          ]

[ Memory Traits                                                           ]
[ Dominant_Roleplay_Fuck - Korvin fucked the player in dom roleplay       ]
[ Dominant_Roleplay_Oral - Korvin face-fucked the player in dom roleplay  ]

[ Key Character points                                                    ]
[ Family man/dog, desires offspring with the player (if female/mpreg)     ]
[ Has lots of offspring in the city                                       ]
[ Moderate Pregnancy fetish                                               ]
[ Job before transformation: Mechanic                                     ]


"Adds character specific info for Korvin the GSD pet."

a postimport rule: [bugfixing code]
	if gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 and gsd_pet < 15:
		now gsd_pet is 15;


the linkaction of Korvin is "[korvinlinkaction]".

to say korvinlinkaction:
	say "Possible Actions: [link]talk[as]talk Korvin[end link], [link]smell[as]smell Korvin[end link], [link]fuck[as]fuck Korvin[end link][line break]";

Section 0 - GShep Pet

Table of GameCharacterIDs (continued)
object	name
gshep	"gshep"

gshep is a pet. gshep is a part of the player.
understand "Korvin" as gshep.
NPCObject of gshep is Korvin.
printed name of gshep is "Korvin".
The description of gshep is "[Korvindesc]".
The conversation of gshep is { "Bark!" }.
The weapon damage of gshep is 15.
The level of gshep is 1.
The Dexterity of gshep is 10.
The summondesc of gshep is "[SummonKorvin]".
The dismissdesc of gshep is "[DismissKorvin]".
The assault of gshep is "[gshep_attack]".
the scent of the gshep is "Korvin has a masculine scent of canine arousal.".
The fuckscene of gshep is "[korvinsexmenu]".
GShepLastScene is a number that varies. GShepLastScene is usually 255.
ScaleValue of gshep is 3. [human sized]
Cock Count of gshep is 1.
Cock Length of gshep is 9.
Ball Size of gshep is 3.
Ball Count of gshep is 2.
Cunt Count of gshep is 0.
Cunt Depth of gshep is 9.
Cunt Tightness of gshep is 2.
Nipple Count of gshep is 2. [2 nipples]
Breast Size of gshep is 0.
[Basic Interaction states as of game start]
PlayerMet of gshep is false.
PlayerRomanced of gshep is false.
PlayerFriended of gshep is false.
PlayerControlled of gshep is false.
PlayerFucked of gshep is false.
OralVirgin of gshep is false.
Virgin of gshep is true.
AnalVirgin of gshep is false.
PenileVirgin of gshep is false.
SexuallyExperienced of gshep is true.
MainInfection of gshep is "German Shepherd Male".


to say SummonKorvin:
	now Korvin is nowhere;
	if Player is in Makeshift Rec Room and Korvin is in Makeshift Rec Room: [summoning while standing next to him]
		say "     Calling for Korvin, the German shepherd joins you at your side. He seems excited at the prospect of busting some heads.";
	else: [regular summoning]
		say "     Calling for Korvin, the German shepherd joins you at your side. He seems excited at the prospect of busting some heads.";

to say DismissKorvin:
	move Korvin to Makeshift Rec Room;
	if Player is not in Makeshift Rec Room: [regular dismiss]
		say "     With a curt nod, Korvin begins the run back to the abbey.";
	else: [dismissing him in the abbey]
		say "     With a shrug of his shoulders, Korvin goes back to doing whatever it is he does when passing the time.";

gshep_fights is a number that varies.
gshep_postfight is a number that varies. [post-fight argument]
gshep_sexscene is a number that varies. [sex-role argument]
gshep_bed_scene is a number that varies. [discipline argument]
gshep_inactive is a number that varies. [inactivity argument]

Table of GameCharacterIDs (continued)
object	name
Korvin	"Korvin"

Korvin is a man.
ScaleValue of Korvin is 3. [human sized]
Body Weight of Korvin is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Korvin is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Korvin is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Korvin is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Korvin is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Korvin is 5. [length in inches]
Breast Size of Korvin is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Korvin is 2. [count of nipples]
Asshole Depth of Korvin is 8. [inches deep for anal fucking]
Asshole Tightness of Korvin is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Korvin is 1. [number of cocks]
Cock Girth of Korvin is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Korvin is 9. [length in inches]
Ball Count of Korvin is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Korvin is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Korvin is 0. [number of cunts]
Cunt Depth of Korvin is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Korvin is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Korvin is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Korvin is false.
PlayerRomanced of Korvin is false.
PlayerFriended of Korvin is false.
PlayerControlled of Korvin is false.
PlayerFucked of Korvin is false.
OralVirgin of Korvin is false.
Virgin of Korvin is true.
AnalVirgin of Korvin is false.
PenileVirgin of Korvin is false.
SexuallyExperienced of Korvin is true.
TwistedCapacity of Korvin is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Korvin is false. [steriles can't knock people up]
MainInfection of Korvin is "German Shepherd Male".
The description of Korvin is "[KorvinDesc]".
The conversation of Korvin is { "Woof." }.


instead of fucking Korvin:
	say "[korvinsexmenu]";

instead of conversing the Korvin:
	if Player is in Makeshift Rec Room and Korvin is in Makeshift Rec Room:
		say "[KorvinTalk]";
	else if companion of Player is gshep:
		say "[KorvinTalk]";
	else:
		say "     Korvin isn't here.";

instead of conversing gshep:
	if gshep is not tamed:
		say "     Who?";
	else:
		if Player is in Makeshift Rec Room and Korvin is in Makeshift Rec Room:
			say "[KorvinTalk]";
		else if companion of Player is gshep:
			say "[KorvinTalk]";
		else:
			say "     Korvin isn't here.";

to say Korvindesc:
	if debugactive is 1:
		say "DEBUG - Korvin | LVL: [level of gshep], XP: [XP of gshep], DEX: [dexterity of gshep], DMG: [weapon damage of gshep].";
		say "DEBUG - Korvin | gsd_pet: [gsd_pet], lastfuck: [lastfuck of gshep], lastscene: [GShepLastScene].";
		say "DEBUG - Korvin | Scenes | Post-Fight: [gshep_postfight], Sex: [gshep_sexscene], Bed: [gshep_bed_scene], Inactive: [gshep_inactive].";
	if gsd_pet < 20:
		say "     Korvin, the anthro German shepherd you've trained to be your dog, stands nearby with his arms crossed and a stern look on his canine face. He's got the typical brown and black coat of the breed. He's buff and well-built, though not overly so. His most distinguishing feature is the ragged scar that runs along his cheek and muzzle. Such marks are rare, even with the amount of fighting between mutants in the city. He's also nude, wearing nothing save for the rope leash you've put around his neck[if gsd_pet is 15]. You should really look for a [bold type]pet shop[roman type] to find a replacement for that[else if gsd_pet is 16]. You recall that you've got a replacement for that. Go have a [bold type]talk[roman type] to him about it[end if]. Despite being tamed, his mind is definitely more corrupted than human, clearly only retaining shreds of his past life. Having put him in his place, he's come to accept you as his master and will follow your orders, even if does retain quite an independent streak.";
	else if gsd_pet >= 20 and gsd_pet < 60:	[Subby Korvin]
		if graphics is true:
			project the figure of Korvin_pinkcollar_icon;
		say "     Korvin, the anthro German shepherd you've trained to be your dog, stands nearby with his arms crossed and a stern look on his canine face. He's got the typical brown and black coat of the breed. He's buff and well-built, though not overly so. His most distinguishing feature is the ragged scar that runs along his cheek and muzzle. Such marks are rare, even with the amount of fighting between mutants in the city. He's also nude, wearing nothing save for the cute pink collar you've embarrassingly given him. It is a reminder to him that he may look like a big, bad dog, but he's to be your subby puppy pet as well.";
		say "     Despite being tamed, his mind is definitely more corrupted than human, clearly only retaining shreds of his past life. You've been able to train some of his bad habits out of him, making him obedient and sexually submissive to you. He still retains that aggressive streak toward others, but he accepts you as his alpha and master and will follow your orders like the trained dog he's become.";
	else:	[Confident Korvin, gsd_pet >= 60]
		if graphics is true:
			project the figure of Korvin_blackcollar_icon;
		say "     Korvin, the anthro German shepherd you've trained to be your dog, stands nearby with his arms crossed and a stern look on his canine face. He's got the typical brown and black coat of the breed. He's buff and well-built, though not overly so. His most distinguishing feature is the ragged scar that runs along his cheek and muzzle. Such marks are rare, even with the amount of fighting between mutants in the city. He's also nude, wearing nothing save for the black studded collar you've given him, adding to his air of menace.";
		say "     Despite being tamed, his mind is definitely more corrupted than human, clearly only retaining shreds of his past life. You've been able to help him better cope with that, letting him recover a little self-control. He still retains some of that independent streak of his, but he accepts you as his friend and master and will follow your orders fairly loyally.";

to say gshep_attack:
	choose row MonsterID from the Table of Random Critters;
	say "[one of]Your dog[or]Korvin[or]Your German shepherd[at random] [one of]growls and swipes at your enemy with an open paw-like hand, leaving scratching with his dull claws[or]clamps down with his teeth on your foe with a growl[or]charges at your foe, bashing into [ghim][or]lands a fast punch on the [Name entry][or]barks and growls at your opponent while taking swings at them[at random].";

Section 1 - Dialog

to say KorvinTalk:
	if gsd_pet < 16:
		say "     [one of]'What do you want?'[or]The muzzle-scarred G-Shep scratches himself behind the ear with a foot. Noticing you watching him, he stops and tries to look more dignified.[or]'Where to now, oh wise and powerful Alpha?' he asks, rolling his eyes. A glare from you gets him to stop and hang his head.[or]'I can't wait for our next scrap, [K_Boss]. It'll feel good to smack some fools around with you.'[or]The G-Shep consents to let you pet and scritch him, he grumbles a little, but you can tell from the way his tail wags that he enjoys the attention from his alpha.[or]'You're my alpha now, so I'll follow you.'[at random]";
	else if gsd_pet is 16:
		if Player is neuter:
			say "     You consider giving Korvin his new collar, but without a gender of your own, you won't really be able to [']enjoy['] the moment.";
		else:
			say "[gsd_collar_scene]";
	else if gsd_pet >= 20 and gsd_pet < 60: [subby Korvin]
		if graphics is true:
			project the figure of Korvin_pinkcollar_face_icon;
		say "     [one of][if lastfuck of gshep - turns < 6]'What do you need, [K_Boss]?' he asks obediently[else]'Did you need anything of me, [K_Boss]?' he asks with a hint of longing in his tone[end if].[or]You give Korvin some scritching that turn into a tummy rub before ending in some playful groping of your subby puppy.[or]The muzzle-scarred G-Shep scratches himself behind the ear with a foot. Noticing you watching him, he stops and tries to look more dignified.[or]'Where to now, Alpha?' he asks, cracking his knuckles.[or]'I can't wait for our next scrap, [K_Boss]. It'll feel good to smack some fools around for you.'[or]The G-Shep pants happily as you pet and scritch him. From the way his tail wags, you can tell that he enjoys the attention from his alpha.[or]'You're my alpha now, so I'll follow you.'[or]'May we go out to beat up some mutants to... uhh... keep them from making trouble around here?'[or]'How can I help you, boss?'[or]'Just point me at someone and I'll make sure they regret giving you any trouble, my alpha.'[or]'It's not so bad being beta, long as it's to you.'[or]'I could sure go for a good fight[if lastfuck of gshep - turns >= 6]... or fuck,' he adds, posing as to offer himself to you.[else].'[end if][or]Taking his squeaky toy, you throw the pink bone for him to fetch a few times. It's amusing to watch the big, buff canine chase after it, much to his embarrassment and enjoyment.[at random]";
	else: [confident Korvin, gsd_pet >= 60]
		if Resolution of Trucker Bar is 3 and "KorvinPast_Convinced" is not listed in Traits of Korvin: [the player talked Korvin into staying with them]
			say "     As you approach Korvin in order to talk with him, the German shepherd suddenly looks at you with an intense expression on his face. 'Listen, [K_Boss]. I wanted to talk to you about what happened when we went to track down Eddie's place. Going through that picture album with her was... brutal, but I still felt like I owed it to Eddie, Wyatt, them both, them, to try to make it work. Damn, some of those pics just made me [italic type]itch[roman type] in my mind, with no chance to scratch it because I just couldn't remember. And yet, I was really fucking close to go in there with her. So... tempting, to be someone [italic type]real[roman type].' He blows out his breath, scratching the back of his neck. 'But you were right. That idea was doomed to fail. I'd have joined her, tried, but at some point she'd have learned that she invited a street dog inside. Most likely when I pinned her down to fuck her like any other random bitch.'";
			say "     Reaching out to put a paw-hand on your shoulder, Korvin squeezes it and continues, 'So, thanks for talking sense into me. And helping me BE me. Damn, while I was out there, feral in all but name, I didn't have a name. No one cared, including me. Eddie was already gone, but you MADE me Korvin.' Reaching up to touch his collar, the German shepherd looks you in the eyes, then leans in and licks you affectionately, his tongue brushing over your jaw, cheek and the side of your neck. He continues to do that for a few heartbeats, before pulling back and snorting in amusement about himself. 'Enough of that soppy stuff, eh? How about we make trouble somewhere instead?'";
			LineBreak;
			say "     [bold type]With his new confidence to guide him, and trust in you absolute, Korvin will now deal more damage in combat. His attack damage has increased by 3![roman type][line break]";
			increase weapon damage of gshep by 3;
			add "KorvinPast_Convinced" to Traits of Korvin;
		else if Resolution of Trucker Bar is 2 and "KorvinPast_OwnChoice" is not listed in Traits of Korvin: [the player let Korvin make the decision himself]
			say "     As you approach Korvin in order to talk with him, the German shepherd suddenly looks at you with an intense expression on his face. 'Listen, [K_Boss]. I wanted to talk to you about what happened when we went to track down Eddie's place. Going through that picture album with her was... brutal, but I still felt like I owed it to Eddie, Wyatt, them both, to try to make it work. Damn, some of those pics just made me [italic type]itch[roman type] in my mind, with no chance to scratch it because I just couldn't remember. And yet, I was really fucking close to go in there with her. So... tempting, to be someone [italic type]real[roman type].' He blows out his breath, scratching the back of his neck. 'But no, that idea was doomed to fail. I'd have joined her, tried, but at some point she'd have learned that she invited a street dog inside. Most likely when I pinned her down to fuck her like any other random bitch.'";
			say "     Reaching out to put a paw-hand on your shoulder, Korvin squeezes it and continues, 'So, thanks for helping me BE me. Damn, while I was out there, feral in all but name, I didn't have a name. No one cared, including me. Eddie was already gone, but you MADE me Korvin.' Reaching up to touch his collar, the German shepherd looks you in the eyes, then leans in and licks you affectionately, his tongue brushing over your jaw, cheek and the side of your neck. He continues to do that for a few heartbeats, ";
			if Player is female or Player is mpreg_ok:
				say "then leans his head against the crook of your neck, holding on to you for a little while. With him continuing this close contact between the two of you, there is a feel of something... more being offered, without him just outright saying anything, or pushing it on you. [bold type]Something to think about later, maybe. You gotta let the idea settle and see if it sprouts.[roman type][line break]";
				add "KorvinPast_Something_More" to Traits of Korvin;
			else:
				say "before pulling back and snorting in amusement about himself. 'Enough of that soppy stuff, eh? How about we make trouble somewhere instead?'";
			LineBreak;
			say "     [bold type]With his new confidence to guide him, and trust in you absolute, Korvin will now deal more damage in combat. His attack damage has increased by 3![roman type][line break]";
			increase weapon damage of gshep by 3;
			add "KorvinPast_OwnChoice" to Traits of Korvin;
		else:
			say "     [bold type]What exactly do you want to talk about with Korvin?[roman type][line break]";
			say "[conf_Korvin_talkmenu]";

to say K_Boss:
	say "[one of]boss[or]alpha[or][master][at random]";

to say conf_Korvin_talkmenu:
	let TalkDone be false;
	project the figure of Korvin_blackcollar_face_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a little";
	now sortorder entry is 1;
	now description entry is "Talk about nothing in particular";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up his muzzle scar";
	now sortorder entry is 2;
	now description entry is "Ask where he got the scar";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up his transformation";
	now sortorder entry is 3;
	now description entry is "Ask him how he became a German shepherd";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up your relationship";
	now sortorder entry is 4;
	now description entry is "Talk about how things stand, between him and you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up his sexual preferences";
	now sortorder entry is 5;
	now description entry is "Talk about what gets him off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up the situation in the city as a whole";
	now sortorder entry is 6;
	now description entry is "Talk about how he sees things right now";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Wonder about what you should do next";
	now sortorder entry is 7;
	now description entry is "Talk about things to do";
	[
	if Intelligence of Carl is 54: [Korvin invited Carl to jump some passersby, and they had a moderate falling out]
		choose a blank row in table of fucking options;
		now title entry is "Bring up Carl";
		now sortorder entry is 20;
		now description entry is "Talk with him about his falling-out with the soldier";
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
				if nam is "Just chat a little":
					say "[conf_Korvin_Talk01]";
				else if nam is "Bring up his muzzle scar":
					say "[conf_Korvin_Talk02]";
				else if nam is "Bring up his transformation":
					say "[conf_Korvin_Talk03]";
				else if nam is "Bring up your relationship":
					say "[conf_Korvin_Talk04]";
				else if nam is "Bring up his sexual preferences":
					say "[conf_Korvin_Talk05]";
				else if nam is "Bring up the situation in the city as a whole":
					say "[conf_Korvin_Talk06]";
				else if nam is "Wonder about what you should do next":
					say "[conf_Korvin_Talk07]";
				[
				else if nam is "Bring up Carl":
					say "[conf_Korvin_Talk_CarlDisagreement]";
				]
				if TalkDone is false: [didn't to any option that ends the conversation]
					say "     [bold type]What else do you want to talk about with Korvin?[roman type][line break]";
					say "[conf_Korvin_talkmenu]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the German shepherd, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say conf_Korvin_Talk01: [unspecific chatterbox]
	say "     [one of]'What do you need, [K_Boss]?'[or]The muzzle-scarred G-Shep scratches himself behind the ear with a foot. Noticing you watching him, he stops and tries to look more dignified.[or]'Where to now, Alpha?' he asks, cracking his knuckles.[or]'I can't wait for our next scrap, [K_Boss]. It'll feel good to smack some fools around with you.'[or]The G-Shep consents to let you pet and scritch him, he grumbles a little, but you can tell from the way his tail wags that he enjoys the attention from his alpha.[or]'You're my alpha now, so I'll follow you.'[or]'How about we go beat up some mutants to... uhh... keep them from making trouble around here?'[or]'What're you planning next, boss?'[or]'Just point me at someone and I'll make sure they regret giving you any trouble, chief.'[or]'It's not so bad being beta, long as it's to you.'[or]'I could sure go for a good fight[if lastfuck of gshep - turns >= 6] or fuck[end if].'[or]Taking his tug rope toy, [if FaceName of Player is listed in infections of caninelist]the two of you enjoy a good, canine tug-o-war over it, using your jaws to pull on each end[else]he enjoys a good, canine tug-o-war with you, pulling on it with his muzzle while you hold and yank on the other end[end if].[at random]";

to say conf_Korvin_Talk02: [scar talk]
	say "     As you bring up the mark on his muzzle, Korvin reaches up and rubs a finger along the scar. Given the rapid nanite healing, it's rare to see lasting damage, even from how intense some creatures may fight. 'Oh, I've had this bad boy for a long time; long before this whole fun mess. I...' he pauses for a bit, '...don't quite remember all the details, but I was out at a bar with my buds and some ass was really pissing us off. Stupid prick really needed to be put in his place. Well, during the fight, he got me with a bottle and left me with this. But don't worry, I gave him far worse than this in return,' he adds proudly.";
	if Trucker Bar is not active:
		say "     With your curiosity awakened, you follow up and ask if he remembers the name of the bar, or even just how it looked. 'Hm, no it was - just the bar we usually went to, you know. None of that pretentious crap there - just cheap drinks, pool table, TV with the newest game running on it. A trucker bar, you see? It was... err, somewhere a little off from the center of town, I think?' Hmm, with that description, you'd guess the bar could be in the outskirts of the downtown area, or maybe the warehouse district? [bold type]Maybe you should take Korvin there sometime and see if you can find it together?[roman type][line break]";
		now Trucker Bar is active;
	else if Trucker Bar is not resolved:
		say "     You remember that Korvin told you about the bar he was in. From his description you'd guess the bar could be in the outskirts of the downtown area, or maybe the warehouse district? [bold type]Maybe you should take Korvin there sometime and see if you can find it together?[roman type][line break]";

to say conf_Korvin_Talk03: [transformation talk]
	say "     As you mention an interest in how he got turned into a German shepherd, Korvin clears his throat and says, 'Story like any other, I guess. Everything's a bit fuzzy, ya'know. So, I was in that bar, ... err, somewhere a little off from the center of town, I think?' Not sure what kicked things off, but we were fighting. Good, honest barfight in one moment, the next I'm ducking a chair and see on the ground next to me a waitress scuffling with a trucker. Only it's not the burly dude trying to force her, but she's the one going for him! Tried to pull her off, to have her raise her head and give me a death-glare with those freaky, yellow, slitted eyes. She hissed at me, and I kid you not, she had scales and shit, trying to bite me with fangs as long as my little finger! Trucker Dude klonked her out with a beer mug to the side of the head and we ran. Made it out the back door, but that's where the luck ran out...'";
	say "     Lips peeling back from his teeth as he goes back to the memory in his mind, Korvin grimaces and lets out a grunt. Then he starts to gesture to illustrate his tale and continues, 'There were three, maybe four dog-dudes out there, waiting or butt-sniffing or something. Fuck, I'm just remembering bits of pieces of what happened next - must have ran smack-dab into the bunch I guess, and we kinda all went down in a heap. Didn't see Trucker Dude in the mix so maybe he got away, while I got held down for all the dogs to have a go, and another, and some thirds. If you think a normal hangover is bad, try waking up with dried cum sticking you to the dirty ground in an alley! And making your fur spiky and gross, fur you didn't even remember having before! Bastards fucked me and just left. Must have stolen my keys, wallet and whatnot too. Certainly didn't have any when I woke.' Holding up a paw-hand to look at it, furred skin and pads and blunt canine nails, Korvin taps the side of his muzzle and shrugs. 'Kinda stumbled out of there and never looked back, then lived on the streets until a certain someone rang my clock and put a collar on me.'";
	if Trucker Bar is not active:
		say "     With your curiosity awakened, you wonder if you might be able to find the bar where things went down for Korvin. Might provide some clues about his past. Given the description, you'd guess the bar could be in the outskirts of the downtown area, or maybe the warehouse district? [bold type]Maybe you should take Korvin there sometime and see if you can find it together?[roman type][line break]";
		now Trucker Bar is active;
	else if Trucker Bar is not resolved:
		say "     You remember that Korvin told you about the bar he was in. From his description you'd guess the bar could be in the outskirts of the downtown area, or maybe the warehouse district? [bold type]Maybe you should take Korvin there sometime and see if you can find it together?[roman type][line break]";

to say conf_Korvin_Talk04: [relationship talk]
	if Resolution of Trucker Bar is 0:
		say "     As you say that you want to talk about your relationship, Korvin looks at you in a mixture of confusion and wariness. 'Did I do something wrong, [K_Boss]?' he asks, with you telling him to calm down and stressing that you just wanted to get his view on things. There still is caution in his voice as he says, 'O-kay then. Well, I'm your dog all the way, you don't have to worry about that. I mean, yeah you kicked my ass, hard, more than once. But in the end, you didn't just... leave me, instead giving me this. Makes a guy feel appreciated, and all that.' Raising a paw-hand to his neck and running his fingertips over the studs of the collar there, his tail starts up a slow wag.";
		say "     Seeing the intensity of Korvin's conviction in his eyes, you recognize that he has a deep [italic type]need[roman type] to belong with someone (or maybe to someone?). You guess he must have had a tough time out on the streets, or maybe even before the nanite apocalypse. Taking him in and treating him as more than just a cum-dump has given you a immense status in his mind, and you don't think there's much of anything that he wouldn't do for you. The path you took has earned you an intensely loyal companion, and you can't help but feel good about how things turned out.";
	else if Resolution of Trucker Bar is 2: [player let Korvin make the decision himself]
		say "     As you say that you want to talk about your relationship, Korvin perks up immediately, a grin spreading over his muzzle. 'I'm your dog all the way, [K_Boss]!' Reaching up to proudly stroke along the studded outside of his collar, he goes on to say,  'Really happy you gave me this. Makes a guy feel appreciated, and all that. Then afterwards, when we went to track down Eddie's story, you were there for me. Let me think it through, make up my own mind. Yeah, really glad I'm with you.' His tail is wagging steadily behind his back, a clear indicator of the positive view the German shepherd holds for you.";
		if "KorvinPast_Something_More" is listed in Traits of Korvin:
			say "     Korvin lets his gaze stay focused on you for a little while longer after his last words have been spoken. You think you see his nostrils flare a little as he breathes in your scent, accompanied by an increase of his tail movements. He opens his mouth, as if to say something, then thinks better of it and just licks the sides of his muzzle before giving you a respectful nod. When the German shepherd then turns away, you see from the corner of your eye that he's half-hard, his cock having partly pushed out of his sheath. [bold type]Seems like the things you went through together have given Korvin some ideas beyond just being your trusted guard dog and battle companion. Still, it doesn't seem the right time yet to act on this, one way or another. Better let the matter germinate some more.[roman type][line break]";
	else if Resolution of Trucker Bar is 3: [player told Korvin to stay with them]
		say "     As you say that you want to talk about your relationship, Korvin perks up immediately, a grin spreading over his muzzle. 'I'm your dog all the way, [K_Boss]!' Reaching up to proudly stroke along the studded outside of his collar, he goes on to say,  'Really happy you gave me this. Makes a guy feel appreciated, and all that. Then afterwards, when we went to track down Eddie's story, you were there for me. Prevented me from almost making a mistake of trying to be him, instead of myself.' His tail is wagging steadily behind his back, a clear indicator of the positive view the German shepherd holds for you.";
	SanBoost 3;

to say conf_Korvin_Talk05: [gender preference talk]
	say "     As you ask Korvin what he prefers sexually, the German shepherd looks at you with a raised eyebrow, then lets out an amused bark? 'Why're you asking, [K_Boss]? Is this for [italic type]personal[roman type] use or are we maybe gonna go out and hunt down some fun?' Exuberant wagging of his tail tells you that he's eager for either option, but he feels a special desire for some one-on-one time with yourself. Reaching out to grip his muscled shoulder and give the anthro a squeeze, you chuckle and tell him that you'll decide what'll go down when the mood strikes you. 'Fair enough,' Korvin replies with a grin. 'Well, I gotta say I love me some boobs. Big, round, and swaying back and forth as I hammer into the bitch's pussy. That's really, really hot!' To underline his point, he grips the base of his cock suggestively. 'And the more bitches the better! God, I wanna pound them all and put puppies inside them!'";
	say "     Raising an arm to scratch the back of his neck, your canine bodyguard glances aside, looking at you from the corner of his eye and putting on a sly grin. 'As for... other options, I'd say a hole is a hole, ya see? I mean, I'm no fag, but when you're out on the streets, and you've got a boy-bitch on his knees, tail up and just begging for it, of course you drain your balls in that!' Looking down at his crotch, you see the canine's half-hard cock slide another inch from his sheath. 'And a few of em are different too. I mean, I caught a dude one time that had a full-on pussy down below, so you never know what you're gonna get. Fucked that sexy slit so hard and saw him the next day with a swollen belly! And another guy that was all dude, I could smell there was something different there. Almost like a bitch in heat, hah! He was some sort of breeding fag, and I'm pretty sure I put some butt-babies in there, that was sweet!'";
	LineBreak;
	say "     Korvin doesn't bring up any pairing in which he wasn't the top, so you can conclude that he prefers that role above others. Still, given the immense status you've got in his mind, you don't think that he'd hesitate even a second to submit to it if it was you who wanted to make use of him that way. For all of his bluster and throwing around the word 'fag' regularly, the canine appears well-used to homosexual pairings too, so the way one might describe him is a 'no homo' bisexual - ready to go for it, but seeking to keep his manly reputation intact.";

to say conf_Korvin_Talk06: [talk about the city/situation]
	say "     As you ask Korvin about his view of the city and the nanite apocalypse in general, the German shepherd lets out a chuckle and shrugs. 'We're fucked, that's the truth of it. I mean, I know that my marbles are a little scrambled, what with most memories being blurry as shit, but what I can recall of the before-time... that stuff isn't gonna fly anymore in the new world. Hell, imagine someone trying to do a nine to five job these days. Before he'd be out of his garden and at the car, I bet the postwoman or some other needy slut would have him sprawled on the grass, slamming her pussy down on his shaft!' Adding some hip-thrusts and gestures with his hands that mime guiding a broad-hipped woman against his crotch, Korvin seems to fall for his imaginary fuck for a little while, before shaking off the image and focusing back on you.";
	say "     'Nah, the old days are gone, I tell you. Now it's all survival of the fittest here, and if I may say it, you've got that down well, [K_Boss]! Looking forward to everything we'll do together, you and me by your side, yeah!' A wide grin spreads over his muzzle and he holds out a bunched paw-hand for a fistbump that you return, nodding knowingly as your eyes meet. 'I've seen some army guys in the streets at times, so I guess they're trying to move in and take over, but really - half the time those dudes were getting their asses handed to them. Might have - ehem, face-fucked one myself that was knotted and ass-to-ass with a feral wolf. So, not putting too much stock in them getting their shit together, and I think they should better keep out of the way and not interfere with any plans you got, [K_Boss]!'";

to say conf_Korvin_Talk07: [immediate plans talk]
	say "     As you wonder aloud about what you should do next, Korvin steps closer and scratches his furry chin. 'Well, how about getting some more supplies? Not sure how stocked with food and water we are. You don't have to worry about me for that calculation by the way. I've learned how to make it on the streets, and this sniffer here is a great tool for that.' Patting the side of his muzzle and wiggling his nose at you, the German shepherd smiles. 'I'll find something to sate me on my own, just let me scavenge a little when you don't need me right that minute. As for other needs-' He grips his crotch while saying this, 'I think we should find some sexy bitches to fuck. Regularly! Got a whole city to choose from, so there's lots of opportunities!";

[
to say conf_Korvin_Talk_CarlDisagreement: [TODO: Add more DEPTH]
	if "Carl_Disagreement_Might" is not listed in Traits of Korvin and "Carl_Disagreement_Rules" is not listed in Traits of Korvin: [neither decision made]
		say "     As you mention Carl, the German shepherd grimaces, one hand-paw balling to a fist. 'Saw that, eh? Bah! What's there left to say? One moment we're watching a sexy lizard chick get boned, the next we're arguing. Damn, if we're strong and can take what we want, why shouldn't we? That's what you do. To make them give in!' The muscular canine turns his head to you, eyes seeing to meet yours. 'Isn't it, [one of]alpha[or]boss[or][K_Boss][at random]?'";
		say "     [bold type]What do you reply?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Yeah, he's right. You picked a tough street dog as your companion and don't want him to change!";
		say "     [link](2)[as]2[end link] - No. He's part of a pack now, your pack, and that has rules.";
		say "     [link](3)[as]3[end link] - No comment. Shrug it off for now.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to agree with him, [link]2[end link] to tell Korvin there are rules to follow or [link]3[end link] to shrug it off.";
		if calcnumber is 1:
			say "     Nodding and stroking over Korvin's head, then gripping him by the nape of the neck, you tell the anthro that might makes right. Just like you bested him and made him yours. Carl might have some other ideas, but Korvin doesn't have to let that stop him. You might just take him along out into the city and have fun sometime, like in the old days.";
			add "Carl_Disagreement_Might" to Traits of Korvin;
		else if calcnumber is 2:
			say "     Shaking your head as you reach out to grasp Korvin's upper arm, you tell the German shepherd that he isn't on his own anymore. Being part of your pack comes with rules, and you decide what goes and what doesn't. Snatching people from just outside the library isn't on the list, so Carl was right. Nervously reaching up to hook a finger under his collar, Korvin says, 'Well, fuck. So I was planning to go against the [one of]alpha[or]boss[or][K_Boss][at random]'s wishes, and on top of that Carl thinks I'm a bastard now.' Telling him that the question isn't what happened, but what he's planning to do about it, you watch the wheels behind Korvin's eyes start turning. Finally, he grimaces and says, 'I'm gonna have to apologize to Carl, I guess. Can I have some time to go out into the city, to find something for him? Not when you need me, just... in between, you know.' As you agree, he looks down at his paws and adds, 'Thanks, [one of]alpha[or]boss[or][K_Boss][at random].'";
			add "Carl_Disagreement_Rules" to Traits of Korvin;
			now lastCarlKorvinInteraction is turns; [timer for him finding an apology item counts from now on]
		else:
			say "     With a noncommittal grunt and a shrug of your shoulders, you postpone answering that question for now.";
	else if "Carl_Disagreement_Might" is listed in Traits of Korvin: [player chose to support Korvin's position]
		say "     As you mention Carl, the German shepherd just shrugs. 'What about him? I see now that he's a bit of a tame lapdog. No wonder he's always hanging out in the library instead out with you in the city. You need the stones to take what you want out there!'";
	else if "Carl_Disagreement_Rules" is listed in Traits of Korvin: [player told Korvin that there are rules]
		if lastCarlKorvinInteraction - turns < 16:
			say "     As you mention Carl, the German shepherd scratches the back of his neck. 'Still searching for something to give him as an apology. Gotta be the right thing, and come from me, you know.' Hearing that last sentence, you put the thought of just supplying Korvin with something fitting out of your mind. Seems he just needs some time.";
		else:
			say "     As you mention Carl, the German shepherd reaches up to rub his scar distractedly. 'I think I found something he'll like. Just gotta have some free time in the library to have a talk with him now.'";
]

Section 2 - Sexy Times

to say korvinsexmenu:
	if Player is neuter:
		say "     Given your lack of gender, you don't see much point in that.";
	else if lastfuck of Korvin - turns < 6:
		say "     You fooled around not too long ago with the German shepherd. Perhaps you should give him a bit of a break before having sex with him again.";
	else if gsd_pet is 12:
		say "     Your gaze shifts to the German shepherd and you feel a growing arousal. You run your eyes up and down the buff male. Deciding he should provide some relief for the state of arousal he's put you in, you call him over and tell him to put his muzzle to work [if Player is male]sucking you off[else]eating you out[end if].";
		say "     He pauses and looks at you. 'So that's how it's going to be, is it?' he says before kneeling and nosing into your crotch. Despite that bit of grumbling, he sets himself to task with enthusiasm. His tongue lashes across [if Player is herm]your cock[smn] and cunt[sfn][else if Player is male]your cock[smn][else]your cunt[sfn][end if] several times before [if Player is male]taking your manhood into his warm maw[else]wriggling that doggy tongue into your cunny[end if]. You place a hand on his head, petting him lightly. He growls a bit at this and dips his ears, but doesn't stop - also wagging his tail a bit at the touch.";
		if Player is male:
			say "     You let him go to town on your cock[smn] for a while[if Cock Count of Player > 1], enjoying it as he swaps between them periodically[end if]. His slathering tongue and sucking muzzle are very nice, building your arousal higher. Eventually though, as your climax approaches, you're ready to set the pace. Grabbing his head with both hands now, you hold it steady and start thrusting. You rock your hips with increasing speed. Your [Cock of Player] manhood throbs in his [if Cock Length of Player > 24]stretched muzzle and throat[else if Cock Length of Player > 12]muzzle and throat[else]muzzle[end if] as precum leaks messily from your shaft. With a groan of release, your shaft is driven fully in and your [Cum Load Size of Player] load is [if Ball Size of Player > 4]blasted[else if Ball Size of Player > 3] shot[else]spurted[end if] into him[if Cock Count of Player > 2]. Your additional cocks splatter semen onto him as well[else if Cock Count of Player is 2]. Your additional cock splatters semen onto him as well[end if]. Once he's been fed your seed, you pull out and wipe your cock across his muzzle. He seems a bit grumpy about the rough treatment, but licks his dripping muzzle and wags his tail all the same.";
		else:
			say "     You let him go to town at your snatch[esfn] for a while[if Cunt Count of Player > 1], enjoying it as he swaps between them periodically[end if]. That lapping tongue of his is very enjoyable, building your arousal higher. Eventually though, as your climax is approaching, you're ready to set the pace and direct his actions. Pushing him back onto the ground, you kneel over his head and ride his face, grinding firmly. Your hot juices leak messily onto his muzzle as you tell him to lick deeper, or harder, or over your clit, as your quivering cunn[yfn] demand[sfv]. With a moan of release, you cum hard, soaking his lapping tongue and canine muzzle with your feminine fluids. Once he's been made to lick you clean, you climb off of him. He seems a bit grumpy about the rough treatment, but licks his wet muzzle and wags his tail all the same.";
		now gsd_pet is 13;
		now lastfuck of gshep is turns;
	else if gsd_pet is 13:
		say "[gshep_sexargue]";
		if gsd_pet < 14:
			now gsd_pet is 14;
		now lastfuck of gshep is turns;
	else if gsd_pet is 14:
		say "<***repeats for now>";
		now lastfuck of gshep is turns;
	else if gsd_pet is 15:
		if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
			say "     You're reminded of the fact that you plan to find a proper collar for this rowdy pet of yours. You think you should go to a [bold type]pet shop[roman type] and find one to put him in his place before any more of that.";
		else:
			say "     You're reminded of the fact that you plan to find a proper collar for this rowdy attack dog of yours. You think you should go to a [bold type]pet shop[roman type] and find one for him before any of that.";
	else if gsd_pet is 16:
		say "[gsd_collar_scene]";
	else if gsd_pet >= 20 and gsd_pet < 60: [subby Korvin]
		say "[subby_Korvin_sexmenu]";
	else: [confident Korvin, with gsd_pet >= 60]
		say "[conf_Korvin_sexmenu]";


Section 3 - Learning his Place

to say gshep_postfightargue:		[Post-fight argument]
	say "     Korvin comes up to you after the fight, clearly upset [if fightoutcome >= 10 and fightoutcome <= 19]despite the victory[else]with the way it went[end if]. 'What was that? You kept getting in my way out there. You're such a sloppy fighter that I'm surprised you've even lasted this long. You should know by now how I fight and be able to let me do my thing.' He's growls and grumbles as he continues into what you're doing wrong.";
	say "     [bold type]How do you respond to this?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Discipline him for his attitude!";
	say "     ([link]N[as]n[end link]) - Take his feedback seriously.";
	if Player consents:
		LineBreak;
		say "     Deciding you don't want to take more of his backtalk, you surprise him by grappling his arm and pinning it behind his back. Within moments, he's face first on the ground. 'How's that for sloppy fighting, you cur? You've got to get it in that thick head of yours that I'm the alpha, I'm in charge and if anyone's got to adjust their fighting style, it's you to work with mine. I beat the stuffing out of you plenty, so you'd best pull your head out of your ass before I shove my [if Player is male]cock[smn] it[else]boot[end if] in there beside it.'";
		say "     He struggles at first, but has to relent as you keep the dog pinned. Eventually you let the cowed dog up. Taking advantage of having him intimidated, you decide to give him some training of your own. He's right that the two of you should be able to better coordinate, but he'll be taking his queues from you. In addition to drilling several signals and fighting patterns into him, you add in more mundane dog obedience. He's demeaned as you make him sit, beg, roll over, bark or fetch on command. And while he clearly rankles at this, he cannot object lest he face harsher punishment from you. Only once you're satisfied that he understands and will follow your instructions, as well as his doggy training, do you end the session. Having made sure he'll coordinate with you, Korvin will now be able to work more effectively with you in combat.";
		increase lastfuck of gshep by 2;
		now gshep_postfight is 2;
	else:
		LineBreak;
		say "     As he's revving up to go on about your faults as a fighter, you tell him that you'll listen if he cans the attitude. Your firm response and stance cause him to check himself for a moment. Remembering who's in charge, he tones it back while giving you his feedback on your recent battles together. There's plenty of good points mixed in there with his bluster and, with some changes from you, the two of you are able to work out some techniques and patterns that complement your strengths and cover for your weaknesses.";
		say "     By the time you're done, Korvin seems better behaved. The opportunity to be heard and work with you seems to have helped him learn to be a bit more stable as well. This has been another step on his road to recovery as well as improving your ability to fight together in the future.";
		now gshep_postfight is 1;
	increase dexterity of gshep by 1;
	increase weapon damage of gshep by 1;
	now GShepLastScene is turns;
	if ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
		say "[gshep_collar_prompt]";
	WaitLineBreak;

to say gshep_sexargue:				[Sex role argument]
	say "     Feeling a rush of arousal, you decide to have Korvin help you deal with it. You run your eyes appreciatively over the German shepherd's studly body and lick your lips. Setting aside your gear, you prop one leg up on [if location of Player is Bunker or location of Player is Grey Abbey Library or location of Player is Grey Abbey 2F]a chair[else]some debris[end if] with your thighs spread. With a come-hither motion, you tell him to put that [if Player is male]fine muzzle[else]doggy tongue[end if] of his to work. He eyes your crotch with some interest, but manages to pull his eyes away and glare at you defiantly.";
	say "     'Why don't you try and make me, jerkface? I'm not just some silly lapdog to [if Player is male]suck you off[else]lick your snatch[end if] whenever you want. What am I getting out of it and when do I get my turn? I got plenty of tail out there on my own!' he responds even as he strides towards you.";
	say "     [bold type]How shall you react to this insubordination from him?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Put him in his place!";
	say "     ([link]N[as]n[end link]) - Have some mutual fun.";
	if Player consents:
		LineBreak;
		say "     Rather than tolerate his lip, you step off your perch and advance on him. He makes a grab for you, but you've fought him enough to see it coming. Grabbing his arm as he swings it, you [if Player is male]trip him down to the ground[else]flip him onto his back[end if] - hard. Briefly stunned by the hard fall you pin him down and snag his collar. Twisting the rope in you grip tightens it, keeping him down.";
		say "     'I'm the [if Player is male]master[else]mistress[end if], the alpha, the boss here. You'll get your turn when I say you'll get it and not before.' You speak firmly to him as you hold him down. At first he remains defiant, but soon enough he dips his ears with a doggy whimper of submission. 'That's better.'";
		WaitLineBreak;
		if Player is male:
			say "     With him pinned beneath you like this, you decide you'd prefer to take advantage of the situation and grind your crotch against his butt. He gives another whimper, but his rear raises what little it can and his doggy tail flips up. Having already freed your cock, you grind it against his rear a few times before lining it up with that crinkled hole of his. You prod it a few times, allowing your pre to leak out to slicken it up. As it relaxes, you work it open a little more until you're able to thrust into the buff dog's ass.";
			say "     As you begin thrusting into him, he starts to pant with arousal even as he tries to stay tough. You spot one of Korvin's paws moves toward his crotch. You push it away even as you shove your hips hard against his own, drilling your cock firmly against his prostate. 'None of that, dog. You're being punished for talking back to your alpha.'";
			WaitLineBreak;
			say "     You ride his ass hard and fast, always working for your own pleasure over his. He's clearly enjoying it as well, but soon you're rushing toward your release while he's only about halfway there. By this point, he's moaning with need as his butt squeezes and tugs at your [Cock of Player] cock. You grin at the sight of him reduced to such a state and bury your meat in him one last time before releasing your hot load into his clenching bowels.";
			say "     With his [if Ball Size of Player > 6]belly bloated by your [Cum Load Size of Player] output[else if Ball Size of Player > 5]belly visibly plumped by your [Cum Load Size of Player] output[else if Ball Size of Player > 3]bowels stuffed by your [Cum Load Size of Player] output[else]bowels marked by your sticky output[end if], you pull out and use his fluffy tail to wipe your dick off. Your semen [if Ball Size of Player > 4]flows[else]leaks[end if] from his well-fucked hole, sticking to the fur of his thighs. Getting off him, you pull Korvin to his knees. His doggy dick is rock hard and drooling precum steadily after the rough and rapid fucking he's received.";
			say "     'Now you go off and take care of that yourself. And maybe next time you'll be more respectful of your master.' You give his messy butt a light swat, sending the cowed dog off. He gives a last light whimper of need, but makes no further protest, rushing off to get his much-needed release.";
			NPCSexAftermath Korvin receives "AssFuck" from Player;
		else:
			say "     With him pinned under you like this, you decide you'd prefer to take advantage of the situation and grind your crotch down onto his. He pants softly as his dick, already semi-hard, emerges further from its sheath. Having already bared your snatch, you grind it across his stiffening rod, getting it slick with your juices before lining up with its glans. You tease him, only allowing the barest tip of his dick into your vagina for several rolls of your hips before finally sinking down onto it.";
			say "     As you begin to ride him, he starts to pant with arousal even as he tries to stay tough. The moment he goes to grab your ass and moves to thrust up into you though, you pull off, denying him your hot pussy. 'None of that, dog. You're being punished for talking back to your alpha.'";
			WaitLineBreak;
			say "     You sink back down onto him slowly, drawing it out and getting a whimper of need from him. You set yourself back to riding his thick dog dick. There a couple more false starts like this where he tries to thrust up into your snatch. You keep pulling off when he does and add a tug on his collar, and soon enough he's cowed into letting you use his cock like a dildo.";
			say "     You slide your cunt up and down that pulsing rod of his at your own pace, shifting speed and position as you desire. You always work it for your own pleasure over his. He's clearly enjoying it as well, but soon you're rushing toward your release while he's only about halfway there. By this point, he's moaning with need as his canine cock throbs. His knot is full and you can feel its heat eat time your wet lips press against it, but you stay off of it, denying the tie he clearly desires, but is not allowed to take. You grin at the sight of him reduced to such a state and clench firmly around his pole as you soak it with your orgasmic juices.";
			say "     You ride out your orgasm on his throbbing rod. Your feminine juices run down his pole, over his knot and balls as your hot cunny quivers on his cock. Feeling you cumming on his pole's gotten him close, but without the tie, it's not enough, leaving him blue-balled. Once you've had your fun, you rise slowly off of him and make a show of spreading your folds to show off your recently-fucked cunt and it's not messy with any of his sloppy seed.";
			say "     'Now you go off and take care of that yourself. And maybe next time you'll be more respectful of your master.' You give his messy butt a light swat, sending the cowed dog off. He gives a last light whimper of need, but makes no further protest, rushing off to get his much-needed release.";
			NPCSexAftermath Player receives "PussyFuck" from Korvin;
		now gshep_sexscene is 2;
	else:
		LineBreak;
		say "     Rather than wait for him, you step off your perch and advance on him. When you meet, you derail his attempt to start a fight with a kiss. The two of you lock lips and soon you're groping and fondling one another. It's not long after that before you end up on the floor together. Still lusting for that [if Player is male]muzzle[else]tongue[end if] of his, you shift around to bring your crotch to his face. This comes with the added perk of putting his rising cock right within reach of your mouth.";
		say "     'You're right. I think you deserve a bit of a treat in return for your service.' You give his dick a slow lick. 'Just be more respectful of your alpha next time, or I won't be so forgiving.' You then envelop his hard meat in your mouth and start sucking on it.";
		say "     Korvin gives a soft moan. 'Yes, [if Player is male]master[else]mistress[end if],' he replies before setting his muzzle to task licking your waiting loins. His long tongue slides over you, slathering your crotch with doggy drool.";
		WaitLineBreak;
		if Player is male:
			say "     The dog's tongue plays across your [cock size desc of Player] shaft, working it over with increasing eagerness. And when he takes it into his muzzle to blow you, you reach down and the dog an ear scritch and suck his cock harder in return. The two of you go at it, blowing each other with growing vigor.";
			say "     In addition to how good it feels to have that tongue and muzzle of his working you over, sucking him off reminds of just how fine of a cock he's got. You lap up his precum, savoring the taste of his musky pre before swallowing it down. You do your best to get the shepherd off, working to get a nice, big load from him as he does the same to you in return[if Cock Count of Player > 2]. He even makes sure to swap occasionally between your shafts, sucking one while using his paw on the others[else if Cock Count of Player is 2]. He even makes sure to swap occasionally between your shafts, sucking one while using his paw on the other[end if][if Cunt Count of Player > 1]. Your cunts aren't left out either, getting fingered by the lustful canine[else if Cunt Count of Player is 1]. Your cunt isn't left out either, getting fingered by the lustful canine[end if].";
			WaitLineBreak;
			say "     After working each other over for quite a while, you're both about ready to pop. Sucking firmly on his meat, you fondle his balls, urging him to feed you his hot load. His rod pulses in your mouth before sending spurt after spurt of gooey seed across your tongue. The taste of the musky treat is that last bit you need to get yourself off and you pump your [Cum Load Size of Player] load down his throat in return.";
			say "     You lick each other's cock clean before separating and getting up. You give the g-shep's ass a light swat and his tail gives a happy wag, sending him on his way. You take your time gathering up your clothes and equipment, enjoying the blissful afterglow.";
			NPCSexAftermath Korvin receives "OralCock" from Player;
			NPCSexAftermath Player receives "OralCock" from Korvin;
		else if Player is female:
			say "     The dog's tongue plays across your juicy snatch, working it over with obvious eagerness. Bending one leg to better spread your thighs allows him to dive deeper and wriggle that slobbery tongue into your cunt. As reward, you reach down and the dog an ear scritch and suck his cock harder in return. The two of you go at it, both orally pleasing the other with growing vigor.";
			say "     In addition to how good it feels to have that tongue lashing about inside you, sucking him off reminds of just how fine of a cock he's got. You lap up his precum, savoring the taste of his musky pre before swallowing it down. You do your best to get the shepherd off, working to get a nice, big load from him as he pushes you to several small climaxes in return[if Cunt Count of Player > 2]. He even makes sure to swap occasionally between your cunts, lapping into one while using his paw on the others[else if Cock Count of Player is 2]. He even makes sure to swap occasionally between your cunts, lapping into one while using his paw on the other[end if].";
			WaitLineBreak;
			say "     After working each other over for quite a while, you're both about ready to pop. Sucking firmly on his meat, you fondle his balls, urging him to feed you his hot load. His rod pulses in your mouth before sending spurt after spurt of gooey seed across your tongue. The taste of the musky treat is that last bit you need to drive you to a powerful final orgasm that has your cunt quivering around his tongue, soaking it in your femcum.";
			say "     You lick each other's loins clean before separating and getting up. You give the g-shep's ass a light swat and his tail gives a happy wag, sending him on his way. You take your time gathering up your clothes and equipment, enjoying the blissful afterglow.";
			NPCSexAftermath Korvin receives "OralCock" from Player;
			NPCSexAftermath Player receives "OralCock" from Korvin;
		now gshep_sexscene is 1;
		now GShepLastScene is turns;
	if ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
		say "[gshep_collar_prompt]";

instead of going down from the Grey Abbey Library while gshep is tamed and ( gsd_pet is 12 or gsd_pet is 13 or gsd_pet is 14 ) and GShepLastScene - turns >= 4 and player is not neuter and (gshep_bed_scene is 0 or gshep_inactive is 0) and a random chance of 2 in 3 succeeds: [Discipline argument / inactivity argument]
	move player to bunker;
	if debugactive is 1:
		say "     DEBUG -> Korvin scene on bunker entry - Gsd_pet: [Gsd_pet] <- DEBUG[line break]";
	if gshep_bed_scene is 0 and lastfuck of gshep - turns >= 4 and ( a random chance of 1 in 2 succeeds or gshep_inactive > 0 ):
		if debugactive is 1:
			say "     DEBUG -> Korvin discipline scene - Gsd_pet: [Gsd_pet] <- DEBUG[line break]";
		say "[gshep_bedcrumbs]";
	else if gshep_inactive is 0 and lastfight of gshep - turns >= 12:
		if debugactive is 1:
			say "     DEBUG -> Korvin inactive scene - Gsd_pet: [Gsd_pet] <- DEBUG[line break]";
		say "[gshep_inactive_scene]";

to say gshep_bedcrumbs:
	say "     Stepping back into the bunker, you notice that Korvin is already in there. He's munching on some dog biscuits and, giving you a quick glance, plops himself down on your bunk. He continues to munch away on his crunchy treats, getting crumbs on your bed. You need to decide how to deal with this behavior.";
	say "     [bold type]What do you want to do with Korvin?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Put him on the floor like the dog he is.";
	say "     ([link]N[as]n[end link]) - Playfully tussle with him.";
	if Player consents:
		LineBreak;
		say "     As you stomp over to your bunk, he tries to remain nonchalant, but you can see his ears dip. Grabbing him by the rope collar, you yank him off the bed and push him down to the floor. His box of dog treats spills and, as he reaches for one of them, you just stomp on it.";
		say "     'Bad dog!' you growl. 'You're not allowed up on my bed unless I say so... and that's only so I can fuck you.' Through this, you've kept a tight grip on his collar, preventing him from raising his head off the ground. 'Is that what you're really looking for?' He glances away, ashamed to meet your gaze. 'You naughty pup,' you laugh. 'Well, too bad. You've been a bad dog, so no [if Player is male]bone[else]boning[end if] for you.'";
		say "     [bold type]What form shall his disciplining take?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Foot licking!";
		say "     ([link]N[as]n[end link]) - Oral!";
		if Player consents:
			LineBreak;
			say "     Removing any covering from it, you very deliberately grind your bare foot down onto the dog treat fragments on the floor. You then press your crumb-encrusted foot upon his muzzle. 'Look at this mess you've made. And now I've stepped on some of them, too. Someone's going to have to clean up this mess.' You press your foot to his muzzle again, reinforcing which of them you mean for him to clean.";
			say "     His ears dip and he gives a little whimper, but his tongue comes out and starts lapping at your foot. His long, slobbery tongue slides all over, chasing after those biscuit fragments. As his tongue cleans you, you casually [if Player is male]stroke your cock[smn][else]finger your puss[yfn][end if]. His eyes are drawn to this and his tongue gets wetter with drool at the appetizing sight, but you keep him licking at your foot until you're ready to cum. Taking your well-licked foot away, you ";
			if Player is male:
				say "aim your cock[smn] down at him and [if Ball Size of Player > 5]hose him down with your copious seed[else if Ball Size of Player > 4]spray your load across his head and upper body[else]spray your load across his face and muzzle[end if]. He's left on the messy floor, sticking with your cum and littered with spilt dog treats - several of which have now been flavored by your semen.";
			else:
				say "pull his head closer as you cum. Your puss[yfn] squirt[sfv], spraying musky femcum across his muzzle. He's left on the messy floor, sticky with your juices and littered with spilt dog treats - several of which have now been flavored by your splattered juices.";
		else:
			LineBreak;
			say "     Stripping any obstructing coverings from it, you bare your crotch and take a seat at the edge of the bed. With a firm hand on his rope collar, you pull his muzzle between your legs and order him to lick you like the dog he is. His ears dip and he gives a little whimper, but his tongue comes out and starts lapping at your [if Player is herm]dick[smn] and cunt[sfn][else if Player is male]cock[smn][else]cunt[sfn][end if] with an eagerness that makes you wonder just how much the tough dog is enjoying being put in his place. But you don't have a chance to dwell on that further as his tonguework quickly gets you [if Player is herm]hard and wet[else if Player is male]hard[else]wet[end if]. Keeping a firm hold on him, you have him lick you until you're ready to cum before ";
			if Player is male:
				say "pushing him back with your foot. You aim your cock[smn] down at him and [if Ball Size of Player > 5]hose him down with your copious seed[else if Ball Size of Player > 4]spray your load across his head and upper body[else]spray your load across his face and muzzle[end if]. He's left on the messy floor, sticking with your cum and littered with spilt dog treats - several of which have now been flavored by your semen.";
				NPCSexAftermath Korvin receives "OralCock" from Player;
			else:
				say "tug his head back a few inches from his prize while fingering yourself quickly to finish. Your puss[yfn] squirt[sfv], spraying musky femcum across his muzzle. He's left on the messy floor, sticky with your juices and littered with spilt dog treats - several of which have now been flavored by your splattered juices.";
				NPCSexAftermath Korvin receives "OralPussy" from Player;
		now gshep_bed_scene is 2;
	else:
		LineBreak;
		say "     Seeing a playful defiance in his attitude, you approach the bed and point to the floor. 'Hey! Get off my bed. You're getting crumbs everywhere.'";
		say "     Korvin meets your glare with one of his own. 'Why don't you make me?' he says, exaggeratedly chomping on another dog treat while leaning back.";
		say "     Seeing how it's going to be, you shove him back onto the bunk and hold him down. This knocks the box of dog biscuits from his hand, spilling several on the floor. He gives a little growl at his. 'Oh. It. is. on!' he states and pushes you off of him. Soon the two of you are wrestling and play-fighting on and around your bed with the occasional snarl and snap from the defiant canine.";
		WaitLineBreak;
		if Player is male:
			say "     You've proven yourself his better in the past and now is no different. In the end, he can't beat you and ends up pinned face down beneath you. You hold him with one hand on his shoulder and the other around that snapping muzzle. During the playful struggle, your gear and clothes have ended up being removed as well, leaving you free to grind your now stiff cock against his rear. With the excitement of the mock-fight to get his blood pumping, his tail raises out of the way as your dick prods his rear and even wags a little.";
			say "     You can't help but grin at the moan the tough dog tries to muffle as your [Cock of Player] cock sinks into his butt. 'I think the naughty doggy likes that. I'd almost think this is what you wanted in the first place.' His ears dip at the teasing, blushing and unable to meet your gaze. And with your hand clamped around his muzzle, he can't bluster or deny it either. 'Yeah. I can tell this is the dog bone you really wanted,' you tease, grinding your hips to his as you bury your cock in him, eliciting another needy moan.";
			WaitLineBreak;
			say "     While you may have started slow, you end up giving him the rough pounding he seems to desire. By the point you release his muzzle to better support yourself on the mattress for hard thrusting, he can only pant, whimper and moan like the horny hound he is. He pushes back into your thrusts, grinding his dick against the bedding and you know he must be rock hard. He even ends up cumming shortly before you, blushing all the more as you taunt the tough guy about it.";
			say "     After shooting your load into his clenching hole, he's left sticky with cum both on his front and his behind and your bunk is even more the mess. Giving his rope collar a tug, you order him to clean up the mess he's made of your bed when he's recovered. 'And no more getting crumbs on my bed. When I want to fuck you, you'll know it, you slut,' you add with a light slap to his well-pounded rear. Korvin climbs out of the bed and obediently cleans up your bunk and the floor around it without delay or backtalk[if Ball Size of Player > 5]. For a while he ends up making more mess on the floor behind himself than he's cleaning up, as he leaves frequent dribbles of your semen behind himself as he goes[else if Ball Size of Player > 4], though he does have to go over some spots twice as he leaks semen from his well-used bottom for a time[end if].";
			NPCSexAftermath Korvin receives "AssFuck" from Player;
		else:
			say "     You've proven yourself his better in the past and now is no different. In the end, he can't beat you and ends up pinned on his back beneath you. You hold him with one hand on his shoulder and the other around that snapping muzzle. During the playful struggle, your gear and clothes have ended up being removed as well, leaving you free to grind your now wet pussy against canine shaft. With the excitement of the mock-fight to get his blood pumping, his dick's emerged and throbs harder as you press down onto it.";
			say "     You can't help but grin at the needy whimper the tough dog tries to muffle as your juicy cunt grinds against his shaft. 'I think the naughty doggy likes being put in his place. Is this what you wanted all along?' His ears dip at the teasing, blushing and unable to meet your gaze. And with your hand clamped around his muzzle, he can't bluster or deny it either. 'Yeah. I can tell this is the treat you really cared about,' you tease, shifting your hips to slide across his shaft again, eliciting another needy moan.";
			WaitLineBreak;
			say "     While you may have started with just the teasing grinding, you soon move to give his pulsing rod entry and start riding him hard. By the point you release his muzzle to better support yourself on his strong chest, he can only pant, whimper and moan like the horny hound he is. He thrusts up into you as you slam down, finally pressing his knot into your juicy cunt. Grabbing him by the rope collar, you order him to cum and, already at the edge of release, his body obeys. Feeling his hot load shooting into your cunt, you orgasm after the first few spurts and end up milking on his pulsing rod for all he's got.";
			say "     As soon as you're able to pull free from the knot, you pull off of the dog's dick. The excess semen flows out, much of it making a mess on and between his thighs as well as your bunk. Giving his rope collar a tug, you order him to clean up the mess he's made of your bed when he's recovered. 'And no more getting crumbs on my bed. When I want to fuck you, you'll know it, you slut,' you add with a light bap on his nose. Korvin climbs out of the bed and obediently cleans up your bunk and the floor around it without delay or backtalk.";
			NPCSexAftermath Player receives "PussyFuck" from Korvin;
		now gshep_bed_scene is 1;
	now GShepLastScene is turns;
	if ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
		say "[gshep_collar_prompt]";

to say gshep_inactive_scene:
	now GShepLastScene is turns;
	say "     Korvin had been staring out a window in the library, but rushes over to you as you enter the bunker. Grabbing your shoulder as you step onto the stairwell landing, he turns you around. 'What do you think you're doing going inside? The action's out there,' he growls, pointing toward the exit to the outdoors. 'Look! I agreed to this because I thought I'd get some action - and not just sex. I want a fight. My talents are wasted just sitting around.'";
	say "     [bold type]What do you want to do with him?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Make him cool his jets.";
	say "     ([link]N[as]n[end link]) - Accept his request and take him out to find a fight.";
	if Player consents:
		LineBreak;
		say "     Rather than take his guff, you grab him by his rope collar and slam him back against the concrete wall. You can hear the old paint flaking from the wall as it gets caught in his fur. He seems about ready to fight you, but you glare at him hard and tighten your grip.";
		say "     'I'm in charge and I say when we go out and when we don't. You aren't going to be worth anything to me if you can't go more than a day without a fight. You think that attitude's going to fly when we get out of this city?' You give him a firm shake before tossing him to the floor. 'But if you really want a fight, you can fight me - right here and right now. We both know how well that turned out for you before.'";
		say "     Faced with the rage of his alpha, he has to back down. He slinks back on all fours, head down and tail between his legs. He edges slowly out of the bunker as you stomp towards him. 'You're my DOG and you'll obey ME! You're my attack dog when I tell you to fight. You're my pet when I tell you to fetch my slippers. And you're my BITCH when I want to fuck your brains out, you ass.' You let that sink in for a few seconds before turning away, going back into my bunker. 'Now, I have my own shit to do... and it ain't you.'";
		now gshep_inactive is 2;
	else:
		LineBreak;
		say "     Seeing the way his paws are clenching into fists and how he's fidgeting from foot to foot, you decide he could use a chance to blow off some steam. You pause a bit to remind him that it's your decision before nodding and telling him to get ready. He gives a growl of anticipation and smacks a fist into his palm a few times. 'I've been ready all day.' You add that you'll agree this one time, but that he'll have to be more self-controlled in the future - he's not a wild dog anymore. He nods and takes a breath, settling down a little before fist-pumping. 'Come on! Let's do this thing!'";
		if the player is not lonely and companion of Player is not gshep:
			say "     Your current companion backs off at a glare from Korvin, leaving him to accompany you instead. The German shepherd clearly wants to go out and fight alongside his alpha - just the two of you against the city.";
		now companion of Player is gshep;
		now battleground is "Outside";
		say "     Once outside, the dog goes sniffing for a fight, chasing after the first interesting trail he comes across. You follow him as he soon leads you to an encounter with a roaming denizen of the city.";
		WaitLineBreak;
		fight;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Korvin seems quite pleased now that he's gotten out. The fight's taken the edge off that pent of energy of his and satisfied his aggressive streak for the moment. 'That was great, chief. It feels good to go out and bust some heads every now and again.' You remind him again that if he's going to be your dog, he's got to be able to rein that in... at least until you need to call on it. Once you're rescued, he'll be no good to you or anyone if he can't.";
			say "     'Right, boss. Gotta save the fight for when it counts. Gotcha.' He seems to take your feedback to heart, recovering a bit of self-control over his infection's urges.";
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     Korvin, driven back as the fight was lost, comes back to rejoin you. He helps you up and seems uncharacteristically nice. You have to guess he feels a bit guilty for getting you into a losing battle. You also suspect he'll keep a tighter rein on those aggressive urges from now on. You give him a soft pat on the back and ruffle his headfur and ears. He gives a laughing growl and elbows you in the ribs.";
		else:
			say "     When you fall back, Korvin's forced to flee as well. He seems upset about you running away and is about to snap at you when you just glare at him. It's his fault you ended up in that fight in the first place and he knows it. In the end, his ears drop and he lowers his head in hangdog expression. It's clear he knows he'll have to show more self-control over his aggressive urges if he's going to be of use to you.";
			decrease morale of Player by 5;
		say "     When the two of you return to the library, he goes to find somewhere to curl up. You know he won't always do so patiently, but you're confident he'll wait until called upon from now on. You continue on into the bunker, getting back to what you were doing before.";
		now gshep_inactive is 1;
		now companion of Player is nullpet;
	if ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
		say "[gshep_collar_prompt]";


to say gshep_collar_prompt:
	if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
		say "     Thinking it over, you've done quite a bit of work training that independent streak out of Korvin. Perhaps it's time to find a proper collar for your cowed dog - something suitable to put the tough bitch in his place. You'll have to keep your eyes open for a [bold type]pet shop[roman type] where you might find one.";
	else:
		say "     Thinking it over, you've done quite a bit of work training Korvin to accepting his new role. Perhaps it's time to find a proper collar for your attack dog. He'd probably like something suitably butch to match his tough-guy attitude. You'll have to keep your eyes open for a [bold type]pet shop[roman type] where you might find one.";
	now gsd_pet is 15;

to say gsd_collar_scene:
	setmonster "German Shepherd Male";
	if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
		say "     Approaching Korvin, you pull out the bag holding his new collar and call him to heel. Thanks to your training, he knows to respond promptly. Showing the shepherd the frilly pink collar you've picked for him, his ears dip and he starts to object, but drops his head beneath your firm gaze. His ears dip lower as you notice how he's getting hard. His embarrassment grows, as does his erection.";
		say "     You slip the girly collar around his strong neck, adjusting it to fit. 'There you go - a reminder that you're mine. And that you might be a big, tough dog out there, but deep down you're my doggy toy.' You emphasize this last bit by fondling his manhood possessively while clicking the pink leash onto the collar.";
		WaitLineBreak;
		if graphics is true:
			project the figure of Korvin_pinkcollar_face_icon;
		if Player is male:
			say "     After running him through a few dog tricks, you finish it with 'Raise tail'. The once-obstinate dog moves obediently onto all fours and presents his ass to you. He looks back at you, blushing at the ears, but those ears are raised and his tail wags with obvious eagerness as well. You are quite pleased with his training and how he's come to accept his submissive position beneath you - in more ways than one.";
			say "     It doesn't take long for Korvin to start panting and moaning after you've mounted him and are thrusting into his toned butt. Despite his past protestations, you know the dog's a slut for a good ass-fucking and it's time he accept that fact. You thrust into him, varying from slow and sensual to fast and hard, making his body quiver all the while, but never quite enough to get him off.";
			WaitLineBreak;
			say "     'You like that, don't you? You love having your alpha's cock in your ass. Admit it, my slutty puppy, and I'll give you what you need.' You tease him with such words throughout the fuck session, keeping a firm grip on his leash all the while. In the past, he might have tried struggling to get you to get on top or at least get you to angry-fuck him to finish, but the obedience training holds. His arrogant nature has him resist the final admission, but eventually he has to give in, begging for you to fuck him until he cums.";
			say "     'And what are you?' you ask, groping his balls while grinding your cock [if Cock Length of Player > 12]deep[else]fully[end if] inside him.";
			say "     'I'm your subby puppy,' he moans. 'Please fuck your puppy, [if Player is female]Mistress[else]Master[end if].'";
			say "     'Good boy,' you say with a victorious smile. 'And good boys get to cum.' Taking his cock in hand, you pump it while pounding him. You're both pushed to a powerful orgasm that leaves him [if Ball Size of Player > 6]bloated with an outpouring of his virile alpha's seed[else if Ball Size of Player > 5]stuffed and leaking his alpha's plentiful seed[else]gooey with his alpha's seed slowly leaking from his rear[end if].";
			NPCSexAftermath Korvin receives "AssFuck" from Player;
		else:
			say "     After running him through a few dog tricks, you finish it with 'Roll over'. The once-obstinate dog moves obediently onto his back, baring his belly to you. He looks back at you, blushing at the ears as you pet his tummy like a common dog, but his ears are raised and his tail wags with obvious eagerness as well. You are quite pleased with his training and how he's come to accept his submissive position beneath you - in more ways than one.";
			say "     Straddling him, you grind down onto his stiffening member. With your hot pussy gliding wetly along his shaft, it's not long before he's panting and moaning, but you don't move to allow his cock entry. You vary your pace, sometimes slowly slipping along the throbbing member and other times holding in place and simply pressing down upon it. This teasing makes his body quiver and his doggy dick throb with need, but it's nowhere near enough to get him off.";
			WaitLineBreak;
			say "     'You want that, don't you? You'd love to bury your bone in your alpha's hot, needy snatch for her. Admit that your body's mine to play with, my slutty puppy, and I'll consider it.' You tease him with such words throughout the tantalizing foreplay, keeping a firm grip on his leash all the while. In the past, he might have tried thrusting into you, but the obedience training holds. His arrogant nature has him resist the admission, but eventually he has to give in, begging for you to ride and use him.";
			say "     'And what are you?' you ask, reaching back to grope his balls while grinding down onto his meaty shaft with your [if Cunt Tightness of Player > 18]ample[else if Cunt Tightness of Player > 6]wet[else]tight[end if] snatch.";
			say "     'I'm your subby puppy,' he moans. 'Please fuck your puppy, [if Player is female]Mistress[else]Master[end if].'";
			say "     'Good boy,' you say with a victorious smile. 'And good boys get to fuck.' Taking his cock in hand, you angle it up before sinking down onto it. Finally allowed entry into your hot depths, it's wonderfully hard and thick. You both want it bad at this point and so you ride him fast. You're both pushed to a powerful orgasm that has him fill your womb with so much of his gooey canine seed. It, along with plenty of your own juices, pours out across his knot and balls as you rise up off of his spent shaft.";
			NPCSexAftermath Player receives "PussyFuck" from Korvin;
		WaitLineBreak;
		say "     After taking a few moments to catch your breath after that long-delayed release, you notice the chew bone you'd gotten for him. You give it a few squeezes, making it squeak in front of his face. His ears perk up and his muzzle follows it around as you wave it in front of him. Giving it a toss, you tell him to go fetch it. He scrambles onto all fours and chases after it, snatching the little thing up in his muzzle and returning it. He's blushing at the ears with embarrassment at his actions, but he obediently drops the toy into your hand. Since you're both worn from the sex, you don't play long, but his tail's wagging strongly. This'll be a fun way to both tease the big dog and to let him burn off some of that excess energy when not going into the city.";
		now gsd_pet is 20; [Subby Korvin]
	else:
		say "     Approaching Korvin, you pull out the bag holding his new collar and call him over to you. Hearing your command, he responds promptly, eager for an opportunity to perhaps fight or fuck. Showing the shepherd the studded leather collar you've picked for him, his ears perk up at the unexpected surprise.";
		say "     'I think you've earned something better than this frayed old thing,' you say as you untie the rope leash. Replacing it with the leather collar, you continue. 'You're officially my attack dog now, big guy. And with this on, everyone'll know you're not some stray to be fucked with.'";
		WaitLineBreak;
		if graphics is true:
			project the figure of Korvin_blackcollar_face_icon;
		say "     'Except by you, right, Alpha?' he asks, trying to sound gruff about it, but there's a bit of eagerness in his tone that he can't quite hide. Your response is to attach the leash with one hand and fondle him with the other. His sheath grows firm and his cock quickly starts to emerge";
		if Player is male:
			say ". It only takes a casual tug on his leash to get him to move onto all fours. Knowing what's being asked of him, he raises his tail and sets his paws firmly.";
			say "     Despite the fuss he sometimes makes, you know the butch dog likes having your cock in his ass, so you don't keep him waiting beyond a few light prods at his back door[if Cock Length of Player > 24]. As you push your [cock size desc of Player] meat into him, you give those firm buns of his a squeeze. 'You're a tough dog; you can take it,' you reassure him as you work to fully slide your large pole into him[else]. As you ease your [Cock of Player] cock into him, you give those firm buns of his a squeeze. 'That's my good dog,' you tell him as you bury your pole into him[end if]. He nods, accepting the praise and tightens those firm glutes, clenching around your shaft for a moment before releasing.";
			WaitLineBreak;
			say "     Enjoying the warm grip of his butt, you move your hands to stroke his sides and then around to grip his manhood as you start thrusting. You work your hips steadily, sliding your cock in and out of the sexy dog. He starts to pant from the pleasure despite his attempts to hide it, but you know how much he's come to enjoy being taken by you. You tell him again that he's a good dog and thrust harder, delighting in how his cock stiffens up and his balls throb as you do so.";
			say "     The two of you enjoy a long, sensual rut while you play with the shepherd's manhood. He's hard and dripping the whole time, his cock twitching with every deep thrust into his clenching hole. As his climax is approaching, you tease your fingertip across his leaking glans.";
			WaitLineBreak;
			say "     'Feels good, doesn't it? I can tell you really love having your alpha's dick in you[if Cock Length of Player > 24]. You're such a good dog for taking it all[else]. That's my tough dog, taking it like a champ[end if],' you say, pounding him hard.";
			say "     At this point, he's beyond trying to act aloof. 'So good, Alpha. Nggg... gotta cum,' he moans. True to his word, his asshole clamps down around your meat, practically milking at it as his balls draw up repeatedly and his shaft pulses. With each pulse, comes a powerful blast of canine semen that splatters across the ground beneath him. Having his hot hole squeezing your rod while the scent of doggy cum fills the air is more than enough to put you over the top and you cum hard into him. In the end, he's left [if Ball Size of Player > 6]bloated with an outpouring of his virile alpha's seed[else if Ball Size of Player > 5]stuffed and leaking his alpha's plentiful seed[else]gooey with his alpha's seed slowly leaking from his rear[end if] and obviously pleased with himself.";
			NPCSexAftermath Korvin receives "AssFuck" from Player;
		else:
			say ".";
			say "     You strip down and move onto all fours before giving his leash a casual tug. Being allowed to mount you, he does so without hesitation. After a few grinds of his big doggy cock between your buns and across your folds, he lines up and sinks it into you.";
			say "     'That's my good boy. You keep obeying your alpha and you'll be rewarded like this. Now show me what you've got.' As he pounds into you with his usual zeal, there is a greater attempt to please and satisfy you as well. One of his paw caresses your side, cups your breast, teases your nipple or rubs your clit at times, rather than the rough groping he's more prone to giving. He is really turning into a better canine companion.";
			WaitLineBreak;
			say "     The two of you go at it like this, fucking like horny dogs, until he's about to blow. With an extra[if Cunt Tightness of Player < 6 or Cunt Depth of Player < 6]-strong[end if] push, he pops his thick know into you and unloads. You can feel every hot blast of the German shepherd's thick seed, loving how it pools warmly inside you, trapped by his knot. By the time meaty bulb has gone down, much of it has been [if gestation of child > 0]absorbed[else]drawn into your womb[end if], though there's still plenty left to leak out and show what a virile dog you have.";
			NPCSexAftermath Player receives "PussyFuck" from Korvin;
		WaitLineBreak;
		say "     Noticing the discarded rope, you tie several knots in it, turning it into a rope tug toy. Brushing it past the dog's muzzle entices a playful growl and a few snaps from him. Getting a good grip on it with his muzzle, you end up in a tugging match with him. Since you're both worn from the sex, you don't play long, but he seems to find it quite satisfying. It works quite well and should be a helpful means to let him burn off some of that excess energy and aggression when not going out into the city.";
		now gsd_pet is 60; [Confident Korvin]


Section 4 - Confident Korvin Sex

to say conf_Korvin_sexmenu:
	say "     You motion Korvin over and ask him if he's in the mood for some fun. '[one of]Sure, boss!' he says with a lusty grin[or]Whatcha got in mind?' he asks cautiously, his tail unconsciously tucking over his rear[or]Alright, I guess,' he says, trying not to seem interested despite a raised and wagging tail[or]I guess I could go for a fuck,' he says, with an offhand shrug as his tail perks up[or]Definitely! This bad boy could use some relief,' he says, pointing down to his stiff doggy dick[at random]. He moves up beside you and runs a paw over your chest, waiting for you to decide what you're in the mood for.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him doggy style";
		now sortorder entry is 1;
		now description entry is "Get the buff dog on all fours and mount that tight ass of his";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Fuck him on his back";
		now sortorder entry is 2;
		now description entry is "Get the buff dog to roll over and take it";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride that doggy pole (vaginal)";
		now sortorder entry is 3;
		now description entry is "Have a round bouncing on his canine cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride that doggy pole (anal)";
	now sortorder entry is 4;
	now description entry is "Stuff that canine cock of his into your ass";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to take you (vaginal)";
		now sortorder entry is 5;
		now description entry is "Give the buff dog the freedom to make use of your body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tell him to take you (anal)";
	now sortorder entry is 6;
	now description entry is "Give the buff dog the freedom to make use of your body";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Blow job (receiving)";
		now sortorder entry is 7;
		now description entry is "Have him put that muzzle of his to use on your cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blow job (giving)";
	now sortorder entry is 8;
	now description entry is "Reward your loyal dog by allowing him to face-fuck you";
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
				if nam is "Fuck him doggy style":
					say "[conf_Korvin_sex01]";
				else if nam is "Fuck him on his back":
					say "[conf_Korvin_sex02]";
				else if nam is "Ride that doggy pole (vaginal)":
					say "[conf_Korvin_sex03]";
				else if nam is "Ride that doggy pole (anal)":
					say "[conf_Korvin_sex04]";
				else if nam is "Tell him to take you (vaginal)":
					say "[conf_Korvin_sex05]";
				else if nam is "Tell him to take you (anal)":
					say "[conf_Korvin_sex06]";
				else if nam is "Blow job (receiving)":
					say "[conf_Korvin_sex07]";
				else if nam is "Blow job (giving)":
					say "[conf_Korvin_sex08]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the German shepherd, shaking your head slightly as he gives a questioning look.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	wait for any key;
	clear the screen and hyperlink list;

to say conf_Korvin_sex01: [fuck Korvin's ass doggystyle]
	say "     Wanting a go at the hot ass of the strong, confident canine, you move a hand to his butt and give it a squeeze. Korvin's ass is firm and muscular, with soft fur that feels quite nice under your fingers. Clipping his leash on with your other hand, you tell the tall anthro to get on all fours[one of]. His ears dip a bit, knowing what's coming, but his tail raises and he moves obediently enough into position[or]. 'Alright, ya big fag,' he grumbles as he moves into position with his tail already up and swaying[or]. 'Alpha's privilege,' he says with a nod and a sigh, though he's certainly speedy getting down onto the ground[at random]. You tease a finger across his pucker in a slow circle, teasing the tight ring a little. Korvin's up-turned tail starts to wag slowly as he reaches back to spread his cheeks, ass rising a little further in response to his [K_Boss]'s touch.";
	say "     Smiling at the thought what a good dog the former street thug has become, you gather a gob of spit, letting it drip onto your fingers to smear over Korvin's hole and lube him up at least a little bit. Then you move into position behind him, lining your [Cock of Player] cock up with the target of his quivering tail-star. With a lusty grunt, you ease your [cock size desc of Player] meat into him. Korvin replies with a [if Cock Length of Player > 24]moaning whimper at your great size, but his ass accepts you anyway[else if Cock Length of Player > 16]moaning whimper at your impressive size as you push into his ass[else if Cock Length of Player > 8]long moan as you push inch after inch into his ass[else]soft moan as your shaft slides into his ass[end if]. The anthro German shepherd's insides are hot and tight, but yield to his alpha's cock readily enough. At the same time, you reach around to fondle your companion's manhood and praise him about how great he feels around your cock. Korvin's ass gives your meat a squeeze in response and his hips push back a little. Knowing he's ready for more, you smile and start thrusting. His inner walls clench warmly around your dick at the end of every thrust.";
	WaitLineBreak;
	say "     While fucking your muscled doggie, you work your hand over that canine rod of his, enjoying the warmth of it lying in your grasp. In his arousal, Korvin's manhood throbs, starting to leak pre-cum and showing his pleasure at being fucked. You brush your fingertips across his pointed glans, getting them wet with the slick fluid before gliding them along his shaft and squeezing Korvin's knot. As the lustful romp progresses, his rod dribbles and more and more pre, which you smear over his red pole. You can tell he's really enjoying it, and more than just the hand job from the way his dick pulses at every prod across his prostate. [one of]'Damn, pound me alpha!' [or]'God, feels fucking great!' [or]'Master, ram my hole!' [at random]the German shepherd gasps, his tail by now swishing left and right in a clear show of pleasure.";
	say "     Feeling your own release coming, you hasten your pace and thrust energetically into the canine's rear. Up till now, he mostly managed to stifle his moans and panting, but with you driving your meat hard and fast into him, he can no longer fully restrain himself and starts panting through his open muzzle. Still, even at this point, he manages to hold back his own orgasm until your own. As your hot cum begins to flood into his ass, thick throbs of your erection delivering a creamy load to paint his insides, Korvin responds by cumming right along with you. His ass practically milks at your cock with every hard spurt of canine seed he shoots out onto the floor. You end up leaving your studly dog [if Ball Size of Player > 6]with a bloated belly of your cum by the time you're done and pull out[else if Ball Size of Player > 5]with a visible tummy bump because of all your cum by the time you pull out[else if Ball Size of Player > 3]stuffed and leaking your hot cum by the you're done and pull out[else]panting and sticky by the time you pull out[end if]. Making especially sure to pet the anthro dog, you praise him for being such a good pet and sweet fuck. He can't help but smile and give a happy tail wag. [one of]'Sure thing, master!' [or]'Anything for the alpha!' [or]'For you, I'd do anything!' [at random][line break]";
	NPCSexAftermath Korvin receives "AssFuck" from Player;

to say conf_Korvin_sex02:
	say "     Wanting a go at the hot ass of the strong, confident canine, you move a hand to his butt and give it a squeeze. Korvin's ass is firm and muscular, with soft fur that feels quite nice under your fingers. Clipping his leash on with your other hand, you tell the tall anthro to get on his back and spread those legs for you[one of]. His ears dip a bit, knowing what's coming, but a wagging tail betrays that he's actually fairly excited as he moves into position[or]. 'Alright, ya big fag,' he grumbles, mostly for show, as a wagging tail betrays that he's fairly excited as he moves into position[or]. 'Alpha's privilege,' he says with a nod and a sigh, though he's certainly speedy getting down onto the ground and his tail is wagging[at random]. You kneel between the muscular canine's legs and brush a finger across his pucker in a slow circle, teasing the tight ring a little. Korvin's tail starts to thump against the ground as he responds to his [K_Boss]'s touch and raises his hips invitingly.";
	say "     Smiling at the thought what a good dog the former street thug has become, you take hold of his red rocket of a canine cock, stroking up and down along its length. Korvin grunts as he starts getting jerked off, tongue lolling out of his muzzle as his arousal mounts rapidly. This brings with it a steady trickle of pre-cum welling up at the slit of his erection, which you wipe up with two fingers of your free hand and smear over his quivering tailstar. 'Man, that is super gay! Using me own pre to lube me up.' the though dog grumbles quietly, voice a little breathless and lust-filled. He hurriedly shakes his head as you ask if he'd prefer no lube instead, so you continue milking his dick for a little while and pushing your slick fingers against his back door, dipping inside more than a few times and teasing little spurts of pre from him as you lightly press his prostate.";
	WaitLineBreak;
	say "     After a long while of playing with your dog, you finally line your [Cock of Player] cock up with the target of his slick, relaxed hole. With a lusty grunt, you ease your [cock size desc of Player] meat into him, watching an expression of wanton need appear on his face. Korvin lets out a [if Cock Length of Player > 24]moaning whimper at your great size, but his ass accepts you anyway[else if Cock Length of Player > 16]moaning whimper at your impressive size as you push into his ass[else if Cock Length of Player > 8]long moan as you push inch after inch into his ass[else]soft moan as your shaft slides into his ass[end if]. The anthro German shepherd's insides are hot and tight, but yield to his alpha's cock readily enough. At the same time, you wrap your companion's manhood in a tight grasp and praise him about how great he feels around your cock. Korvin's ass gives your erection a squeeze in response and his lips curl up in a satisfied grin. Knowing he's ready for more, you smile and start thrusting. His inner walls clench warmly around your dick at the end of every thrust.";
	say "     While fucking your muscled doggie, you work your hand over that canine rod of his, enjoying the warmth of it lying in your grasp. In his arousal, Korvin's manhood throbs rhythmically and the additional pre-cum trickles over your fingers now that you're no longer wiping it off. You spread the slick fluids along his length, getting him lubed up with nothing more than his own fluids, all the way down to the base where you squeeze Korvin's knot. As the lustful romp progresses, his rod continues to dribble and more and more pre, telling you that he's really enjoying it, dick pulsing hard at every prod across his prostate. [one of]'Damn, pound me alpha!' [or]'God, feels fucking great!' [or]'Master, ram my hole!' [at random]the German shepherd gasps, his tail by now swishing left and right in a clear show of pleasure.";
	WaitLineBreak;
	say "     Feeling your own release coming, you hasten your pace and thrust energetically into the canine's rear. Up till now, he mostly managed to stifle his moans and panting, but with you driving your meat hard and fast into him, he can no longer fully restrain himself and starts panting through his open muzzle. Still, even at this point, he manages to hold back his own orgasm until your own. As your hot cum begins to flood into his ass, thick throbs of your erection delivering a creamy load to paint his insides, Korvin responds by cumming right along with you. His ass practically milks at your cock with every hard spurt of canine seed he shoots up over his chest, making a sticky mess out of his ab- and pec-fur. You end up leaving your studly dog [if Ball Size of Player > 6]with a bloated belly of your cum by the time you're done and pull out[else if Ball Size of Player > 5]with a visible tummy bump because of all your cum by the time you pull out[else if Ball Size of Player > 3]stuffed and leaking your hot cum by the you're done and pull out[else]panting and sticky by the time you pull out[end if]. Making especially sure to pet the anthro dog, you praise him for being such a good pet and sweet fuck. He can't help but smile and give a happy tail wag. [one of]'Sure thing, master!' [or]'Anything for the alpha!' [or]'For you, I'd do anything!' [at random][line break]";
	NPCSexAftermath Korvin receives "AssFuck" from Player;

to say conf_Korvin_sex03: [riding Korvin's cock (vaginal)]
	say "     Wanting to feel that big cock of your strong, muscular bodyguard in your snatch, you tell him to lay down while fingering your pussy. 'Your alpha wants to bury that hard bone of yours in her hot cunny, pup,' you say, petting his head and tugging on his neck-fur a little in a show of playful dominance. 'Hot damn!' Korvin exclaims in reply, and picking up on your challenging words and gesure, he meets your gaze and replies with some push-back. 'But I'm no pup, as your soon-to-be-wrecked pussy is going to find out,' he says, a broad grin on his face as he starts to work a paw over his rapidly hardening canine pole. With him being the confident dog you've encouraged him to be, a little play-talk is just the thing to get your doggy going! His arousal makes for a very appealing sight and you see no reason in waiting any further.";
	say "     Eagerly swatting Korvin's ass, you order him to get into position, [if Player is not naked]stripping down [else]touching yourself a little [end if]while he does so. Then you step forward over the canine, sinking down to straddle him and run your hands over his strong chest. Korvin strokes the side of your arm with one hand while his free hand wraps around the base of his dick, aiming it up towards your dripping cunt. You [if Cunt Depth of Player > 16]slam down onto it, your roomy vagina engulfing it[else if Cunt Depth of Player > 8]slam down onto it, pushing it into your hot vagina[else]lower yourself down onto it, working to take the whole of it into your vagina[end if] with an extended moan of ecstasy.";
	WaitLineBreak;
	say "     You ride the German shepherd's long, pointy cock, sliding up and down its length in a very pleasurable grind. Then suddenly, Korvin begins to buck his hips up in counterpoint, forcing the already a little enlarged knot-bulge at the base of his cock into you. [one of]'That feel like a pup's, [K_Boss]? I don't think so!' [or]'Yeah, moan my name! I know you like this bad boy all the way in there!' [or]'Ready to give it all to you, alpha!' [at random]His movements push him hard into you each time, often forcing moans or whimpers of sexual delight past your lips, as the virile male makes your lust soar. His canine penis feels great inside you, rubbing against so many sensitive spots as you wriggle and grind atop it.";
	say "     The two of you go at it hot and heavy, complete with him stroking and fondling your chest and [if player is male]erection[else]clit[end if]. With the flame of your lust burning in a sizzling inferno, it is only a question of time before Korvin finally groans out loud, blasting shot after shot of puppy batter into your clenching cunt while you cry out in orgasmic release. His knot swells up all the way, locking the two of you together and prolonging his orgasm from the tight squeeze of your hole around it. You do your best to push him even further, flexing your inner muscles around his cock and milking him for all he'll give before finally relaxing and sinking down over the panting male. After a moderately long while of just lying there with your trusty canine, his bulge eventually does down far enough for you to pull off his spend shaft. Making especially sure to pet the anthro dog, you praise him for being such a good pet and sweet fuck. He can't help but smile and give a happy tail wag.";
	NPCSexAftermath Player receives "PussyFuck" from Korvin;

to say conf_Korvin_sex04: [riding Korvin's cock (anal)]
	if Player is male or Player is neuter:
		say "     Feeling the desire to have that big cock of your strong, muscular bodyguard in up your ass, you tell him to lay down [if player is not naked]while starting to undress[else]while reaching back to run a finger up between your buttocks[one of]. His eyebrows rise a bit and Korvin shakes his head with a chuckle. 'You're one kinky bastard. Let's do it!' [or]. 'Alright, ya big fag,' he replies with an amused grumble. [or]. 'Alpha's privilege,' he says with a nod and a wag of his tail. [at random]With that said, the anthro German shepherd gets into position, sinking down to the ground and laying back, taking care to align his tail in a comfortable position. ";
	else: [player has a pussy]
		say "     Feeling the desire to have that big cock of your strong, muscular bodyguard in up your ass, you tell him to lay down [if player is not naked]while starting to undress[else]while reaching back to run a finger up between your buttocks[one of]. His eyebrows rise a bit and Korvin shakes his head with a chuckle. 'You're one kinky bitch. Let's do it!' [or]. 'Alright, but why don't we just use your other hole?' he replies with an amused grumble. [or]. 'Alpha's privilege,' he says with a nod and a wag of his tail. [at random]With that said, the anthro German shepherd gets into position, sinking down to the ground and laying back, taking care to align his tail in a comfortable position. ";
	say "Glancing up at you, he wraps a hand around the pointy canine shaft as it push out of his sheath more and more when getting hard. Looks like your canine companion is ready for some action! Stepping a little closer after dropping your gear, you tell him with a grin that he'll need to lube himself up for you. Korvin's eyebrows pull together for a second and he moves a hand as if to pat a pocket, the gesture being a holdover from the time before he was comfortable in just his own fur.";
	say "     'Er, I don't have any, and... oh!' the canine starts to say, then groans. 'You know, being able to suck yourself is great and all, but I'd still rather have a bitch or fag do it rather than smoke my own dick!' Despite a little eyeroll and protest, Korvin pushes himself up on his elbows, then further and further, curling his upper body forward. Showing an easy flexibility that proves he's far from human, the German shepherd brings his muzzle to his crotch and starts to lap at his erection, slathering it with spit. You watch him obediently prepare himself for a little while, then tell him that he's a good puppy and his alpha wants to ride the red rocket now. 'You and every bitch out there, hah!' Korvin exclaims in reply, meeting your gaze as he adds with a broad grin, 'But I'm no pup! Better watch out or you'll wreck your hole on his bad boy!'";
	WaitLineBreak;
	say "     Stretching back out on the floor, Korvin humps his hips up demonstratively and starts to work one paw over his slick canine pole. With him being the confident dog you've encouraged him to be, a little play-talk is just the thing to get your doggy going! His arousal makes for a very appealing sight and you see no reason in waiting any further. Eagerly moving to stand over him, you sink down to straddle your faithful dog and run your hands over his strong chest. Korvin strokes the side of your arm with one hand while his free hand wraps around the base of his dick, aiming it up towards your waiting hole. Lowering yourself just a little more, you feel the tip brush against your buttocks and be guided in, touching your pucker a second later. The pointy tip of his nonhuman cock serves very well to open up your hole, sliding past your pucker accompanied by a moan in both of your voices.";
	say "     You ride the German shepherd's long, pointy cock, sliding up and down its length in a very pleasurable grind[if player is male] that makes his shaft rub your prostate so very good[end if]. Then suddenly, Korvin begins to buck his hips up in counterpoint, forcing the already a little enlarged knot-bulge at the base of his cock into you. [one of]'That feel like a pup's, [K_Boss]? I don't think so!' [or]'Yeah, moan my name! I know you like this bad boy all the way in there!' [or]'Ready to give it all to you, alpha!' [at random]His movements push him hard into you each time, often forcing moans or whimpers of sexual delight past your lips, as the virile male makes your lust soar. His canine penis feels great inside you, rubbing against so many sensitive spots as you wriggle and grind atop it.";
	WaitLineBreak;
	say "     Going at it hot and heavy, Korvin proceeds to stroke and fondle your chest and [if player is male]erection[else]clit[end if]. With the flame of your shared lust burning in a sizzling inferno, it is only a question of time before Korvin finally groans out loud, blasting shot after shot of puppy batter into your trembling hole while you cry out in orgasmic release only a few heartbeats later. [if player is male]Your [cock of player] erection throbs with cum shooting up from your balls, painting white streaks across Korvin's heaving chest. [end if]At the same time, his knot swells up all the way, locking the two of you together and prolonging his orgasm from the tight squeeze of your hole around it. You do your best to push him even further, flexing your inner muscles around his cock and milking him for all he'll give before finally relaxing and sinking down over the panting male. After a moderately long while of just lying there with your trusty canine, his bulge eventually does down far enough for you to pull off his spend shaft. Making especially sure to pet the anthro dog, you praise him for being such a good pet and sweet fuck. He can't help but smile and give a happy tail wag. 'Anytime, [one of]alpha[or]boss[or][K_Boss][at random]!'";
	NPCSexAftermath Player receives "AssFuck" from Korvin;

to say conf_Korvin_sex05: [be fucked by Korvin (vaginal)]
	say "     In the mood for something a little wilder than just making use of the stud of a German shepherd you broke in to be your attack dog, you reach down and cup Korvin's balls. Fondling the anthro, you praise him for his virility and strength, which draws a chuckle from Korvin. 'What'cha doing, [one of]alpha[or]boss[or][K_Boss][at random]? You don't have to charm the pants off me, not wearing any!' With a smirk, you reply that you were wondering about his days out on the streets, with him going after whoever he liked. Sniffing a receptive bitch on the wind and hunting her down, then using those firm muscles you're feeling up right now to push his newest conquest onto the ground. 'Yeah, that's what it was like. Most of the time. Right up until a certain someone wiped the floor with me and, you know, put a collar on this doggo...' Meeting his gaze, you tell him that you'd kinda like to get the full experience of the old Korvin, just for a little while.";
	say "     Korvin lets out a puzzled grunt, 'Err, what? Are you messing with me now? Did I do something wrong?' In response, you run your hand along his shoulder and neck, saying that you actually want to reward him for being such a good bodyguard. Let him run wild to have fun. Looking at you, still hesitating, the canine replies, 'But things will still be the same between us afterward, right? Alpha and pack bro forever?' As you smile and nod, giving Korvin a comforting squeeze of the shoulder, he immediately relaxes and you feel his balls twitch under your fingers as his cock throbs in arousal. 'Man, life with you sure doesn't get boring! You sure you can handle me? I'm gonna go all out!' Visibly excited, tail wagging and cock standing proudly erect with a bead of pre-cum forming at the tip, the German shepherd's expression gains an undertone of lust and hunger as he looks you up and down.";
	say "     [bold type]Do you really want to do this?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Reach up and take the collar off him.";
	say "     ([link]N[as]n[end link]) - Change your mind and tell him you were just teasing him.";
	if Player consents:
		LineBreak;
		say "     After putting all of your gear into a little pile to the side, you return to Korvin, lean in and start to feel for the collar's clasp up behind his neck. While doing so, you wonder aloud just how many litters he put into all of his conquests, betting that there must have been a lot from such a virile dog as him. The German shepherd chuckles and nods his head, saying with a smirk, 'Oh yeah, always gave me a kick to see one of them girls a day later, carrying a swollen belly in front of them! Pounced on the bitch right then and there, because what's she gonna go? Waddle away? And a week or so later, there'd be all new little sluts in the neighborhood, ripe for the picking!' With the German shepherd licking his chops at the mere thought, you loosen the studded band around his neck, allowing Korvin to reach up and pull it off. The dog's grin widens and starts to show of his canine-like teeth while his eyes focus a hungry gaze at you.";
		say "     Korvin does take a few seconds to buckle the leather band again and goes to carefully set the symbol of both his own status, as well as submission, down on top of your gear. Then suddenly, the muscular dog whirls around, letting out a sharp bark that makes you twitch in surprise. 'What? Did you think I wouldn't smell what's between your legs as you stroll through my turf? [if Breast Size of Player is 0]Might almost look like a dude, with that flat chest and all, but you can't fool the nose! [end if]Damn, I love how needy and stupid you bitches get when you're in heat! Just strolling around and drawing the attention of every horny dude with a nose worth anything!' With that, the anthro dog struts up to you, clamping his paw-hand around your jaw and forcing you to look him in the eyes. 'Can't believe someone else hasn't snatched you up before, and filled that box with his pups! At least you were smart enough to not try to fight, so I [']might['] even let you go after we have some fun!'";
		WaitLineBreak;
		say "     [if player is not naked]Huffing out a breath, the German shepherd says, 'Let's see what we got!' he forcefully strips you down to the buff in a few moments, casually flinging your clothes to land somewhere close to your other gear. [else]'Huffing out a breath, the German shepherd says, 'Like to bare it all, eh? I like that in a slut, makes em['] so readily fuckable!' [end if]Korvin's hands wander over your body, his paw-pads a little rough on your skin as he feels you up. [if player is purefemale]'Not bad, street-bait! And already wet too! Knew you were just asking for it!' [else if Cock Length of Player < Cock Length of Korvin]'Not bad, street-bait! And already wet too! Admit it, on the inside you're just asking to be made a proper bitch. I'll make you forget that you even have that puny little dick!' [else]'Big bitch, eh? Well, that counts for shit if you're a needy slut on the inside. Damn, I can feel how wet you are, just asking to be fucked! I'll make you whimper my name!' [end if]Nodding down to his crotch where a well-sized, red, canine shaft is standing proudly erect, pointy tip down to the still fairly small bulge of what will become his knot, Korvin watches your reaction to the sight closely, a slight sneer on his face. 'On all fours... now! It's time to fuck!' he adds, giving you a little shove to get you moving.";
		say "     Dropping to your knees and lowering your front to assume the position, you hear the German shepherd chuckling behind you. 'Love me an obedient fucktoy!' Korvin adds, then gives your raised ass a moderately strong slap. A second later, you feel the hot length of his erection brush against your buns, followed by the muscular dog's shaft being bent down to the opening between your legs. With his pointy dickhead brushing over your wet folds and making you shiver in arousal, a needy moan passes your lips, drawing a chuckle from the male anthro. 'You know you want it!' he comments in a husky tone, followed by pushing his shaft into your body. 'Gonna spread that pussy wide!' he growls, sliding himself deep and making you gasp at the sudden invasion of your sex. 'Moan for me, [if Breast Size of Player is 0]cuntboy[else if player is male]boy-bitch[else]bitch[end if], and squeeze those muscles around my cock!' he growls in a lusty tone, blunt claws digging into the sides of your hips as he grinds his crotch against you. The weighty pair of nuts in his furry sack rub against your skin, promising a virile load soon to come.";
		WaitLineBreak;
		say "     In and out, Korvin starts to hump your rear with rapid thrusts, making use of his newest conquest to his heart's content. While he may be only focused in his own pleasure, having our pussy filled can't help but excite you, with that thick, warm shaft pounding in and our hard and hitting [if player is male]your prostate again and again[else if player is female]your clit with his swinging balls, stimulating you[end if]. 'They all fall into line, you know. Even the uppity bitches that try to resist!' Korvin says with audible amusement as he hears the rising pitch of your moans, followed by some especially deep thrusts to really push you. Without ever being touched, since you have to brace yourself against the ground to withstand the hammering you're receiving, [if player is male]your [cock of player] shaft goes as hard as it can down between your legs, drooling pre-cum from its cum-slit[else if player is female]you feel your clit tingle and femcum literally dripping from your moist folds[end if].";
		say "     The fact that you're giving in to him sexually all the way seems to motivate Korvin further, and where he was just thrusting his hips against you before, now the German shepherd lowers his whole anthro body on top of you. Arms wrapping around your chest from behind, [if Nipple Count of Player is 0]he [else if Breast Size of player is 0]he gropes your flat chest and pinches your nipples, then [else]he massages your [Breast Size Description of Player] [one of]breasts[or]boobs[or]tits[at random], then [end if]hooks both hands over your shoulders to get a good grip for a whole series of balls-deep thrusts. The soft fur of his toned chest rubs against your back and you can feel his breath warmly on your neck. Panting of the dominant canine fills your ears as he fucks you hard and oh so very deep, and his wet nose bumps into your skin more than a few times, so close is he pressing against you as he mounts his new bitch. Then suddenly, you feel his thrusts pause for a second and hear him take a deep, huffed breath.";
		WaitLineBreak;
		say "     [if player is mpreg_ok and player is not purefemale]'Mmmh! I can smell it on you, can't believe I didn't realize before! You're one of them breeding fags! One puppy-hole not enough for you, eh? Had to get an ass-pussy too, hah! Man, forget what I said before, you're staying right with me from now on. I'm gonna love breeding litters in you! I wonder if you can get knocked up front and back at the same time' A paw-hand slides down to your belly, feeling it possessively. 'Soon this will swell with my sons!' [else]'Hah, you smell like a needy little bitch! Maybe I should keep you after all! Make you pop out a whole harem of little sluts for me!' [end if]Korvin proceeds to lick your neck and behind your ear, as if to add another claim on top of the fact that he's balls-deep inside you. Then the pause is over and he jumps right back into power-fucking your vagina hard and deep, all the while keeping his muzzle right next to your head and filling your ears with grunts or gasped exclaimations of 'Good bitch', 'Take it', 'Love that hot snatch' and the like. His relentless pace quickly builds up to an almost nonstop assault of your quivering opening, all leading up to the climactic moment in which he suddenly clamps his predator's teeth around the nape of your neck, the ultimate sign of canine dominance.";
		say "     A loud, lusty growl fills Korvin's throat and you can feel it vibrate through his chest, just as you can feel his erection pulse inside you as virile cum paints your insides white. With every twitch of his shaft, your hole stretches a little, pushing your arousal along. His furry balls rub your skin with every hard throb that goes through them, and the bulge at the base of his cock starts to fill out rapidly. With a frantic thrust, he forces it inside your hole, just in time for it to lock your bodies together and [if player is sterile]futilely [end if]trying to guarantee conception. The German shepherd keeps a very tight grip around your chest and his teeth on your neck hold you in place while he grinds his crotch against your rear. While in the process of breeding you, it seems that his instincts rule the man completely, and only animalistic growls of arousal pass his lips. Feeling yourself be claimed like this, with more of his seed filling second by second, you feel strongly submissive urges bubble up inside you[if player is not submissive] that you didn't know you had[end if].";
		WaitLineBreak;
		say "     Moments later, you tremble in the grasp of your new master and orgasm right along with him, [if player is male]your cock spewing long strings of cum to cover the ground beneath you[else if player is female]your pussy quivering and flexing as if wishing his cock was inside your other hole, and femcum gushing out, spattering the ground beneath[end if]. While you're still riding out the sensations of your climax, Korvin finds his words again and says, 'Yeah, that's right! Give in my little slut! Only I can make you cum like that! You, I'll not leave wandering the streets like those other casual bitches I've had. Gonna stay right with me from now on, because I want more of his!' followed by a series of licks over your neck and the side of your face. He keeps doing that for a long while, holding you, licking you and murmuring words into your ears, mostly about you belonging to him now and how good of a fuck you were.";
		say "     Eventually, when your individual orgasms have long died down and the blissful high of sex has made way for just the comfort of being held, you feel Korvin soften his grip and raise himself from laying on your back. While his knot has shrunk far enough to allow for an easy withdrawal, the dog still pulls out slowly, almost gently, accompanied by a gush of cum dripping from between your nether lips. Then suddenly, you can feel a warm, wet tongue brush over your folds and dip in between them. The sensations of being licked clean draw pleased pants from your lips and you push back against him, enjoying this very different finish to a wild romp with the muscular anthro. You can't help but sigh as he pulls back once satisfied that he licked you well, then stands up and walks over to the pile of your gear. You get to your feet just in time for Korvin to return, holding his collar in his hands as he sinks into a crouch before you.";
		WaitLineBreak;
		say "     'Was I a good dog?' he asks, looking up at you and offering the leather band with both hands, almost looking a little afraid that you might not put it back on him. The sight puts a warm smile on your face and you stroke Korvin's head, then firmly grab the back of his neck as you lean down to tell him that he was a [italic type]very[roman type] good dog. Taking the collar, you unclasp it and lay the band around his neck. Tightening it to snugly lie around your trusted bodyguard's neck, you stroke a finger along his jawline to make him look up and into your eyes, then squeeze his shoulder and nod for him to help you collect your gear from there it lies. With the studded collar again around his neck, Korvin's cocky attitude is back in a heartbeat, and he jumps up to follow your command with a grin and the words, 'Sure thing, [one of]alpha[or]boss[or][K_Boss][at random]!'";
		if "Dominant_Roleplay_Fuck" is not listed in Traits of Korvin: [memory of having fucked a willing player]
			add "Dominant_Roleplay_Fuck" to Traits of Korvin;
		NPCSexAftermath Player receives "PussyFuck" from Korvin;
	else:
		LineBreak;
		say "     With an annoyed groan, Korvin throws his hands up, then sighs. 'Man, you sure had me going there for a moment. Cruel thing to do to a guy, but then again, guess that's your right [one of]alpha[or]boss[or][K_Boss][at random].' Blowing out a deep breath, he wanders off for a little while, returning once he's taken care of his hardon.";

to say conf_Korvin_sex06: [be fucked by Korvin (anal)]
	say "     In the mood for something a little wilder than just making use of the stud of a German shepherd you broke in to be your attack dog, you reach down and cup Korvin's balls. Fondling the anthro, you praise him for his virility and strength, which draws a chuckle from Korvin. 'What'cha doing, [one of]alpha[or]boss[or][K_Boss][at random]? You don't have to charm the pants off me, not wearing any!' With a smirk, you reply that you were wondering about his days out on the streets, with him going after whoever he liked. Taking them down and using those firm muscles you're feeling up right now to push his newest conquest onto the ground. 'Yeah, that's what it was like. Most of the time. Right up until a certain someone wiped the floor with me and, you know, put a collar on this doggo...' Meeting his gaze, you tell him that you'd kinda like to get the full experience of the old Korvin, just for a little while.";
	say "     Korvin lets out a puzzled grunt, 'Err, what? Are you messing with me now? Did I do something wrong?' In response, you run your hand along his shoulder and neck, saying that you actually want to reward him for being such a good bodyguard. Let him run wild to have fun. Looking at you, still hesitating, the canine replies, 'But things will still be the same between us afterward, right? Alpha and pack bro forever?' As you smile and nod, giving Korvin a comforting squeeze of the shoulder, he immediately relaxes and you feel his balls twitch under your fingers as his cock throbs in arousal. 'Man, life with you sure doesn't get boring! You sure you can handle me? I'm gonna go all out!' Visibly excited, tail wagging and cock standing proudly erect with a bead of pre-cum forming at the tip, the German shepherd's expression gains an undertone of lust and hunger as he looks you up and down.";
	say "     [bold type]Do you really want to do this?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Reach up and take the collar off him.";
	say "     ([link]N[as]n[end link]) - Change your mind and tell him you were just teasing him.";
	if Player consents:
		LineBreak;
		say "     After putting all of your gear into a little pile to the side, you return to Korvin, lean in and start to feel for the collar's clasp up behind his neck. While doing so, you wonder aloud about all the people he must have fucked in the ass out there. The German shepherd grins at your words and gives a meaningful nod. Soon, the studded band around his neck loosens and Korvin reaches up to pull it off, his grin widening and starting to show of his canine-like teeth now. He does take a few seconds to buckle the leather band again and goes to carefully set the symbol of both his own status, as well as submission, down on top of your gear. Then suddenly, the muscular dog wirls around, letting out a sharp bark that makes you twitch in surprise. 'What? Did you think you could just stroll through my turf? Fat chance!' With that, the anthro dog struts up to you, clamping his paw-hand around your jaw and forcing you to look him in the eyes.";
		say "     'Can't believe someone else hasn't bitch-broken you before if you're just wandering around! At least you were smart enough to not try to fight, so I [']might['] even let you go after we have some fun!' [if player is not naked]Huffing out a breath and saying, 'Let's see what we got!' he forcefully strips you down to the buff in a few moments, casually flinging your clothes to land somewhere close to your other gear. [else]'Huffing out a breath and saying, 'Like to bare it all, eh? I like that in a slut, makes em['] so readily fuckable!' [end if]Korvin's hands wander over your body, his paw-pads a little rough on your skin as he feels you up. [if player is purefemale]'Not bad, street-bait! But I'm in the mood for some ass right now!' [else if player is neuter]'Not bad, street-meat!' [else if Cock Length of Player < Cock Length of Korvin]'Not bad, street-meat! Let's see how you take a [italic type]real[roman type] cock!' [else]'Big bitch, eh? Well, that counts for shit if you don't know how to use it. I'll make you whimper my name!' [end if]Nodding down to his crotch where a well-sized, red, canine shaft is standing proudly erect, pointy tip down to the still fairly small bulge of what will become his knot, Korvin watches your reaction to the sight closely, a slight sneer on his face. 'On all fours... now! It's time to fuck!' he adds, giving you a little shove to get you moving.";
		WaitLineBreak;
		say "     Dropping to your knees and lowering your front to assume the position, you hear the German shepherd chuckling behind you. 'Love me an obedient fucktoy!' Korvin adds, then gives your raised ass a moderately strong slap. A second later, a gob of spit lands in the crack between your buns, followed by the muscular dog's shaft being slapped against your rear. It gets lined up with your pucker and the tip of his red rocket brushes your opening in a warm, wet touch. This is your only warning before Korvin start to push inside you. 'Let's open this tight hole up for me!' he growls, pushing as fast as you can take it and making you gasp at the invasion of your rectum. 'Moan for me, [if player is male]boy-[end if]bitch, and squeeze those muscles around my cock!' he growls in a lusty tone, blunt claws digging into the sides of your hips as he grinds his crotch against you. The weighty pair of nuts in his furry sack rub against your skin, promising a virile load soon to come.";
		say "     In and out, Korvin starts to hump your ass with rapid thrusts, making use of his newest conquest to his heart's content. While he may be only focused in his own pleasure, somehow you can't help but feel pleasure start replacing the pain of his first entry before much longer, as the hard pounding he lays down hits [if player is male]your prostate again and again[else if player is female]your clit with his swinging balls, stimulating you[else]your crotch with his swinging balls, stimulating you[end if]. 'Knew you'd fall into line, slut!' Korvin says with audible amusement as he hears you moaning the first time, followed by some especially deep thrusts to really push you. Without ever being touched, since you have to brace yourself against the ground to withstand the hammering you're receiving, [if player is male]your [cock of player] shaft goes as hard as it can down between your legs, drooling pre-cum from its cum-slit[else if player is female]you feel your clit tingle and femcum literally dripping from your moist folds[else]you feel your pubic mound tingle like crazy, all without any outlet of your lusts due to your genderlessness[end if].";
		WaitLineBreak;
		say "     The fact that you're giving in to him sexually all the way seems to motivate Korvin further, and where he was just thrusting his hips against you before, now the German shepherd lowers his whole anthro body on top of you. Arms wrapping around your chest from behind, [if Nipple Count of Player is 0]he [else if Breast Size of player is 0]he gropes your flat chest and pinches your nipples, then [else]he massages your [Breast Size Description of Player] [one of]breasts[or]boobs[or]tits[at random], then [end if]hooks both hands over your shoulders to get a good grip for a whole series of balls-deep thrusts. The soft fur of his toned chest rubs against your back and you can feel his breath warmly on your neck. Panting of the dominant canine fills your ears as he fucks you hard and oh so very deep, and his wet nose bumps into your skin more than a few times, so close is he pressing against you as he mounts his new bitch. Then suddenly, you feel his thrusts pause for a second and hear him take a deep, huffed breath.";
		say "     [if player is mpreg_ok and player is not purefemale]'Mmmh! I can smell it on you, can't believe I didn't realize before! You're one of them breeding fags! Man, forget what I said before, you're staying right with me from now on. I'm gonna love breeding litters of pups in you!' A paw-hand slides down to your belly, feeling it possessively. 'Soon this will swell with my sons!' [else]'Hah, you smell like a needy little bitch! Maybe I should keep you after all! Make you pop out a whole harem of little sluts for me!' [end if]Korvin proceeds to lick your neck and behind your ear, as if to add another claim on top of the fact that he's balls-deep inside you. Then the pause is over and he jumps right back into power-fucking your ass hard and deep, all the while keeping his muzzle right next to your head and filling your ears with grunts or gasped exclaimations of 'Good bitch', 'Take it', 'Love that ass' and the like. His relentless pace quickly builds up to an almost nonstop assault of your quivering hole, all leading up to the climactic moment in which he suddenly clamps his predator's teeth around the nape of your neck, the ultimate sign of canine dominance.";
		WaitLineBreak;
		say "     A loud, lusty growl fills Korvin's throat and you can feel it vibrate through his chest, just as you can feel his erection pulse inside you as virile cum paints your insides white. With every throb of his shaft, your hole stretches a little, pushing your arousal along. His furry balls rub your skin with every hard throb that goes through them, and the bulge at the base of his cock starts to fill out rapidly. With a frantic thrust, he forces it inside your hole, just in time for it to lock your bodies together and [if player is not mpreg_ok]futilely [end if]trying to guarantee conception. The German shepherd keeps a very tight grip around your chest and his teeth on your neck hold you in place while he grinds his crotch against your rear. While in the process of breeding you, it seems that his instincts rule the man completely, and only animalistic growls of arousal pass his lips. Feeling yourself be claimed like this, with more of his seed filling second by second, you feel strongly submissive urges bubble up inside you[if player is not submissive] that you didn't know you had[end if].";
		say "     Moments later, you tremble in the grasp of your new master and orgasm right along with him, [if player is male]your cock spewing long strings of cum to cover the ground beneath you[else if player is female]your pussy quivering and flexing as if wishing his cock was inside your other hole, and femcum gushing out, spattering the ground beneath[else]sensations of pleasure pulsing through your body[end if]. While you're still riding out the sensations of your climax, Korvin finds his words again and says, 'Yeah, that's right! Give in my little slut! Only I can make you cum like that!' followed by a series of licks over your neck and the side of your face. He keeps doing that for a long while, holding you, licking you and murmuring words into your ears, mostly about you belonging to him now and how good of a fuck you were.";
		WaitLineBreak;
		say "     Eventually, when your individual orgasms have long died down and the blissful high of sex has made way for just the comfort of being held, you feel Korvin soften his grip and raise himself from laying on your back. While his knot has shrunk far enough to allow for an easy withdrawal, the dog still pulls out slowly, almost gently, with a small popping sound. Then suddenly, you can feel a warm, wet tongue brush over your skin and run along your crack. The sensations of being licked clean draw pleased pants from your lips and you push back against him, enjoying this very different finish to a wild romp with the muscular anthro. You can't help but sigh as he pulls back once satisfied that he licked you well, then stands up and walks over to the pile of your gear. You get to your feet just in time for Korvin to return, holding his collar in his hands as he sinks into a crouch before you.";
		say "     'Was I a good dog?' he asks, looking up at you and offering the leather band with both hands, almost looking a little afraid that you might not put it back on him. The sight puts a warm smile on your face and you stroke Korvin's head, then firmly grab the back of his neck as you lean down to tell him that he was a [italic type]very[roman type] good dog. Taking the collar, you unclasp it and lay the band around his neck. Tightening it to snugly lie around your trusted bodyguard's neck, you stroke a finger along his jawline to make him look up and into your eyes, then squeeze his shoulder and nod for him to help you collect your gear from there it lies. With the studded collar again around his neck, Korvin's cocky attitude is back in a heartbeat, and he jumps up to follow your command with a grin and the words, 'Sure thing, [one of]alpha[or]boss[or][K_Boss][at random]!'";
		if "Dominant_Roleplay_Fuck" is not listed in Traits of Korvin: [memory of having fucked a willing player]
			add "Dominant_Roleplay_Fuck" to Traits of Korvin;
		NPCSexAftermath Player receives "AssFuck" from Korvin;
	else:
		LineBreak;
		say "     With an annoyed groan, Korvin throws his hands up, then sighs. 'Man, you sure had me going there for a moment. Cruel thing to do to a guy, but then again, guess that's your right [one of]alpha[or]boss[or][K_Boss][at random].' Blowing out a deep breath, he wanders off for a little while, returning once he's taken care of his hardon.";

to say conf_Korvin_sex07: [receive BJ from Korvin]
	say "     Taking hold of your dick with one hand, you clip his leash on with the other and tell him to 'sit.' He does so [one of]readily[or]obediently[or]after arching his brow and giving you a look[or]with a little grumble[or]with a hungry look in his eyes[or]while licking his muzzle[at random] and gives your cock a nuzzle. Placing your hand on his head, you scritch his ear as he starts to lick your shaft. His doggy tongue slides along your hard pole, slathering it up and down.";
	say "     After some preliminary licking, his tongue plays across your glans before he takes your [cock size desc of Player] shaft into his muzzle. His canine maw [if Cock Length of Player > 24]has to stretch considerably to be able to fit your mighty cock, but he works at it until he's able to do it[else if Cock Length of Player > 16]has to open wide to be able to fit your mighty cock, but he does it to get that meaty treat in his mouth[else if Cock Length of Player > 8]provides extra depth to be able to fit your big cock, letting him get all that meaty treat in his mouth[else]welcomes your cock into it, enveloping it in wet warmth[end if]. While his doggy tongue continues to slide about, he starts bobbing his head and sucking your cock. The buff dog gets into it quickly, doing his best to suck off his alpha.";
	WaitLineBreak;
	say "     You let the gshep work his muzzle over your [Cock of Player] dick, quite pleased with how he's doing. There's no sign of any earlier reluctance he's shown about cocksucking, the dog clearly into it now that he's got your manhood in his muzzle. You continue to scritch and pet his head, telling him how good it feels and what a great job he's doing. That gets a tail wag from him and a paw fondling your nuts. With him working your shaft over like this, you're built up to a strong orgasm that has you groan loudly";
	if a random chance of 3 in 5 succeeds:
		say ". Your penis pulses hard with every shot, [if Ball Size of Player > 6]blasting your [Cum Load Size of Player] load down his throat and bulging that toned tummy of his [else if Ball Size of Player > 5]blasting your [Cum Load Size of Player] load down his throat to fill his stomach with a feast of your rich, hot semen[else if Ball Size of Player > 3]firing your [Cum Load Size of Player] load down his throat and providing him with a nice, hot meal of your semen[else]pumping the tasty treat of your hot load down his throat[end if]. He gulps it all down, releasing muffled moans while his tail wags wildly[if Cock Count of Player > 2] and your other dicks hose him down with white streaks[else if Cock Count of Player is 2] and your other dick hoses him down with white streaks[end if].";
	else:
		say ". After the first few shots of semen go down his throat, he pulls his muzzle off your [cock size desc of Player] cock and pumps your shaft with his paw[if Cock Length of Player > 16]s[end if]. Your penis[esmn] fire[smv] your remaining cum across his face and muzzle, [if Ball Size of Player > 6]plastering him in a coating[else if Ball Size of Player > 5]plastering him with wads[else if Ball Size of Player > 3]streaking him with large ribbons[else]streaking him with several more strands[end if] of sticky white goo.";
	say "     Once done, he licks his chops and grins up at you. '[one of]I hope that was good enough for you, ya big fag,' he teases[or]Not bad, alpha, but next time you should try mine,' he says[or][if Ball Size of Player > 5]Hmmph! Pretty impressive[else]Tasty[end if],' he says[or]My Alpha,' he states with a nod[or]That better be all. I got stuff to do,' he states, trying to recover some dignity[at random]. You let him get on his way while you take a moment to enjoy the blissful afterglow.";
	NPCSexAftermath Korvin receives "OralCock" from Player;

to say conf_Korvin_sex08: [receive facefuck from Korvin]
	say "     In the mood for something a little wilder than just making use of the stud of a German shepherd you broke in to be your attack dog, you reach down and cup Korvin's balls. Fondling the anthro, you praise him for his virility and strength, which draws a chuckle from Korvin. 'What'cha doing, [one of]alpha[or]boss[or][K_Boss][at random]? You don't have to charm the pants off me, not wearing any!' With a smirk, you reply that you like having him as your companion, a strong, though dog whom you can depend on. Clearly, he's a man to be reckoned with, having spent his days out on the streets, going after whoever he liked. Taking them down and using those firm muscles you're feeling up right now to push his newest conquest onto the ground. 'Yeah, that's what it was like. Most of the time. Right up until a certain someone wiped the floor with me and, you know, put a collar on this doggo...' Meeting his gaze, you tell him that even though you enjoy being his master now, you don't want him to change too much - become too tame.";
	say "     Korvin lets out a puzzled grunt, 'Err, what? Are you messing with me now? Did I do something wrong?' In response, you run your hand along his shoulder and neck, saying that you actually want to reward him for being such a good bodyguard. Give him a taste of his wild days. Looking at you, still hesitating, the canine replies, 'But things will still be the same between us afterward, right? Alpha and pack bro forever?' As you smile and nod, giving Korvin a comforting squeeze of the shoulder, he immediately relaxes and you feel his balls twitch under your fingers as his cock throbs in arousal. 'Man, life with you sure doesn't get boring! You sure you can handle me?' Visibly excited, tail wagging and cock standing proudly erect with a bead of pre-cum forming at the tip, the German shepherd's expression gains an undertone of lust and hunger as he looks you up and down.";
	WaitLineBreak;
	say "     With a smirk on your lips, you crouch down before the muscular German shepherd, stroking your hands over the soft fur covering his thighs. Reaching the right height for putting his erection at eye level, you stick out your tongue and run it up the underside of the red rocket, in the process raising your viewpoint to glance up at him submissively. As your eyes meet, Korvin's cock throbs noticably, a thick droplet of pre-cum welling up from its slit. With a grin, you tell the anthro canine to face-fuck you. His hand rising almost by its own volition, the dog touches his collar, as if to remind himself of his position of belonging and trust, then allows himself the freedom of following your roleplaying prompt. Both of his paw-hands sink down to the level of your head, with one taking hold of your head by the hair in a somewhat rough fashion, while the other grips your jaw. 'Yeah, I'm gonna enjoy face-fucking you,' Korvin grunts, pushing his thumb between your lips and prompting you to suck on it.";
	say "     The shepherd's paw-pad feels a little coarse as it presses down on your tongue, establishing dominance along with his iron grip of your head. 'I love fucking [if player is purefemale]street-bait! Making bitches take my cock as deep as I want!' [else if player is neuter]street-meat!' [else if Cock Length of Player < Cock Length of Korvin]street-meat! Let's see how you take a [italic type]real[roman type] cock!' [else]street-meat! Showing em that you don't just need a big cock, you gotta know how to use it!' [end if] With that, he withdraws his thumb from your mouth suddenly, creating a popping sound, and replaces it with his erection a heartbeat later. Now shifting his grip to clamp your head between his paws, he pushes you down on his shaft with a lusty grunt. Slipping further and further in between your lips in a demanding pace just slow enough that you don't choke on it, the muscled canine has your nose pressed into his crotch-fur in no time at all. Huffing the male dog's pubes and filling your mind with his scent, you're held firm in that position while he enjoys the tightness of your throat around his cock.";
	WaitLineBreak;
	say "     At some point reflexively swallowing around the big invader in your mouth, you draw the comment of, 'Nice! Squeeze my dick with those muscles!' from Korvin. A moment later, he begins to slide in and out, face-fucking you in a rapid tempo. You won't be able to tell afterwards that was the deciding factor - his masculine scent, the satisfaction of giving your bodyguard a well-deserved reward, those full balls swinging back and forth to slap your chin, the feeling of helpless submission as he just manhandles you, maybe just seeing stars a little when he keeps himself down your throat a little long, or all of the above - but in the moment, you sure enjoy the experience. Meanwhile, Korvin's also having a total blast, his grunts, pants and barks becoming louder and more urgent by the moment. Then suddenly, the extent of his endurance is reached and he humps your face hard, basically trying to cram every last inch he got down your throat as he begins to unload with thick, creamy spurts right into your stomach.";
	say "     You can feel Korvin's erection throb against your tongue with each new burst of semen shooting up from his balls, giving you a filling of pure protein. 'Take my load bitch!' he bellows, grinning down at you and showing his teeth in a very dominant, powerful pose, given that he's also holding your head in both hands, so you can't move it once inch. In the end, you have to pat out against his thigh to get him to withdraw, finally allowing you to gasp in a breath of fresh air, which is immediately followed by more spurts of his load to make a cum-spattered mess of your face. 'That's a good look for you,' he says with a chuckle, aiming his cock to cover you as much as he can with the ebbing shots, though taking care to avoid hitting you in the eyes. As Korvin's orgasm dies down eventually, he softens his grip on your head, allowing you to stand up once more.";
	WaitLineBreak;
	say "     Now that he no longer is looking down on you, a little bit of anxiousness seems to rise in Korvin. Hooking a finger over the edge of the collar around his neck, he looks down and asks tensely, 'Was I a good dog?' The sight puts a warm smile on your face and you stroke Korvin's head, then firmly grab the back of his neck as you tell him that he was a [italic type]very[roman type] good dog. You stroke a finger along his jawline to make him meet your gaze, then squeeze his shoulder and say that you could use a little help cleaning up though. Korvin's cocky attitude is back in a heartbeat, and he [if player is male]lets out a groan of 'That's so gay!' [else]grins at you [end if]before leaning in to lick his own load off your face without any further complaint. 'Anything for you, [one of]alpha[or]boss[or][K_Boss][at random]!'";
	if "Dominant_Roleplay_Oral" is not listed in Traits of Korvin: [memory of having fucked a willing player]
		add "Dominant_Roleplay_Oral" to Traits of Korvin;
	NPCSexAftermath Player receives "OralCock" from Korvin;

Section 5 - Subby Korvin Sex

to say subby_Korvin_sexmenu:
	if Player is male:
		say "     You call over your pet German shepherd and point at your crotch. Knowing what's expected of him, the dog gets on his knees and starts licking and sucking your cock. He blushes a bit and is initially a little reluctant, but soon enough the cock-slut going at it with enthusiasm. You make sure to scritch his ears and call him your good, cock-sucking puppy.";
		say "     After you feel his muzzle's gotten you good and ready, you tell him to get on all fours and present himself. The G-Shep shows none of his earlier arrogance or defiance and obediently raises his tail for his master. You tease your saliva-slick dick against his asshole before pushing into him. He gives a needy moan, his well-trained body knowing what it wants and knowing to give you what you need. His tight pucker yields to you, drawing a slutty moan from the buff dog. You grin at this and give his firm ass a swat, getting a second from him and also getting a satisfying squeeze from his [if Cock Length of Player > 24]over-[else if Cock Length of Player > 12]well [else if Cock Length of Player < 6]lightly [end if]stuffed hole.";
		WaitLineBreak;
		say "     You have your fun with him, thrusting into that clenching hole of his. After a few thrusts, he's grinding back into you with need, so you reach around and fondle his junk. This serves to encourage more of this kind of behavior from him in the future. And after a good fuck session, you're both more than ready to pop, so you slam [if Cock Length of Player > 16]fully[else]hard[end if] and unload[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load stuffs him so full his toned abdomen swells with your output[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load stuffs him so full his toned abdomen bulges with your output[else if Ball Size of Player > 3]. Your [Cum Load Size of Player] load fills his bowels with your sticky semen[else]. Your load fires into his bowels, once again stacking your claim on him as yours[end if]. Feeling this, your trained subby puppy stops holding back and cums as well, expending his virile seed onto the ground all while milking you for more or your own. Once done, you pull out, pat his messy ass and tell him what a good dog he is, much to your pet's pleasure before leaving him to recover.";
	else:
		say "***M/F subby Korvin sex.";
	now lastfuck of gshep is turns;

Section 6 - Events

[ Korvin sniffs after a female bull terrier -> see file Wahn/Mall Expansion.i7x]
[ Korvin meets a young adult beagle boy -> see file Speedlover/Extra College Events.i7x]
[ Korvin antagonizes Tehuantl -> see file Wahn/Tehuantl.i7x]
[ Korvin put in his place by Alpha Fang -> see file Prometheus/Fang.i7x]
[ Alpha Fang solidifies his position over Korvin sexually -> see file Prometheus/Fang.i7x]

Table of GameEventIDs (continued)
Object	Name
Trucker Bar	"Trucker Bar"

Trucker Bar is a situation.
ResolveFunction of Trucker Bar is "[ResolveEvent Trucker Bar]". Trucker Bar is inactive.
The sarea of Trucker Bar is "High".
The PrereqCompanion of Trucker Bar is gshep.

to say ResolveEvent Trucker Bar:
	if Resolution of Trucker Bar is 0: [first time]
		say "     Wandering through the outskirts of the downtown area, you reach a section of town that's just at the edge of the warehouse district. It is clearly more of a working class neighborhood over here, as there are 'regular' businesses instead of boutiques dominating the streetfront. Of course, most of the shops are closed with heavy iron shutters, and those that are not have already been looted. Turning a corner into another very similar-looking road, you realize that suddenly, a familiar presence is missing from your side. Looking around, you see that Korvin wandered off a few steps and is looking at his surroundings with a thoughtful expression. 'Wait a moment, [K_Boss]. I think this feels familiar! Can we go that way?'";
		say "     [bold type]What's your reply?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Sure, let's see where his instinct takes you.";
		say "     [link](2)[as]2[end link] - Not right now. You've got places to be.";
		say "     [link](3)[as]3[end link] - No, and you don't care about that. He should forget it.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to follow Korvin, [link]2[end link] to postpone investigating or [link]3[end link] to refuse for good.";
		if calcnumber is 1:
			LineBreak;
			say "[InvestigateTruckerBar]";
		else if calcnumber is 2:
			LineBreak;
			say "     Taking some steps after Korvin, you pat him on the shoulder and say that you don't have time for this right this moment. He's got to have some patience, maybe you can come back and investigate further in the future. The muscular anthro glances down the street hesitantly, then nods and says, 'As you say, [K_Boss].'";
			now Resolution of Trucker Bar is 99; [postponed]
		else if calcnumber is 3:
			LineBreak;
			say "     With a shake of your head, you put two fingers in your mouth and whistle for Korvin, making the German shepherd trot back over to you and take his usual space. Then you tell him that you don't care to investigate this further, so he should just put it out of his mind. The muscular anthro glances down the street hesitantly, then nods and says, 'As you say, [K_Boss].'";
			now Resolution of Trucker Bar is 100; [refused]
			now Trucker Bar is resolved;
	else if Resolution of Trucker Bar is 99: [postponed before]
		say "     Wandering through the outskirts of the downtown area, you again reach the street that seemed familiar to Korvin when you passed this way before. 'Wait a moment, [K_Boss]. Can we maybe check this way? I think I remember the way somewhere!'";
		say "     [bold type]What's your reply?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Sure, let's see where his instinct takes you.";
		say "     [link](2)[as]2[end link] - Not right now. You've got places to be.";
		say "     [link](3)[as]3[end link] - No, and you don't care about that. He should forget it.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to follow Korvin, [link]2[end link] to postpone investigating or [link]3[end link] to refuse for good.";
		if calcnumber is 1:
			LineBreak;
			say "[InvestigateTruckerBar]";
		else if calcnumber is 2:
			LineBreak;
			say "     Taking some steps after Korvin, you pat him on the shoulder and say that you don't have time for this right this moment. He's got to have some patience, maybe you can come back and investigate further in the future. The muscular anthro glances down the street hesitantly, then nods and says, 'As you say, [K_Boss].'";
			now Resolution of Trucker Bar is 99; [postponed]
		else if calcnumber is 3:
			LineBreak;
			say "     With a shake of your head, you put two fingers in your mouth and whistle for Korvin, making the German shepherd trot back over to you and take his usual space. Then you tell him that you don't care to investigate this further, so he should just put it out of his mind. The muscular anthro glances down the street hesitantly, then nods and says, 'As you say, [K_Boss].'";
			now Resolution of Trucker Bar is 100; [refused]
			now Trucker Bar is resolved;

to say InvestigateTruckerBar:
	say "     'Thank you,' the German shepherd says, smiling at you and wagging his tail. 'It's just that I feel like I walked past that building over there a bunch of times before, you know. Can't remember when or where I was going exactly, but it's something at least.' You reach out and give Korvin's upper arm a squeeze, telling him you want to know more about him too and are willing to spend a while exploring. With the decision made, you follow the anthro on a slow trek through the area, consisting of slowly walking where he leads, interspersed with Korvin stopping to look around, sniffing the air, sometimes even backtracking a little when he takes what he feels like a wrong turn. About three city blocks later, you cross diagonally through an abandoned lot, and the canine's pace becomes quicker, as he gets ever more sure that he's got the way down correctly now. You walk down another block at a right angle, then turn a corner and see... something:";
	say "     About 200 feet down the broad street ahead of you is a dead end, being formed by long-haul truck having been manouvered to stretch from the buildings left to right, not quite touching them. The remaining few feet of space beside the truck and underneath it have been closed off with wooden barricades, effectively cutting off this approach to what lies beyond. 'Hm, that's new,' Korvin says as he looks at the truck, then nods towards the next road at the crossing you just passed. 'Let's go around the block and see if we can get in from the other side. Following that plan, you do a bit more walking and eventually reach another barricade, this one consisting of two delivery trucks parked end to end, with a little bit of space in between them. A large board put up beside that passage has been spray-painted to read 'TRUCKTOWN' in large and bold letters, with a list of rules beneath: 'No begging. No stealing. Keep it in your pants!'";
	WaitLineBreak;
	say "     Two burly men stand guard at the entrance, one human and armed with a baseball bat, the other partially ursine, sporting immense, shaggy bear arms, complete with dangerous-looking claws. The two of them look at you suspiciously as you approach, calling out, 'Stop right there. Who are you?' The conversation that follows tells you that they're called Thomaz and Mikailovic and they're on post to make sure no out of control feral gets in. Past them, you can see a large paved lot full of trucks, RV's and even a yellow school-bus that somehow found its way into this industrial zone. A bunch of people in various states of infection are around, and there is a bar on the far end, just a little past the truck barricade that you and Korvin ran into before. Finally, after you convince the guards that you're not about to molest anyone if they let you in, and a quick stop at the 'pre-owned clothing' pile makes sure that neither you nor Korvin are letting your genitals dangle freely, you enter the protected settlement.'";
	say "     'Macey's Bar and Grill,' Korvin reads the sign of the bar out loud as you approach it. 'Yeah, I hung out in there for years, I think. Fuck, I remember the thursday special - fries and a whole plate of wings, perfect for watching the game. The steps of his paws on the asphalt quicken and you have to hurry to keep up. When Korvin pulls open the entrance door, someone is right beyond it, on his way out, a trucker with plenty of gray in his beard. The two men pass each other, but a heartbeat or two, the older man pauses and turns back, calling out, 'Hey! Is that you Eddie?' Korvin freezes on the spot, half a step inside the bar, then whirls around. 'Wait, I remember you being there for the fight! But my name is Korvin.' The trucker nods, 'That's what I'm saying, dude! Eddie Korvin, man if you didn't have that telltale scar on your mug, I'd never have recognized you!'";
	WaitLineBreak;
	say "     'Wait, so - we, we know each other? I - I don't remember your name,' Korvin says, his usual cocky attitude replaced by uncertainty. The trucker replies, 'I'm Cantrell Devine, that ring any bells?' As Korvin shakes his head, the man frowns and blows out his breath. 'Man, guess being transformed really rattled loose some things up in there, eh? Well, nice to meet you - again.' He holds out a hand to give both Korvin as well as yourself a very firm handshake, then nods over to the parking lot. 'Come on, let's not block the entrance while we talk.' A short walk later, the three of you are sitting in camping chairs around a fire pit made from a sawed-in-half oil barrel. 'So, let me update you about what happened here after we last saw each other. As humans and all that,' Cantrell says, waving a hand to indicate Korvin/Eddie's canine form.";
	say "     'It was total chaos, people getting jumped left and right and turning too. But we weren't ready to just give in. Can't claim that it was my idea or anything, but when I arrived back over here, the guys and I armed ourselves and formed a self-defense group. You know how rough it can be out on the roads, so everyone had some sort of weapon available to use. Not a second too soon, as some of the infected went for us fast! We learned quick that guns are a bad idea these days - first, because most people don't want to blow out the brains of their transformed neighbors and second because them ferals don't really fear the bullets anyways, or stay down all that long. And on top of that, when Mikailovic was using his shotgun to block a paw-strike, it just somehow... melted in his grip, and he grew those bear arms!'";
	WaitLineBreak;
	say "     Shaking his head in disbelief, Cantrell runs a hand over his salt-and-pepper beard. 'Just like Mika, not everyone got away without some shifts about their persons, but working as a group, we managed to fight the ferals off. They're almost all individuals and pretty focused on sex, you know. So if a feral grabbed one of us and wrestled him down, they straight away tried to fuck, to be clonked out by the next trucker or three. Those were some crazy hours and days. Fighting to clear the lot and streets around, blocking the approaches and all of that. But we managed, thank god, and with everything folks were hauling in their rigs, we plan to outlast this shit until the army moves in. Heard some talk of that on the radio.' Letting his gaze sweep over the community of people having found refuge away from the chaos outside this little enclave, Cantrell's bearded features pull into a satisfied smile. Then he looks at Korvin and asks, 'How about yourself and Wyatt? Figured you had gone home to last out this shit.'";
	say "     Korvin looks at the man in an almost stunned fashion, mumbling the name Wyatt to himself as he wracks his brain. You decide to jump in and tell Cantrell a little of what is going on, namely that Korvin can barely remember anything at all from when he was a human, and had been living on the streets for a while before you found him and the two of you joined up. By the time you finish, Korvin has found his words again, and he bursts out with, 'Tell me about Wyatt, and Eddie, please! All I got are some vague, blurry memories!' 'Sure. Wyatt is your girlfriend, Eddie. Talked to her once or twice when she came to the bar with ya. She's a tough cookie, totally hustled a few guys for money on the pool table. Hah, she shook those boobs just in time to distract them. But back to you now: Your name is Eddie Korvin, you're twenty-six and work as a mechanic at a garage downtown. Man, can you really not remember? Known you since you were about knee-high and you accompanied your dad in his truck the first time.'";
	WaitLineBreak;
	say "     The next twenty minutes or so are filled with a question and answer session between Cantrell and Korvin, by the end of which you've learned several facts and anecdotes about the German shepherd's human past, among which is his home adress, which Cantrell notes down on a notebook, ripping out the page and handing it to Korvin. The anthro dog thanks him, clutching the paper tightly in his paw-hand, saying his goodbyes and getting out of Trucktown with a new haste to his steps. As you hurry after him, you notice that he slows down after turning the next street corner and getting out of sight of the settlement. Seems like he mostly just wanted to get [italic type]away[roman type] from there, and now he's bracing with one hand against a wall and almost hyperventilating. 'Fuck! I don't really remember ANYTHING that Cantrell was so happy to recount! That... Eddie guy he knew, I don't know him! That's not me!'";
	say "     There's pain and fear in Korvin's voice, as he feels betrayed by his own memory upon learning that he's supposed to be someone else. His paw-hand is clutching the paper with the address in a death-grip and he seems to turn his head away from looking at it. Maybe he doesn't want to face what it represents and is regretting ever learning about his past?";
	say "     [bold type]It is clear that Korvin is in crisis, and you should say something. But what?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Tell him that he needs to face Eddie, find Wyatt and learn more. Otherwise he'll wonder forever what else there was.";
	say "     [link](2)[as]2[end link] - Tell him that he's Korvin. That's enough. He should put Eddie out of his mind.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to investigate further or [link]2[end link] to suggest he forget about Eddie and Wyatt.";
	if calcnumber is 1:
		LineBreak;
		say "     Reaching out to stroke the head-fur of your bodyguard in his moment of weakness, you tell him in a calm tone that he must investigate further. If he doesn't learn more about Eddie and Wyatt, it'll eat him up inside over time. Hearing your voice to guide him, the muscular canine relaxes a little. 'Thanks, [K_Boss]. I wouldn't know what I'd do without you!' he says in relief, then unfolds the crumpled paper to read it. 'I remember something about this. It's an apartment block, red bricks, fairly tall.'";
		if Red Apartment Building is known:
			say "     Having a look at the address yourself and hearing Korvin's description, you realize that you've actually been there before. It's the [link]red apartment building[as]nav red apartment building[end link]!";
		else:
			AddNavPoint Red Apartment Building;
		now Resolution of Trucker Bar is 1; [further investigation]
	else:
		LineBreak;
		say "     Reaching out to stroke the head-fur of your bodyguard in his moment of weakness, you tell him in a calm tone that Korvin is all you need. He said himself that he's not Eddie, so why chase after that ghost? He should put the guy out of his mind. Hearing your voice to guide him, the muscular canine relaxes a little. 'Thanks, [K_Boss]. I wouldn't know what I'd do without you!' he says in relief, slowly loosening the grip on the crumplied piece of paper, letting it fall to the ground. It seems like a great weight has been lifted off his shoulders, and the canine immediately starts to walk away from where he stood. 'Let's get out of here, alright?' he asks, and you assent, walking back the way you came to get here.";
		now Resolution of Trucker Bar is 101; [made Korvin give up further poking into his past]
	now Trucker Bar is resolved;

instead of navigating Red Apartment Building while (companion of player is gshep and Resolution of Trucker Bar is 1):
	say "[NavCheck Red Apartment Building]";
	if NavCheckReturn is false, stop the action;
	move player to Red Apartment Building;
	if debugactive is 1:
		say "     DEBUG: Korvin finds his past[line break]";
	say "     Making your way through the city, you eventually arrive at a fairly modern apartment building block, four stories tall and painted in a light, friendly reddish tone. Looking up at it, your German shepherd companion scrunches up his features in a thoughtful expression, then shakes his head slowly. 'It's not ringing any bells in my mind. At all,' he says morosely, taking out the note with the address once more to look at it. 'This is the place, though. It says Eddie's apartment is on the fourth floor.' You give Korvin's shoulder a squeeze to lend your support, then allow him to lead on towards the building. Passing a few groups of partially infected people, the anthro dog gives them suspicious looks and hastens his steps, soon arriving at the entrance doors of the red apartment building. Stepping through the glass door, the two of you walk into what appears either to be the site of a large orgy, or the result of frequent sexual encounters in the building lobby, as clothes are scattered on the ground and the scent of cum hangs in the air.";
	say "     Noticing that all of the apartment doors around you have been either wrenched out of their frames or at least been broken into, your canine companion starts to become a little frantic. 'Man, look at this! I - I just had a thought. What if Eddie - err, I - had a picture of her in his wallet? You know, his girlfriend Wyatt? Or worse, those fucking dogs might even have known him! Then they'd know where to find themselves a pretty little bitch, and they wouldn't even need to break in either! Maybe they came here and r- fucked her. They might [italic type]still[roman type] be up there, taking turns!' Adam's apple bobbing visibly as he swallows, Korvin then breaks out into a run, sprinting up the stairway to the next floor. A sofa pushed into the way to block the upper end of the steps does little to slow his progress as the German shepherds leads you on a chase up three flights of stairs before finally coming to a stop on the top floor, panting.";
	WaitLineBreak;
	say "     Glancing once more at the note from Cantrell, your companion points at one door specifically. 'That one, 4F. I - damn, I can't even tell you how many of them there were, exactly. Three dog-dudes at least, or four, with one after another taking a turn on me. So... how about I go left, you go right if there's more than one of the fuckers in the first room, and we hit them in parallel? That sound good to you?' You nod to him, having already gone this far in the investigation of Korvin's past and wanting to see it through yourself. Giving you a grim, respectful nod, the German shepherd hurries over to the door, taking position against the wall beside it and leaving you to go to the other side, wieh neither standing right in front. Then he makes a fist and hits the door several times, the insistent knock surely heard in the whole apartment beyond.";
	say "     For several long, tense moments, there is no noticable reaction, then you can hear the very faint scrape of the peephole cover being pulled aside by someone. Korvin smacks the door again and shouts, 'Open up already!' It is a woman's voice that replies, 'Who is this? Go away and leave me alone!' Your canine companion seems to freeze in shock and surprise as he hears that voice, so you quickly jump in and say that you aren't here to hurt her, calling out your name and saying that Eddie is here with you. 'What?!' the woman bursts out in response, followed by a short but loud scraping noise - furniture on the floor, you guess. Then the door opens, just a crack before it bumps against the heavy object that Wyatt must have placed on the inside to brace it. On top of that, it is secured by a chain. Through the narrow door slit, you can see a beautiful human woman with blond hair and blue eyes, looking out at you with a suspicious expression. A little lower, you see her hand, clutching a black and orange striped can of pepper spray.";
	WaitLineBreak;
	say "     'W-wyatt, you're okay!' Korvin says, stepping into her zone of vision. 'It's me, Korv- err, Eddie! Are you alone? No dogs in there with you? I - I was worried they might have come for you next.' 'Eddie? No, you can't be! You're - you're a dog!' Turning his head to show off the scar that marks him, your companion points at it and adds, 'It's me, look here!' The young woman's eyes go wide and she gasps, followed by the door being slammed shut. Not to shut you out though, but instead for her to undo the chain. There is more scraping of furniture, followed by the door opening a little further, allowing Wyatt to slip out. You notice that she's still got the can of pepper spray clutched tightly in her hand and is keeping two steps of distance to Korvin. Not exactly an exuberant welcome, but then, she's actually is still completely human too.";
	say "     'I thought you were dead, or... worse!' Wyatt bursts out, looking at Korvin with moisture welling up in the corners of her eyes even though she does her best to keep her composure. 'You were gone so long, Eddie! Why didn't you come back to me before?' The words are almost an accusation, making Korvin twitch as if he had been whipped, his tail dipping down between his legs. 'I - I didn't remember! I don't really recall much of him - me - Eddie! Or you. Cantrell gave us the address of this place just a little while ago, after we ran into him,' the anthro shoots back, getting quieter with each sentence. 'God, that's... horrific. So this infection, or whatever it is, messed up your mind?! What do you remember still?' 'Nothing much, it's all very blurry.' Going pale, Wyatt bites her lip and raises her hand, 'Wait, I got an idea!' She slips back inside the apartment, having go to side-on to fit through the crack as the door still is mostly blocked, leaving Korvin and yourself alone outside.";
	WaitLineBreak;
	say "     Clearing his throat and looking over to you, Korvin says quietly, 'She's pretty hot, but I could never have picked her out of a crowd. What does that say about me that I can't remember someone so important?' It's not an easy question to answer, leaving you scrambling for a reply. Before you manage to find it, Wyatt comes back, now holding an album in one hand, the pepper-spray in the other. 'Here, look at this,' she says, holding the book out to Korvin at the end of a stretched-out arm. Flipping the photo album open, he looks at it with a grim, fatalistic expression, flipping through a few pages. 'Wait, that one! Who's he? I swear I've seen that face before,' he says suddenly, pointing at an older man with white hair.' Wyatt's eyes widen as he shows her, and she says, 'That's your dad, Eddy. He died two years ago.' 'Or, er - her, the woman in this picture. Seems pretty friendly?'";
	say "     Pressing her lips together, the blonde woman explains, 'Inga, she's in my study group. You met her during a get-together last christmas.' Paging through the collected memories of Eddie, Korvin's gaze flicks quickly over most pictures fairly quickly, without a hint of recognition. There are a few more back and forths between him and Wyatt, but other than telling him a few names, there are only one or two situations he fully recalls. Overall, this leaves everyone rather tense, as Wyatt must have hoped for more, and Korvin gets frustrated as he draws one blank after another. Finally, as Korvin reaches the last page and shuts the album again, the young woman seeks to escape the uncomfortable quiet that is left by directing a question to you instead. 'How do you fit into all of this by the way?'";
	WaitLineBreak;
	say "     In order not to complicate things, you give her a somewhat edited version of the events, with you 'meeting' Korvin and joining up with him for security as you make your way through the city. You're not completely sure that she buys it, as Wyatt's eyes flick over to Korvin - and his collar - more than a few times. As you finish your explanation, she nods slowly, then turns back to Korvin. 'So, Eddie. How about you come back home, into the guest room for now? There must be some way to make you remember your life! Maybe it'll just take time?' The German shepherd looks at her, opens his muzzle, then closes it again, looking back and forth between the girlfriend of his former self, and you. His hand comes up to touch the studded collar around his neck.";
	say "     [bold type]The muscled canine seems to be stuck, trying to come to a decision. Do you want to try to influence him?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Tell him to go to her. He'll remember being Eddie eventually, you're sure about that.";
	say "     [link](2)[as]2[end link] - Say nothing, and accept what comes of it. This is a decision that the anthro has to make for himself.";
	say "     [link](3)[as]3[end link] - Reason with them and explain why Korvin cannot stay. He isn't Eddie, that's for sure.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to encourage Eddie to stay, [link]2[end link] to wait for his decision, or [link]3[end link] to suggest he forgets Eddie.";
	if calcnumber is 1:
		LineBreak;
		say "     Reaching out to touch Korvin's arm, you nod to him, then go on to put your hands on his collar. With a few quick movements, the band slackens from its tight fit around his neck. Pulling it away and feeling the open ends brush against your palm has a feeling of finality, especially as he meets your gaze and says, 'Thanks[if Player is not defaultnamed]b- no, [name of Player][end if]! I never thought that running into you would lead here. We'll make it work, somehow.' With that said, he turns to Wyatt, tail wagging behind his back. The young woman lifts her gaze from the collar in your hand, pressing her lips together and pointedly not commenting, then smiles at the anthro dog and says, 'Come in Eddie, we've got so much to talk about. It's good to have you back!' She leads the way into the apartment, slipping through the crack before moving the blocking furniture further and allowing Eddie to walk inside without having to squeeze.";
		say "     With the words, 'Goodbye, be safe out there,' Wyatt shuts the door before you a moment later, and you hear her put the chain back on, locking it, and pushing whatever it is that blocked the door back into place. You're left standing by yourself on the 4th floor of the apartment building, feeling the conspicuous absence of your trusted bodyguard as you idly glance over to the giant stick insect sharing the room with you. It doesn't comment, or move even an inch, deepening your feeling of being all alone. With a shrug, you tell yourself that you did the right thing, and feel a bit more human for it.";
		SanBoost 30;
		now gshep is not tamed;
		now companion of player is nullpet;
		now Resolution of Trucker Bar is 50; [Korvin/Eddie stayed with Wyatt]
	else if calcnumber is 2:
		LineBreak;
		say "     Carefully holding your composure to show a neutral expression even while you watch Korvin closely, you see him meet your gaze, then look back over to Wyatt. Taking a deep breath, the anthro canine steps towards her, swallows visibly, and says, 'I - I'm sorry, but I'm not Eddy. I don't know him, or you, or anything you have gone through together. How long do you think it would take before you caught what made me this way, and lost yourself too? No, I must go.' He starts to hold out the album, then thinks better of it and instead props it against the wall, next to the apartment door. 'Maybe just... put that into a plastic bag or something, if you're gonna keep it.' Wyatt sniffles at his words, a single tear running down her pale, beautiful face as she holds her distance to the anthro.";
		say "     'I'm sorry too, Ed- no, you call yourself Korvin, right?' she replies, letting out a halting breath as Korvin nods. 'B-be safe out there, both of you.' With those words still in the air, the human woman slips through the door into her apartment and pushes the door shut.' The sound of a lock being turned, a chain rattling, then whatever it is that blocks the door thumping against it, gives the moment an air of finality. You're left standing on the 4th floor of the apartment building, with the comforting presence of your trusted bodyguard by your side. The giant stick insect sharing the room with you doesn't comment, or even move an inch, serving as a quiet witness of what happened. 'So, let's get going then?' Korvin asks you, consciously choosing to make his tail give a hopeful swish.";
		now Resolution of Trucker Bar is 2; [Korvin himself decided to stay with the player]
	else if calcnumber is 3:
		LineBreak;
		say "     Clearing your throat, you draw everyone's attention to yourself. Pointing at the album, you explain that it is the best proof they could have gotten that Eddie doesn't really exist anymore. Korvin recognized almost none of it, and that's not a good sign for inviting him into her place, you tell Wyatt. He's wild, almost feral, and has lived out on the streets for weeks. Without you to temper his instincts, he'd never have come here in the first place, and before long, there'd just be two canines in this apartment, neither of them being the persons they once were. Korvin is frozen as he listens, while Wyatt sniffles at your words, a single tear running down her pale, beautiful face. The two of them look at you, neither finding any words to refute the facts that you are laying out. Silence stretches out for a few heartbeats when you finish, then Korvin bends down to place the album on the floor. 'Maybe just... put that into a plastic bag or something, if you're gonna keep it.'";
		say "     'I'm sorry too, Ed- no, you call yourself Korvin, right?' she replies, letting out a halting breath as Korvin nods. 'B-be safe out there, both of you.' With those words still in the air, the human woman slips through the door into her apartment and pushes the door shut.' The sound of a lock being turned, a chain rattling, then whatever it is that blocks the door thumping against it, gives the moment an air of finality. You're left standing on the 4th floor of the apartment building, with the comforting presence of your trusted bodyguard by your side. The giant stick insect sharing the room with you doesn't comment, or even move an inch, serving as a quiet witness of what happened. 'So, let's get going then?' Korvin asks you, his tail hanging limply behind his back.";
		now Resolution of Trucker Bar is 3; [the player talked Korvin into staying with them]
	wait for any key;
	now Player is in Red Apartment 4th Floor;

[ *** notes ]
[
Post-fight (2nd or 3rd fight)
Korvin bad-mouths the player, criticizing their fighting style/skill, kept getting in his way, glory hound
- Player can put him back in his place - "I beat you", pin him down and so on. Fuck him, maybe minor stat upgrade to K.
- Player listens to his feedback, maybe a bit of XP for player

Growls wants to go out and fight (if no combat in several rounds)
---- what are you doing coming in here? I want to go out and fight. ----
- Player can put in his place & set schedule
- Player can be understanding and go out for a fight - letting him get it out of his system. - Random fight

]


[ *** DEBUGGER ]

Section 8 - Debugger - Not for release

gsdpettesting is an action applying to nothing.
understand "gsdpettest" as gsdpettesting.

carry out gsdpettesting:
	say "Now set to test Korvin.";
	now gsd_pet is 12;
	now gshep is tamed;
	add "Tamed" to Traits of gshep;
	now weapon damage of gshep is 5;
	now level of gshep is 3;
	now dexterity of gshep is 13;
	now lastfight of gshep is turns;
	now GShepLastScene is turns;
	now lastfuck of gshep is turns + 6;
	now gshep_fights is 0;
	now gshep_postfight is 0; [post-fight argument]
	now gshep_sexscene is 0; [sex-role argument]
	now gshep_bed_scene is 0; [discipline argument]
	now gshep_inactive is 0; [inactivity argument]

Korvin ends here.
