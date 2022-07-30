Karen by AGentlemanCalledB begins here.
[Version 1.1 - Made Karen an NPC located in the library breakroom - Luneth      ]

[  HP of Rex                                                                    ]
[ 0 = not met                                                                   ]
[ 1 = done event once, received bone                                            ]
[ 2-4 = used bone  1-3 times                                                    ]
[ 5 = met Rex, lost bone                                                        ]
[ 6-9 = Training phase, fucked Rex, pet offer at 9                              ]
[ 10 = Pet game over 1                                                          ]
[ 11 = Accepted collar                                                          ]
[ 49 = Defeated by Rex in escape quest                                          ]
[ 50 = Defeated Rex                                                             ]

[  HP of Karen                                                                  ]
[ 0 = Default state                                                             ]
[ 1 = Refused Rex offer @ Rex HP 9                                              ]
[ 2 = talked about bakery                                                       ]
[ 3 = Spoke to Francois, got cookies                                            ]
[ 4 = Trigger Fight against Rex                                                 ]
[ 5 = Defeated Rex, default Pet Karen Value                                     ]
[ 6 = Agreed to see Francois                                                    ]
[ 7 = Met Francois, locker event opened                                         ]
[ 8 = Completed locker event                                                    ]

[ Libido of Karen - last turn fucked by Rex                                     ]

Section 1 - Karen as a pet/NPC

Libido of Karen is usually 10000.

the linkaction of Karen is "[Karenlinkaction]".

to say Karenlinkaction:
	say "Possible Actions: [link]talk[as]talk Karen[end link], [link]smell[as]smell Karen[end link], [link]fuck[as]fuck Karen[end link][line break]";

Table of GameCharacterIDs (continued)
object	name
Retriever Girl	"Retriever Girl"

Retriever Girl is a pet.
NPCObject of Retriever Girl is Karen.
understand "Karen" as Retriever Girl.
IDList of Retriever Girl is { "Karen", "karen", "girl", "retriever", "retriever girl" }.
printed name of Retriever Girl is "Karen".
[Physical details as of game start]
ScaleValue of Retriever Girl is 3. [human sized]
Body Weight of Retriever Girl is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Retriever Girl is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Retriever Girl is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
SleepRhythm of Retriever Girl is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Mouth Length of Retriever Girl is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Retriever Girl is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Retriever Girl is 6. [length in inches]
Cock Count of Retriever Girl is 0. [No cock]
Cock Girth of Retriever Girl is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Retriever Girl is 0. [ ]
Ball Size of Retriever Girl is 0. [  ]
Ball Count of Retriever Girl is 0. [No balls]
Cunt Count of Retriever Girl is 1. [1 pussy]
Cunt Depth of Retriever Girl is 10. [can take 10 inch dicks]
Cunt Tightness of Retriever Girl is 2. [No Cunt]
Clit Size of Retriever Girl is 1. [size 1-5, very small/small/average/large/very large]
Asshole Depth of Retriever Girl is 13. [inches deep for anal fucking]
Asshole Tightness of Retriever Girl is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Nipple Count of Retriever Girl is 4. [4 nipples]
Breast Size of Retriever Girl is 2. [B Cup at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Retriever Girl is false. [can not take oversized members without pain]
Sterile of Retriever Girl is false.
PlayerMet of Retriever Girl is false.
PlayerRomanced of Retriever Girl is false.
PlayerFriended of Retriever Girl is false.
PlayerControlled of Retriever Girl is false.
PlayerFucked of Retriever Girl is false.
OralVirgin of Retriever Girl is false.
Virgin of Retriever Girl is false.
AnalVirgin of Retriever Girl is true.
PenileVirgin of Retriever Girl is true.
SexuallyExperienced of Retriever Girl is true.
MainInfection of Retriever Girl is "Retriever Female".
Description of Retriever Girl is "[KarenDesc]".
Weapon Damage of Retriever Girl is 10.
The level of Retriever Girl is 1.
Dexterity of Retriever Girl is 10.
The summondesc of Retriever Girl is "[SummonKaren]".
The dismissdesc of Retriever Girl is "[DismissKaren]".
The assault of Retriever Girl is "[one of]Stepping forward quickly, [or]Circling around behind the enemy, [or]Rushing recklessly towards your foe, [or][at random]Karen [one of]strikes with her short claws[or]attacks with a swift, low kick[or]clips the opponent with a quick strike as she runs past[at random].".
the fuckscene of Retriever Girl is "[SexWithKaren]".

to say SummonKaren:
	if Karen is visible: [summoning while standing next to her]
		say "     Karen smiles happily as you wave her over, hiking her bag up over her shoulder as she jogs forward.";
	else: [regular summoning]
		say "     Karen smiles happily as you wave her over, hiking her bag up over her shoulder as she jogs forward.";

to say DismissKaren:
	move Karen to Breakroom;
	if Player is not in Breakroom: [regular dismiss]
		say "     Telling Karen that you're going to go forward solo she quickly nods and starts to run back towards the library on all fours.";
	else: [dismissing her in the abbey]
		say "     ...";

Table of GameCharacterIDs (continued)
object	name
Karen	"Karen"

Karen is a woman.
ScaleValue of Karen is 3. [human sized]
Body Weight of Karen is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Karen is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Karen is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
SleepRhythm of Karen is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Mouth Length of Karen is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Karen is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Karen is 6. [length in inches]
Cock Count of Karen is 0. [No cock]
Cock Girth of Karen is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Karen is 0. [ ]
Ball Size of Karen is 0. [  ]
Ball Count of Karen is 0. [No balls]
Cunt Count of Karen is 1. [1 pussy]
Cunt Depth of Karen is 10. [can take 10 inch dicks]
Cunt Tightness of Karen is 2. [No Cunt]
Clit Size of Karen is 1. [size 1-5, very small/small/average/large/very large]
Asshole Depth of Karen is 13. [inches deep for anal fucking]
Asshole Tightness of Karen is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Nipple Count of Karen is 4. [4 nipples]
Breast Size of Karen is 2. [B Cup at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Karen is false. [can not take oversized members without pain]
Sterile of Karen is false.
PlayerMet of Karen is false.
PlayerRomanced of Karen is false.
PlayerFriended of Karen is false.
PlayerControlled of Karen is false.
PlayerFucked of Karen is false.
OralVirgin of Karen is false.
Virgin of Karen is false.
AnalVirgin of Karen is true.
PenileVirgin of Karen is true.
SexuallyExperienced of Karen is true.
MainInfection of Karen is "Retriever Female".
Description of Karen is "[KarenDesc]".
MainInfection of Karen is "Retriever Female".

instead of sniffing Karen:
	say "[KarenScent]";

instead of fucking Karen:
	say "[SexWithKaren]";

to say KarenDesc:
	if Karen is in Rex's Place:
		say "     Looking over Karen, you recognize her as the same retriever bitch that you saw abducted by Rex some time ago, now wearing a thin pink collar with a heart-shaped tag that has her name engraved on it.";
	else:
		say "     Karen is a shapely female canine with a thick coat of golden fur. Currently unclothed, her four firms breasts and delicate female features are all out on display. Her canine tail wags happily behind her as she notices you looking at her.";
	if Retriever Girl is listed in companionList of Player:
		say "     [bold type]She is currently following you as your battle companion.[roman type][line break]";

instead of sniffing Retriever Girl:
	say "[KarenScent]";

to say KarenScent:
	if Karen is in Rex's Place:
		say "     Karen smells strongly of Rex's powerful musk, mixed with the scent of her own dripping cunt, and strangely a faint hint of strawberry.";
	else:
		say "     Karen has a light scent of an aroused female canine.";

instead of conversing the Karen:
	if Karen is visible:
		say "[KarenTalkMenu]";
	else if Retriever Girl is listed in companionList of Player:
		say "[KarenTalkMenu]";
	else:
		say "     Karen isn't here.";

instead of conversing Retriever Girl:
	if retriever girl is not tamed:
		say "     Who?";
	else:
		if Player is in Breakroom and Karen is in Breakroom:
			say "[KarenTalkMenu]";
		else if Retriever Girl is listed in companionList of Player:
			say "[KarenTalkMenu]";
		else:
			say "     Karen isn't here.";

to say KarenTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chit Chat";
	now sortorder entry is 1;
	now description entry is "Just have some simple chit chat";
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
				if (nam is "Chit Chat"):
					say "[KarenTalk1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Retriever Girl, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KarenTalk1:
	if Karen is in Rex's Place:
		if HP of Karen is 1:
			say "     Seeing Karen sitting alone, you realize she may know of some way you could distract Rex. You subtly try and get any information she may have by asking her about her previous life. Not surprisingly, she doesn't remember much. She tells you about the few fuzzy memories she has of her old self; most of the vague tales of her life as a student are unhelpful, but one story does catch your attention. She tells you about an unusual bakery on the outskirts of the high rise district she and Rex used to visit when he was the pet instead of her, a place that specialized in premium pet treats. Most of the story ends up revolving around how much she'd like to try one of those cookies now, but she does let slip that the old Rex was always ecstatic to visit and sample their wares. Perhaps this could provide the distraction you need?";
			now HP of Karen is 2;
		else if HP of Rex > 9:
			say "     [one of]I'm so glad you decided to stay with us; I'm sure you'll love it.[or]Karen takes a moment to admire the collar Rex has given you to wear, comparing it to her own for a moment before complimenting you on how nice it looks.[or]Karen is far too busy playing with Rex on the floor to talk right now.[or]Karen is sitting on the floor in front of Rex, begging for the treat he has suspended above her head. Clearly she's far too focused on Rex and the cookie to talk right now.[or]Karen barely acknowledges you as you approach, apparently not interested in conversation while cleaning herself up after her latest escapade with Rex.[or]Karen smiles up at you as she eats from a small pink dog bowl, offering you a taste before she digs back in.[at random]";
		else:
			say "     [one of]Karen is far too busy playing with Rex on the floor to talk right now.[or]Karen is sitting on the floor in front of Rex, begging for the treat he has suspended above her head, clearly she's far too focused on Rex and the cookie to talk right now.[or]'I'm so glad that bone brought me back here to Rex, and you're pretty lucky it brought you here to him too!' Karen says with a smile.[or]'Are you sure you don't want to stay here with us?' Karen asks with a cute pout.[or]Karen barely acknowledges you as you approach, apparently not interested in conversation while cleaning herself up after her latest escapade with Rex.[or]Karen smiles up at you as she eats from a small pink dog bowl, offering you a taste before she digs back in.[at random]";
	else if Retriever Girl is listed in companionList of Player or Karen is in Breakroom:
		if HP of Karen is 5 and ( Libido of Karen - turns > 8 ):
			say "     Noticing Karen looking a little down, you ask her what's on her mind. 'It's been a while now since we got away from Rex, but I still can't remember much of who I was before I met him. It's a little bit frightening, not knowing who you are,' she says, clearly struggling to keep her emotions in check. Recalling that Francois seemed to remember her from before the outbreak, you suggest going to see him. Karen perks up a little at the suggestion. 'Really? Do you think he would help? I suppose it couldn't hurt,' she replies with a weak smile. 'It'll be nice to see another friendly face, at least.'";
			now HP of Karen is 6;
		else:
			say " 	 [one of]'Thanks again for bringing me with you. I feel so much safer with you around.'[or]'It's nice to be able to think clearly again, but I'm still having trouble remembering much of my old life.'[or]'I hope Rex isn't out causing trouble for someone else now that he doesn't have me keeping him occupied.'[or]'I still feel that need welling up inside me occasionally... promise me you won't let me give in to it again, ok?'[at random]";
	else:
		if HP of Karen > 4:
			say " 	 Karen is not around, you should call her over first.";
		else:
			say "     You don't see any such thing.";

to say SexWithKaren:
	if HP of Karen < 5:
		say "     When you begin to approach Karen, wondering if she might be interested in having some fun with you, you hear a low growl behind you.";
		say "     You turn around to see Rex, an uncharacteristic scowl across his muzzle, apparently aware of your intentions. Glancing back at Karen for a moment, you decide it's best to stay on Rex's good side and leave his pet be.";
	else if Retriever Girl is listed in companionList of Player or Karen is in Breakroom:
		if HP of Karen is 8:
			say "     Karen bites her lip and stares at you longingly for a moment before refusing. 'I don't think I should be doing anything like that... yet.'";
			say "     (Sorry - This quest/character is still a work in progress, this is where it ends for now. -The author)";
		else if HP of Karen > 4:
			say "     Karen bites her lip and stares at you longingly for a moment before refusing. 'I don't think I should be doing anything like that... yet.'";
	else:
		if HP of Karen > 4:
			say "     Karen is not currently your active companion, you should call her over first.";
		else:
			say "     You don't see any such thing.";

Section 2- Karen Quest

Table of GameEventIDs (continued)
Object	Name
Forgotten Past	"Forgotten Past"

Forgotten Past is a situation.
ResolveFunction of Forgotten Past is "[ResolveEvent Forgotten Past]".
Forgotten Past is inactive. [Disabled for reactivation after the player talked to Francois]
Sarea of Forgotten Past is "Campus".

an everyturn rule:
	if Forgotten Past is inactive and HP of Karen > 6 and HP of Karen < 100:
		now Forgotten Past is active;

to say ResolveEvent Forgotten Past:
	if HP of Karen is 7 and Retriever Girl is listed in companionList of Player:
		say "     While exploring a secluded hall of the campus, Karen suddenly stops. You look back at her as her ears perk up. 'I know this place,' she says, lifting her nose to the air and taking a few sniffs. 'I can smell... me.' Striding purposefully down the hall, Karen continues following her nose, pausing briefly at each locker she passes. Finally she stops, several meters down the hall in front of a still-sealed locker. 'This one, it's this one. This was my locker,' she says softly, taking hold of the small pink padlock. 'Can you help me get it open?'";
		say "     A short while later you finally manage to [if intelligence of Player > strength of Player]open the lock with a makeshift shim[else]break the door off its hinges with a liberal application of brute force[end if]. Stepping aside, you let Karen open the door and peer inside. The locker is filled mostly with textbooks pertaining primarily to animal medicine. It seems she was studying for a veterinary degree at the campus. 'I was going to be a vet... and now here I am, a dog,' she says, running a paw along the neatly stacked books. With a sigh she continues her search of the locker. While most of the locker's contents prove unhelpful, she does find a large book bag, which will hold significantly more than the small sack she's been carrying around, and a couple bottles of water which she shares with you. After picking out a few of the generalized-sounding textbooks and slipping them into her new bag along with the contents of her old bag, she peels the timetable off the locker door and pushes it shut. 'It looks like all my courses took place in one classroom,' she says, looking the timetable over. 'Maybe we could stop by there next?'";
		say "     As you leave the row of lockers and head back towards safer grounds, you can't help but notice Karen's head held a little higher and an ever-so-slight spring in her step.";
		say "     (Note - This quest/character is still a work in progress, this is where it ends for now. Sorry! -The author)";
		now HP of Karen is 8;
		ItemGain water bottle by 1;
		now Forgotten Past is resolved;
	else:
		say "     While wandering a secluded hall of the campus, you recall Karen was hoping you would bring her here to search for clues to her past. Perhaps you should return here later with her.";


Karen ends here.
