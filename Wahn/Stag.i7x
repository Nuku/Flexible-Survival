Version 6 of Stag by Wahn begins here.
[Version 6.1 - Ares moved to his own file]

"Adds a Male Stag to Flexible Survival's Wandering Monsters table, With Impreg chance"

Section 1 - Dog-Walking Event

[First meeting, the player can then peacefully chat with the stag guy or try to 'free' his pet, leading to combat and further hostile meetings...]

Dog Walking is a situation. The level of Dog Walking is 7.
The sarea of Dog Walking is "Warehouse".
when play begins:
	add Dog Walking to badspots of guy;
	add Dog Walking to badspots of furry;

Instead of resolving a Dog Walking:
	now battleground is "void";[blocks a random fight after this]
	if hp of Mike is 0:               [first meeting]
		say "     Around a building corner in front of you comes a young naked human woman on all fours. As she trots a bit closer and barks at you, you see she's obviously pregnant and has a collar around her neck. Before you can decide if and what to do now, a bipedal stag walks after her around the corner. He's clothed in jeans and hiking boots, with his shirtless upper body showing he's in good shape. His skin is covered in short brown fur, getting lighter at the belly and showing a cream colored treasure trail starting at his navel leading down to his crotch. Atop his head is a large rack of antlers, proud and powerful.";
		say "     As the guy sees you, he turns to the woman and commands 'Heel, Lea' which she immediately obeys, trotting over to stand beside him on all fours.";
		say "     [line break]";
		say "     What do you do now? You could just walk up and try to talk to the stag and his 'pet' ([link]Y[as]y[end link]). Or attack him, to free the poor woman from her master ([link]N[as]n[end link]). ";
		if player consents:             [talking]
			say "     The stag nods at you as you come closer, saying 'Hello there, I'm Mike. I've seen you look at Lea, so I'll say this right now - no, she isn't a woman I've brainwashed into acting like an animal. I'm a professional animal trainer - or I was, before this madness started - and do breed dogs... and she really is one. But then one morning I started sprouting fur. And when I checked on my dogs, they were becoming human. Soon I had a kennel full of humans with the minds of my dogs in them.' He kneels next to her, stroking her head and pert breasts and she gives a content whine. 'Imagine my surprise at being the owner of dozens of obedient, trained dogs with shapes like this... and as I later learned, their new form is permanent and can't be changed again.'";
			say "     He goes on to show you the identification number tattoo on the inside of Lea's right ear from when she was a dog and has you feel her neck where there's a small identification chip under the skin too. Seems like he's telling the truth - crazy story, but which isn't these days in this city...";
			say "     [line break]";
			say "     You chat a bit more before Mike excuses himself, saying that Lea needs to get her exercise and that he should go on walking.";
			now hp of Mike is 1;
		otherwise:                      [fighting]
			challenge "Stag";
			Now Dog Walking is resolved;
		increase score by 5;
	otherwise if hp of Mike is 1:     [second meeting]
		say "     You run into Mike and his 'dog' Lea, out on the street for a walk. The young woman scampers to you quickly and joyfully licks your hands at seeing you again. Mike smiles at her playful behaviour as he walks after her over to you.";
		say "     'Hello again. I'm making sure Lea gets her regular amount of exercise these days - good for the puppies and herself...' You chat a bit with Mike about dogs and inner city survival before he moves on.";
		increase humanity of player by 5;
		now hp of Mike is 2;
	otherwise if hp of Mike is 98:    [first friendly meeting after player attack]
		say "     You run into Mike and his 'dog' Lea, out on the street for a walk. The young woman looks at you suspiciously and growls silently until Mike steps up and strokes her head. 'It's okay Lea, we just had a misunderstanding last time.' Hearing soothing words from her master, she trots over to you and sniffs at you before licking your hands.";
		say "     'Hello again. I'm making sure Lea gets her regular amount of exercise these days - good for the puppies and herself...' You chat a bit with Mike about dogs and inner city survival before he moves on.";
		increase humanity of player by 5;
		now hp of Mike is 2;
	otherwise if hp of Mike is 2:     [third meeting - they're under attack by a gang]
		say "     Moving through the streets, you hear shouting and barking from somewhere ahead. Recognizing the voices of Mike and his 'dog' Lea, you rush forward to find out what's going on.";
		say "     You find the stag and his female companion being attacked by a gang of several leopardmen. The felines have already split them apart from each other, with three circling Mike and another two having cornered Lea against a closed loading dock.";
		say "     Do you want to jump in to help fight the leopardmen off ([link]Y[as]y[end link]), or rather flee before they notice you ([link]N[as]n[end link])? ";
		if player consents:
			challenge "Leopardman";
			if fightoutcome >= 20 and fightoutcome <= 29:               [lost]
				say "     After one last slash with the leopardman's claws, you collapse on the ground, bleeding. Luckily though, your intervention distracted them enough that Mike and Lea fought off three of the attackers in the meantime. Now faced with new odds, the leopardman standing over you abandons the fight, dashing away before the stag and his 'dog' can get to him...";
			otherwise if fightoutcome >= 30:                            [fled]
				say "     You running off led to two of the leopardmen giving chase, going after you quite a bit until you manage to lose them. As you make your way back to where you last saw Mike and Lea, you see that they fought off the remaining gang members in the meantime.";
			otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
				say "     Having given the leopardman quite a beating, you grin at the fearful look on his face as he flees, running away as fast as he can. Your intervention distracted the other members of the small gang too, which allowed Mike and Lea to fight off three of their attackers in the meantime. The remaining unhurt one throws the fight as he sees himself confronted with the three of you and flees...";
				increase score by 5;
			now hp of Mike is 3;
			say "     Nodding over to you, Mike says 'Thanks a lot for the help' as he kneels next to Lea to check on her. The transformed dog has a long claw-slash on her side and starts to whimper loudly now that the adrenaline of the fight wears off. 'This doesn't look good - might get infected too. I have to get her home.' He picks Lea up in his arms, and you walk down the street together, with you acting as a lookout for more trouble. Soon you arrive at Mike's house, where he leads you to the large dog kennel in the back and sets Lea down on a bed.";
			now battleground is "void";
			move player to Mike's Office;
			now Mike's Home is known;
		otherwise:
			say "     You quickly turn around and flee before you get drawn into the fight too and don't stop running until you're well away. With odds of five against two, you don't think you'll see either Mike or Lea again. Who knows what the leopardmen will do with them...";
			now hp of Mike is 100;
			Now Dog Walking is resolved;
	otherwise if hp of Mike > 2 and hp of Mike < 98:   [further repeat meetings]
		say "     You run into Mike and his 'dog' Lea again, out on the street for a walk. The young woman scampers to you quickly and joyfully licks your hands at seeing you again. Mike smiles at her playful behaviour as he walks after her over to you.";
		say "     'Hello again. I'm making sure Lea gets her regular amount of exercise these days - good for the puppies and herself...' You chat a bit with Mike about dogs and inner city survival before he moves on.";
		increase humanity of player by 5;

Section 2 - Monster Responses

to say Stag wins:
	say "     Looking down at you, the stag says 'I don't want to see you here again, asshole. Fuck off.' After giving you a last hostile stare, he walks off and leaves you lying in the dust.";

to say Stag loses:
	say "     Wiping a trickle of blood from his split lip, the stag takes a step back and says 'Ok, ok - you win. Do with me what you want, but I'll never show you where Lea and the others are.'";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	if hp of Mike is 0:       [last chance to switch to friendly mode]
		now title entry is "Demand that he sets free the woman he's brainwashed to act as a dog.";
		now sortorder entry is 1;
		now description entry is "Free Lea.";
		choose a blank row in table of fucking options;
	now title entry is "Suck him off.";
	now sortorder entry is 2;
	now description entry is "Blow him.";
	choose a blank row in table of fucking options;
	if cocks of player > 0:
		now title entry is "Have him suck you off.";
		now sortorder entry is 3;
		now description entry is "Get a blow-job.";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ride his cock with your pussy.";
		now sortorder entry is 4;
		now description entry is "Let the stag breed you.";
	choose a blank row in table of fucking options;
	now title entry is "Get his cock in your ass.";
	now sortorder entry is 5;
	now description entry is "Let the stag fill your ass with his seed.";
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take the stag's ass.";
		now sortorder entry is 6;
		now description entry is "Fill him with your cock.";
		sort the table of fucking options in sortorder order;
	while sextablerun is 0:
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry][line break]";
			say "Is this what you want?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Demand that he sets free the woman he's brainwashed to act as a dog.":
					say "     The stag's eyes get big and he replies 'What the fuck? You think I'm one of those creeps that makes people forget their humanity? Hell no - Lea and the others are actual dogs, man. I'm a professional animal trainer - or was, before this chaos. But then one morning I started sprouting fur. And when I checked on my dogs, they were becoming human. Soon I had a kennel full of humans with the minds of my dogs in them. They may look different, but still are animals inside and need a master to care for them - and their new form is permanent as it turns out. They won't change again...'";
					say "     'So you thought I had enslaved Lea, and I thought you were just a feral looking for something to fuck. Two of the few sane people in the town beating each other up - Hah. How about we forget this silly fighting ever happened?' He offers you his hand and you accept and shake it. Saying 'I'm Mike, by the way. See you later, under friendlier circumstances I hope.' he walks away.";
					now hp of Mike is 98;
					now Dog Walking is unresolved;
				otherwise if (nam is "Suck him off."):
					say "[MikeSex1]";
				otherwise if (nam is "Have him suck you off."):
					say "[MikeSex2]";
				otherwise if (nam is "Ride his cock with your pussy."):
					say "[MikeSex3]";
				otherwise if (nam is "Get his cock in your ass."):
					say "[MikeSex4]";
				otherwise if (nam is "Take the stag's ass."):
					say "[MikeSex5]";
				if hp of Mike is 0:       [if the player hasn't selected talking above and set the hp to 98 by now, Mike will be permanently hostile (99)]
					now hp of mike is 99;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Stag":
							now monster is y;
							now area entry is "Warehouse";
							now non-infectious entry is false;
							break;

to say StagDesc:
	setmongender 3;
	if hp of Mike is 0:       [first encounter]
		say "     Seeing your aggressive stance as you come closer, the stag sighs 'Another of those savages.' Turning to the human at his side he says 'I want you to run home, Lea, you understand? Home. You can't help me in the fight right now and have to think of your puppies...'";
		say "     After a short hesitation and giving a pleading whine, the woman dashes off, with the stag stepping in the way to block any attempt at following her. 'Now let's deal with you.', he says and comes at you with balled fists.";
	otherwise:                [repeat fighting]
		say "     A bipedal stag accompanied by a naked, collared and pregnant human woman on all fours crosses your path. He's clothed in jeans and hiking boots, with his shirtless upper body showing he's in good shape. His skin is covered in short brown fur, getting lighter at the belly and showing a cream colored treasure trail leading down to his crotch. Atop his head is a large rack of antlers, proud and powerful.";
		say "     As the guy sees you, he sighs 'That asshole again.' Turning to the human at his side he says 'I want you to run home, Lea, you understand? Home. You can't help me in the fight right now and have to think of your puppies...'";
		say "     After a short hesitation and giving a pleading whine, the woman dashes off, with the stag stepping in the way to block any attempt at following her. 'Now let's deal with you.', he says and comes at you with balled fists.";


Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	add { "Stag" } to infections of guy;
	add { "Stag" } to infections of furry;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Stag";                    
	now attack entry is "[one of]He pushes you down against the ground with strong arms and gives you a blow in the ribs.[or]You almost stumble and fall down as he gives you a rough shove.[or]His horns prove to be quite sharp as they poke you.[or]A sudden kick lands in your midsection and drives the air from your lungs.[at random]";
	now defeated entry is "[Stag loses]";        [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Stag wins]";         [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[StagDesc]";              [ Description of the creature when you encounter it.]
	now face entry is "covered in short brown fur and has the striking angular features of a proud stag. Crowning your head are two impressive multiple-pointed antlers";
	now body entry is "that of a humanoid male, trim and fit. You have strong arms and hands, capped with blackened fingertips, like hooves that don't compromise dexterity";
	now skin entry is "brown furred";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "Your butt has a deer's tail over it, [skin of player] on the top, soft cream along the underside. The rest of your ass is quite curvy and [skin of player], hiding nothing. ";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "pitch black human";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it draws out into a snout, slender with a wide nose, new scents teasing your addled senses as your ears grow long and narrow, twitching towards sounds. Short fur swells ticklishly over your new contours as growths sprout from the top of your head, growing quickly into ornate multi-pointed antlers"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your limbs grow very masculine, long and strong. Your nails at hands and feet reform to cover your finger- and toe-tips in a protective hoof each"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft tingles spread in waves over it and fur sprouts in odd patterns across you, slowly settling into brown fur over most of your body, with lighter cream coloring starting at your navel and running down to your groin and the insides of your legs"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a short, upturned, and furry tail sprouts into being over its now deliciously round [skin of player] shape"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your cock darkens until it is entirely black, but human shaped in form"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 22;
	now sta entry is 13;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male";
	now hp entry is 75;
	now lev entry is 10;
	now wdam entry is 10;
	now area entry is "Nowhere";          [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;                 [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 11;          [ Length infection will make cock grow to if cocks]
	now cock width entry is 6;            [ Size of balls ]
	now breasts entry is 2;               [ Number of Breasts infection will give you. ]
	now breast size entry is 0;           [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;                 [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;           [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;            [ Width of female sex  infection will try and give you ]
	now libido entry is 70;               [ Amount player Libido will go up if defeated ]
	now loot entry is "";                 [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;            [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;                 [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "fit";   [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "cervine";          [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;             [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;         [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;    [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;        [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";     [ Row used to designate any special combat features, "default" for standard combat. ]

Section 4 - Mike and Lea

[ hp states of Mike                                       ]
[   0: before the first meeting                           ]
[   1: met once (peacefully, or talked after fight)       ]
[   2: met twice                                          ]
[   3: helped in the fight against the leopardmen         ]
[   4: player got the quest to get a medkit               ]
[   5: Lea got patched up                                 ]
[   6: player got their own human doggie as reward        ]
[  98: first friendly meeting after player attack         ]
[  99: hostile after player attack                        ]
[ 100: lost to the leopardman gang                        ]

Mike is a man. Mike is in Mike's Office.
The description of Mike is "[MikeDesc]".
The conversation of Mike is { "Oh, hello." }.
The icon of Mike is Figure of Mike_icon.

to say MikeDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Mike] <- DEBUG[line break]";
	say "     Mike is a bipedal stag, clothed in jeans and hiking boots, with his shirtless upper body showing he's in good shape. His skin is covered in short brown fur, getting lighter at the belly and showing a cream colored treasure trail leading down to his crotch. Atop his head is a large rack of antlers, proud and powerful.";

Mike's Home is a room. It is a fasttravel. It is private.
The description of Mike's Home is "     You're at a house with a very large fenced backyard at the edge of the warehouse district. A good location for a dog breeder, as the neighbours didn't complain about noise. At the side of the house (north from you) is the back entrance to which Mike showed you where a key is hidden.".

North of Mike's Home is Mike's Office.
Mike's Office is sleepsafe.
The description of Mike's Office is "     You're in Mike's office, a relatively large room. A desk with a computer stands in the back, next to a filing cabinet. Lots of boxes of equipment and sacks of dog food line the walls. Seemingly a new addition to the room is a single bed in the center, its white sheets showing a few stains that are most likely dried cum.[if hp of Mike < 5] Lea, Mike's transformed dog lies on it, whining pitifully.[end if]".

East of Mike's Office is Dog Kennels.
Dog Kennels is sleepsafe.
The description of Dog Kennels is "     This part of the building consists of a long hallway lined with quite a few large dog kennels on each side. In them are Mike's transformed dogs, many of which rest on air mattresses he added when they became human. The rest sit in front of their wire mesh kennel doors, giving you dog-eyed looks in hope of a walk or some play-time.".

instead of sniffing Mike:
	say "     Mike has a nice smell, strong and masculine.";

Instead of fucking Mike:
	[puts Stag as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Stag":
			now monster is y;
			break;
	if(hp of Mike < 5):
		say "     Mike shakes his head and says 'Not now. I've got other things to worry about.' He turns back to Lea on the bed, stroking her hair and holding her to keep her calm.";
	otherwise if(lastfuck of Mike - turns < 5):
		say "     Mike says 'I'm still worn out from last time. Give me a moment to catch my breath...'";
	otherwise:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Suck Mike's cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		if (cunts of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let Mike fuck your pussy";
			now sortorder entry is 3;
			now description entry is "Let the stag breed you.";
		choose a blank row in table of fucking options;
		now title entry is "Let Mike fuck your ass";
		now sortorder entry is 4;
		now description entry is "Let the stag fill your ass with his seed.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Mike's ass";
			now sortorder entry is 5;
			now description entry is "Fill the stag's ass with your cock.";
		sort the table of fucking options in sortorder order;
		while sextablerun is 0:
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Suck Mike's cock":
						say "[MikeSex1]";
					otherwise if (nam is "Have him suck your cock"):
						say "[MikeSex2]";
					otherwise if (nam is "Let Mike fuck your pussy"):
						say "[MikeSex3]";
					otherwise if (nam is "Let Mike fuck your ass"):
						say "[MikeSex4]";
					otherwise if (nam is "Take Mike's ass"):
						say "[MikeSex5]";
		infect "Stag";
		infect "Stag";          [since it's the only source for the infection and you got to wait between scenes, let's make him double infective]
		now lastfuck of Mike is turns;

to say MikeSex1:        [player sucks him]
	if hp of Mike is 0 or hp of Mike is 99:     [post-combat, dominating]
		say "     You step close to the stag a bit wary at first and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his side. Looks like he's resigned himself to obeying you - for now.";
		say "     Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them before you open up his zipper and pull down the pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You kneel down in front of him and stroke his shaft some more until he's fully hard.";
		WaitLineBreak;
		say "     Running your tongue over his cock-head and shaft slowly between pumping your hard up and down its length, you tease the stag until he's breathing hard and looks pleadingly down to you. You smile, then take his manhood into your mouth and start giving him an amazing blow-job, going down all the way on his cock and massaging his balls.";
		say "     With how you worked him up beforehand, it's not too long before he suddenly shouts 'I'm coming!' and starts to shoot strings of cum into your mouth. You wait until he stops twitching and the last spurt of semen leaves his cock, then stand up and pull his head to yours for a deep kiss, pushing the cum into Mike's mouth with your tongue. His eyes get wide as he tastes his own cum and even wider as you pull his head back a bit and say 'Now swallow!' After a moment's hesitation, he gulps down the cum and shows you his empty mouth as you ask for it.";
		say "     Satisfied in giving him a load of cum in his stomach, you give the stag a slap on his ass and leave.";
	otherwise:                                  [post-quest, friendly]
		say "     You step close to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations.";
		say "     Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down the pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Licking your lips in anticipation, you kneel down in front of Mike and stroke his shaft some more until he's fully hard.";
		WaitLineBreak;
		say "     Running your tongue over his cock-head and shaft slowly between pumping your hand up and down its length, you tease the stag until he's breathing hard and looks pleadingly down to you. You smile, then take his manhood into your mouth and start giving him an amazing blow-job, going down all the way on his cock and massaging his balls.";
		say "     With how you worked him up beforehand, it's not too long before he moans 'I'm getting close...' You continue going down on him and go for some deep-throat action until he can't hold back any more and shouts in lust as his balls pump spurt after spurt of seed into your stomach. You wait until he stops twitching and the last spurt of semen leaves his cock, pull off and take a deep breath. Holding his slowly softening cock in your hand, you give it a quick kiss on the tip, then stand up and pull Mike's mouth to yours. With his arms around you and stroking your back as you make out with each other, Mike says 'Thank you, that was an amazing blow-job.' in between the kisses.";

to say MikeSex2:        [he sucks the player]
	if hp of Mike is 0 or hp of Mike is 99:     [post-combat, dominating]
		say "     You step close to the stag a bit wary at first and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his side. Looks like he's resigned himself to obeying you - for now.";
		say "     'On your knees' you order, pushing down on his shoulders as he hesitates a moment. With the muscular stag kneeling down before you, you pull out your cock, demonstratively stroking it in front of his face and running it along the edge of his chin. Then you push it against his lips and growl 'Open up - and no teeth.'";
		WaitLineBreak;
		say "     With a bit of a sullen expression, the stag opens his mouth and takes your manhood into it, bobbing up and down on your shaft. You let him suck you a while, then feel the need for something more rise inside you and grab his antlers like handholds and use them to hold his head as you start fucking his face. Going deeper and deeper, he has to cough a few times before he manages to relax his throat enough when you push all your cock inside him. It's an amazingly tight feeling as you bottom out and hold his head with your cock down his throat for a moment, then start thrusting in and out.";
		say "     All too soon you feel your orgasm approaching and push your shaft one last time into the stag's throat as you start shooting your seed - straight into his stomach. After the first few shots, you pull out of his mouth and spray the rest of your cum all over his cervine face. With a smile on your lips, you leave the cum-splattered stag kneeling there on the street and walk away.";
	otherwise:                                  [post-quest, friendly]
		say "     You step close to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Grinding your crotch against his, you show him pretty direct how hot and hard his presence makes you.";
		say "     Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you softly push down on his shoulders, to which he quite readily kneels down in front of you. As you pull out your cock, he takes it into a large hand, stroking it until you're fully hard, then gives its tip a quick lick.";
		WaitLineBreak;
		say "     Running his tongue over your shaft slowly between pumping your up and down its length, Mike teases you until you're breathing hard and almost begging for release. Then he has mercy on you and takes your manhood into his mouth and starts giving you an amazing blow-job, going down all the way on the cock and massaging your balls.";
		say "     With all the kissing and stroking beforehand, it's not too long before you moan 'I'm getting close...' Mike just continues going down on you, even going for some deep-throat action until you can't hold back any more and shout in lust as your balls pump spurt after spurt of seed into his stomach. He waits a moment, then pulls back a bit, taking your last few shots in his mouth. Then he stands up and gives you a deep kiss, allowing you to taste your own cum on his lips and tongue.";

to say MikeSex3:        [player pussy fucked]
	if hp of Mike is 0 or hp of Mike is 99:     [post-combat, dominating]
		say "     You step close to the stag a bit wary at first and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his side. Looks like he's resigned himself to obeying you - for now.";
		say "     Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them a bit before you open up his zipper and pull down the pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You stroke his shaft some more until he's fully hard, then command him to lie down.";
		WaitLineBreak;
		say "     Spreading his jeans flat on the ground, the stag sits on them, then lies back. His proudly standing erection looks pretty inviting to you and you quickly strip off your own clothes. Moving to stand over the stag, you crouch down and take hold of his manhood, then slowly lower yourself deeper. Rubbing the tip of his cock against your pussy lips, you make him moan in building arousal, then gasp as you sink your folds over his hard rod. His cock spreading your moist tunnel gives you a pleasant sensation of fullness, getting stronger and stronger until your hips touch and he bottoms out inside you.";
		say "     Looking down over your dominated partner, now held by lust instead of force, you smile, then start sliding up and down over his hard shaft. Riding the stag's erection with abandon, you make good use of his length and girth, grinding your hips against him so he hits all the right spots inside you. With your wild ride on his cock, it's not too long before he suddenly shouts 'I'm coming!' and starts to shoot strings of cum deep inside you, filling your womb with fertile seed.[fimpregchance]";
		say "     [line break]";
		say "     You wait until he stops twitching and the last spurt of semen leaves his cock, then pull your pussy off his shaft and move to kneel over his face. Pulling his head up against your cum-dripping pussy, he instantly realizes what you want and starts licking you. Quite talented with his tongue, this stag - his oral attentions quickly bring you the rest of the way to your own orgasm, making your folds drip with femcum in addition to the stag's seed.";
		say "     Thoroughly satisfied, you grin down at the stag's wet face as you stand up and walk away, leaving him lying there on the ground.";
	otherwise:                                  [post-quest, friendly]
		say "     You step close to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations.";
		say "     Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down the pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Reaching down to stroke him until he's fully hard, your lips find his for another kiss. Moaning 'I want you inside me', you step back and quickly take off your clothes.";
		WaitLineBreak;
		say "     After slowly stroking his cock while watching you strip, Mike then guides you to the bed to lie down with him. Running caressing hands up and down your body, following and stroking every curve, he builds up your arousal some more before he finally moves on top of you. You feel his hard cock slide up against your crotch, then find the opening and penetrate your moist pussy lips. With one deep thrust he buries himself deep in your pussy, then starts fucking you with rapid strokes. Moaning loudly, you wrap your arms and legs around Mike to hold on and meet his thrusts.";
		say "     He proves himself to be a virile stag, with enough endurance to satisfy a whole herd of does, as he couples with you for quite a while, driving you to one orgasm and another. Then his restraint breaks down and you hear him grunt 'I'm gonna cum!' seconds before his body stiffens, shudders running through it as burst after burst of his seed blast into your womb.[fimpregchance]";
		say "     [line break]";
		say "     He stays on top, breathing heavily while the last spurts of semen leave his cock, then lowers his head to yours to make out. It's pretty nice to hold his softly furred body against yours, with his slowly softening cock and deposited load giving you a comfortably full feeling. You stay like that for a while, resting together in post-coital bliss before you have to return to everyday survival in the city.";

to say MikeSex4:        [player ass fucked]
	if hp of Mike is 0 or hp of Mike is 99:     [post-combat, dominating]
		say "     You step close to the stag a bit wary at first and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his side. Looks like he's resigned himself to obeying you - for now.";
		say "     Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them a bit before you open up his zipper and pull down the pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You stroke his shaft some more until he's fully hard, then command him to lie down.";
		WaitLineBreak;
		say "     Spreading his jeans flat on the ground, the stag sits on them, then lies back. His proudly standing erection looks pretty inviting to you and you quickly strip off your own clothes. Moving to stand over the stag, you crouch down and take hold of his manhood, then slowly lower yourself deeper. Rubbing the tip of his cock up and down your crack , you make him moan in building arousal, then gasp as you push his cock-head into your asshole and sink down on it. His cock spreading your tight tunnel gives you a pleasant sensation of fullness, getting stronger and stronger until he bottoms out inside you and you feel his fur against your cheeks.";
		say "     Looking down over your dominated partner, now held by lust instead of force, you smile, then start sliding up and down over his hard shaft. Riding the stag's erection with abandon, you make good use of his length and girth, grinding your ass against him so he hits all the right spots inside you. With your wild ride on his cock, it's not too long before he suddenly shouts 'I'm coming!' and starts to shoot strings of cum deep inside you, filling your tight ass with fertile seed.[mimpregchance]";
		say "     [line break]";
		say "     You wait until he stops twitching and the last spurt of semen leaves his cock, then pull off his shaft with a *plop* and move to kneel over his face. Saying 'Eat me out' in a commanding tone, you pull his head up against your cum-dripping asshole and after a moment's hesitation he starts licking you. Quite talented with his tongue, this stag - his oral attentions quickly bring you the rest of the way to your own orgasm, [if cocks of player > 0]with your [cock of player] cock shooting long strings of cum all over your partner's chest[otherwise if cunts of player > 0]making your folds drip with femcum[end if].";
		say "     Thoroughly satisfied, you grin down at the stag[if cocks of player > 0] and his cum-splattered fur[end if] as you stand up and walk away, leaving him lying there on the ground.";
	otherwise:                                  [post-quest, friendly]
		say "     You step close to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations.";
		say "     Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down the pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Reaching down to stroke him until he's fully hard, your lips find his for another kiss. Moaning 'I want you inside me', you step back and quickly take off your clothes.";
		WaitLineBreak;
		say "     Mike strokes his cock as he watches you strip, then lets himself be led to the bed. You get onto it on all fours, sticking out your ass and wiggling it invitingly. Your aroused stag grabs the bottle of lube from the ground, then applies a good amount to your hole and fingers it a bit. He kneels behind you and starts rubbing his manhood up and down between your cheeks. Then you feel the tip of his cock push against your sphincter, slowly increasing the pressure until it yields and Mike's hard cock slides into you. It just feels amazing to have his shaft rub your sensitive insides. Soon he's bottomed out all the way inside you and rests there for a moment, pulling your upper body close and giving you a deep kiss.";
		say "     Then he starts thrusting in and out with hard and deep strokes, making you both moan in lust. Slapping noises from when his hips hit your ass fill the room and are soon joined by barks from the kennels that seem to be cheering you on to fuck. Mike proves himself to be a virile stag, with enough endurance to satisfy a whole herd of does, as he couples with you for quite a while, driving you to one orgasm and another.[if cocks of player > 0] Your cock sprays two huge loads all over the sheets, as Mike just continues to fuck you until you're hard again and ready for a second cum-shot.[otherwise if cunts of player > 0] Your pussy literally drips with femcum, making it trickle down your legs and soak into the sheets under you.[end if] Then his restraint breaks down and you hear him grunt 'I'm gonna cum!' seconds before his body stiffens, shudders running through it as burst after burst of his seed blast deep into your ass.[mimpregchance]";
		say "     [line break]";
		say "     Mike stays kneeling behind you as his manhood keeps pulsing with each shot of cum, breathing heavily and holding on to your body. After the last spurt of semen leaves his cock, he gives you a kiss on the neck, then hugs you close and pulls you down so you lie together on your sides on a mostly dry spot of the bed. You two just stay like that for a while, him spooning you with his slowly softening cock still in your ass, getting some rest before you have to return to the problems everyday survival in the city.";

to say MikeSex5:        [player ass fucked]
	if hp of Mike is 0 or hp of Mike is 99:     [post-combat, dominating]
		say "     You step close to the stag a bit wary at first and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his side. Looks like he's resigned himself to obeying you - for now.";
		say "     Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them a bit before you open up his zipper and pull down the pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You stroke his shaft some more until he's fully hard, push him over to a nearby building's wall and have him stand against it, bent over a bit and bracing himself with his hands.";
		WaitLineBreak;
		say "     Seeing the buns of his very nice bubbly butt, you just have to run your fingers through the short fur covering them. Fondling his firm cheeks under the soft fuzz, you pull them apart, revealing the pink opening of his pucker surrounded by cream colored fur. You wet a finger in your mouth and push it against his opening, then inside a very tightly gripping asshole. You can't wait to get your cock in there...";
		say "     Quickly stripping off your own clothes, you step up behind the stag and wrap your arms around him, feeling up his chest and rubbing yourself against his softly furred backside. With you having gotten him hot and hard before, your dominated partner can't stop himself from moaning in lust as you touch him. Whispering 'I'm gonna fuck you now.' in his ear, you take hold of your [cock of player] manhood and place it against his opening, then slowly push forward until his pucker yields and you pop in.";
		WaitLineBreak;
		say "     The stag's ass is amazingly tight, gripping your shaft as you slide deeper. You have to slow down and even stop for a moment in between so you don't just blow your load before you're fully in him. Resting your cock three quarters inside, you take a deep breath and reach around to softly pinch the stag's nipples a bit until you got yourself under control again. Then you move forward, pushing deeper into the stag until you bottom out, with his asshole tight around your cock and the soft fur of his bottom against your hips. Starting to slide in and out, both of you are soon moaning and gasping from the sensations.";
		say "     Fucking the stag with hard and deep strokes, you soon drive him over the edge, shouting 'I'm coming...' as his shaft sprays a huge load of white cum all over the wall he leans against. His inner muscles twitching around your shaft gives you the rest too, your balls tightening as they send spurt after spurt of cum deep into the stag's ass.";
		say "     [line break]";
		say "     Holding your arms tight around his chest until your last spurt of semen is deposited, you then pull out in one quick go from his cum-filled asshole, accompanied by a slurping noise. His hole gapes open for a second with cum running out of it, then quickly closes, trapping the rest of your seed inside. You have a last look at the cream-colored fur of his crack, wet with your cum, then give the stag a slap on the butt and leave him there like that.";
	otherwise:                                  [post-quest, friendly]
		say "     You step close to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations.";
		say "     Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down the pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Reaching down to stroke him until he's fully hard, your lips find his for another kiss. Moaning 'I want to fuck your ass', you step back and quickly take off your clothes.";
		WaitLineBreak;
		say "     Mike strokes his cock as he watches you strip, then lets himself be led to the bed. Taking the bottle of lube from the floor and handing it to you, he says 'I haven't had much anal sex since back in college, when my roommate Andy and I were constantly at it. So please be gentle...' then gets on all fours on the bed, sticking out his ass and wiggling it invitingly. Seeing the buns of his very nice bubbly butt, you just have to run your fingers through the short fur covering them. Fondling his firm cheeks under the soft fuzz, you pull them apart, revealing the pink opening of his pucker surrounded by cream colored fur. You put some lube on your hand and warm it up a bit, then softly push a slippery finger against Mike's pucker, sliding it inside a very tightly gripping asshole and making him moan in lust. You can't wait to get your cock in there...";
		say "     Quickly stripping off your own clothes, you climb on the bed behind the stag and wrap your arms around him, feeling up his chest and rubbing yourself against his softly furred backside. Hot and hard, reveling in you touching him, Mike reaches back and squeezes your ass, pulling your hips against himself. With him huskily moaning 'Stick it in, I'm ready,' you take hold of your [cock of player] manhood and place it against his opening, then slowly push forward until his pucker yields and you pop in.";
		WaitLineBreak;
		say "     The stag's ass is amazingly tight, gripping your shaft as you slide deeper. You have to slow down and even stop for a moment in between so you don't just blow your load before you're fully in him. Resting your cock three quarters inside, you take a deep breath and reach around to feel his chest and softly pinch the Mike's nipples a bit until you got yourself under control again. Then you move forward, pushing deeper into the stag until you bottom out, with his asshole tight around your cock and the soft fur of his bottom against your hips. Starting to slide in and out, both of you are soon moaning and gasping from the sensations.";
		say "     Fucking the stag with hard and deep strokes, you soon drive him over the edge, shouting 'I'm coming...' as his shaft sprays a huge load of cum all over the sheets under him. His inner muscles twitching around your shaft gives you the rest too, your balls tightening as they send spurt after spurt of cum deep into the stag's ass.";
		say "     [line break]";
		say "     Holding your arms tight around his chest until your last spurt of semen is deposited, you then pull him down to lie together on the bed on your sides, spooning with your slowly softening cock still inside him. It's nice to hold him like that, with his warm furred body against your chest. You two just stay like that for a while, getting some rest before you have to return to the problems everyday survival in the city.";

instead of conversing Mike:
	if hp of Mike is 3:
		say "     Mike softly strokes Lea before turning to you. 'Could you get my medkit? It's on the wall in the other room...' You follow his directions and find the white box with the red cross on it, but when you pick it up, it's pretty light - too light. Opening it up, you find it halfway empty, with only small band-aids and other stuff that won't be of much use right now left.";
		say "     As you tell him about it, Mike slaps his head, growling 'Damn, just like me to forget to refill that before a mutant apocalypse.' He looks at you pleadingly - 'Could you maybe try to find another one out in the city? I can't leave Lea right now, she'd hurt herself trying to move around, reopen the wound...'";
		now hp of Mike is 4;
	otherwise if hp of Mike is 4:
		say "     Mike looks up hopefully. 'Have you got a medkit?'";
		if medkit is owned:
			say "     Aware that you have one in your backpack, you answer... ";
			if player consents:
				say "     You pull the medkit out and start to patch Lea up while Mike holds her tight as she struggles, whining pitifully as you do the painful but necessary steps of cleaning and disinfecting her wound. It's not an easy task, but soon she's well taken care of, with a fresh white bandage around her upper torso.";
				say "     Overjoyed at Lea being better now, Mike says 'Thank you, my friend. I don't know what I would have done without you. I'm in your debt.'";
				delete medkit;
				now hp of Mike is 5;
			otherwise:
				say "     You just silently shake your head.";
		otherwise:
			say "     You just silently shake your head.";
	otherwise if hp of Mike is 5:
		say "     Mike says 'I don't have anything I could give you as thanks, except... would you maybe want one of my human dogs for your own? They got well trained as dogs and are very obedient - and since they changed, I taught them a few extra tricks too...' he winks and gives a small nod to Lea and her pregnant belly.";
		say "     Do you accept one of the human form dogs from Mike as a reward? ";
		if player consents:
			say "     What gender do you want your new 'dog' to be? (Y = male, N = female) ";
			if player consents:
				say "     Mike takes you to the kennel, where you have a look at his 'dogs'. In the end, you choose Xerxes, a black-haired male looking about nineteen years old, with muscled runner's legs and strong arms. He attentively looks to Mike as he explains that you're his new master, then comes over to you to sniff you and lick your hand.";
				say "     After getting a bottle of lube as additional present from Mike, you bring your new pet to the library. Hopefully he'll make a good guard-dog... although the other possibilities sound enticing too.";
				move Xerxes to the Grey Abbey Library;
				move player to the Grey Abbey Library;
				now hp of Xerxes is 1;
			otherwise:
				say "     Mike takes you to the kennel, where you have a look at his 'dogs'. In the end, you choose Helen, a black haired female looking about nineteen years old, with a shapely body and nice perky breasts. She attentively looks to Mike as he explains that you're her new master, then comes over to you to sniff you and lick your hand.";
				say "     Looking down over Helen's naked body, Mike strokes the bulge in his pants, then looks back to you. 'I used condoms when I picked her cherry and trained her, so no worries about that. If you plow that field and bring out some seeds, they're all yours. Might be best to act quick if you got any male pets or want to take her out for walks without all kinds of critters smelling a fertile female...'";
				say "     You bring your new pet to the library. Hopefully she'll make a good guard-dog... although the other possibilities sound enticing too.";
				move Helen to the Grey Abbey Library;
				move player to the Grey Abbey Library;
				now hp of Helen is 1;
			now hp of Mike is 6;
		otherwise:
			say "     Mike shrugs as you decline, then says 'As you wish. But the offer stands, so just say so if you change your mind.'";
	otherwise if hp of Mike is 6:
		say "     Mike gives you a friendly nod, then says 'Hello again. How's it going with your new pet? No problems, I hope?' You chat a bit about caring for your human shape dog and survival in the city in general.";
	otherwise:
		say "     Mike is not in a state when he should be able to talk - please report how you got this.";

Lea is a woman. Lea is in Mike's Office.
The description of Lea is "     Originally one of Mike's dogs, Lea now is a young human woman of about nineteen. She has shoulder-length blond hair and a slender physique, although her breasts have obviously filled out quite a bit to go with the pregnant belly. But no matter what she looks like - there's still only a dog's mind behind her eyes, so she walks on all fours and only uses barks and growls as communication. [if hp of Mike < 5]A deep gash from a leopardman's claw mark her side. It doesn't look good - she needs some bandages and most likely antibiotics too. And soon.[otherwise if hp of Mike > 4]A clean white bandage covers most of her upper torso, protecting her healing wound from getting dirty again.[end if]".
The conversation of Lea is { "Woof." }.

instead of fucking Lea:
	if hp of Mike < 5:
		say "     Mike roughly shoves you aside as you try to fondle Lea. 'Get a hold of yourself - can't you see she's hurt?'";
	otherwise if hp of Mike > 4:
		say "     Mike puts a hand on your shoulder and pulls you aside. 'Lea is still recovering. She needs some rest, ok? beside... she's mine - who did you think put those puppies in her belly?'";

instead of conversing Lea:
	if hp of Mike < 5:
		say "     Lea gives you a pitiful whine as you try talking to her.";
	otherwise if hp of Mike > 4:
		say "     Lea gives a welcoming yip as you approach, then comes closer and licks your hand. She's not really a candidate for meaningful conversation, but watching her pounce after a tennis ball and fetch it for you has a relaxing influence on you.";


Section 5 - Xerxes

Chapter 1 - Xerxes Basics

Xerxes is a man.
The description of Xerxes is "[XerxesDesc]".
The conversation of Xerxes is { "Woof." }.
LastXerxesTalk is a number that varies. LastXerxesTalk is usually 555.
hp of Xerxes is usually 0.

[ hp states of Xerxes                              ]
[   0: hasn't been brought to the bunker yet       ]
[   1: no sex with either Fang or the Felinoid     ]
[  10: got fucked only by Fang                     ]
[  11: got fucked only by the Felinoid             ]
[  12: got fucked by both Fang and the Felinoid    ]
[                                                  ]
[ lust of Xerxes                                   ]
[   0: hasn't had sex with the player              ]
[   1: had sex with the player once                ]
[   2: awesomeness message                         ]
[   3: awesome upgrade                             ]
[   4: awesome sex                                 ]
[   5: awesome sex continues                       ]
[   6: offer for tattoo                            ]
[   7: tattoo received                             ]

to say XerxesDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Xerxes], LUST: [lust of Xerxes] <- DEBUG[line break]";
	if lust of Xerxes < 3:
		say "     Originally one of Mike's dogs, Xerxes now is a young human male of about nineteen. He has short black hair and a well-developed physique, with muscular arms and legs. All in all a very handsome guy - but no matter what he looks like - there's still only a dog's mind behind his eyes, so he walks on all fours and only uses barks and growls as communication. He watches you attentively, eager to follow the commands of his master";
		if lust of Xerxes is 2:
			say ". You are quite pleased at having such a loyal and obedient pet, but you can't help musing that there might be something you could give the young man that would make him even more [if carried of awesome fruit > 0][link]awesome[as]give awesome fruit to Xerxes[end link][otherwise]awesome[end if]";
		say ".";
	otherwise if lust of Xerxes is 3:
		say "     Originally one of Mike's dogs, Xerxes now is a young human male of about nineteen. His beautiful body is fit and toned with muscular arms and legs and his skin possesses a light, even tan. His handsome face is framed by long, black hair that goes down to his shoulders and never seems to have a hair out of place. All in all, he's a very handsome guy, but inside he's still a loyal and obedient dog.";
		say "     He has started to act a little differently since you gave him that strange fruit though. Sometimes, it's as simple as him giving you a more human smile than a canine one when he looks at you. He seems to listen more attentively and his barks aren't as loud and excited. Other times, he's trying to pick up his various dog toys with his hands. You've even spotted him trying to stand on his hind legs as a begging dog would all on his own. When he notices you watching, he barks happily and waits attentively for the commands of his master.";
	otherwise:
		say "     Originally one of Mike's dogs, Xerxes now is a young human male of about nineteen. His beautiful body is fit and toned with muscular arms and legs and his skin possesses a light, even tan. His handsome face is framed by long, black hair that goes down to his shoulders and never seems to have a hair out of place. All in all, he's a very handsome guy, but inside he's still a loyal and obedient dog.";
		if lust of Xerxes is 7:
			say "     Wearing nothing, the only adornment he has is the detailed tattoo he received when visiting Kara. Starting at his neck is a detailed collar of deep black with red spikes added to it. Attached to the collar is a bone-shaped tag done in golden yellow and with 'Good boy' written on it in cursive writing. Also attached to it is a red leash that hangs down from his neck, crosses one of his smooth pecs and goes back over his left shoulder to run down his back. Just a few inches before reaching the handhold, the red switches into rainbow banding, ending in a purple loop [']resting['] against his ass. This whole is quite detailed, looking quite real and seeming to have depth and curving naturally despite only being drawn into his skin.";
		say "     The unexpected effects of the fruit seem to have largely settled down with him becoming smarter and able to recognize and use his human body. He still has a thoroughly canine mind and is as loyal and obedient as ever, if not more so. While he is able to walk upright a little unsteadily, he still much prefers to go on all fours. Interspersed between his normal, canine antics, he will sometimes flip through some of the books, mainly children's books. He seems to find those with colour pictures particularly fascinating. He has a short vocabulary of words, though usually sticks to more canine sounds, especially when he's having fun or having fun having sex. Having a canine perspective on the world, he has no human shame and is as sexually open as ever despite his much more human capacity for reason.";


instead of conversing Xerxes:
	if lust of Xerxes < 3:
		say "     Calling Xerxes to you from wherever he was patrolling in the library, you sit down on the cot you put in here for him and talk with him. Or rather to him - as he still only has the mind of a dog and mostly replies with 'Woof?', 'Woof.' and 'Woof!'";
	otherwise if lust of Xerxes is 3:
		say "     Calling Xerxes to you from wherever he was patrolling in the library, you sit down on the cot you put in here for him and talk with him. Or rather to him, though he seems to be listening to you more attentively than he has in the past, almost as if he can understand you. Certainly his barks of response seem more varied and coincide with points you bring up.";
	otherwise:
		say "     Calling Xerxes to you from wherever he was patrolling in the library, you sit down on the cot you put in here for him. He snuggles up at your feet or rests his head in your lap and listens to you talk. He doesn't say much and mostly barks in response, but will occasionally use one of his spoken words instead. Usually, it's 'Master' or 'Friend' or 'Sex', those being his favourites, though you've heard him use at least a couple of dozen and seems to have no problem understanding you.";
	say "     Still, it's rather relaxing to talk a while about your problems and stroke your human dog's hair. It strengthens your sanity a bit and you feel more confident that you will get through this crazy situation.";
	if LastXerxesTalk - turns > 8:
		increase humanity of player by 5;
		now LastXerxesTalk is turns;

instead of sniffing Xerxes:
	say "     Xerxes has a nice smell, fresh and masculine.";


Chapter 2 - Xerxes Sex Menu

Instead of fucking Xerxes:
	if(lastfuck of Xerxes - turns < 5):
		say "     Xerxes still seems a bit worn out from the last fun-time. Let him rest a bit more...";
	otherwise if lust of Xerxes is 3:
		say "[AwesomeXerxesSex0]";
	otherwise if lust of Xerxes is 5 and a random chance of 3 in 5 succeeds and (cocks of player > 0 or cunts of player > 0):
		say "[AwesomeXerxesSex1]";
	otherwise:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Suck Xerxes cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		if (cocks of player > 0 or cunts of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "69 with Xerxes";
			now sortorder entry is 3;
			now description entry is "Share oral pleasures with your human dog pet.";
		if (cunts of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let Xerxes fuck your pussy";
			now sortorder entry is 4;
			now description entry is "Let the human dog breed you.";
		choose a blank row in table of fucking options;
		now title entry is "Let Xerxes fuck your ass";
		now sortorder entry is 5;
		now description entry is "Let the human dog fill your ass with his seed.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Xerxes ass";
			now sortorder entry is 6;
			now description entry is "Fill the human dog's ass with your cock.";
		if (cocks of player > 0 and Felinoid Companion is tamed and (hp of Xerxes is 11 or hp of Xerxes is 12)):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Xerxes & Felinoid";
			now sortorder entry is 7;
			now description entry is "Hot sex with the felinoid fucking Xerxes.";
		if (cocks of player > 0 and Fang is in the Grey Abbey Library and (hp of Xerxes is 10 or hp of Xerxes is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Xerxes & Fang";
			now sortorder entry is 8;
			now description entry is "Hot sex with Fang fucking Xerxes.";
		if (cunts of player > 0 and Felinoid Companion is tamed and (hp of Xerxes is 11 or hp of Xerxes is 12)):
			choose a blank row in table of fucking options;
			now title entry is "Female threesome with Xerxes & Felinoid";
			now sortorder entry is 9;
			now description entry is "Hot sex with the felinoid fucking Xerxes.";
		if (cunts of player > 0 and Fang is in the Grey Abbey Library and (hp of Xerxes is 10 or hp of Xerxes is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Female threesome with Xerxes & Fang";
			now sortorder entry is 10;
			now description entry is "Hot sex with Fang fucking Xerxes.";
		if (cocks of player > 0 or cunts of player > 0) and lust of Xerxes is 6 and hp of Kara > 0:
			choose a blank row in table of fucking options;
			now title entry is "Get Xerxes a tattoo";
			now sortorder entry is 11;
			now description entry is "Bring Xerxes to Kara to get a tattoo.";
		if (hp of Ares > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Xerxes and Ares for a walk";
			now sortorder entry is 12;
			now description entry is "Go pick up Ares from Mike's kennel and take him and Xerxes for a walk.";
		sort the table of fucking options in sortorder order;
		while sextablerun is 0:
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Suck Xerxes cock":
						say "[XerxesSex1]";
					otherwise if (nam is "Have him suck your cock"):
						say "[XerxesSex2]";
					otherwise if (nam is "69 with Xerxes"):
						say "[XerxesSex10]";
					otherwise if (nam is "Let Xerxes fuck your pussy"):
						say "[XerxesSex3]";
					otherwise if (nam is "Let Xerxes fuck your ass"):
						say "[XerxesSex4]";
					otherwise if (nam is "Take Xerxes ass"):
						say "[XerxesSex5]";
					otherwise if (nam is "Male threesome with Xerxes & Felinoid"):
						say "[XerxesSex6]";
					otherwise if (nam is "Male threesome with Xerxes & Fang"):
						say "[XerxesSex7]";
					otherwise if (nam is "Female threesome with Xerxes & Felinoid"):
						say "[XerxesSex8]";
					otherwise if (nam is "Female threesome with Xerxes & Fang"):
						say "[XerxesSex9]";
					otherwise if (nam is "Get Xerxes a tattoo"):
						say "[AwesomeXerxesSex2]";
					otherwise if (nam is "Take Xerxes and Ares for a walk"):
						say "[AresXerxesWalk]";
		if lust of Xerxes is 0:
			now lust of Xerxes is 1;
		otherwise if lust of Xerxes is 1:
			say "     Looking over the doggedly loyal young man, you can't help but smile, quite pleased with how good a pet he is. Now, perhaps there's a way to make him even more awesome...";
			now lust of Xerxes is 2;
		otherwise if lust of Xerxes is 4:
			increase lust of Xerxes by 1;
		now lastfuck of Xerxes is turns;


Chapter 3 - Xerxes Sex Scenes

to say XerxesSex1:                        [player sucks him]
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' he says with a wide grin[end if].";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	WaitLineBreak;
	say "     You push softly against him so he lies on his side, then back, with his human erection now standing proudly upwards. Pumping your hand up and down on it again, you put your lips to its tip, then go down on him. Xerxes [if lust of Xerxes >= 4]moans 'Good master' and yips while rubbing his hands lightly across your shoulders[otherwise]gives a lust-filled growl[end if] and starts to instinctively thrust with his hips, putting his cock deeper into your mouth and making the most of your blow-job. It's not too much longer before he orgasms, body twitching as his human seed gushes into your mouth. You wait until you get it all, every last shot, then swallow it down. Giving your dog a last quick belly-rub over his hard abs, you stand back up and turn back to everyday survival[if lust of Xerxes >= 4] while he runs off to rummage around in the stacks some more[end if].";

to say XerxesSex2:                        [he sucks the player]
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' he says with a wide grin[end if].";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt and give it a squeeze. Standing back up, you quickly strip off your clothes and hold your erect manhood up for Xerxes, who gives you a happy yip, then starts licking it.";
	WaitLineBreak;
	say "     He runs his talented tongue along your shaft, then laps at your balls before returning to the tip of your cock and taking it in his mouth. As Xerxes starts giving you a pretty nice blow-job, you resolve to thank Mike the next time you see him for your expertly trained pet. Your human dog is very careful not to touch your best bit with his teeth and uses his tongue to caress your cock as he bobs up and down on it";
	if lust of Xerxes < 4:
		say ". With his eager sucking, it doesn't take much longer until the need to cum rises in your balls.";
	otherwise if lust of Xerxes < 7:
		say ". With his increased awareness, he's become more responsive and even more eager in his cock-sucking.";
		say "     He even tries to use his hands a little, rubbing your balls or stroking your shaft as he sucks on your glans. He's still a little unsure in using his hands, but he's certainly improving now that he's discovered they can be used to pleasure his loving master. With his eager sucking and stroking, it doesn't take much longer until the need to cum rises in your balls.";
	say "     Moaning, you grab Xerxes head and do a few deep thrusts with your hips, your cock deep in his throat as it starts shooting a huge load. Pumping blast after blast directly into his stomach, you hold his head against your crotch, then pull back a moment later to let him get some air. He quickly goes back to work, catching the last spurts of cum with his mouth, then puts his lips around your cock-head, softly sucking as it goes down[if lust of Xerxes >= 4]. When he finally releases your cock, he smiles a very human smile up at you. 'Master tasty,' he says, licking his lips[end if].";

to say XerxesSex3:                        [player pussy fucked]
	setmonster "human";
	choose row monster from the table of random critters;
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master sex?' he asks eagerly[end if].";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	WaitLineBreak;
	say "     Quickly stripping off your clothes, you get on the cot yourself and assume a position on all fours in front of Xerxes. You wiggle your ass at him and reach down to spread your folds invitingly. Already hot and ready from your earlier stroking, your human dog doesn't hesitate a second before he mounts you from behind in typical doggie-style, hugging your chest has his hips grind against you. His hard shaft quickly finds your moist opening and plunges deep into your body.";
	if lust of Xerxes >= 4:
		say "     Having gained intelligence to go along with his canine mind, he is able to hold back his instinctive desire to rut you hard and fast for a while, taking the time to run his hands over your [one of][bodytype of player][or][if cocks of player > 0]herm[otherwise]female[end if][as decreasingly likely outcomes] body as he takes slower thrusts at first, enjoying the feel of your hot, wet hole around his pulsing shaft. His hands roam over you[if lust of Xerxes < 7] almost as if he were petting you[otherwise], stroking and caressing your [bodydesc of player] body with growing adeptness[end if]. He nuzzles at the back of your neck, panting with a growing excitement that has his pace quicken in response. As he thrusts harder, you moan what a good boy he is.";
	say "     Xerxes fucks you with a relentless wild energy, his hard thrusts rubbing very sensitive and pleasurable spots inside you. This soon drives your arousal to the max, giving you a mind-blowing orgasm that moistens Xerxes cock with even more slippery femcum[if cocks of player > 0] and makes your cock spray your own load all over the sheets below[end if]. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling your womb with his human seed.[fimpregchance]";
	say "     As his cock and balls keep twitching with blast after blast of cum into you, Xerxes just keeps holding on to you, panting with his head over your shoulder. Turning your head, you pull his lips to yours, kissing him and sticking your tongue in his mouth. Holding him against you with one arm, you move to lie on your sides with him behind you and rest for a while on the cot as you come down from your orgasms[if lust of Xerxes >= 4]. 'Mmm... Master good fuck,' he mumbles softly, snuggling up to you lovingly[end if].";

to say XerxesSex4:                        [player ass fucked]
	setmonster "human";
	choose row monster from the table of random critters;
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master sex?' he asks eagerly[end if].";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	WaitLineBreak;
	say "     Quickly stripping off your clothes, you grab the bottle Mike gave you and apply a generous amount of lube to your hole, then get on the cot and assume a position on all fours in front of Xerxes. You wiggle your ass at him and reach back to spread your cheeks invitingly. Already hot and ready from your earlier stroking, your human dog doesn't hesitate a second before he mounts you from behind in typical doggie-style, hugging your chest has his hips grind against you. His hard shaft pokes your ass and rubs up and down your crack until he finally finds your hole and presses in against you. As your pucker yields to Xerxes invading member, he plunges deep into your body, giving a lustful growl as he bottoms out in one thrust.";
	if lust of Xerxes >= 4:
		say "     Having gained intelligence to go along with his canine mind, he is able to hold back his instinctive desire to rut you hard and fast for a while, taking the time to run his hands over your [one of][bodytype of player][or][if cocks of player > 0 and cunts of player > 0]herm[otherwise if cocks of player > 0]male[otherwise if cunts of player > 0]female[otherwise]genderless[end if][as decreasingly likely outcomes] body as he takes slower thrusts at first, enjoying the feel of your hot, tight hole around his pulsing shaft. His hands roam over you[if lust of Xerxes < 7] almost as if he were petting you[otherwise], stroking and caressing your [bodydesc of player] body with growing adeptness[end if]. He nuzzles at the back of your neck, panting with a growing excitement that has his pace quicken in response. As he thrusts harder, you moan what a good boy he is.";
	say "     Xerxes fucks you with a relentless wild energy, his hard thrusts rubbing very sensitive and pleasurable spots inside you. This soon drives your arousal to the max, giving you a mind-blowing orgasm[if cocks of player > 0] that makes you shoot long streams of cum all over the sheets below[otherwise if cunts of player > 0] that makes your pussy drip with femcum[end if]. Your anal muscles twitching around his cock obviously excites Xerxes, as his growls of lust increase and he speeds up before plunging in one last time and filling your asshole with his human seed.[mimpregchance]";
	say "     As his cock and balls keep twitching with blast after blast of cum into you, Xerxes just keeps holding on to you, panting with his head over your shoulder. Turning your head, you pull his lips to yours, kissing him and sticking your tongue in his mouth. Holding him against you with one arm, you move to lie on your sides with him behind you and rest for a while on the cot as you come down from your orgasms[if lust of Xerxes >= 4]. 'Mmm... Master good fuck,' he mumbles softly, snuggling up to you lovingly[end if].";

to say XerxesSex5:                        [Xerxes ass fucked]
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master sex?' he asks eagerly[end if].";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt and give it a squeeze, then push a finger against his tight pucker. Reaching over, you grab the bottle Mike gave you and squirt some lube on your hand, warming it up a bit before starting to push first one, then two lubed fingers up Xerxes ass. After a first little whine, Xerxes gets into this anal invasion, even giving you a lustful yip as you stroke his prostrate. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	WaitLineBreak;
	say "     Quickly stripping off your clothes, you put some more lube your shaft, then get on the cot and kneel behind your waiting human dog. Running your hands from his shoulders over his muscular back down to his hips, you pull him towards you a bit, then move forward until the tip of your cock touches his pucker.";
	say "     Stroking his skin and telling him in soft tones to relax, you push forward and slide into his body. Xerxes hole is incredibly warm and tight - no wonder, with only Mike and maybe one or two of the other human dogs having been in there before you. You take a moment to appreciate the tightly gripping feel of his ass as you bottom out, then start fucking him, with Xerxes panting and yipping in lust as you slide in and out[if lust of Xerxes >= 4]. 'Good master,' he moans, pressing his rear back into your thrusts[end if]. Sounds like he really enjoys getting ass-fucked, and reaching around him you find that his manhood his rock hard.";
	if lust of Xerxes > 4:
		if a random chance of 3 in 5 succeeds:
			say "     You run your hands over his sexy body, caressing his lovely skin[if lust of Xerxes >= 7] and running your fingers along his collar tattoo[end if] as you lean over top of him. This draws added moans and yips of pleasure from him and he pushes himself back into your thrusts, his ass squeezing along your shaft as you fuck him like a dog. You play with his nipples and stroke his cock while fucking him, whispering in his ear what a good boy he is as you resume stroking his shaft.";
		otherwise:
			say "     After running your hands over his sexy body, you pause in your thrusting to get him to lay on his back. He giggles a little at what seems an unnatural position to him, but welcomes you into his arms as you get your cock lined up again and push into his wanton hole again. He lavishes you with licks and kisses while running his hands across your back[if lust of Xerxes < 7] almost as if he were petting you[otherwise], stroking and caressing your [bodydesc of player] body with growing adeptness[end if]. Between the kisses you share, you whisper to him what a good boy he is as you resume stroking his shaft.";
	say "     Touching his cock seems to have been the last straw for his orgasm, and as you do another deep thrust into Xerxes ass he gives a deep grunt and shoots a huge load of cum all over the sheets below. With the flexing of his anal muscles around your shaft with each of his spurts, you're close behind him, moaning loudly as you cream his asshole with your sperm. With your cock twitching inside him with blast after blast of cum, you pull Xerxes upper body against your chest, and give him a deep kiss. Then, after your last shot, you pull him down to lie together with you on the cot and enjoy each other's warmth and closeness for a while as you come down from your respective orgasms[if lust of Xerxes >= 4]. 'Mmm... Master fuck Xerxes good,' he mumbles softly, snuggling up to you lovingly[end if][if lust of Xerxes >= 7] as you kiss along the tattooed collar ringing his neck[end if].";

to say XerxesSex6:                        [male player and felinoid + Xerxes]
	say "     Accompanied by your felinoid companion, you walk over to the cot you put up here in the library for Xerxes. The large cat sniffs the human-dog's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'You want another round with him? Sure.'";
	say "     With a quick whistle you summon Xerxes, the dog in the buck-naked body of a young man immediately rushing to you from where he was patrolling through the long rows of bookshelves in the library. He hesitates for a second as he sees the felinoid, then comes continues walking closer, looking happy at getting his master's attention. Soon he's standing on all fours next to you. 'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. The felinoid immediately joins you on Xerxes other side, rubbing the side of furred body against your dog's naked skin. The effects of his touch and heady musk take effect almost immediately, with Xerxes breathing becoming quicker as he pants in lust and his cock filling out to dangle beneath his body.";
	WaitLineBreak;
	say "     Circling around to his backside, the felinoid licks Xerxes asshole with his rough tongue a few times until it's nice and wet with his saliva. Then he moves further up, licking over the muscled back of your human dog and continuing to his neck. Standing over the smaller human, his belly-fur touching Xerxes back, the felinoid now is in the perfect position to fuck him. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crack until he soon finds Xerxes tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	say "     [line break]";
	say "     What would you like to do now? Do you let Xerxes blow you and feed him your load ([link]Y[as]y[end link]), or fuck and fill the felinoid's ass ([link]N[as]n[end link])? ";
	if player consents:     [sucked by Xerxes]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [cock of player] hard-on and stroke it a few times before holding it out for Xerxes. Your obedient dog immediately goes for it, taking your hard length into his mouth and starts bobbing up and down on it. You give a deep moan as he keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Xerxes hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in his throat and shoot spurt after spurt of cum directly into his stomach.";
		say "     Breathing heavily, you stand still as Xerxes softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
		WaitLineBreak;
		say "     Even though the felinoid and Xerxes are quite virile males, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor, his twitching anal muscles give the large cat fucking him the last nudge towards orgasm too. A deep rumble of satisfaction vibrates in the felinoid's throat as he pushes his member as deep as it will go and fills Xerxes asshole with his seed.";
		say "     Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Xerxes with him. Stretched out comfortably on the floor, the felinoid holds Xerxes against his warm belly fur with his front paws around him and starts licking his sweaty back. Looks as if he's actively trying to infect him, or at least wants to spread his scent over all of your human pet's body.";
	otherwise:              [fucking the Felinoid]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [cock of player] hard-on and grab the bottle of lube Mike gave you. After spreading some of the slick substance on your shaft, you step up behind the two rutting beasts. Running your hands up through the soft fur on his lower back, you grab the felinoid's hips tightly then slam forward, burying your cock to the hilt in his warm, tight cave. Roaring at the sudden anal intrusion, the felinoid stops thrusting into Xerxes for a moment, looking back over his shoulder with partly bared teeth. That doesn't last long, though - moving in and out of his hole, your shaft stimulates his sensitive prostrate, and soon your big cat is purring in satisfaction and fucking Xerxes again.";
		WaitLineBreak;
		say "     Even though you'd wish your threesome could last forever, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor, he starts a chain reaction. The human dog's twitching asshole drives your felinoid companion over the edge, a deep rumble of satisfaction vibrating in his throat as he fills Xerxes up with his seed. The big cat's insides in turn grip your penis tightly with each shot of cum shooting through his shaft, making you follow them to an amazing orgasm. You gasp as you grind your hips against the felinoid's furry behind and blast after blast of your sperm shoot into his tight chute.";
		say "     After a moment of just holding on to the large feline and catching your breath, you pull out and watch the felinoid's pink pucker snap shut before any of your seed can leak out. Satisfied but exhausted after this session, you sink down on Xerxes cot. The big cat and human dog separate from each other too, then lie down next to the cot on the floor, with Xerxes cuddling up to the felinoid's soft and warm belly fur. Purring as loud as a idling motor, the big cat starts licking his sweaty human skin. Looks as if he's actively trying to infect him, or at least spread his scent over all of your human pet's body.";
	if Fang is in the Grey Abbey Library:     [rivalry messages]
		say "     [line break]";
		if hp of Fang is 1 or hp of Fang is 2:  [Beta Fang]
			if hp of Xerxes is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Looks like he's not happy that the big cat is getting ass he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if hp of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Xerxes closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		otherwise:                              [Alpha Fang]
			if hp of Xerxes is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Looks like he's not happy that the big cat is getting ass he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";

to say XerxesSex7:                        [Male Player with Fang & Xerxes]
	if (hp of Fang is 1 or hp of Fang is 2):    [Beta Fang]
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Xerxes' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the cot you put up here in the library for your human dog.";
		say "     With a quick whistle you summon Xerxes, the dog in the buck-naked body of a young man immediately rushing to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Pulling out your [cock of player] manhood, you pump your hand up and down its length a few times, then say 'Here boy, I got something for you.' Xerxes eagerly dashes over, then licks your balls and cock a bit before taking it into his mouth. Quite good at blowing cock, this dog turned human teenager.";
		WaitLineBreak;
		say "     As your human-dog pet blows you, Fang moves up behind him and sniffs Xerxes butt, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and as you slide your shaft once again into Xerxes throat you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Xerxes human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes ass. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting blown as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Xerxes head to stop from losing it right then and there. Cock resting for a moment in his throat, you take a deep breath, then slowly pull out and take a step back. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		say "     [line break]";
		say "     What do you want to do now? Get blown by Xerxes and feed him your load ([link]Y[as]y[end link]), or fuck and come in Fang's ass ([link]N[as]n[end link])? ";
		if player consents:     [sucking]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Xerxes immediately goes for it, taking your hard length into his mouth and starts bobbing up and down on it. You give a deep moan as he keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Xerxes hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in his throat and shoot spurt after spurt of cum directly into his stomach.";
			say "     Breathing heavily, you stand still as Xerxes softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to down and allowing them to separate, you lay back on the cot and get comfortable.";
		otherwise:              [fucking Fang]
			say "     [line break]";
			say "     Your eyes searching out your goal - the tight hole under Fang's tail - you stroke your hard cock and step closer to Fang's rear end. Running your hands through the fur on his lower back, you grab hold of the wolf's hips and sink your [cock of player] shaft into him with one deep thrust. After giving a loud yelp at the sudden anal invasion, Fang stops for a second and looks back. Seeing it's you, he accepts being fucked as his due to the Alpha, even tightening his anal muscles around you as you move inside him. Then the hot threesome continues, now mirroring the hierarchy in your little pack.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission. That only leaves you, with Fang's anal muscles twitching and gripping your manhood tightly as you thrust in one last time. Filling the wolf's back passage with a huge load of your seed, you once again prove your dominance as Alpha over him.";
			say "     Resting on Fang's furry back for a moment, you then pull your cock out of his cum-filled hole and stagger over to the nearby cot. Satisfied but exhausted after this session, you sink down on it and lie back to get some rest. Both your submissive pets still stand where they fucked, patiently waiting for Fang's knot to down and allowing them to separate.";
		if felinoid companion is tamed:  [rivalry messages - Beta Fang vs Felinoid]
			say "     [line break]";
			if hp of Xerxes is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
			if hp of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what the Felinoid has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
	otherwise if (hp of Fang is 3 or hp of Fang is 4):  [Alpha Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Alpha hot and ready to go, you give a quick whistle to summon Xerxes and the dog in the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of him, he then turns his backside to the wolf, taking a secure stance and spreads his legs a bit further.";
		say "     With a satisfied growl Fang moves up behind him and sniffs Xerxes butt, then jumps up and mounts his human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes ass. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing your Alpha penetrate Xerxes makes you quite hard as well and you quickly strip off your clothes. Pulling out your [cock of player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Xerxes eagerly licks your balls and cock a bit before taking it into his mouth. Ah, Mike trained this dog turned teenage human really well. He delivers an expert blowjob, even deep-throating all of your cock without any problems.";
		say "     Getting sucked as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Xerxes head to stop from losing it right then and there. Cock resting for a moment in his throat, you take a deep breath, then slowly pull out and take a step back. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		say "     [line break]";
		say "     What do you want to do now? Get blown by Xerxes and feed him your load ([link]Y[as]y[end link]), or wait your turn at filling his ass ([link]N[as]n[end link])? ";
		if player consents:     [sucking]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Xerxes immediately goes for it, taking your hard length into his mouth and starts bobbing up and down on it. You give a deep moan as he keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Xerxes hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in his throat and shoot spurt after spurt of cum directly into his stomach.";
			say "     Breathing heavily, you stand still as Xerxes softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to his nearby cot and sit down to watch the rest of your Alpha's coupling with your pet.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     With the powerful wolf once again cementing his dominant position, this worked out well. He and Xerxes still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get comfortable.";
		otherwise:              [fucking Xerxes]
			say "     [line break]";
			say "     Deciding that you'll wait your turn, you move over to Xerxes nearby cot and sit down on its edge, watching your companions mate and jerk off a bit to it. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			WaitLineBreak;
			say "     You move over to crouch beside them, fondling and stroking both their bodies as you wait for Fang's knot to go down. Some time later, the wolf pulls out of Xerxes hole and sits down on the floor nearby, curling up to lick himself clean. With Xerxes hole still gaping a bit and leaking some of your Alpha's seed, you quickly get on top of him and ram your erection home. Even stretched by Fang's shaft, he's still nicely tight and feeling your strong wolf's cum filling his hole and squishing around your thrusting member is a definite plus. It doesn't take all that long until you feel a familiar tingling in your balls, and with one last thrust, you bottom out inside Xerxes and come, adding your seed to Fang's load.";
			say "     Phew. Satisfied and just a bit exhausted, you pull out of Xerxes and move over to his cot and lie down on it. The human dog follows you soon after, curling up at the foot of the bed.";
		if felinoid companion is tamed:   [rivalry messages - Alpha Fang vs Felinoid]
			say "     [line break]";
			if hp of Xerxes is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - taking Xerxes away from Fang and mounting him himself most likely. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - mounting Xerxes ass again to make him his alone possibly. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";

to say XerxesSex8:                        [female player and felinoid + Xerxes]
	say "     Accompanied by your felinoid companion, you walk over to the cot you put up here in the library for Xerxes. The large cat sniffs the human-dog's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'You want another round with him? Sure.'";
	say "     With a quick whistle you summon Xerxes, the dog in the buck-naked body of a young man immediately rushing to you from where he was patrolling through the long rows of bookshelves in the library. He hesitates for a second as he sees the felinoid, then comes continues walking closer, looking happy at getting his mistress's attention. Soon he's standing on all fours next to you. 'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. The felinoid immediately joins you on Xerxes other side, rubbing the side of furred body against your dog's naked skin. The effects of his touch and heady musk take effect almost immediately, with Xerxes breathing becoming quicker as he pants in lust and his cock filling out to dangle beneath his body.";
	WaitLineBreak;
	say "     Circling around to his backside, the felinoid licks Xerxes asshole with his rough tongue a few times until it's nice and wet with his saliva. Then he moves further up, licking over the muscled back of your human dog and continuing to his neck. Standing over the smaller human, his belly-fur touching Xerxes back, the felinoid now is in the perfect position to fuck him. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crack until he soon finds Xerxes tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	say "     [line break]";
	say "     What would you like to do now? Do you let Xerxes lick your pussy ([link]Y[as]y[end link]), or will you slide under him to get some action with his human cock ([link]N[as]n[end link])? ";
	if player consents:     [licked by Xerxes]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, already a bit wet at the crotch from the juices of your swollen and dripping pussy, then step up to the two rutting beasts. Running a hand through the soft fur of the felinoid, then over the smooth skin of your human dog, you crouch down, then sit with spread legs in front of Xerxes. Your human dog has a bit of a pleasantly zoned out expression on his face, panting and grunting in lust as he's fucked. Following his mistress's orders is deeply ingrained in him though, so he immediately starts lapping at your pussy when you pull his head to it and say 'Xerxes - lick me!'";
		say "     Soon breathing heavily from your rising lust at your pet's oral attention, you rapidly move towards orgasm. Before much longer, his wriggling tongue in your vagina drives you over the edge, moaning loudly and holding Xerxes head tight against your crotch where he happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets further coupling in comfort. The felinoid ruts Xerxes with untamed abandon, growling and panting with his deep thrusts.";
		WaitLineBreak;
		say "     Even though the felinoid and Xerxes are quite virile males, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor, his twitching anal muscles give the large cat fucking him the last nudge towards orgasm too. A deep rumble of satisfaction vibrates in the felinoid's throat as he pushes his member as deep as it will go and fills Xerxes asshole with his seed.";
		say "     Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Xerxes with him. Stretched out comfortably on the floor, the felinoid holds Xerxes against his warm belly fur with his front paws around him and starts licking his sweaty back. Looks as if he's actively trying to infect him, or at least wants to spread his scent over all of your human pet's body.";
	otherwise:              [fucked by Xerxes]
		setmonster "human";
		choose row monster from the table of random critters;
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, already a bit wet at the crotch from the juices of your swollen and dripping pussy, then step up to the two rutting beasts. Running a hand through the soft fur of the felinoid, then over the smooth skin of your human dog, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Xerxes. Your human dog has a bit of a pleasantly zoned out expression on his face, panting and grunting in lust as he's fucked. His hard cock bumps against you often, every time one of the felinoid's thrusts into his ass pushes him down.";
		say "     Reaching up with a hand, you pull Xerxes head down a bit till he looks you in the eye and say 'Xerxes! Who's a good boy? Do you like my friend fucking your ass? I want you to fuck me now too - come on.' Your other hand meanwhile searches out his rock-hard erection and guides it to your moist opening. Between a thrust from the felinoid that pushes Xerxes manhood into you at first and a kind of automatic urge of his body to keep pounding into a tight and warm hole, your pet is soon fucking you enthusiastically and comes out of his blissed out submissive state for the felinoid a bit. Happy at intimate contact with his mistress, he starts licking your face and participates in hot making out as you pull his lips to yours.";
		WaitLineBreak;
		say "     Even though you'd wish your threesome could last forever, with Xerxes pounding into you and the felinoid pushing him even deeper as he thrusts into the dog's asshole, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and starts grinding his hips against your crotch, he starts a chain reaction. You feel the first blast of his seed shoot into you just as you push over the line to orgasm yourself, writhing in pleasure as your womb is filled with human cum. Meanwhile, the human dog's twitching asshole drives your felinoid companion over the edge, a deep rumble of satisfaction vibrating in his throat as his spined shaft pulses with spurt after spurt of cum he deposits in Xerxes asshole.[fimpregchance]";
		say "     After a moment of just resting his cock inside Xerxes as he finishes shooting, the large feline then throws himself over to lounge on his side, taking the human dog still impaled on his spined cock with him. Looking over, you see them lying together, the human dog spooned against the warm belly fur of the larger cat. Purring as loud as a idling motor, the felinoid starts licking his sweaty human skin. Looks as if he's actively trying to infect Xerxes, or at least spread his scent over all of your human pet's body.";
	if Fang is in the Grey Abbey Library:     [rivalry messages]
		say "     [line break]";
		if hp of Fang is 1 or hp of Fang is 2:  [Beta Fang]
			if hp of Xerxes is 11:
				say "     Since they seem busy with each other, you move over to the nearby cot and lie down on it. As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Looks like he's not happy that the big cat is getting ass he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if hp of Xerxes is 12:
				say "     Since they seem busy with each other, you move over to the nearby cot and lie down on it. As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Xerxes closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		otherwise:                              [Alpha Fang]
			if hp of Xerxes is 11:
				say "     Since they seem busy with each other, you move over to the nearby cot and lie down on it. As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Looks like he's not happy that the big cat is getting ass he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Xerxes is 12:
				say "     Since they seem busy with each other, you move over to the nearby cot and lie down on it. As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";


to say XerxesSex9:                        [Female Player with Fang & Xerxes]
	if (hp of Fang is 1 or hp of Fang is 2):    [Beta Fang]
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Xerxes' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the cot you put up here in the library for your human dog.";
		say "     With a quick whistle you summon Xerxes, the dog in the buck-naked body of a young man immediately rushing to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Slipping out of your clothes, you rub a hand over your sensitive pussy lips till they're moist and swollen, then say 'Here boy, I got something for you.' Xerxes eagerly dashes over and sniffs your crotch, then starts lapping out the juices dripping out of your vagina. Quite good with his tongue, this dog turned human teenager.";
		WaitLineBreak;
		say "     As your human-dog pet licks you, Fang moves up behind him and sniffs Xerxes butt, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and holding Xerxes head tight against your crotch to get his tongue in deeper you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Xerxes human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes ass. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting oral as you watch Fang mounting your human-looking dog, your arousal quickly mounts and you get close to orgasm, but pull back from Xerxes as you don't just want to cross the finish line just yet. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner. Stepping behind Fang, you crouch down to watch his canine shaft thrust in and out of the human ass below him and even reach out to fondle his furry balls. Soon they'll deliver their seed inside Xerxes body...";
		say "     [line break]";
		say "     ...which makes you think of how you yourself want to get off. What should it be? Get back to pussy licking by Xerxes ([link]Y[as]y[end link]), or crawl under him to get your pet's load inside your womb ([link]N[as]n[end link])? ";
		if player consents:     [licked by Xerxes]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, put your hands on Xerxes head and pull him against your crotch. The well-trained human dog immediately continues pleasing you, lapping your genitals and poking his tongue between your pussy lips. As wound up as you already were, it doesn't take much longer until his oral attention to your vagina drives you over the edge, moaning loudly and holding Xerxes head tight against your crotch where he happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets further coupling in comfort. Fang ruts Xerxes with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to down and allowing them to separate, you lay back on the cot and get comfortable.";
		otherwise:              [fucked by Xerxes]
			setmonster "human";
			choose row monster from the table of random critters;
			say "     [line break]";
			say "     Walking around the two rutting beasts, you run a hand through the rough fur on Fang's flank, then over the smooth skin of your human dog. As you get beside them, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Xerxes - where your human dog immediately greets you by licking your face and woofing at you between the lust-filled pants and grunts as he's fucked. His hard cock bumps against you often, every time one of Fang's thrusts into his ass pushes him down.";
			say "     Reaching up with a hand, you pull Xerxes head down a bit until he looks you in the eye and say 'Xerxes! Who's a good boy? Do you like my friend fucking your ass? I want you to fuck me now too - come on.' Your other hand meanwhile searches out his rock-hard erection and guides it to your moist opening. Between a thrust from Fang that pushes Xerxes manhood into you at first and the dog's libido turning into high gear as he feels your moist tunnel around his cock, your pet is soon fucking you enthusiastically.";
			WaitLineBreak;
			say "     Even though you'd wish your threesome could last forever, with Xerxes pounding into you and Fang pushing him even deeper as he thrusts into the dog's asshole, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and starts grinding his hips against your crotch, he starts a chain reaction. You feel the first blast of his seed shoot into you just as you push over the line to orgasm yourself, writhing in pleasure as your womb is filled with human cum. Meanwhile, the human dog's twitching asshole drives the feral wolf on top of him over the edge, a lust-filled howl sounding from his throat as his canine shaft pulses with spurt after spurt of cum being deposited in Xerxes asshole.[fimpregchance]";
			say "     You spend a moment resting on the ground with Xerxes on top - and in - you. He feels nice inside you and your thoughts wander to his virile load deposited into your womb, its millions of little swimmers swarming out on their mission to find an egg. Phew, that was a nice fuck. Not wanting to wait the full time until Fang's knot goes down and he can disengage from Xerxes, you slide out from under your human dog and get on his nearby cot to rest for now.";
		if felinoid companion is tamed:  [rivalry messages - Beta Fang vs Felinoid]
			say "     [line break]";
			if hp of Xerxes is 10:
				say "     As you rest your head on the pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
			if hp of Xerxes is 12:
				say "     As you rest your head on the pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what the Felinoid has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
	otherwise if (hp of Fang is 3 or hp of Fang is 4):  [Alpha Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Alpha hot and ready to go, you give a quick whistle to summon Xerxes and the dog in the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of him, he then turns his backside to the wolf, taking a secure stance and spreads his legs a bit further.";
		say "     With a satisfied growl Fang moves up behind him and sniffs Xerxes butt, then jumps up and mounts his human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes ass. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing your Alpha penetrate Xerxes makes you quite horny as well and you can't wait to get in on the action. Slipping out of your clothes, you rub a hand over your sensitive pussy lips until they're moist and swollen, then say 'Here boy, I got something for you.' and step up to Xerxes. The human dog his exuberantly happy to serve his mistress and immediately starts lapping at your crotch, licking up the juices dripping out of your vagina. Quite good with his tongue, this dog turned human teenager.";
		say "     Getting oral as you watch your alpha mounting the human-looking dog, your arousal quickly mounts and you get close to orgasm, but pull back from Xerxes as you don't just want to cross the finish line just yet. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner. Stepping behind Fang, you crouch down to watch his canine shaft thrust in and out of the human ass below him and even reach out to fondle his furry balls. Soon they'll deliver their seed inside Xerxes body...";
		say "     [line break]";
		say "     ...which makes you think of how you yourself want to get off. What should it be? Get back to pussy licking by Xerxes ([link]Y[as]y[end link]), or crawl under him to get your pet's load inside your womb ([link]N[as]n[end link])? ";
		if player consents:     [licked by Xerxes]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you put your hands on Xerxes head and pull him against your crotch. The well-trained human dog immediately continues pleasing you, licking your genitals and poking his tongue between your pussy lips. As wound up as you already were, it doesn't take much longer until his oral attention to your vagina drives you over the edge, moaning loudly and holding Xerxes head tight against your crotch where he happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch the powerful wolf further coupling with your pet in comfort. Fang ruts Xerxes with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     With the powerful wolf once again cementing his dominant position, this worked out well. He and Xerxes still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get a bit of rest.";
		otherwise:              [fucked by Xerxes]
			setmonster "human";
			choose row monster from the table of random critters;
			say "     [line break]";
			say "     Walking around the two rutting beasts, you run a hand through the rough fur on Fang's flank, then over the smooth skin of your human dog. As you get beside them, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Xerxes - where your human dog immediately greets you by licking your face and woofing at you between the lust-filled pants and grunts as he's fucked. His hard cock bumps against you often, every time one of Fang's thrusts into his ass pushes him down.";
			say "     Reaching up with a hand, you pull Xerxes head down a bit until he looks you in the eye and say 'Xerxes! Who's a good boy? Do you like my master fucking your ass? I want you to fuck me now too - come on.' Your other hand meanwhile searches out his rock-hard erection and guides it to your moist opening. Between a thrust from Fang that pushes Xerxes manhood into you at first and the dog's libido turning into high gear as he feels your moist tunnel around his cock, your pet is soon fucking you enthusiastically.";
			WaitLineBreak;
			say "     Even though you'd wish your threesome could last forever, with Xerxes pounding into you and Fang pushing him even deeper as he thrusts into the dog's asshole, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and starts grinding his hips against your crotch, he starts a chain reaction. You feel the first blast of his seed shoot into you just as you push over the line to orgasm yourself, writhing in pleasure as your womb is filled with human cum. Meanwhile, the human dog's twitching asshole drives the large feral wolf on top of him over the edge, a lust-filled howl sounding from his throat as his canine shaft pulses with spurt after spurt of cum being deposited in Xerxes asshole.[fimpregchance]";
			say "     You spend a moment resting on the ground with Xerxes on top - and in - you. He feels nice inside you and your thoughts wander to his virile load deposited into your womb, its millions of little swimmers swarming out on their mission to find an egg. Phew, that was a nice fuck. Not wanting to wait the full time until Fang's knot goes down and he can disengage from Xerxes, you slide out from under your human dog and get on his nearby cot to rest for now.";
		if felinoid companion is tamed:   [rivalry messages - Alpha Fang vs Felinoid]
			say "     [line break]";
			if hp of Xerxes is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - taking Xerxes away from Fang and mounting him himself most likely. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - mounting Xerxes ass again to make him his alone possibly. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";

to say XerxesSex10:                       [69 with Xerxes]
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' he says with a wide grin[end if].";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	WaitLineBreak;
	say "     Moving onto the cot alongside him, you get him to raise his thigh and give you clear access to his ready erection. Smiling, you run your fingers lightly across his pulsing shaft, causing him to shiver and yip in pleasure. Seeing more precum leaking from her stiff rod, you dive onto it, sliding your lips over his erect member and running your tongue along it. He pulses and throbs with excitement, his enlarged shaft wonderfully responsive to your oral attentions. You tease [if anallevel is 3 and a random chance of 3 in 5 succeeds]a lubed finger across his anus before sliding it into him, drawing a low moan of pleasure from the young man[otherwise]your fingertips across his ballsac before cupping his heavy orbs and rubbing them firm[end if].";
	if cocks of player > 0:
		say "     With your erect shaft in front of his face, he knows what to do and sets himself to licking and kissing at it. His soft lips and playful tongue are a delight across your sensitive manhood, quickly coaxing dribbles of precum from it. Seeing this, he plunges his mouth over your shaft and sucks greedily at your cock, his well-trained mouth working hard to please his loving master. His hands [if lust of Xerxes >= 7]glide across[otherwise]grope at[end if] your thighs and ballsac, [if lust of Xerxes >= 7]pawing at[otherwise]rubbing[end if] your orbs as they prepare to give him the tasty treat he so desires.";
	otherwise:
		say "     With your wet pussy in front of his face, he knows what to do and sets himself to licking and kissing at it. His soft lips and playful tongue are a delight across your sensitive folds, quickly getting you wet and dripping as well. Seeing this, he plunges his tongue into your cunt and laps away, his well-trained mouth working hard to please his loving master. His hands [if lust of Xerxes >= 7]glide across[otherwise]grope at[end if] your thighs and stroke your folds, finding your clit and [if lust of Xerxes >= 7]returning[otherwise]trying his best to return[end if] the pleasure you're giving him in kind.";
	say "     With your human doggy pleasuring you orally while you're enjoying that thick, pulsing rod in your mouth, it is not too long before you feel your excitement building out of control. You cum with a loud groan and suck down hard onto him, lapping across his shaft and glans as he orgasms in response[if cocks of player > 0]. You pump your [cum load size of player] load into the young man's mouth, feeding your seed to him[otherwise]. Your sweet waters soak his face, which he laps up and drinks down with lustful eagerness[end if]. When you're both done cumming, he turns around on the cot, snuggles up with you. He licks and kisses at your face, sharing your taste with his[if libido of Xerxes >= 4]. 'Mmm... tasty Master. Xerxes love.'[otherwise].[end if]";


Chapter 4 - Xerxes + Fang/Felinoid

instead of going outside from Bunker while (Xerxes is in the Grey Abbey Library and lastfuck of Xerxes - turns > 5 and (hp of Xerxes is 1 or hp of Xerxes is 10) and felinoid companion is tamed ):
	move player to Grey Abbey Library;
	say "     As you emerge from the underground bunker and step back into the library, you hear some rather confused barks and yips from somewhere back between the rows of bookshelves. Sounds like Xerxes. Going to have a look, you find your dog turned teenage human, standing on all fours in the midst of a loose reading group of chairs, his looks following the movements of your felinoid companion. The large feline weaves his way between the chairs with flowing movements, circling Xerxes and from time to time veering closer to rub the side of his head or furred body against Xerxes naked form.";
	say "     Still looking a bit confused, the human dog becomes more and more aroused with each touch of fur and sniff of the felinoid's enticing scent. Soon any doubts about getting this close to any cat are forgotten and Xerxes rubs up against the felinoid, licking its muzzle. Giving a satisfied rumbling purr, the large cat moves to sniff Xerxes ass, then licks between the cheeks of his bubble butt with its wide tongue. Several licks later, the felinoid moves further up, licking the muscled human back of your dog and then his neck.";
	WaitLineBreak;
	say "     Standing over the smaller human, his belly-fur touching Xerxes back, the felinoid now is in the perfect position to fuck him. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crack until he soon finds Xerxes tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library and you stay close to watch the show.";
	say "     After quite a while of hot and heavy fucking, Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor. The spasms of his anal muscles during his orgasm must have given the felinoid the rest too, as the large cat buries his hard cock all the way in Xerxes ass and holds still, filling him up with his seed. When he finishes cumming, the big cat pulls out and throws himself on the floor in front of a bookshelf to lounge in satisfaction. Your human-dog pet licks the felinoid's cock clean, then joins him on the floor, snuggling up against his warm fur.";
	say "     [line break]";
	say "     You step back out from between the bookshelves and leave the two of them alone for a while. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
	if hp of Xerxes is 10:
		now hp of Xerxes is 12;
	otherwise:
		now hp of Xerxes is 11;
	now lastfuck of Xerxes is turns;

instead of going outside from Bunker while (Xerxes is in the Grey Abbey Library and lastfuck of Xerxes - turns > 5 and (hp of Xerxes is 1 or hp of Xerxes is 11) and Fang is in the Grey Abbey Library and lastfuck of Fang - turns > 7 ):
	move player to Grey Abbey Library;
	if ( hp of Fang is 1 or hp of Fang is 2 ):        [Beta Fang]
		say "     As you emerge from the underground bunker and step back into the library, you notice that Fang isn't at his spot next to the door. Wary of unannounced visitors, you look around for signs of a fight or any other indication what happened. Nothing out of the ordinary in sight. Then you hear something from further back in the rows of bookshelves - growling.";
		say "     Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Xerxes, who looks to the ground, then rolls over and bares his muscled chest and genitals. Your wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Xerxes to lick his muzzle. Looks like the question of hierarchy among your pets just got solved. With them establishing their status to each other right now peacefully, you decide not to interfere.";
		WaitLineBreak;
		say "     With a commanding growl, Fang pokes Xerxes in the side with his muzzle, making him roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Xerxes asshole in one deep thrust. Licking and lightly nipping Xerxes neck, he pounds into him with an animal's ferocity. Your human-dog pet gives loud moans of lust as he is penetrated deeply again and again and you can see his manhood harden and dribble pre-cum on the library floor. Quite a hot little show you're getting here.";
		say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
		say "     [line break]";
		say "     You step back out from between the bookshelves and leave the two of them to wait until Fang's knot goes down. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
	otherwise if (hp of Fang is 3 or hp of Fang is 4):  [Alpha Fang]
		say "     As you emerge from the underground bunker and step back into the library, you notice that Fang isn't in sight any at his usual spots. Wary of unannounced visitors, you look around for signs of a fight or any other indication what happened. Nothing out of the ordinary. Then you hear something from further back in the rows of bookshelves - growling.";
		say "     Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Xerxes, who looks to the ground, then rolls over and bares his muscled chest and genitals. Your strong Alpha wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Xerxes to lick his muzzle. Looks like he wants to dominate your pet too - as is his right. Xerxes seems to be readily accepting the submissive role, just like you did in the end. Arousal wells up inside you as you think back to your own first time under a dominating Fang and you can't wait to see your human dog have the same experience.";
		WaitLineBreak;
		say "     With a commanding growl, Fang pokes Xerxes in the side with his muzzle, making him roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Xerxes asshole in one deep thrust. Licking and lightly nipping Xerxes neck, he pounds into him with an animal's ferocity. Your human-dog pet gives loud moans of lust as he is penetrated deeply again and again and you can see his manhood harden and dribble pre-cum on the library floor. What a hot show you're getting here - you just wish you were the one getting fucked by that powerful wolf's shaft.";
		say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
		say "     [line break]";
		say "     You step back out from between the bookshelves and leave the two of them to wait until Fang's knot goes down. With this new development, new opportunities for fun with your canine master and human dog pet come to your mind as you walk away...";
	if hp of Xerxes is 11:
		now hp of Xerxes is 12;
	otherwise:
		now hp of Xerxes is 10;
	now lastfuck of Xerxes is turns;
	now lastfuck of Fang is turns;


Chapter 5 - Awesome Xerxes

instead of trading the awesome fruit when the current action involves the Xerxes:
	if lust of Xerxes < 2:
		say "     Aren't you jumping the gun a little?";
	otherwise if lust of Xerxes is 2:
		say "     Looking over at the young man with the mind of a dog, you can't help but smile at what a fine pet he's turned out to be. Deciding to see if you might make him even more awesome, you pull out the strange fruit you found and call him over. Hearing you call for him, he comes rushing over on all fours with a happy bark, panting with a big doggy smile on his face. You pet the young man's head and scritching his ears.";
		say "     Holding out the shiny fruit, you give it a little shake and his eyes lock on it. 'Does my good boy want a treat?'  Xerxes bounds around you and barks excitedly. Telling him to sit, he obediently plops down onto his rear, sitting attentively. Running him through a few other tricks, you rub his head again, call him a good boy again and give him the fruit.";
		say "     Laying down on the floor, he gives the fruit a sniff and pants happily. Pressing the large fruit between his balled-up hands as if they were paws, he fumbles to keep it in place as he takes big bites out of it. As he consumes its juicy flesh, subtle changes start to occur. His body, already quite fit, becomes perfectly toned while his skin gains a nice, even tan and loses any imperfections. His hair, previously short and unkempt, grows out into long, flowing locks. As he's finishing off the fruit, he's moved to sitting and holding the fruit in his hands. After gulping down the last bite, he licks his fingers clean and then gives you a rather human smile before barking happily and dashing off on all fours. As he goes off, the view has you fairly certain that his cock and balls have also grown a little.";
		now lust of Xerxes is 3;
	otherwise:
		say "     You've already done that.";

to say AwesomeXerxesSex0:
	say "     In the mood to have some more fun with your human dog, you take a quick look around the room but don't spot him. Calling out to him, he barks happily from somewhere off among the shelves before running over to you on all fours. As he comes over, you can see he's got a book in his mouth. Worried that he might be damaging it, you take it from him and he looks up with a human smile on his handsome face.";
	say "     Looking at the book you're taken, you see that it's a children's book on dogs. He barks excitedly and you try to steady yourself. 'Were you... reading this?' you finally manage to ask, to which he nods excitedly - another human mannerism. He then slaps one of his hands on the picture of a dog on the book's cover before pressing that hand to his chest. In your surprise, you drop the book and Xerxes whines softly at your reaction. Taking your hand in his, he presses it onto his head. Scritching the concerned young man's head, you kneel down and pull him into a hug. 'Such a clever boy you are,' you say and he barks happily to have pleased you.";
	say "     Running your hands over his body, your excitement leads you to stroke over his stiffening member. 'I think you deserves a reward for being such a clever boy.'  He gives a happy bark and kisses you, giving you a mix of slobbery doggy licks and human kisses while fumbling his hands across your body";
	if cocks of player > 0:
		say ". Reaching down, he puts a hand on your hard shaft and rubs it in return. He tries to imitate your motions, but is a little rough at first. With a little prompting from you, he lightens his touch. And while he's a little clumsy with his hands, he is very eager and does his best to copy what you're doing.";
		WaitLineBreak;
		say "     Once you're both throbbing hard and dribbling precum, you get the young man to lie down and you move alongside him. Now that you're in a position to get a good look at it, you can see that his penis has indeed grown, gaining about another inch in length and his balls are bigger as well. His shaft is quite lovely, smooth and perfectly proportioned. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from the base of his shaft up its twitching length before swirling it over his glans. You then slowly lower your lips down around the hot man-meat so you can suck your clever, loyal pet off.";
		say "     With you laying beside him, your cock is in front of his face and he grins happily. This is a trick he knows well and he quickly sets to licking and then sucking at his master's cock in return. Well-trained at this task, he works his mouth and tongue over your pulsing shaft in an effort to please you. Without prompting, he even ventures to put a hand on your ballsac and gently rubs at it.";
		say "     With all the excitement, the young man can't hold out very long and is soon pumping his sticky load across your tongue. Even the taste of it seems better, rich and flavourful without any harshness to it. Having that delicious load fill your mouth is enough to set you off, pumping your hot seed into his waiting mouth before he swallows it down, not releasing your shaft until you're spent.";
	otherwise if cunts of player > 0:
		say ". Reaching down, he puts a hand between your legs and rubs your pussy in return. He is a little rough at first, but with a little prompting from you, he lightens his touch and does much better. He listens attentively to your instructions and tries his best to follow them. And while he's a little clumsy with his hands, he is very eager to please you.";
		WaitLineBreak;
		say "     Once you're both throbbing hard and dribbling precum, you get the young man to lie down and you move alongside him. Now that you're in a position to get a good look at it, you can see that his penis has indeed grown, gaining about another inch in length and his balls are bigger as well. His shaft is quite lovely, smooth and perfectly proportioned. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from the base of his shaft up its twitching length before swirling it over his glans. You then slowly lower your lips down around the hot man-meat so you can suck your clever, loyal pet off.";
		say "     With you laying beside him, your cunt is in front of his face and he grins happily. This is a trick he knows well and he quickly sets to licking across your juicy folds and then lapping into your vagina in return. Well-practiced at this task, he works his tongue into you in an effort to please you. Without prompting, he even ventures to rub a finger at your clit in an effort to pleasure you.";
		say "     With all the excitement, the young man can't hold out very long and is soon pumping his sticky load across your tongue. Even the taste of it seems better, rich and flavourful without any harshness to it. Having that delicious load fill your mouth is enough to set you off, soaking his face in your hot juices for him to lap up. He makes sure to lick you clean, wanting to get every drop.";
	otherwise:
		say ". Reaching down, he puts a hand between your legs and rubs at your bare crotch with a sad little whine. He ends up reaching around and grabbing your ass instead and kneading it. He is a little rough at first, but with a little prompting from you, he lightens his touch and does much better. And while he's a little clumsy with his hands, he is very eager to please you.";
		WaitLineBreak;
		say "     Once you're both throbbing hard and dribbling precum, you get the young man to lie down and you move alongside him. Now that you're in a position to get a good look at it, you can see that his penis has indeed grown, gaining about another inch in length and his balls are bigger as well. His shaft is quite lovely, smooth and perfectly proportioned. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from the base of his shaft up its twitching length before swirling it over his glans. You then slowly lower your lips down around the hot man-meat so you can suck your clever, loyal pet off.";
		say "     With you laying beside him, he's left faced with your bare crotch. After giving it a few soft licks, his tongue trails down and around and he sniffs. Soon enough, he's nuzzling at your rear and letting his tongue rub against your asshole. Your moan in response prompts him to continue and he works his wet tongue against your pucker[if anallevel > 1] and eventually wriggling it into your rear[end if]. Without prompting, he even teases a finger against your lubed up hole and pushes it into you in an effort to pleasure you further.";
		say "     With all the excitement, the young man can't hold out very long and is soon pumping his sticky load across your tongue. Even the taste of it seems better, rich and flavourful without any harshness to it. Having that delicious load fill your mouth is very arousing and you smear his seed all over his cock so you can lick and suck it clean while getting every drop your virile pet can give.";
	WaitLineBreak;
	say "     After the fun's over, he then moves around to snuggle up against you. After some more kisses, he nuzzles his head under your chin so he can rest against you. You stroke the obedient young man and scritch his head as he starts to fall asleep. As he's drifting off, he mumbles 'Master friend...' softly, starting you fully awake again. You are left staring down at the sleeping fellow in your arms, your mind reeling with confused thoughts. With people all around turning in animals and mindless creatures, here is a dog who's only becoming more and more human. After laying there for a long time and getting neither answers nor rest, you slowly disentangle yourself from Xerxes and, after putting a blanket over your sleeping pet, you head off to try and deal with a world that seems even more topsy-turvy than before.";
	increase lust of Xerxes by 1;

to say AwesomeXerxesSex1:
	say "     Wanting to play with your awesome human dog again, you head over to his cot and call out for him. He gives a happy bark and a cry of 'Master!' before running over to you on all fours, half-hard cock swaying. He's got another book with, though he's at least holding it in one hand this time. He hops up onto the cot beside you, drops the book in your lap and wraps his arms around your waist.";
	say "     You're a little surprised to see that it is an art book focused on tattooing. It is filled with numerous photos of body art of all kinds, from simple pieces to body-wide works of grand detail. He stares in fascination at the colourful photos as you flip through several pages of the book while petting the young man.";
	say "     Seeing how looking at the images has gotten him quite hard, you reach over and stroke his cock with your free hand. 'Do you like those, boy? Did you want one?'";
	say "     He barks happily and licks your cheek. 'Xerxes want.'  When you flip to photos of tattooing being done, you tell him that it does hurt and ask him again. 'Xerxes want,' he asserts again. 'Good boy sit,' he adds with a grin, pointing to the person receiving the tattoo. Unable not to smile at his eagerness, you ruffle his hair and scritch his ears, telling him you'll see about getting him once you find an opportunity to do so[if tattoo parlor is unknown], adding that it may have to wait until you leave the city[end if]. He gives you another rush of licks and kisses. 'Good Master. Love Master.'";
	if cocks of player > 0:
		say "     Once the bout of kisses ends, he nuzzles between your legs and goes eagerly for your cock, licking and sucking at it. He's gotten better at using his hands by this point, stroking and rubbing your stiff maleness[if cunts of player > 0] and damp pussy[end if], very eager to show you how happy he is with you. The young man listens attentively as you give him instructions to improve his technique, gradually getting better at using those fingers of his to further please you while his mouth sucks you off.";
		say "     You stroke his head and scritch his ears, telling him what a good boy he is. Though that's not all you're stroking. Still having your hand on his cock, you've set aside the book and are now pumping at his throbbing manhood, much to your pet's delight. You decide to take your time, coaxing your loyal pet to go slowly so you can build to a strong orgasm that pumps your [cum load size of player] load into his mouth and down his throat by the time you're finally done. After having finished you off, he bends around, shamelessly taking his own cock in his mouth like a dog licking himself and finishes himself off while you watch to get another warm load of cum to gobble down.";
		say "     Having gotten your permission to eventually get a tattoo and those tasty treats to fill his tummy, he stretches out on his back and rubs his [if cock width of player > 30]bloated[otherwise if cock width of player > 20]stuffed[otherwise]full[end if] belly with a happy grin on his handsome face.";
	otherwise if cunts of player > 0:
		say "     Once the bout of kisses ends, he nuzzles between your legs and goes eagerly for your pussy, licking excitedly at it. He's gotten better at using his hands by this point, stroking and rubbing your sensitive folds, very eager to show you how happy he is with you. The young man listens attentively as you give him instructions to improve his technique, gradually getting better at using those fingers of his to further please you while eating you out.";
		say "     You stroke his head and scritch his ears, telling him what a good boy he is. Though that's not all you're stroking. Still having your hand on his cock, you've set aside the book and are now pumping at his throbbing manhood, much to your pet's delight. You decide to take your time, coaxing your loyal pet to go slowly so you can build to a strong series orgasm that soaks his face in your juices by the time you're finally done. After having finished you off, he bends around, shamelessly taking his own cock in his mouth like a dog licking himself and finishes himself off while you watch to get another warm load of cum to gobble down.";
		say "     Having gotten your permission to eventually get a tattoo and those tasty treats to enjoy, he stretches out on his back and licks his lips, rubbing a hand to gather up your female cum so he can suck it from his fingers as well.";
	increase lust of Xerxes by 1;


to say AwesomeXerxesSex2:
	say "     Remembering your promise to your loyal pet, you gather your gear and stand by his cot. Calling him over, he gives a happy bark and comes up, expecting more playtime with his master, but finding you fully equipped and ready to go out into the city. He gives a little whine of disappointment, but sits down on his haunches and looks up at you obediently. After rubbing his head and giving him some scritches, you lean down and ask him if he's ready to get his tattoo. He grins happily and presses his lips to yours in a passionate kiss as his answer. Grinning down at him, you pat his head and tell him to come along and to stay right by your side the whole time.";
	say "     While the naked human does draw some attention from the mutants around, they thankfully leave you alone. And while the activity and sexy sights of the city's red light district catch your pet's attention, he remains steadfastly by your side. Your journey to the tattoo parlour is largely uneventful save for a couple of mutants who offer to trade for your pet, but thankfully accept your refusal and move on.";
	attempttowait;
	say "     When you go inside, Kara smiles and greets you before turning to the newcomer and inspecting the human dog's naked body. 'And who do we have here?' she asks you, her hyena mind quickly assessing that Xerxes is your subordinate.";
	say "     'This here is Xerxes, my pet. He's been a good boy and so we're here to get him a tattoo,' you tell her before looking down at the object of your conversation. Xerxes is quite excited, looking all around the room and shifting around with barely contained enthusiasm. Of everything in the room, Kara draws his attention the most. Rubbing his head, he settles down momentarily. 'Xerxes, this is my friend Kara. She's going to give you your tattoo,' you say, patting his side as a signal he can go, he heads over to the hyena on all fours and looks up at her with a happy smile on his handsome face.";
	attempttowait;
	say "     'Doggy friend!  Xerxes tattoo,' he says cheerfully, nosing at Kara's crotch and starts licking her sheath. Already starting to poke out from the sight of the sexy young man, her cock stiffens further and is soon buried in your pet's mouth. She moans softly and rubs a paw over his head. 'I'm a hyena you silly... Ngg... friendly fellow, isn't he?' she adds to you and you can't help but smile.";
	say "     While she's getting an introductory blow job from the dog-minded young man, you fill her in on the basics of the situation. As you talk, you take a seat and enjoy the show, watching the young man work that throbbing hyena cock with his mouth and putting his increasing manual talents to work as well. He's clearly very eager to please this new friend who's going to give him his tattoo and does his very best, working her cock, knot, sheath, balls and pussy with great enthusiasm until she growls and pulls his face forward, locking that knot of hers in his mouth and feeding her load to him while hot juices run down her thighs from him fingering her pussy to orgasm as well. Once he manages to pop his lips around her knot, he smiles up at her happily.";
	attempttowait;
	say "     'Now, I am quite busy and I'm not really sure if I've got the time to do a tattoo,' she says with a grin. Xerxes, not picking up on her teasing, whines softly and his shoulders sag in disappointment. '...but for such a good doggy, I'm sure I can make the time.'  This perks your pet right back up and he bounds around on all fours before jumping up and kissing her with several quick licks before diving his tongue into her muzzle. She moans and pats him until he settles down enough to drop back down. He then hops eagerly into the tattooing chair, his enthusiasm barely contained.";
	say "     She turns to you and asks if either of you had anything particular in mind and you shake your head, telling her to do whatever your pet wants as long as it's nothing too crazy. Grinning happily, Kara pulls out a book of samples and flips through it, showing one to your pet. 'Do you like this one? I think it's just right for a good boy like you,' she says, scritching his ear. Xerxes barks happily and nuzzles into the scritches, clearly pleased with her choice.";
	say "     As she's getting her equipment ready, she starts looking through some inks and sets them aside. Seeing that it's mostly browns and blacks she's examining, Xerxes barks up with a call of 'colour!'  She arches her brow and asks him what colour he'd like, at which point he seems struck with indecision, pointing at colours at random, regardless of how poorly they'd go together. You pat his side, tell him to settle down and add that perhaps the professional should pick a few nice colours. He seems happy with this and settles back down.";
	say "     You stick around long enough to make sure that he's settled once the tattooing starts. He whimpers a little at the pain of it, but sits still like the good boy he is, letting the hyena do her work. Having told you it'd take a while, you give your pet a kiss before head off to scout around a bit. You even manage to find a bit of food while out. You leave some of it for Kara as payment for her work and tuck the rest away in your pack.";
	attempttowait;
	say "     When you get back, she's got him lying down on a table and is finishing up something on his left butt-cheek. Taking your seat, you watch the hyena's rear sway as she works. With such a view, you can't help but notice the cum leaking from her pussy. It seems the two took a break to have some more fun while you were out. Finishing up, she sets aside the needle and smears some lotion across his back and bottom. 'All done, doggy,' she says, running a paw through his lush hair. 'Now be a good boy and show your master your nice tattoo.'";
	say "     Xerxes hops up off the table and heads over to you. He struggles a bit to stand up so he can look himself over in the wall mirror while displaying his new tattoo for you. Around his neck is a tattoo of a dog collar with red studs and a golden, bone-shaped tag. The tag even has 'Good boy' drawn onto it in smooth cursive. Attached to the collar is also a red leash that hangs down from his neck and goes over his left shoulder. At your motion, he turns around, showing you that this leash drapes across his back, curving very realistically against his skin all the way down to his rear, leaving the loop [']resting['] against his bare butt cheek. The last couple of inches before the loop are banded with a rainbow of colours to further brighten it up.";
	say "     The tattoo looks very realistic and the leash seems to drape naturally across your pet's body as if it's really there, like it belongs there. Surprised and impressed by the level of work that Kara's put into the piece, being far more than you'd expected, you thank her very much for it with a lustful kiss and grope. Xerxes, clearly pleased as well, happily turns around in front of the mirror and gingerly touches his rapidly healing skin. After the two of you properly show your thanks to the talented hyena, leaving her wet, sticky and thoroughly satisfied, you head back with your loyal pet at your right side, his head held high as he trots on all fours beside you.";
	increase carried of food by 1;
	increase score by 50;
	increase lust of Xerxes by 1;
	follow the turnpass rule;


Section 6 - Helen

Chapter 1 - Helen Basics

Helen is a woman.
The description of Helen is "[HelenDesc]".
The conversation of Helen is { "Woof." }.
LastHelenTalk is a number that varies. LastHelenTalk is usually 555.
hp of Helen is usually 0.
HelenPregnant is a number that varies.

[ hp states of Helen                                             ]
[   0: hasn't been brought to the bunker yet                     ]
[   1: no sex with either Fang or the Felinoid                   ]
[  10: got fucked only by Fang                                   ]
[  11: got fucked only by the Felinoid                           ]
[  12: got fucked by both Fang and the Felinoid                  ]
[ thirst states of Helen                                         ]
[   0: Starting State - not pregnant                             ]
[   1: invisibly pregnant                                        ]
[   2: visibly pregnant                                          ]
[ libido states of Helen                                         ]
[   0: Starting State - not pregnant                             ]
[   1: pregnant by the player                                    ]
[   2: pregnant by Fang                                          ]
[   3: pregnant by the Felinoid                                  ]
[   4: pregnant by Kara                                          ]
[   5: pregnant by Ares                                          ]
[   6: pregnant by Carl                                          ]
[   7: pregnant by Sandman                                       ]
[ lust of Helen                                                  ]
[   0: hasn't had sex with the player                            ]
[   1: had sex with the player once                              ]
[   2: awesomeness message                                       ]
[   3: awesomer upgrade                                          ]
[   4: awesomer sex                                              ]
[   5: awesomer sex continues                                    ]
[   6: offer for tattoo                                          ]
[   7: tattoo received                                           ]
[ HelenPregnant - timer since impregnation                       ]

to say HelenDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Xerxes], LUST: [lust of Xerxes], LIBIDO: [libido of Helen], THIRST: [thirst of Helen], PREGTIMER: [HelenPregnant] <- DEBUG[line break]";
	if lust of Helen < 3:
		say "     Originally one of Mike's dogs, Helen now is a young human of about nineteen. She has long black hair and a slender physique, with some muscles on arms and legs. A pretty face completes the image of a beautiful woman - but no matter what she looks like - there's still only a dog's mind behind her eyes, so she walks on all fours and only uses barks and growls as communication. She watches you attentively, eager to follow the commands of her master. ";
		if thirst of helen is 2:
			if libido of Helen is:
				-- 1:
					say "Her belly shows a slight bulge, the result of your previous coupling.";
				-- 2:
					say "Her belly shows a slight bulge, the result of her mating with Fang.";
				-- 3:
					say "Her belly shows a slight bulge, the result of her mating with your felinoid companion.";
				-- 4:
					say "Her belly shows a slight bulge, the result of her mating with Kara during the tattooing session.";
				-- 5:
					say "Her belly shows a slight bulge, the result of her mating with Ares during your walk in the park.";
				-- 6:
					say "Her belly shows a slight bulge, the result of her previous mating with Carl here in the library.";
				-- 7:
					say "Her belly shows a slight bulge, the result of her mating with that sandman on the beach.";
		if lust of Helen is 2:
			say "You are quite pleased at having such a loyal and obedient pet, but you can't help musing that there might be something you could give the young woman that would make her even [if carried of awesomer fruit > 0][link]awesomer[as]give awesomer fruit to Helen[end link][otherwise]awesomer[end if]";
		say ".";
	otherwise if lust of Helen is 3:
		say "     Originally one of Mike's dogs, Helen now is a young human female of about nineteen. Her beautiful body is fit and toned with a narrow waist and lovely breasts, and her skin possesses a light, even tan. Her attractive face is framed by long, black hair that goes down past her shoulders in stylish waves that never seems to have a hair out of place. All in all, he's a very attractive woman, but inside she's still a loyal and obedient dog. [if thirst of Helen is 2 and libido of Helen is 1]Her belly shows a slight bulge, the result of your previous coupling.[otherwise if thirst of Helen is 2 and libido of Helen is 2]Her belly shows a slight bulge, the result of her mating with Fang.[otherwise if thirst of Helen is 2 and libido of Helen is 3]Her belly shows a slight bulge, the result of her mating with your felinoid companion.[otherwise if thirst of Helen is 2 and libido of Helen is 4]Her belly shows a slight bulge, the result of her mating with Kara during the tattooing session.[otherwise if thirst of Helen is 2 and libido of Helen is 5]Her belly shows a slight bulge, the result of her mating with Ares during your walk in the park.[otherwise if thirst of Helen is 2 and libido of Helen is 6]Her belly shows a slight bulge, the result of her previous mating with Carl here in the library.[end if]";
		say "     She has started to act a little differently since you gave her that strange fruit though. Sometimes, it's as simple as her giving you a more human smile than a canine one when she looks at you. She seems to listen more attentively and her barks aren't as loud and excited. Other times, she's trying to pick up her various dog toys with her hands. You've even spotted her trying to stand on her hind legs as a begging dog would all on her own. When she notices you watching, she barks happily and waits attentively for the commands of her master.";
	otherwise:
		say "     Originally one of Mike's dogs, Helen now is a young human female of about nineteen. Her beautiful body is fit and toned with a narrow waist and plump breasts, and her skin possesses a light, even tan. Her lovely face is framed by long, black hair that goes down past her shoulders in stylish waves that never seems to have a hair out of place. All in all, he's a very attractive woman, but inside she's still a loyal and obedient dog. [if thirst of Helen is 2 and libido of Helen is 1]Her belly shows a slight bulge, the result of your previous coupling.[otherwise if thirst of Helen is 2 and libido of Helen is 2]Her belly shows a slight bulge, the result of her mating with Fang.[otherwise if thirst of Helen is 2 and libido of Helen is 3]Her belly shows a slight bulge, the result of her mating with your felinoid companion.[otherwise if thirst of Helen is 2 and libido of Helen is 4]Her belly shows a slight bulge, the result of her mating with Kara during the tattooing session.[otherwise if thirst of Helen is 2 and libido of Helen is 5]Her belly shows a slight bulge, the result of her mating with Ares during your walk in the park.[otherwise if thirst of Helen is 2 and libido of Helen is 6]Her belly shows a slight bulge, the result of her previous mating with Carl here in the library.[end if]";
		if lust of Helen is 7:
			say "     Wearing nothing, the only adornment she has is the detailed tattoo she received when visiting Kara. Starting at her neck is a detailed collar of deep black with red spikes added to it. Attached to the collar is a bone-shaped tag done in golden yellow and with 'Good girl' written on it in cursive writing. Also attached to it is a pink leash that hangs down from her neck, draping across her bosom and hanging down her side. Just a few inches before reaching the handhold, the pink darkens to red before switching into rainbow banding, ending in a purple loop [']resting['] against her left thigh. This whole is quite detailed, looking quite real and seeming to have depth and curving naturally despite only being drawn into her skin.";
		say "     The unexpected effects of the fruit seem to have largely settled down with her becoming smarter and able to recognize and use her human body. She still has a thoroughly canine mind and is as loyal and obedient as ever, if not more so. While she is able to walk upright a little unsteadily, she still much prefers to go on all fours. Interspersed between her normal, canine antics, she will sometimes flip through some of the books, mainly children's books. She seems to find those with colour pictures particularly fascinating. She has a short vocabulary of words, though usually sticks to more canine sounds, especially when she's having fun or having fun having sex. Having a canine perspective on the world, she has no human shame and is as sexually open as ever despite her much more human capacity for reason.";

instead of conversing Helen:
	if lust of Helen < 3:
		say "     Calling Helen to you from wherever she was patrolling in the library, you sit down on the cot you put in here for her and talk with her. Or rather to her - as she still only has the mind of a dog and mostly replies with 'Woof?', 'Woof.' and 'Woof!'";
	otherwise if lust of Helen is 3:
		say "     Calling Helen to you from wherever she was patrolling in the library, you sit down on the cot you put in here for her and talk with her. Or rather to her, though she seems to be listening to you more attentively than she has in the past, almost as if she can understand you. Certainly her barks of response seem more varied and coincide with points you bring up.";
	otherwise:
		say "     Calling Helen to you from wherever she was patrolling in the library, you sit down on the cot you put in here for her. She snuggles up at your feet or rests her head in your lap and listens to you talk. She doesn't say much and mostly barks in response, but will occasionally use one of her spoken words instead. Usually, it's 'Master' or 'Friend' or 'Sex', those being her favourites, though you've heard her use at least a couple of dozen and seems to have no problem understanding you.";
	say "     Still, it's rather relaxing to talk a while about your problems and stroke your human dog's hair. It strengthens your sanity a bit and you feel more confident that you will get through this crazy situation.";
	if LastHelenTalk - turns > 8:
		increase humanity of player by 5;
		now LastHelenTalk is turns;

instead of sniffing Helen:
	say "     Helen has a nice smell, fresh and feminine. [if thirst of Helen > 0]There's a slight undertone to it, hinting at her being pregnant.[end if]";


Chapter 2 - Helen Sex Menu

Instead of fucking Helen:
	if(lastfuck of Helen - turns < 5):
		say "     Helen still seems a bit worn out from the last fun-time. Let her rest a bit more...";
	otherwise if lust of Helen is 3:
		say "[AwesomerHelenSex0]";
	otherwise if lust of Helen is 5 and a random chance of 3 in 5 succeeds and (cocks of player > 0 or cunts of player > 0):
		say "[AwesomerHelenSex1]";
	otherwise:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Lick Helen's pussy";
		now sortorder entry is 1;
		now description entry is "Give her a blow-job.";
		[]
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Have her suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		[]
		if (cocks of player > 0 or cunts of player > 0) and lust of Helen >= 4:
			choose a blank row in table of fucking options;
			now title entry is "69 with Helen";
			now sortorder entry is 3;
			now description entry is "Share oral pleasures with your human dog pet.";
		[]
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Helen's pussy";
			now sortorder entry is 4;
			now description entry is "Fill the human dog's pussy with your cock.";
		[]
		if (cocks of player > 0 and Felinoid Companion is tamed and (hp of Helen is 11 or hp of Helen is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Helen & Felinoid";
			now sortorder entry is 5;
			now description entry is "Hot sex with the felinoid fucking Helen.";
		[]
		if (cocks of player > 0 and Fang is in the Grey Abbey Library and (hp of Helen is 10 or hp of Helen is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Helen & Fang";
			now sortorder entry is 6;
			now description entry is "Hot sex with Fang fucking Helen.";
		[]
		if (cunts of player > 0 and Felinoid Companion is tamed and (hp of Helen is 11 or hp of Helen is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Female threesome with Helen & Felinoid";
			now sortorder entry is 7;
			now description entry is "Hot sex with the felinoid fucking Helen.";
		[]
		if (cunts of player > 0 and Fang is in the Grey Abbey Library and (hp of Helen is 10 or hp of Helen is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Female threesome with Helen & Fang";
			now sortorder entry is 8;
			now description entry is "Hot sex with Fang fucking Helen.";
		[]
		if (cocks of player > 0 or cunts of player > 0) and lust of Helen is 6 and hp of Kara > 0:
			choose a blank row in table of fucking options;
			now title entry is "Get Helen a tattoo";
			now sortorder entry is 10;
			now description entry is "Bring Helen to Kara to get a tattoo.";
		[]
		if (hp of Ares > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Helen and Ares for a walk";
			now sortorder entry is 11;
			now description entry is "Go pick up Ares from Mike's kennel and take him and Helen for a walk.";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Take Helen for a walk to the beach";
		now sortorder entry is 12;
		now description entry is "Go for a walk to the beach with Helen.";
		[]
		sort the table of fucking options in sortorder order;
		while sextablerun is 0:
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Lick Helen's pussy":
						say "[HelenSex1]";
					otherwise if (nam is "Have her suck your cock"):
						say "[HelenSex2]";
					otherwise if (nam is "69 with Helen"):
						say "[HelenSex8]";
					otherwise if (nam is "Take Helen's pussy"):
						say "[HelenSex3]";
					otherwise if (nam is "Male threesome with Helen & Felinoid"):
						say "[HelenSex4]";
					otherwise if (nam is "Male threesome with Helen & Fang"):
						say "[HelenSex5]";
					otherwise if (nam is "Female threesome with Helen & Felinoid"):
						say "[HelenSex6]";
					otherwise if (nam is "Female threesome with Helen & Fang"):
						say "[HelenSex7]";
					otherwise if (nam is "Get Helen a tattoo"):
						say "[AwesomerHelenSex2]";
					otherwise if (nam is "Take Helen and Ares for a walk"):
						say "[AresHelenWalk]";
					otherwise if (nam is "Take Helen for a walk to the beach"):
						say "[HelenBeachWalk]";
		if lust of Helen is 0:
			now lust of Helen is 1;
		otherwise if lust of Helen is 1:
			say "     Looking over the doggedly loyal young woman, you can't help but smile, quite pleased with how good a pet she is. Now, perhaps there's a way to make her even awesomer...";
			now lust of Helen is 2;
		otherwise if lust of Helen is 4:
			increase lust of Helen by 1;
		now lastfuck of Helen is turns;


An everyturn rule:
	if Helen is in the Grey Abbey Library and thirst of Helen > 0:
		if HelenPregnant is 36:
			now thirst of Helen is 2;   [visible pregnancy]
		increase HelenPregnant by 1;


Chapter 3 - Helen Sex Scenes

to say HelenSex1:                       [player licks her]
	say "     You step beside the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, looking happy at getting her master's attention[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' she says with a wide grin[end if].";
	say "     'Good dog' you say as you crouch down beside her, patting her head and stroking over her shoulders. Your hands stray deeper and under her [if lust of Helen >= 7]tattooed [end if]body, cupping her shapely breasts and fondling them before moving on to her moist pussy. Helen gives you a pleased yip, dripping female juices over your fingers as you spread her lips. Patting the cot, you tell her 'Up here, girl' and reward her with some more stroking as she obeys.";
	WaitLineBreak;
	say "     You push softly against her so she lies on her side, then back, legs spread to expose her ready pussy to you. Smiling, you go on to fondle her, then lean down to run your tongue over her nether lips. She [if lust of Helen >= 4]moans 'Good master' and yips while rubbing her hands lightly across your shoulders[otherwise]gives you pleased moans and yips[end if], getting louder and louder as you stick your tongue into her and do your best to orally please her. It's not too much longer before she orgasms, body shuddering as her pussy starts squirting femcum. You lick some of it up, rubbing the rest into her skin. Giving your dog a last quick belly-rub and fondle of her breasts, you stand back up and turn back to everyday survival[if lust of Helen >= 4] while she runs off to rummage around in the stacks some more[end if].";

to say HelenSex2:                       [she sucks the player]
	say "     You step beside the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, looking happy at getting her master's attention[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' she says with a wide grin[end if].";
	say "     'Good dog' you say as you crouch down beside her, patting her head and stroking over her shoulders. Your hands stray deeper and under her [if lust of Helen >= 7]tattooed [end if]body, cupping her shapely breasts and fondling them. Standing back up, you quickly strip off your clothes and hold your erect manhood up for Helen, who gives you a happy yip, then starts licking.";
	WaitLineBreak;
	say "     She runs her talented tongue along your shaft, then laps at your balls before returning to the tip of your cock and taking it in her mouth. As Helen starts giving you a pretty nice blow-job, you resolve to thank Mike the next time you see him for your expertly trained pet. Your human dog is very careful not to touch your best bit with her teeth and uses her tongue to caress your cock as she bobs up and down on it";
	if lust of Helen < 4:
		say ". With her eager sucking, it doesn't take much longer until the need to cum rises in your balls.";
	otherwise if lust of Helen < 7:
		say ". With her increased awareness, she's become more responsive and even more eager in her cock-sucking.";
		say "     She even tries to use her hands a little, rubbing your balls or stroking your shaft as she sucks on your glans. She's still a little unsure in using her hands, but she's certainly improving now that she's discovered they can be used to pleasure her loving master. With her eager sucking and stroking, it doesn't take much longer until the need to cum rises in your balls.";
	otherwise:
		say ". With her increased awareness, she's become more responsive and even more eager in her cock-sucking.";
		say "     She even makes use of her hands a little, rubbing your balls or stroking your shaft as she sucks on your glans. She's still improving with using her hands, but her attentiveness to your instructions is quickly paying off. With her eager sucking and stroking, it doesn't take much longer until the need to cum rises in your balls.";
	say "     Moaning, you grab Helen's head and do a few deep thrusts with your hips, your cock deep in her throat as it starts shooting a huge load. Pumping blast after blast directly into her stomach, you hold her head against your crotch, then pull back a moment later to let her get some air. She quickly goes back to work, catching the last spurts of cum with her mouth, then puts her lips around your cock-head, softly sucking as it goes down[if lust of Helen >= 4]. When she finally releases your cock, she smiles a very human smile up at you. 'Master tasty,' she says, licking her lips[end if].";

to say HelenSex3:                       [her pussy fucked]
	say "     You step beside the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, looking happy at getting her master's attention[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. 'Master sex?' she asks eagerly[end if].";
	say "     'Good dog' you say as you crouch down beside her, patting her head and stroking over her shoulders. Your hands stray deeper and under her [if lust of Helen >= 7]tattooed [end if]body, cupping her shapely breasts and fondling them before moving on to her moist pussy. Helen gives you a pleased yip, dripping female juices over your fingers as you spread her lips. Patting the cot, you tell her 'Up here, girl' and reward her with some more stroking as she obeys.";
	WaitLineBreak;
	say "     Quickly stripping off your clothes, get on the cot and kneel behind your waiting human dog. Running your hands down her body, you take some time to fondle her breasts, then stroke the soft skin of her hips and ass. Rubbing her pussy with your fingers again, you feel how moist and ready she is, your cock aching in anticipation as you move its tip into position against her.";
	say "     Stroking Helen's soft skin and hearing her animal-like needful noises, you push forward and slide your manhood into her body. Her pussy is incredibly warm and tight - no wonder, with only Mike having been in there before you. You take a moment to appreciate the tightly gripping feel of her as you bottom out, then start fucking her, with Helen panting and yipping in lust as you slide in and out[if lust of Helen >= 4]. 'Good master,' she moans, pressing her rear back into your thrusts[end if]. She likes getting fucked a lot, with her body producing copious amounts of femcum to lube your coupling.";
	if lust of Helen > 4:
		if a random chance of 3 in 5 succeeds:
			say "     You run your hands over her sexy body, caressing her lovely skin[if lust of Helen >= 7] and running your fingers along her collar tattoo[end if] as you lean over top of her. This draws added moans and yips of pleasure from her and she pushes herself back into your thrusts, her pussy squeezing along your shaft as you fuck her like a dog. You play with her breasts and finger her clit while fucking her, whispering in her ear what a good girl she is.";
		otherwise:
			say "     After running your hands over her sexy body, you pause in your thrusting to get her to lay on her back. She giggles a little at what seems an unnatural position to her, but welcomes you into her arms as you get your cock lined up again and push into her wanton hole again. She lavishes you with licks and kisses while running her hands across your back[if lust of Helen < 7] almost as if she were petting you[otherwise], stroking and caressing your [bodydesc of player] body with growing adeptness[end if]. Between the kisses you share, you whisper to her what a good girl she is.";
	say "     Helen's moans build up into a crescendo, echoing loudly through the library as she orgasms. You yourself are not far behind and soon give a deep moan as your balls start twitching and send spurt after spurt of cum to fill Helen's womb. With your cock delivering your seed into her, you pull Helen's upper body against your chest, and give her a deep kiss. Then, after your last shot, you pull her down to lie together with you on the cot and enjoy each other's warmth and closeness for a while as you come down from your respective orgasms[if lust of Helen >= 4]. 'Mmm... Master fuck Helen good,' she mumbles softly, snuggling up to you lovingly[end if][if lust of Helen >= 7] as you kiss along the tattooed collar ringing her neck[end if].";
	if thirst of Helen is 0:              [not pregnant]
		now thirst of Helen is 1;           [pregnant]
		now libido of Helen is 1;           [...by the player]
		now HelenPregnant is 1;             [pregnancy timer]

to say HelenSex4:                       [Player fucks the felinoid as he shafts Helen]
	say "     Accompanied by your felinoid companion, you walk over to the cot you put up here in the library for Helen. The large cat sniffs the human-dog's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'You want another round with her? Sure.'";
	say "     With a quick whistle you summon Helen, the dog in the buck-naked body of a young woman immediately rushing to you from where she was patrolling through the long rows of bookshelves in the library. She hesitates for a second as she sees the felinoid, then comes continues walking closer, looking happy at getting her master's attention. Soon she's standing on all fours next to you. 'Good dog' you say as you crouch down beside her, patting her head and stroking over her smooth skin and pert breasts. The felinoid immediately joins you on Helen's other side, rubbing the side of furred body against your dog's naked form. The effects of his touch and heady musk take effect almost immediately, with Helen's breathing becoming quicker as she pants in lust and her pussy gets moist and ready for sex.";
	WaitLineBreak;
	say "     Circling around to her backside, the felinoid licks Helen's crotch with his rough tongue a few times. Then he moves further up, licking over the arched back of your human dog and continuing to her neck. Standing over the smaller human, his belly-fur touching Helen's back, the felinoid now is in the perfect position to fuck her. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crotch until he soon finds Helen's swollen pussy lips and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	say "     [line break]";
	say "     What would you like to do now? Do you let Helen blow you and feed her your load ([link]Y[as]y[end link]), or fuck and come in the felinoid's ass ([link]N[as]n[end link])? ";
	if player consents:     [sucked by Helen]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [cock of player] hard-on and stroke it a few times before holding it out for Helen. Your obedient dog immediately goes for it, taking your hard length into her mouth and starts bobbing up and down on it. You give a deep moan as she keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Helen's hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum directly into her stomach.";
		say "     Breathing heavily, you stand still as Helen softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
		WaitLineBreak;
		say "     Even though the felinoid is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her female juices literally dripping on the library floor and creating a small puddle, that gives large cat the last nudge too. A deep rumble of satisfaction vibrates in the felinoid's throat as he pushes his member as deep as it will go and fills Helen's womb with his seed.";
		say "     Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Helen with him. Stretched out comfortably on the floor, the felinoid holds Helen against his warm belly fur with his front paws around her and starts licking her sweaty back. Looks as if he's actively trying to infect her, or at least wants spread his scent over all of your human pet's body.";
	otherwise:              [fucking the Felinoid]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [cock of player] hard-on and grab the bottle of lube Mike gave you. After spreading some of the slick substance on your shaft, you step up behind the two rutting beasts. Running your hands up through the soft fur on his lower back, you grab the felinoid's hips tightly then slam forward, burying your cock to the hilt in his warm, tight cave. Roaring at the sudden anal intrusion, the felinoid stops thrusting into Helen for a moment, looking back over his shoulder with partly bared teeth. That doesn't last long, though - moving in and out of his hole, your shaft stimulates his sensitive prostrate, and soon your big cat is purring in satisfaction and fucking Helen again.";
		WaitLineBreak;
		say "     Even though you'd wish your threesome could last forever, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her female juices literally dripping on the library floor and creating a small puddle, that gives large cat the last nudge too. The felinoid gives a deep rumble of satisfaction vibrating in his throat as he fills Helen up with his seed. The big cat's insides in turn grip your penis tightly with each shot of cum shooting through his shaft, making you follow them to an amazing orgasm. You gasp as you grind your hips against the felinoid's furry behind and blast after blast of your sperm shoot into his tight chute.";
		say "     After a moment of just holding on to the large feline and catching your breath, you pull out and watch the felinoid's pink pucker snap shut before any of your seed can leak out. Satisfied but exhausted after this session, you sink down on Helen's cot. The big cat and human dog separate from each other too, then lie down next to the cot on the floor, with Helen cuddling up to the felinoid's soft and warm belly fur. Purring as loud as a idling motor, the big cat starts licking her sweaty human skin. Looks as if he's actively trying to infect her, or at least wants to spread his scent over all of your human pet's body.";
	if Fang is in the Grey Abbey Library:
		say "     [line break]";
		if hp of Fang is 1 or hp of Fang is 2:  [Beta Fang]
			if hp of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Helen closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		otherwise:            [Alpha Fang]
			if hp of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";

to say HelenSex5:                       [Player fucks Fang as he shafts Helen]
	if (hp of Fang is 1 or hp of Fang is 2):    [Beta Fang]
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Helen' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the cot you put up here in the library for your human dog.";
		say "     With a quick whistle you summon Helen, the dog in the buck-naked body of a young woman immediately rushing to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Pulling out your [cock of player] manhood, you pump your hand up and down its length a few times, then say 'Here girl, I got something for you.'  Helen eagerly dashes over, then licks your balls and cock a bit before taking it into her mouth. Quite good at blowing cock, this dog turned human teenager.";
		WaitLineBreak;
		say "     As your human-dog pet blows you, Fang moves up behind her and sniffs Helen's pussy, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and as you slide your shaft once again into Helen's throat you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Helen's human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's pussy. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting blown as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Helen's head to stop from losing it right then and there. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and take a step back. Now having her mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		say "     [line break]";
		say "     What do you want to do now? Get blown by Helen and feed her your load ([link]Y[as]y[end link]), or fuck and come in Fang's ass ([link]N[as]n[end link])? ";
		if player consents:     [sucking]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Helen immediately goes for it, taking your hard length into her mouth and starts bobbing up and down on it. You give a deep moan as she keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Helen's hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum directly into her stomach.";
			say "     Breathing heavily, you stand still as Helen softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her pussy make her gush femcum to drip down on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to down and allow them to separate, you lay back on the cot and get comfortable.";
		otherwise:              [fucking Fang]
			say "     [line break]";
			say "     Your eyes searching out your goal - the tight hole under Fang's tail - you stroke your hard cock and step closer to Fang's rear end. Running your hands through the fur on his lower back, you grab hold of the wolf's hips and sink your [cock of player] shaft into him with one deep thrust. After giving a loud yelp at the sudden anal invasion, Fang stops for a second and looks back. Seeing it's you, he accepts being fucked as his due to the Alpha, even tightening his anal muscles around you as you move inside him. Then the hot threesome continues, now mirroring the hierarchy in your little pack.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and sealing the deal of dominance and submission. That only leaves you, with Fang's anal muscles twitching and gripping your manhood tightly as you thrust in one last time. Filling the wolf's back passage with a huge load of your seed, you once again prove your dominance as Alpha over him.";
			say "     Resting on Fang's furry back for a moment, you then pull your cock out of his cum-filled hole and stagger over to the nearby cot. Satisfied but exhausted after this session, you sink down on it and lie back to get some rest. Both your submissive pets still stand where they fucked, patiently waiting for Fang's knot to down and allowing them to separate.";
		if felinoid companion is tamed:     [rivalry message - Beta Fang vs Felinoid]
			say "     [line break]";
			if hp of Helen is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Helen a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must be your imagination you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Helen a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what the Felinoid has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must be your imagination you tell yourself as you doze off...";
	otherwise if (hp of Fang is 3 or hp of Fang is 4):    [Alpha Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Alpha hot and ready to go, you give a quick whistle to summon Helen and the dog in the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of her, she then turns her backside to the wolf, taking a secure stance and spreads her legs a bit further.";
		say "     With a satisfied growl Fang moves up behind her and sniffs Helen crotch, then jumps up and mounts her human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's ready pussy. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing your Alpha penetrate Helen makes you quite hard as well and you quickly strip off your clothes. Pulling out your [cock of player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Helen eagerly licks your balls and cock a bit before taking it into her mouth. She delivers an expert blowjob, even deep-throating all of your cock without any problems.";
		say "     Getting sucked as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Helen's head to stop from losing it right then and there. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and take a step back. Now having her mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		say "     [line break]";
		say "     What do you want to do now? Get blown by Helen and feed her your cum ([link]Y[as]y[end link]), or wait your turn at filling her pussy ([link]N[as]n[end link])? ";
		if player consents:     [sucking]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Helen immediately goes for it, taking your hard length into her mouth and starts bobbing up and down on it. You give a deep moan as she keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Helen's hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum directly into her stomach.";
			say "     Breathing heavily, you stand still as Helen softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to her nearby cot and sit down to watch the rest of your Alpha's coupling with your pet.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and sealing the deal of dominance and submission.";
			say "     With the powerful wolf once again cementing his dominant position, this worked out well. He and Helen still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get comfortable.";
		otherwise:              [fucking Helen]
			say "     [line break]";
			say "     Deciding that you'll wait your turn, you move over to Helen's nearby cot and sit down on its edge, watching your companions mate and jerk off a bit to it. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and sealing the deal of dominance and submission.";
			WaitLineBreak;
			say "     You move over to crouch beside them, fondling and stroking both their bodies as you wait for Fang's knot to go down. Some time later, the wolf pulls out of Helen's hole and sits down on the floor nearby, curling up to lick himself clean. With Helen's pussy still gaping a bit and dripping femcum and your Alpha's seed, you quickly get on top of her and ram your erection home. Even stretched by Fang's shaft, she's still nicely tight and feeling your strong wolf's cum filling her hole and squishing around your thrusting member is a definite plus. It doesn't take all that long until you feel a familiar tingling in your balls, and with one last thrust, you bottom out inside Helen and come, adding your seed to Fang's load.";
			say "     Phew. Satisfied and just a bit exhausted, you pull out of Helen and move over to her cot and lie down on it. The human dog follows you soon after, curling up at the foot of the bed.";
		if felinoid companion is tamed:     [rivalry message - Alpha Fang vs Felinoid]
			say "     [line break]";
			if hp of Helen is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - taking Helen away from Fang and mounting her himself most likely. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - filling Helen again to make her his alone possibly. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";

to say HelenSex6:                       [female player and felinoid + Helen]
	say "     Accompanied by your felinoid companion, you walk over to the cot you put up here in the library for Helen. The large cat sniffs the human-dog's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'You want another round with her? Sure.'";
	say "     With a quick whistle you summon Helen, the dog in the buck-naked body of a young woman immediately rushing to you from where she was patrolling through the long rows of bookshelves in the library. She hesitates for a second as she sees the felinoid, then comes continues walking closer, looking happy at getting her mistress's attention. Soon she's standing on all fours next to you. 'Good dog' you say as you crouch down beside her, patting her head and stroking over her shoulders and muscular back. The felinoid immediately joins you on Helen's other side, rubbing the side of furred body against your dog's naked skin. The effects of his touch and heady musk take effect almost immediately, with Helen's breathing becoming quicker as she pants in lust and her pussy starts to get wet.";
	WaitLineBreak;
	say "     Circling around to her backside, the felinoid licks Helen's crotch with his rough tongue a few times until it's nice and wet with his saliva. Then he moves further up, licking over the muscled back of your human dog and continuing to her neck. Standing over the smaller human, his belly-fur touching Helen's back, the felinoid now is in the perfect position to fuck her. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crack until he soon finds Helen's tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside her vagina, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	say "     [line break]";
	say "     What would you like to do now? Do you let Helen lick your pussy ([link]Y[as]y[end link]), or will you slide under her to 69 as she's fucked ([link]N[as]n[end link])? ";
	if player consents:     [licked by Helen]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, already a bit wet at the crotch from the juices of your swollen and dripping pussy, then step up to the two rutting beasts. Running a hand through the soft fur of the felinoid, then over the smooth skin of your human dog, you crouch down, then sit with spread legs in front of Helen. Your human dog has a bit of a pleasantly zoned out expression on her face, panting and grunting in lust as she's fucked. Following her mistress's orders is deeply ingrained in her though, so she immediately starts lapping at your pussy when you pull her head to it and say 'Helen - lick me!'";
		say "     Soon breathing heavily from your rising lust at your pet's oral attention, you rapidly move towards orgasm. Before much longer, her wriggling tongue in your vagina drives you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets further coupling in comfort. The felinoid ruts Helen with untamed abandon, growling and panting with his deep thrusts.";
		WaitLineBreak;
		say "     Even though the felinoid is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her twitching vaginal muscles give the large cat fucking her the last nudge towards his climax too. A deep rumble of satisfaction vibrates in the felinoid's throat as he pushes his member as deep as it will go and fills Helen insides with his seed.";
		say "     Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Helen with him. Stretched out comfortably on the floor, the felinoid holds Helen against his warm belly fur with his front paws around her, and starts licking her sweaty back. Looks as if he's actively trying to infect her, or at least wants to spread his scent over all of your human pet's body.";
	otherwise:              [69 with Helen]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, already a bit wet at the crotch from the juices of your swollen and dripping pussy, then step up to the two rutting beasts. Running a hand through the soft fur of the felinoid, then over the smooth skin of your human dog, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Helen. Your human dog has a bit of a pleasantly zoned out expression on her face, panting and grunting in lust as she is being fucked. Her swollen vagina is getting spread by the felinoid's invading member right in front of you, and you just have to raise your head a bit to be able to lick her and your other pet's slick shaft and furry balls.";
		say "     Reaching down to Helen's shoulders, you pull her down towards your pussy and order her to lick you. As the human dog obediently does so, you respond in kind, teasing her clit with the tip of your tongue. Getting oral pleasure while you watch Helen being fucked up close and personal has an invigorating effect on you, driving your arousal through the roof in short order. Before much longer, her wriggling tongue in your vagina takes you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets further coupling in comfort. The felinoid ruts Helen with untamed abandon, growling and panting with his deep thrusts.";
		WaitLineBreak;
		say "     Even though the felinoid is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her twitching vaginal muscles give the large cat fucking her the last nudge towards his climax too. A deep rumble of satisfaction vibrates in the felinoid's throat as he pushes his member as deep as it will go and fills Helen insides with his seed.";
		say "     Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Helen with him. Stretched out comfortably on the floor, the felinoid holds Helen against his warm belly fur with his front paws around her, and starts licking her sweaty back. Looks as if he's actively trying to infect her, or at least wants to spread his scent over all of your human pet's body.";
	if Fang is in the Grey Abbey Library:     [rivalry messages]
		say "     [line break]";
		if hp of Fang is 1 or hp of Fang is 2:  [Beta Fang]
			if hp of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Helen closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		otherwise:                              [Alpha Fang]
			if hp of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";


to say HelenSex7:                       [Female Player with Fang & Helen]
	if (hp of Fang is 1 or hp of Fang is 2):    [Beta Fang]
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Helen' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the cot you put up here in the library for your human dog.";
		say "     With a quick whistle you summon Helen, the dog in the buck-naked body of a young woman immediately rushing to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Slipping out of your clothes, you rub a hand over your sensitive pussy lips until they're moist and swollen, then say 'Here girl, I got something for you.' Helen eagerly dashes over and sniffs your crotch, then starts lapping out the juices dripping out of your vagina. Quite good with his tongue, this dog turned human teenager.";
		WaitLineBreak;
		say "     As your human-dog pet licks you, Fang moves up behind her and sniffs Helen butt, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and holding Helen' head tight against your crotch to get her tongue in deeper you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Helen human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's waiting vagina. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting oral as you watch Fang mounting your human-looking dog, your arousal quickly mounts and you get close to orgasm, but pull back from Helen as you don't just want to cross the finish line just yet. Now having his mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner. Stepping behind Fang, you crouch down to watch his canine shaft thrust in and out of the human pussy below him and even reach out to fondle his furry balls. Soon they'll deliver their seed inside Helen body...";
		say "     [line break]";
		say "     ...which makes you think of how you yourself want to get off. What should it be? Get back to pussy licking by Helen ([link]Y[as]y[end link]), or crawl under her for some 69 action ([link]N[as]n[end link])? ";
		if player consents:     [licked by Helen]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you put your hands on Helen's head and pull her against your crotch. The well-trained human dog immediately continues pleasing you, lapping your genitals and poking her tongue between your pussy lips. As wound up as you already were, it doesn't take much longer until her oral attention to your vagina drives you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets further coupling in comfort. Fang ruts Helen with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her vagina make her come. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to down and allowing them to separate, you lay back on the cot and get comfortable.";
		otherwise:              [69 with Helen]
			say "     [line break]";
			say "     Walking around the two rutting beasts, you run a hand through the rough fur on Fang's flank, then over the smooth skin of your human dog. As you get beside them, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Helen - where your human dog immediately greets you by licking your pussy, making you moan in lust.";
			say "     As the human dog laps away at your genitals, you respond in kind, teasing her clit with the tip of your tongue. Getting oral pleasure while you watch Helen being fucked up close and personal has an invigorating effect on you, driving your arousal through the roof in short order. Before much longer, her wriggling tongue in your vagina takes you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets further coupling in comfort. Fang ruts Helen with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     Even though the feral wolf is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her twitching vaginal muscles give Fang the last nudge towards his climax too. A loud howl of satisfaction fills the room as Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her vagina make her come. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     [line break]";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to down and allowing them to separate, you lay back on the cot and get comfortable.";
		if felinoid companion is tamed:  [rivalry messages - Beta Fang vs Felinoid]
			say "     [line break]";
			if hp of Helen is 10:
				say "     As you rest your head on the pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Helen a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
			if hp of Helen is 12:
				say "     As you rest your head on the pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Helen a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what the Felinoid has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
	otherwise if (hp of Fang is 3 or hp of Fang is 4):  [Alpha Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Alpha hot and ready to go, you give a quick whistle to summon Helen. The dog in the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of her, she then turns her backside to the wolf, taking a secure stance and spreads her legs a bit further.";
		say "     With a satisfied growl Fang moves up behind her and sniffs Helen's butt, then jumps up and mounts her human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's vagina. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing your Alpha penetrate Helen makes you quite horny as well and you can't wait to get in on the action. Slipping out of your clothes, you rub a hand over your sensitive pussy lips until they're moist and swollen, then say 'Here girl, I got something for you.' and step up to Helen. The human dog his exuberantly happy to serve his mistress and immediately starts lapping at your crotch, licking up the juices dripping out of your vagina. Quite good with his tongue, this dog turned human teenager.";
		say "     Getting oral as you watch your alpha mounting the human-looking dog, your arousal quickly mounts and you get close to orgasm, but pull back from Helen as you don't just want to cross the finish line just yet. Now having her mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner. Stepping behind Fang, you crouch down to watch his canine shaft thrust in and out of the human pussy below him and even reach out to fondle his furry balls. Soon they'll deliver their seed inside Helen body...";
		say "     [line break]";
		say "     ...which makes you think of how you yourself want to get off. What should it be? Get back to pussy licking by Helen ([link]Y[as]y[end link]), or crawl under her for some 69 action ([link]N[as]n[end link])? ";
		if player consents:     [licked by Helen]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you put your hands on Helen's head and pull her against your crotch. The well-trained human dog immediately continues pleasing you, lapping your genitals and poking her tongue between your pussy lips. As wound up as you already were, it doesn't take much longer until her oral attention to your vagina drives you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets further coupling in comfort. Fang ruts Helen with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her vagina make her come. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     With the powerful wolf once again cementing his dominant position, this worked out well. He and Helen still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get a bit of rest.";
		otherwise:              [69 with Helen]
			say "     [line break]";
			say "     Walking around the two rutting beasts, you run a hand through the rough fur on Fang's flank, then over the smooth skin of your human dog. As you get beside them, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Helen - where your human dog immediately greets you by licking your pussy, making you moan in lust.";
			say "     As the human dog laps away at your genitals, you respond in kind, teasing her clit with the tip of your tongue. Getting oral pleasure while you watch Helen being fucked up close and personal has an invigorating effect on you, driving your arousal through the roof in short order. Before much longer, her wriggling tongue in your vagina takes you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets further coupling in comfort. Fang ruts Helen with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     Even though the feral wolf is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her twitching vaginal muscles give Fang the last nudge towards his climax too. A loud howl of satisfaction fills the room as Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her vagina make her come. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     [line break]";
			say "     That should strengthen the hierarchy in the pack quite nicely. With both your powerful Alpha and submissive human dog pet still standing where they fucked, patiently waiting for Fang's knot to down and allowing them to separate, you lay back on the cot and get comfortable.";
		if felinoid companion is tamed:   [rivalry messages - Alpha Fang vs Felinoid]
			say "     [line break]";
			if hp of Helen is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - taking Helen away from Fang and mounting her himself most likely. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - mounting Helen again to make her his alone possibly. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";

to say HelenSex8:                       [69 with Helen]
	say "     You step beside the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, looking happy at getting her master's attention[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' she says with a wide grin[end if].";
	say "     'Good dog' you say as you crouch down beside her, patting her head and stroking over her shoulders. Your hands stray deeper and under her [if lust of Helen >= 7]tattooed [end if]body, cupping her shapely breasts and fondling them before moving on to her moist pussy. Helen gives you a pleased yip, dripping female juices over your fingers as you spread her lips. Patting the cot, you tell her 'Up here, girl' and reward her with some more stroking as she obeys.";
	WaitLineBreak;
	say "     Moving onto the cot alongside her, you get her to raise her thigh and expose her ready pussy to you. Smiling, you brush your fingers lightly across her folds, causing her to shiver and yip in pleasure. Seeing more juices leaking from her ready cunt, you dive in, pressing your lips to her nether-lips and pushing your tongue into her. She tastes delightfully juicy, her feminine cum rich and flavourful with a pleasant sweetness to it, making you eager for more. You tease a finger across her clit and work your tongue to please your good girl.";
	if cocks of player > 0:
		say "     With your erect shaft in front of her face, she knows what to do and sets herself to licking and kissing at it. Her soft lips and playful tongue are a delight across your sensitive manhood, quickly coaxing dribbles of precum from it. Seeing this, she plunges her mouth over your shaft and sucks greedily at your cock, her well-trained mouth working hard to please her loving master. Her hands [if lust of Helen >= 7]glide across[otherwise]grope at[end if] your thighs and ballsac, [if lust of Helen >= 7]pawing at[otherwise]rubbing[end if] your orbs as they prepare to give her the tasty treat she so desires.";
	otherwise:
		say "     With your wet pussy in front of her face, she knows what to do and sets herself to licking and kissing at it. Her soft lips and playful tongue are a delight across your sensitive folds, quickly getting you wet and dripping as well. Seeing this, she plunges her tongue into your cunt and laps away, her well-trained mouth working hard to please her loving master. Her hands [if lust of Helen >= 7]glide across[otherwise]grope at[end if] your thighs and stroke your folds, finding your clit and [if lust of Helen >= 7]returning[otherwise]trying her best to return[end if] the attention you're giving hers.";
	say "     With your human doggy pleasuring you orally while you're enjoying that sweet, delicious taste of her cunt, it is not too long before you feel your excitement building out of control. You cum with a loud groan and dive your tongue deep into her, lapping up her juices as she orgasms in response[if cocks of player > 0]. You pump your [cum load size of player] load into the young woman's mouth, feeding your seed to her[otherwise]. Your sweet waters soak her face, which she laps up and drinks down with lustful eagerness[end if]. When you're both done cumming, she turns around on the cot, snuggles up with you. She licks and kisses at your face, sharing your taste with hers[if libido of Helen >= 4]. 'Mmm... tasty Master. Helen love.'[otherwise].[end if]";

to say HelenBeachWalk:
	say "     You glance over to Helen and see her slumped on the ground in a corner, a bored look on her face. Deciding that she has been a good pet who deserves a reward, you call her over to you. Hearing the voice of her master, the young woman's head perks up and she eagerly rushes over to you on all fours. You lean forward to greet the human dog as she barks in greeting and licks your hands, then ask if she wants to go for a walk. Helen's body trembles with unspent energy as she hears those words and the canine turned human-dog skips and bounces around your feet eagerly, barking and whining in anticipation[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. 'Master walk!' she exclaims with a beaming grin[end if]. After patting her head and giving the naked body of your pet a stroke or two, you leave the library with your pet in tow.";
	now RandomGenNumber is a random number from 1 to 3;
	if RandomGenNumber is:
		-- 1:
			say "     The walk to the beach is pretty dull with the only notable event being an infected anthro pigeon sitting on the porch of an apartment building muttering about how this world 'ain't right anymore' – all the while glaring at yourself... and what appears to be a naked young woman walking along on all fours beside you. Helen does not even notice the avian's attention, instead focusing on a nearby fire hydrant. Although the trained dog is pretty good at staying close to your side, she takes the occasional stop to take in the new smells.";
		-- 2:
			say "     While walking to the beach you come across a group of chipmunk infected individuals excavating a ruined convenience store. Helen barks in a friendly manner as soon as she sees them, her muscles tensing to chase one down - but she remembers her training and stays by your side despite her urges. Nevertheless, the pint-sized scavengers panic and rush towards cover, with one of them calling out in a nervous tone, 'We don't want any trouble... please leave!' Given their diminutive frame it must be natural for them to perceive any larger infected as a potential threat. Telling the scavengers that you're just moving through, you pet Helen and praise her for being a good dog, then walk on with her in tow.";
		-- 3:
			say "     Walking towards the beach you see an anthro beaver that is busy boarding up the windows of a mostly intact shoe store. Given just how many infected now have talons, hooves, or paws, it makes sense that a shoe store would not be a target for scavenging, and thus a pretty solid location for shelter. Helen woofs at the sound of the hammer pounding the nails. The hunched over rodent pauses their work and looks at Helen. Raising a quizzical eyebrow, the beaver stares at the human-looking canine before going back to hammering in more nails. Giving you a friendly greeting the furry craftsman says, 'Can't say I've ever seen something like this before. But hey - if you're peaceful and it works for you, do your own thing.' Turning his attention back to his work, the beaver start pounding nails into a new board while humming a tune.";
	WaitLineBreak;
	say "     Your trip eventually takes you to the beach plaza. It is quite lively for this time of [if daytimer is day]day[otherwise]night[end if], with many infected socializing all around the boardwalk. The sounds of the waves crashing against the beach and the numerous conversations happening nearby makes it a bit harder to hear Helen's happy barks. It is impossible to not stand out somewhat with a human-looking canine walking to your side, yet most individuals are too concerned with their own affairs to pay more than a few seconds of attention to you. An anthro red fox in Bermuda shorts from the nearby church politely waves at you then continues to sweep the floor.";
	say "     Following your companion down a few steps onto the beach itself, you watch her scamper over the sand. Obviously enjoying herself, Helen runs in circles around you as you start to walk towards the ocean, then along the beach at the edge of the swash zone. The wet sand feels soft as it squishes beneath your feet. Meanwhile, Helen exuberantly dashes into the water and starts to play around in the surf, then even doggy paddles out into the deeper water as you throw a stick for her to fetch. A couple of nearby infected chuckle at the amusing sight but leave you be to play with your human-looking pet.";
	WaitLineBreak;
	Say "     After tiring herself out frolicking in the surf a bit longer, Helen heads back over towards you and proudly drops the stick at your feet, shaking herself vigorously to get any remaining water off her body. The seawater on Helen's long black hair gets sent flying everywhere, splashing you as well as some other beach-goers. A small family of anthro ocelots that got most of the spray thankfully takes this with amusement and the parents even chat a little with you while their teenage son pets Helen. She pants loudly and gladly basks in the attention with a content look in her eyes. The boy cops a feel or two of her shapely breasts, but you just give a mental shrug and indulge him – what's the harm, after all. Helen certainly seems to like it.";
	say "     Suddenly you hear a loud commotion coming from a part of the beach not too far off. You turn your gaze to see ";
	now RandomGenNumber is a random number from 1 to 3;
	if RandomGenNumber is:
		-- 1:
			say "a large anthro St. Bernard on one knee proposing to his petite Chihuahua boyfriend. The tiny canine tears up and nods his head vigorously. Smiling the large canine hugs his new tiny fiancee. Nearby infected clap and cheer to celebrate the occasion. ";
		-- 2:
			say "a slender lagomorph male that is gleefully running over the sand with a couple of bikini tops in his hands. Some topless women are chasing after him, shouting obscenities at the fleeing swimsuit stealer, their large breasts jiggling with every step. A number of male infected cheer him on and thank him for the sight, to the chagrin of their female partners. ";
		-- 3:
			say "an intense volleyball game between a team of hulked-up hammerheads facing off against a group slender otters. The captain of the hammerheads sternly barks some commands to his teammates while the otters playfully tease their opponents. The competition is quite intense but it ends after the otter captain delivers a powerful spike. ";
	say "Your moment of being distracted ends when a startled bark coming from nearby makes you turn around again – to see a beach stud seemingly made completely from human-shaped sand thrusting his shaft into Helen's pussy. He must just have walked up to her and started fucking. Being held by the hips as she is taken from behind, the human-looking canine lets out a few confused growls and aroused moans. Yet based on the lack of resistance that Helen puts up to getting pounded by the studly sandman it seems that the sandy Lothario is skilled with his technique. 'How do you like it babe? I know the reason you are walking around on all fours stark naked was to attract a hottie like me,' boasts the sandy Don Juan.";
	WaitLineBreak;
	say "     [bold type]You can't help but feel the urge to knock some of that arrogance out of the guy. The nerve of just mounting Helen without asking on this otherwise fairly civil beach...[roman type][line break]";
	say "     [line break]";
	say "     ([link]Y[as]y[end link]) - Watch Helen get fucked by the sandy Adonis.";
	say "     ([link]N[as]n[end link]) - Knock the guy out and take care of Helen's needs yourself.";
	if player consents:
		say "     Your voyeuristic side winning out, you relax your stance and take a few steps to have the best view of the action. Looks pretty hot how the toned male slides his shaft in and out of Helen's cunt! Meanwhile, the human dog turns her head to look at you, a questioning look on her face[if lust of Helen >= 4] as she asks, 'Master like?'[otherwise].[end if] She stares intently as if seeking your approval for her current state. Patting the young woman on the head, you give her the reassurance she needs to give herself fully to enjoying her new suitor. Letting out a full-throated moan, Helen's pussy starts dripping with a hearty amount of fem-cum, soaking the sandy phallus slides in and out of her.";
		say "     Grunting in lust, the beach stud slides one hand over Helen's thigh [if lust of Helen >= 7]and runs his fingers along the loop of her leash tattoo[end if] followed by moving on to human canine's clit. Stimulating the clit with some skillful hand movements the sandy beach lover is able to get your pet to wiggle her hips and yip enthusiastically. A broad smile on his face, the sandman Lothario looks at you and says in between thrusts, 'You're lucky to have a pet like this, her pussy is amazing!' Shifting the angle a little with each new moment of pounding into her, the sandman's shaft finds a sensitive point which sends Helen into a state of ecstatic pleasure. Her tongue hangs out the side of her mouth [if lust of Helen >= 4]and the young woman moans, 'Feels so good...'[otherwise]and the young woman barks happily.[end if]";
		WaitLineBreak;
		say "     Reacting to the sounds of pleasure uttered by Helen, the hunky male increases the tempo of his pounding against her crotch, hammering deep into her again and again. It only takes a little longer of being jack-hammered for the transformed former canine to orgasm - with her barking, pawing at the ground and the inner muscles of your pet squeezing the beach hunk's cock tightly. 'Fuck! I'm gonna come!' the sandman shouts out loud and pulls his magnificent cock out of Helen in a deluge of femcum from between her nether lips. Seeing the shaft before he wraps his fingers around it and starts to jerk frantically, you notice that it is darker than the rest of him - soaked through and through with Helen's juices no doubt.";
		say "     It takes just a few heartbeats for the guy to finish himself off, grunting loudly as he starts to pump out a significant amount of creamy cum all over your panting pet's buttocks, lower back and even up to her neck with one or two powerful spurts. The two of them ride out their respective orgasms together, with Helen dripping more femcum onto the sand and him creaming her, both of them panting to regain their breaths after such exertions. Meanwhile, you plan ahead a little and go find an abandoned blue beach towel, then start wiping the cum off your human dog as you return. Who knows what would sniff after her if you tried to go back home with her covered in the sandy stud's seed...";
		WaitLineBreak;
		say "     Having taken a moment to put his speedo back on, the sandman strolls back to your side and smirks broadly. 'Look how happy your girl is. That's how you can tell she got a proper beach loving, hah! Be sure to bring the cutie by some more in the future!' With that said, he walks away with an extra spring in his step. Man, the things one can see and meet on the beach these days... sexy, arousing things. Smiling yourself, you then guide your black-haired beauty over to an abandoned umbrella, sitting down for a while to rest with her. After you take a seat on one of the beach towels underneath the umbrella, Helen nuzzles her head onto your lap.";
		say "     The two of your lie there for a short while, enjoying the sounds of the waves crashing against the shore. When Helen seems rejuvenated enough, you decide to return back to the abbey. While walking back through the beach plaza you see the fox in the Bermuda shorts again, smiling he asks, 'Did you two have a fun time at the beach?' Contentedly your youthful pet barks happy reply. Softly chuckling the fox says, 'I'll take that as a yes,' he then bids you a fond farewell as you leave the plaza. It is an uneventful walk back to the Abbey. The look on Helen's face seems very appreciative of the walk you took her on.";
		if thirst of Helen is 0:              [not pregnant]
			now thirst of Helen is 1;           [pregnant]
			now libido of Helen is 1;           [...by the sandman]
			now HelenPregnant is 1;             [pregnancy timer]
	otherwise:
		say "     With his attention focused on Helen, the sandman is too distracted to notice you. Irritated that the sand-yellow Casanova would try something like this to your pet, you deliver a fierce blow to the back of his head. Stunned by this attack the smooth-talker and stealth fucker is easily pushed away from your startled pet. Delivering a couple more strikes to the stupefied hunk, you are able to chase him off easily, with him grumbling while readjusting his speedo. Wanting to make sure the sandman didn't do any harm to the youthful human canine, you take her over to a nearby abandoned umbrella. Based on the pink beach towels, feminine sunglasses, and the lime green dildo inside one of the beach bags, it seems like a couple of ladies set out for an extra fun day at the beach.";
		say "     Examining Helen, you see no damage done to her. However, your beautiful pet seems incredibly turned on. She pants in an erotic manner, lowering her front and raising her ass, wiggling it towards you while whimpering for a good fucking. Moving backwards a little, she soon is rubbing up against your crotch. [if cocks of player > 0]Your cock starts to harden with each rocking motion.[otherwise]Your crotch is quite sensitive to Helen's rocking motions.[end if] Stripping off any gear, you then encourage Helen to keep going, your libido inflamed by the sexy pet's antics.";
		if cocks of player > 0: [male/herm]
			say "     Once you are fully erect, you begin to insert your cock into your pet's needy cunt. She moans softly as her pussy tightly grips your shaft. One thing's for sure - you are glad to be the one feeling this instead of the sandman. Grunting in lust, you begin to thrust into your human dog. The thrusts are aided by a healthy amount of femcum that she is producing. Once you bottom out inside her, she bucks her hips, showing how eager she is to get pounded. Not wanting to let your pet's expectations down you continue to push your dick as deep as you can with every thrust. Leaning forward you grab the black haired beauty's shapely breasts and softy circle the nipples. Spasms rock Helen's legs as she feels this new sensation, yipping happily.";
			say "     Speeding up the pace of your thrusts you ask her if this feels good. With a loud bark[if lust of Helen >= 4] and a swift utterance of 'Yes!'[end if] it seems you have your reply. The sensation of Helen's pussy clenching around your manhood as you hammer into her encourages you to pick up the pace. Soon both you and your slender companion are on the verge of orgasming. Placing your hands on her hips, you slide into her all the way and grind against the young woman's body, stimulating her with eager attention. This quickly pushes Helen over the edge and she comes with a happy bark, covering your dick in her juices. This sensation of her inner muscles trembling around your shaft is too good to resist for yourself either and just a few heartbeats later, your balls twitch as you unleash a heavy load deep within your trained pet's tight cunt.";
			WaitLineBreak;
			say "     Painting the human dog's pussy white, you stake your claim on her body and lean over her, hands moving to caress her breasts as you do so. She hums in satisfaction at her master's touch as well as the throbbing pulse of more and more cum into her depths. Together, the two of you ride out your respective orgasms, openly panting, moaning and touching right there in the open. After a moment, you hear some chuckling and moaning from another towel not too far off - seems like you acquired some spectators who are stroking themselves as they watch. But then... who cares?! Sated, you pull your [cock of player] penis out of Helen's well stuffed hole and take a sec to just lie back and rest on the beach towels.";
			say "     When Helen and you seem rejuvenated enough to travel, you decide to return back to the abbey. While walking back through the beach plaza you see the fox in the Bermuda shorts again, smiling he asks 'Did you two have a fun time at the beach?' Contentedly your youthful pet barks a muted happy reply. Softly chuckling the fox says, 'I'll take that as a yes,' he then bids you a fond farewell as you leave the plaza. It is an uneventful walk back to the Abbey. She soon walks over to one of her common resting places circles a couple of times then lies down. The look on Helen's face seems very appreciative of the walk you took her on.";
			if thirst of Helen is 0:              [not pregnant]
				now thirst of Helen is 1;           [pregnant]
				now libido of Helen is 1;           [...by the player]
				now HelenPregnant is 1;             [pregnancy timer]
		otherwise:
			say "     Pulling the lime green dildo out of the bag, you place it close to Helen's face. The curious transformed canine starts sniffing the sex toy and on smelling the scent of the previous owner female juices, she starts to lap the shaft and the tip. After a couple of laps you then begin to guide the human-like shaft between her lips. Initially Helen is a little nervous, but as you use your unoccupied hand to rub the lips of her pussy and her clit, she soon relaxes. Although initially wary, she is soon bobbing her head forwards and backwards on the sex toy, you can feel her tongue swirling around the rod. It doesn't take long before she is deep-throating the phallus.";
			say "     When the pole seems like it is nice and wet, you pull it from your companion's maw and move around her to set it against the young woman's drippingly wet pussy. Grunting softly as you insert the decently sized sex toy inside her, Helen turns her head to look back at you, whining softly in a plea to push deeper. Happy to fulfill your obedient companion's request, you start to thrust the rod in and out of her. Moaning and yipping, she arches her back and rocks her hips to meet your movements. While thrusting the dildo you use your other hand to explore Helen's body - switching up between cupping her breasts, grabbing her firm booty, [if lust of Helen >= 7]running your fingers down the rope of her leash tattoo,[end if] and rubbing her clit.";
			WaitLineBreak;
			say "     Your transformed canine companion enjoys your touch greatly by the way she moans and barks. Based on the way her eyes are closed and her tongue hangs out the corner of her mouth, it seems she is getting close to climaxing after a little while. Picking up the pace you shift the angle of your thrusting to hit a sensitive spot and go to town, using both hands to push in and out of her. A muscle spasm on her right leg is the first sign of her orgasm, then she lets out a long and satisfied moan. As you pull the dildo from her cunt, a large amount of femcum gushes forth. Feeling a little worn out you lie down on surprisingly soft towel and rest for a second. Grateful for what you did, Helen gives your hand a couple of licks before nuzzling up against your side.";
			say "     When Helen and you seem rejuvenated enough to travel, you decide to return back to the abbey. While walking back through the beach plaza you see the fox in the Bermuda shorts again, smiling he asks, 'Did you two have a fun time at the beach?' Contentedly your youthful pet barks a muted happy reply. Softly chuckling the fox says, 'I'll take that as a yes,' he then bids you a fond farewell as you leave the plaza. It is an uneventful walk back to the Abbey. She soon walks over to one of her common resting places circles a couple of times then lies down. The look on Helen's face seems very appreciative of the walk you took her on.";

Chapter 4 - Helen + Fang/Felinoid

instead of going outside from Bunker while (Helen is in the Grey Abbey Library and lastfuck of Helen - turns > 5 and (hp of Helen is 1 or hp of Helen is 10) and felinoid companion is tamed ):
	move player to Grey Abbey Library;
	say "     As you emerge from the underground bunker and step back into the library, you hear some rather confused barks and yips from somewhere back between the rows of bookshelves. Sounds like Helen. Going to have a look, you find your dog turned teenage human standing on all fours in the midst of a loose reading group of chairs, her looks following the movements of your felinoid companion. The large feline weaves his way between the chairs with flowing movements, circling Helen and from time to time veering closer to rub the side of his head or furred body against her naked form.";
	say "     Still looking a bit confused, the human dog becomes more and more aroused with each touch of fur and sniff of the felinoid's enticing scent. Soon any doubts about getting this close to any cat are forgotten and Helen rubs up against the felinoid, licking its muzzle. Giving a satisfied rumbling purr, the large cat moves to sniff Helen's pussy, then licks over her female parts with its wide tongue. Several licks later, the felinoid moves further up, running its tongue over the human back of your dog and then her neck.";
	WaitLineBreak;
	say "     Standing over the smaller human, his belly-fur touching Helen's back, the felinoid now is in the perfect position to fuck her. Lowering his hind legs a bit, the feline rubs his spined cock up and down the inside of the human-dog's legs until he soon finds Helen's tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library and you stay close to watch the show.";
	say "     After quite a while of hot and heavy fucking, Helen moans and noises rise up to a loud pleased yip, announcing her orgasm to anyone in hearing range. Visibly satisfied in making her come, the felinoid isn't far behind, burying his hard cock all the way in Helen's pussy and holding still, filling her up with his seed. When he finishes cumming, the big cat pulls out and throws himself on the floor in front of a bookshelf to lounge in satisfaction. Your human-dog pet licks the felinoid's cock clean, then joins him on the floor, snuggling up against his warm fur.";
	say "     [line break]";
	say "     You step back out from between the bookshelves and leave the two of them alone for a while. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
	if hp of Helen is 10:
		now hp of Helen is 12;
	otherwise:
		now hp of Helen is 11;
	now lastfuck of Helen is turns;
	if thirst of Helen is 0:              [not pregnant]
		now thirst of Helen is 1;           [pregnant]
		now libido of Helen is 3;           [...by the Felinoid]
		now HelenPregnant is 1;             [pregnancy timer]

instead of going outside from Bunker while (Helen is in the Grey Abbey Library and lastfuck of Helen - turns > 5 and (hp of Helen is 1 or hp of Helen is 11) and Fang is in the Grey Abbey Library and lastfuck of Fang - turns > 7 and ( hp of Fang is 1 or hp of Fang is 2 ) ):
	move player to Grey Abbey Library;
	if (hp of Fang is 1 or hp of Fang is 2):            [Beta Fang]
		say "     As you emerge from the underground bunker and step back into the library, you notice that Fang isn't at his spot next to the door. Wary of unannounced visitors, you look around for signs of a fight or any other indication what happened. Nothing out of the ordinary in sight. Then you hear something from further back in the rows of bookshelves - growling.";
		say "     Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Helen, who looks to the ground, then rolls over and bares her breasts and moist pussy. Your wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Helen to lick his muzzle. Looks like the question of hierarchy among your pets just got solved. With them establishing their status to each other right now peacefully, you decide not to interfere.";
		WaitLineBreak;
		say "     With a commanding growl, Fang pokes Helen in the side with his muzzle, making her roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Helen's pussy in one deep thrust. Licking and lightly nipping Helen's neck, he pounds into her with an animal's ferocity. Your human-dog pet gives loud moans of lust as she is penetrated deeply again and again and you can see her rock backwards to get more of that wolf shaft inside her. Quite a hot little show you're getting here.";
		say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as she orgasms, giving lust-filled moans and whimpers. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
		say "     [line break]";
		say "     You step back out from between the bookshelves and leave the two of them to wait until Fang's knot goes down. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
	otherwise if (hp of Fang is 3 or hp of Fang is 4):  [Alpha Fang]
		say "     As you emerge from the underground bunker and step back into the library, you notice that Fang isn't in sight any at his usual spots. Wary of unannounced visitors, you look around for signs of a fight or any other indication what happened. Nothing out of the ordinary. Then you hear something from further back in the rows of bookshelves - growling.";
		say "     Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Helen, who looks to the ground, then rolls over and bares her breasts and moist pussy. Your strong Alpha wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Helen to lick his muzzle. Looks like he wants to dominate your pet too - as is his right. Helen seems to be readily accepting the submissive role, just like you did in the end. Arousal wells up inside you as you think back to your own first time under a dominating Fang and you can't wait to see your human dog have the same experience.";
		WaitLineBreak;
		say "     With a commanding growl, Fang pokes Helen in the side with his muzzle, making her roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Helen's pussy in one deep thrust. Licking and lightly nipping Helen's neck, he pounds into her with an animal's ferocity. Your human-dog pet gives loud moans of lust as she is penetrated deeply again and again and you can see her rock backwards to get more of that wolf shaft inside her. What a hot show you're getting here - you just wish you were the one getting fucked by that powerful wolf's shaft.";
		say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as she orgasms, giving lust-filled moans and whimpers. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
		say "     [line break]";
		say "     You step back out from between the bookshelves and leave the two of them to wait until Fang's knot goes down. With this new development, new opportunities for fun with your canine master and human dog pet come to your mind as you walk away...";
	if hp of Helen is 11:
		now hp of Helen is 12;
	otherwise:
		now hp of Helen is 10;
	now lastfuck of Helen is turns;
	now lastfuck of Fang is turns;
	if thirst of Helen is 0:              [not pregnant]
		now thirst of Helen is 1;           [pregnant]
		now libido of Helen is 2;           [...by Fang]
		now HelenPregnant is 1;             [pregnancy timer]


Chapter 5 - Awesomer Helen

instead of trading the awesomer fruit when the current action involves the Helen:
	if lust of Helen < 2:
		say "     Aren't you jumping the gun a little?";
	otherwise if lust of Helen is 2:
		say "     Looking over at the young woman with the mind of a dog, you can't help but smile at what a fine pet she's turned out to be. Deciding to see if you might make her even awesomer, you pull out the strange fruit you found and call her over. Hearing you call for her, she comes rushing over on all fours with a happy bark, panting with a big doggy smile on her face. You pet the young woman's head and scritching her ears.";
		say "     Holding out the shiny fruit, you give it a little shake and her eyes lock on it. 'Does my good girl want a treat?'  Helen bounds around you and barks excitedly. Telling her to sit, she obediently plops down onto her rear, sitting attentively. Running her through a few other tricks, you rub her head again, call her a good girl again and give her the fruit.";
		say "     Laying down on the floor, she gives the fruit a sniff and pants happily. Pressing the large fruit between her balled-up hands as if they were paws, she fumbles to keep it in place as she takes big bites out of it. As she consumes its juicy flesh, subtle changes start to occur. Her body, already quite beautiful, becomes even lovelier while her skin gains a nice, even tan and loses any imperfections. Her waist gets a little tighter and her breasts swell without any sag. Her hair, previously unkempt grows out longer and gains beautiful waves to it. As she's finishing off the fruit, she's moved to sitting and holding the fruit in her hands. After gulping down the last bite, she licks her fingers clean and then gives you a rather human smile before barking happily and dashing off on all fours. As she goes off, the view has you fairly certain that her pussy has also grown a little.";
		now lust of Helen is 3;
	otherwise:
		say "     You've already done that.";

to say AwesomerHelenSex0:
	say "     In the mood to have some more fun with your human dog, you take a quick look around the room but don't spot her. Calling out to her, she barks happily from somewhere off among the shelves before running over to you on all fours. As she comes over, you can see she's got a book in her mouth. Worried that she might be damaging it, you take it from her and she looks up with a human smile on her pretty face.";
	say "     Looking at the book you're taken, you see that it's a children's book on dogs. She barks excitedly and you try to steady yourself. 'Were you... reading this?' you finally manage to ask, to which she nods excitedly - another human mannerism. She then slaps one of her hands on the picture of a dog on the book's cover before pressing that hand to her chest. In your surprise, you drop the book and Helen whines softly at your reaction. Taking your hand in hers, she presses it onto her head. Scritching the concerned young woman's head, you kneel down and pull her into a hug. 'Such a clever girl you are,' you say and she barks happily to have pleased you.";
	say "     Running your hands over her body, your excitement leads you to caressing her lovely bosom before dipping down to rub her wet cunt. 'I think you deserves a reward for being such a clever girl.'  She gives a happy bark and kisses you, giving you a mix of slobbery doggy licks and human kisses while fumbling her hands across your body";
	if cocks of player > 0:
		say ". Reaching down, she puts a hand on your hard shaft and rubs it in return. She is a little rough at first, but with a little prompting from you, she lightens her touch and does much better. She listens attentively to your instructions and tries her best to follow them. And while she's a little clumsy with her hands, she is very eager to please you.";
		WaitLineBreak;
		say "     Once you're both good and worked up, you get the young woman to lie down and you move alongside her. Now that you're in a position to get a good look at it, you can see that her pussy has indeed grown larger and puffier, with a very enticing scent. Her wet folds are very lovely and inviting. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from bottom to top before swirling it over her clit. You then slowly lower your lips against her nether-lips and dive your tongue in so you can eat out your clever, loyal pet.";
		say "     With you laying beside her, your cock is in front of her face and she grins happily. This is a trick she knows well and she quickly sets to licking and then sucking at her master's cock in return. Well-trained at this task, she works her mouth and tongue over your pulsing shaft in an effort to please you. Without prompting, she even ventures to put a hand on your ballsac and gently rubs at it.";
		say "     With all the excitement, the young woman is quickly pushed to orgasm and her pussy is soon gushing juices across your tongue. Even the taste of it seems better, rich and flavourful with a pleasant sweetness to it. Lapping up that delicious honey is enough to set you off, pumping your hot seed into her waiting mouth before she swallows it down, not releasing your shaft until you're spent.";
	otherwise if cunts of player > 0:
		say ". Reaching down, she puts a hand between your legs and rubs your pussy in return. She tries to imitate your motions, but is a little rough at first. With a little prompting from you, she lightens her touch. And while she's a little clumsy with her hands, she is very eager and does her best to copy what you're doing.";
		WaitLineBreak;
		say "     Once you're both wet and dripping between your legs, you get the young woman to lie down and you move alongside her. Now that you're in a position to get a good look at it, you can see that her pussy has indeed grown larger and puffier, with a very enticing scent. Her wet folds are very lovely and inviting. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from bottom to top before swirling it over her clit. You then slowly lower your lips against her nether-lips and dive your tongue in so you can eat out your clever, loyal pet.";
		say "     With you laying beside her, your cunt is in front of her face and he grins happily. This is a trick she knows well and she quickly sets to licking across your juicy folds and then lapping into your vagina in return. Well-practiced at this task, she works her tongue into you in an effort to please you. Without prompting, she even ventures to rub a finger at your clit in an effort to pleasure you.";
		say "     With all the excitement, the young woman is quickly pushed to orgasm and her pussy is soon gushing juices across your tongue. Even the taste of it seems better, rich and flavourful with a pleasant sweetness to it. Lapping up that delicious honey is enough to set you off, soaking her face in your hot juices for her to lap up. She makes sure to lick you clean, wanting to get every drop.";
	otherwise:
		say ". Reaching down, she puts a hand between your legs and rubs at your bare crotch with a sad little whine. She ends up reaching around and grabbing your ass instead and kneading it. She is a little rough at first, but with a little prompting from you, she lightens her touch and does much better. And while she's a little clumsy with her hands, she is very eager to please you.";
		WaitLineBreak;
		say "     Once you've gotten her wet and dripping between her legs, you get the young woman to lie down and you move alongside her. Now that you're in a position to get a good look at it, you can see that her pussy has indeed grown larger and puffier, with a very enticing scent. Her wet folds are very lovely and inviting. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from bottom to top before swirling it over her clit. You then slowly lower your lips against her nether-lips and dive your tongue in so you can eat out your clever, loyal pet.";
		say "     With you laying beside her, she's left faced with your bare crotch. After giving it a few soft licks, her tongue trails down and around and she sniffs. Soon enough, she's nuzzling at your rear and letting her tongue rub against your asshole. Your moan in response prompts her to continue and she works her wet tongue against your pucker[if anallevel > 1] and eventually wriggling it into your rear[end if]. Without prompting, she even teases a finger against your lubed up hole and pushes it into you in an effort to pleasure you further.";
		say "     With all the excitement, the young woman is quickly pushed to orgasm and her pussy is soon gushing juices across your tongue. Even the taste of it seems better, rich and flavourful with a pleasant sweetness to it. Lapping up that delicious honey is very arousing and you lick along her thighs to clean up every last drop of your lustful pet's sweet waters.";
	WaitLineBreak;
	say "     After the fun's over, she then moves around to snuggle up against you. After some more kisses, she nuzzles her head under your chin so she can rest against you. You stroke the obedient young woman and scritch her head as she starts to fall asleep. As she's drifting off, she mumbles 'Master friend...' softly, starting you fully awake again. You are left staring down at the sleeping female in your arms, your mind reeling with confused thoughts. With people all around turning in animals and mindless creatures, here is a dog who's only becoming more and more human. After laying there for a long time and getting neither answers nor rest, you slowly disentangle yourself from Helen and, after putting a blanket over your sleeping pet, you head off to try and deal with a world that seems even more topsy-turvy than before.";
	increase lust of Helen by 1;


to say AwesomerHelenSex1:
	say "     Wanting to play with your awesome human dog again, you head over to her cot and call out for her. She gives a happy bark and a cry of 'Master!' before running over to you on all fours, damp pussy dripping onto the floor. She's got another book with, though she's at least holding it in one hand this time. She hops up onto the cot beside you, drops the book in your lap and wraps hers arms around your waist.";
	say "     You're a little surprised to see that it is an art book focused on tattooing. It is filled with numerous photos of body art of all kinds, from simple pieces to body-wide works of grand detail. She stares in fascination at the colourful photos as you flip through several pages of the book while petting the young woman.";
	say "     Seeing how looking at the images has gotten her quite wet, you reach over and finger her pussy with your free hand. 'Do you like those, girl? Did you want one?'";
	say "     She barks happily and licks your cheek. 'Helen want.'  When you flip to photos of tattooing being done, you tell her that it does hurt and ask her again. 'Helen want,' she asserts again. 'Good girl sit,' she adds with a grin, pointing to the person receiving the tattoo. Unable not to smile at her eagerness, you ruffle her hair and scritch her ears, telling her you'll see about getting her once you find an opportunity to do so[if tattoo parlor is unknown], adding that it may have to wait until you leave the city[end if]. She gives you another rush of licks and kisses. 'Good Master. Love Master.'";
	if cocks of player > 0:
		say "     Once the bout of kisses ends, she nuzzles between your legs and goes eagerly for your cock, licking and sucking at it. She's gotten better at using her hands by this point, stroking and rubbing your stiff maleness[if cunts of player > 0] and damp pussy[end if], very eager to show you how happy she is with you. The young woman listens attentively as you give her instructions to improve her technique, gradually getting better at using those fingers of hers to further please you while her mouth sucks you off.";
		say "     You stroke her head and scritch her ears, telling her what a good girl she is. Though that's not all you're stroking. Still having your hand on between her legs, you've set aside the book and are now pumping a pair of fingers into her cunny, much to your pet's delight. You decide to take your time, coaxing your loyal pet to go slowly so you can build to a strong orgasm that pumps your [cum load size of player] load into her mouth and down her throat by the time you're finally done. After having finished you off, she bends around and shamelessly licks herself like a dog while you watch her tongue herself to orgasm.";
		say "     Having gotten your permission to eventually get a tattoo and those tasty treats to fill her tummy, she stretches out on her back and rubs her [if cock width of player > 30]bloated[otherwise if cock width of player > 20]stuffed[otherwise]full[end if] belly with a happy grin on her beautiful face.";
	otherwise if cunts of player > 0:
		say "     Once the bout of kisses ends, she nuzzles between your legs and goes eagerly for your pussy, licking excitedly at it. She's gotten better at using her hands by this point, stroking and rubbing your sensitive folds, very eager to show you how happy she is with you. The young woman listens attentively as you give her instructions to improve her technique, gradually getting better at using those fingers of her to further please you while eating you out.";
		say "     You stroke her head and scritch her ears, telling her what a good girl she is. Though that's not all you're stroking. Still having your hand on between her legs, you've set aside the book and are now pumping a pair of fingers into her cunny, much to your pet's delight. You decide to take your time, coaxing your loyal pet to go slowly so you can build to a strong series orgasm that soaks his face in your juices by the time you're finally done. After having finished you off, she bends around and shamelessly licks herself like a dog while you watch her tongue herself to orgasm.";
		say "     Having gotten your permission to eventually get a tattoo and those tasty treats to enjoy, she stretches out on her back and licks her lips, rubbing a hand to gather up the sticky mix of your female cum and hers so she can suck it from his fingers as well.";
	increase lust of Helen by 1;


to say AwesomerHelenSex2:
	say "     Remembering your promise to your loyal pet, you gather your gear and stand by her cot. Calling her over, she gives a happy bark and comes up, expecting more playtime with her master, but finding you fully equipped and ready to go out into the city. She gives a little whine of disappointment, but sits down on her haunches and looks up at you obediently. After rubbing her head and giving her some scritches, you lean down and ask her if she's ready to get her tattoo. She grins happily and presses her lips to yours in a passionate kiss as her answer. Grinning down at her, you pat her head and tell her to come along and to stay right by your side the whole time.";
	say "     While the naked human does draw some attention from the mutants around, they thankfully leave you alone. And while the activity and sexy sights of the city's red light district catch your pet's attention, she remains steadfastly by your side. Your journey to the tattoo parlour is largely uneventful save for a couple of mutants who offer to trade for your pet, but thankfully accept your refusal and move on.";
	attempttowait;
	say "     When you go inside, Kara smiles and greets you before over the newcomer. 'And who do we have here?' she asks you, her hyena mind quickly assessing that Helen is your subordinate.";
	say "     'This here is Helen, my pet. She's been a good girl and so we're here to get her a tattoo,' you tell her before looking down at the object of your conversation. Helen is quite excited, looking all around the room and shifting around with barely contained enthusiasm. Of everything in the room, Kara draws her attention the most. Rubbing her head, she settles down momentarily. 'Helen, this is my friend Kara. She's going to give you your tattoo,' you say, patting her side as a signal she can go. She heads over to the hyena on all fours and looks up at her with a happy smile on her lovely face.";
	attempttowait;
	say "     'Doggy friend!  Helen tattoo,' she says cheerfully, nosing at Kara's crotch and starts licking her sheath. Already starting to poke out from the sight of the sexy young woman, her cock stiffens further and is soon buried in your pet's mouth. She moans softly and rubs a paw over her head. 'I'm a hyena you silly... Ngg... friendly girl, isn't he?' she adds to you and you can't help but smile.";
	say "     While she's getting an introductory blow job from the dog-minded young woman, you fill her in on the basics of the situation. As you talk, you take a seat and enjoy the show, watching the lovely woman work that throbbing hyena cock with her mouth and putting her increasing manual talents to work as well. She's clearly very eager to please this new friend who's going to give her a tattoo and does her very best, working Kara's cock, knot, sheath, balls and pussy with great enthusiasm until she growls and pulls Helen's face forward, locking that knot of hers in her mouth and feeding her load to the eager woman while hot juices run down her thighs from her fingering her pussy to orgasm as well. Once she manages to pop her lips around her knot, she smiles up at the hyena happily.";
	attempttowait;
	say "     'Now, I am quite busy and I'm not really sure if I've got the time to do a tattoo,' Kara says with a grin. Helen, not picking up on her teasing, whines softly and her shoulders sag in disappointment. '...but for such a good doggy, I'm sure I can make the time.'  This perks your pet right back up and she bounds around on all fours before jumping up and kissing the hyena with several quick licks before diving her tongue into her muzzle. She moans and pats her until she settles down enough to drop back down. She then hops eagerly into the tattooing chair, her enthusiasm barely contained.";
	say "     The hyena turns to you and asks if either of you had anything particular in mind and you shake your head, telling her to do whatever your pet wants as long as it's nothing too crazy. Grinning happily, Kara pulls out a book of samples and flips through it, showing one to your pet. 'Do you like this one? I think it's just right for a good girl like you,' she says, scritching her ear. Helen barks happily and nuzzles into the scritches, clearly pleased with her choice.";
	say "     As the hyena is getting her equipment ready, she starts looking through some inks and sets them aside. Seeing that it's mostly browns and blacks she's examining, Helen barks up with a call of 'colour!'  Kara arches her brow and asks what colour she'd like, at which point she seems struck with indecision, pointing at colours at random, regardless of how poorly they'd go together. You pat her side, tell her to settle down and add that perhaps the professional should pick a few nice colours. She seems happy with this and settles back down.";
	say "     You stick around long enough to make sure that she's settled once the tattooing starts. She whimpers a little at the pain of it, but sits still like the good girl she is, letting the hyena do her work. Having told you it'd take a while, you give your pet a kiss before head off to scout around a bit. You even manage to find a bit of food while out. You leave some of it for Kara as payment for her work and tuck the rest away in your pack.";
	attempttowait;
	say "     When you get back, Kara's got her lying back on a table and is finishing up something on her left thigh. Taking your seat, you watch the hyena's rear sway as she works. With such a view, you can't help but notice the damp folds of her pussy. When Kara shifts position briefly, you're gives you a good view of Helen's cunny as well with some cum leaking out of it. It seems the two took a break to have some more fun while you were out. Finishing up, she sets aside the needle and smears some lotion across the young woman's side. 'All done, doggy,' she says, running a paw through her lush hair. 'Now be a good girl and show your master your nice tattoo.'";
	say "     Helen hops up off the table and heads over to you. She struggles a bit to stand up so she can look herself over in the wall mirror while displaying her new tattoo for you. Around her neck is a tattoo of a dog collar with red studs and a golden, bone-shaped tag. The tag even has 'Good girl' drawn onto it in smooth cursive. Attached to the collar is also a pink leash that hangs down from his neck and across her breast before hanging down her side. It curves very realistically against her skin all the way down to her hip, leaving the loop [']resting['] against her bare thigh. The last couple of inches before the loop has the leash darkening to red before being banded with a rainbow of colours to further brighten it up.";
	say "     The tattoo looks very realistic and the leash seems to drape naturally across your pet's body as if it's really there, like it belongs there. Surprised and impressed by the level of work that Kara's put into the piece, being far more than you'd expected, you thank her very much for it with a lustful kiss and grope. Helen, clearly pleased as well, happily turns around in front of the mirror and gingerly touches her rapidly healing skin. After the two of you properly show your thanks to the talented hyena, leaving her wet, sticky and thoroughly satisfied, you head back with your loyal pet at your right side, her head held high as she walks alongside you so her new tattoo can be on display.";
	if thirst of Helen is 0:              [not pregnant]
		now thirst of Helen is 1;           [pregnant]
		now libido of Helen is 4;           [...by Kara]
		now HelenPregnant is 1;             [pregnancy timer]
	attempttowait;
	increase carried of food by 1;
	increase score by 50;
	increase lust of Helen by 1;
	follow the turnpass rule;

Section 7 - Ares

[moved to Ares.i7x]

Section 8 - Endings

when play ends:
	if bodyname of player is "Stag":
		if humanity of player is less than 10:
			if hp of Mike > 0 and hp of Mike < 99:      [player met and talked with Mike]
				say "As you succumb to the infection, you drift aimlessly through the city for a while until you run into Mike by chance. A bit sad to see someone he knew reduced to such a state, he takes you along and cares for you, putting you in a spacious kennel with his human dogs.[if cocks of player > 0] Randy creature that you are, you impregnate several of the females, becoming the progenitor of a very successful breed of pet humans in the changed world.[end if][if cunts of player > 0]The male transformed dogs find you irresistible and are constantly eager to mount you, which results in more than one litter of human puppies...";
			otherwise:                [only had unfriendly contact with Mike]
				say "As you succumb to the infection, you drift aimlessly through the city for a while, having sex with anyone you come across. After a while, there's a whole herd of willing does and a few stags following you. You lead them to the park to live among the trees, unconcerned about what's going on outside of it.";
		otherwise:
			say "When the rescue comes, you're carted into a holding facility and poked and prodded for a little while before they give you some shots to make you non-infective and release you into the outside world. As busy as they are with the more hostile infected resisting their efforts, there's not much time spent on you.";
			say "As you adjust to living among regular people again, your sleek lines attract many. Even though you end up getting a job as forest ranger and spend a lot of time in the wilderness, several amorous encounters with hikers lead to more and more people visiting the area. Soon there's a small party every weekend, with everyone dancing around a bonfire and getting laid by you before they pair up with one another.";
	if Xerxes is in the Grey Abbey Library:
		say "[line break]";
		if humanity of player is less than 10:
			say "After succumbing to your infection, you forget all about Xerxes, who faithfully waits for you to come back until he's half-starved. As his hunger finally overwhelms his sense of duty, he moves out into the city and is caught by a pack of female huskies. With them, he's pretty well taken care of from then on, as he gets fed pretty well and is allowed to mount them all the time to satisfy their urges.";
		otherwise:
			say "Since the soldiers most likely wouldn't believe you if you told them that Xerxes is actually a dog - and your dog - you get a bit creative when they come for you. Soon they're convinced he's a regular survivor who had a mental break and whom you took care of. You whisper to him to stay calm and that you'll come get him before he gets carted away to a psych ward. When you're released yourself soon after, you stay close to the holding facility until you manage to acquire a key by getting one of the orderlies dead drunk one night. Sneaking into the facility under cover of darkness, you find and free Xerxes, then make your escape. From then on, your faithful dog never leaves your side for long, always ready to guard your home[if lust of Xerxes > 0] and share your bed[end if].";
			if lust of Xerxes > 3:
				say "The human dog continues to grow gradually smarter and more at ease with his human body. He certainly maintains his canine mindset and prefers to live as such, though he can pass for human when needed. And while you are able to teach him how other people act, he has little interest in doing so when unnecessary. Having no sense of modesty or sexual hangups, he only becomes a better and better sexual partner who's open to anything and anyone as long as you, as his master, will allow it.";
	if Helen is in the Grey Abbey Library:
		say "[line break]";
		if humanity of player is less than 10:
			say "After succumbing to your infection, you forget all about Helen, who faithfully waits for you to come back until she's half-starved. As her hunger finally overwhelms her sense of duty, she moves out into the city and is caught by an alpha husky who incorporates her into his pack. With them, she's pretty well taken care of from then on, as she gets fed pretty well and is often mounted by the pack leader. Over time, she bears several human-shaped puppies for him.";
			if HelenPregnant > 0:
				if libido of Helen is 1:            [by the player]
					say "The first of her children - a boy - being yours from before you lost your humanity, quickly develops into a quite bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he soon tricks the Alpha into an unwinnable fight against a flock of gryphons. With his rival being carried away to the gryphon's flying city to serve as a submissive egg carrier, your son takes over the pack. As new Alpha, he goes on to fuck them all regularly, impregnating the female huskies as well as his human-shape half-sisters and mother while dominating the males by fucking their asses daily.";
				otherwise if libido of Helen is 2:  [by Fang]
					say "The first of her children - a boy - being the offspring of[if (hp of Fang is 1 or hp of Fang is 2)] your pet wolf[otherwise if (hp of Fang is 3 or hp of Fang is 4)] your dominant wolf[end if] Fang from before you lost your humanity, quickly develops into a relatively bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he soon shows the ferocious nature inherited from his father and challenges the pack's Alpha husky for dominance. It's a long fight with several quite close calls, but in the end the former pack-master can only limp away, beaten, as Fang's son takes over the pack. As new Alpha, he goes on to fuck them all regularly, impregnating the female huskies as well as his human-shape half-sisters and mother while dominating the males by fucking their asses daily.";
				otherwise if libido of Helen is 3:  [by the Felinoid]
					say "The first of her children - a boy - being the offspring of your felinoid companion from before you lost your humanity, quickly develops into a relatively bright teenager. As he matures, he develops the ability to create a seductive, pheromone-laden smell, almost as strong as his father's was. Growing up in a pack of horny dogs and having absorbed their morals, he makes relentless use of this ability, dominating the whole pack though sexual dependence. Even though the old Alpha is still around, protecting the pack, it's now the felinoid's son who has the power. He fuck them all regularly, males and females, impregnating the female huskies as well as his human-shape half-sisters and mother.";
				otherwise if libido of Helen is 4:  [by Kara]
					say "The first of her children - a boy - being the offspring of Kara, quickly develops into a relatively bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he soon shows the submissive nature inherited from his hyena father and submits to being the male bitch of the pack's alpha husky's. This doesn't stop him from sneaking fucks from the female huskies as well as his human-shape half-sisters and mother whenever he can get away with it. He is caught at this from time to time, but always seems to get out of the worst of the alpha's wrath by tempting the angry husky to viciously pound his ass instead, which he seems to love most of all.";
				otherwise if libido of Helen is 5:  [by Ares]
					say "The first of her children - a boy - being the offspring of Ares, quickly develops into a relatively bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he soon shows the cunning nature inherited from his father and starts fucking the pack bitches behind the alpha's back. Knowing just when and how to sneak fucks fucks from the female huskies as well as his human-shape half-sisters and mother, he's does so whenever he can and is never caught at it. Just about every puppy growing in the females in the following months is secretly his, and before they're born and can show from their looks and smell that he, and not the alpha is the father, he arranges for another male husky to challenge and win over the former pack-master. With the new alpha an imposing figurehead, long used to getting fucked by the cunning young man, Ares['] son becomes the de facto leader of the pack.";
				otherwise if libido of Helen is 6:  [by Carl]
					say "The first of her children - a boy - being the offspring of Carl, quickly develops into a relatively bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he becomes a faithful beta to his pack-master, standing by his side in many a fight in the chaotic city streets. As a reward, the young man is given free reign over the other males in the pack and mounts them regularly, as well as sometimes getting a go at one female or other after the alpha is done with them. This even extends to his human-shape half-sisters and mother, which results them getting impregnated by the young man, as his sperm proves better adapted for it than the alpha husky's seed.";
		otherwise:
			say "Since the soldiers most likely wouldn't believe you if you told them that Helen is actually a dog - and your dog - you get a bit creative when they come for you. Soon they're convinced she's a regular survivor who had a mental break and whom you took care of. You whisper to her to stay calm and that you'll come get her before she gets carted away to a psych ward. When you're released yourself soon after, you stay close to the holding facility until you manage to acquire a key by getting one of the orderlies dead drunk one night. Sneaking into the facility under cover of darkness, you find and free Helen, then make your escape. From then on, your faithful dog never leaves your side for long, always ready to guard your home[if lust of Helen > 0] and share your bed[end if].";
			if lust of Helen > 3:
				say "The human dog continues to grow gradually smarter and more at ease with her human body. She certainly maintains her canine mindset and prefers to live as such, though she can pass for human when needed. And while you are able to teach her how other people act, she has little interest in doing so when unnecessary. Having no sense of modesty or sexual hangups, she only becomes a better and better sexual partner who's open to anything and anyone as long as you, as her master, will allow it.";
			if HelenPregnant > 0:
				if libido of Helen is 1:            [by the player]
					say "Several months later, she gives birth to your child, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a quite bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and starts having sex with Alice, his first girlfriend, as well as her female golden retriever - thankfully using the condoms you buy him by the box, so neither of them end up pregnant. His growth spurts eventually slow to human levels and by the time he's a year old, your by then teenage looking son gets into college...";
				otherwise if libido of Helen is 2:  [by Fang]
					say "Several months later, she gives birth to the offspring of[if (hp of Fang is 1 or hp of Fang is 2)] your pet wolf[otherwise if (hp of Fang is 3 or hp of Fang is 4)] your dominant wolf[end if] Fang, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and starts getting into fights at school over girlfriends - as well as boyfriends, whoever strikes his fancy. Over time, he acquires a few scars that give him a dashing appearance, as well as a small gang of friends and lovers, and you have to buy condoms by the box for their wild parties on most weekends. His growth spurts eventually slow to human levels and by the time he's a year old, the by then teenage looking kid starts working as a car mechanic at a nearby garage...";
				otherwise if libido of Helen is 3:  [by the Felinoid]
					say "Several months later, she gives birth to the offspring of your felinoid companion, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and an inheritance of his father comes through - the ability to create a seductive pheromone-laden musk around himself. By the time you realize what's happening and have a stern talk with him about holding back a bit and using condoms, he managed to impregnate two teachers, five cheerleaders, one of your neighbours and her two German Shepherd bitches. Thankfully he went through half the football team too over the course of that weekend, otherwise there'd have been even more knocked up teenagers. His growth spurts eventually slow to human levels and by the time he's a year old, the by then teenage looking kid gets discovered as an actor, owing his good looks and 'charming' personality...";
				otherwise if libido of Helen is 4:  [by Kara]
					say "Several months later, she gives birth to the offspring of Kara, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. He's a very obedient and peaceful child with quite a bit of artistic talent which he throws into drawing and painting. And while his taste in girlfriends (and boyfriends, for that matter), tends towards the rougher and meaner kids, he seems to be quite happy with their abuse and rough treatment. Certainly, you hear plenty of loud and vigorous sex coming from his room over the year it takes him to grow up to full maturity. He becomes an artist and while he doesn't seem to make that much money at it, he's never short on lovers he can shack up with, being their fuck-toy bitch for while living their for free.";
				otherwise if libido of Helen is 5:  [by Ares]
					say "Several months later, she gives birth to the offspring of Ares, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and the well-developed sex drive as well as cunning of his father comes through. By the time you realize what's happening and have a stern talk with him about holding back a bit and using condoms, he managed to impregnate half the (mostly married) woman he was lawn-mowing for, a teacher and several cheerleaders - all the while double-teaming the girls by having sex with their boyfriends too. His growth spurts eventually slow to human levels and by the time he's a year old, the by then teenage looking kid gets into college...";
				otherwise if libido of Helen is 6:  [by Carl]
					say "Several months later, she gives birth to the offspring of Carl, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, as he's a very active and energetic boy, eager to make friends with just about anyone. Being the captain of the school's football team and quite popular opens a lot of possibilities for him when he soon enters puberty and his well-developed sex drive kicks in. Thankfully his first experiments are with a male teammate and when you find them in bed together the morning after, you have a little talk about being safe and using condoms. Following your instructions about that, the young man manages to avoid getting anyone pregnant, even as he builds up quite a big pack of male and female friends to have sex with him and each other. His growth spurts eventually slow to human levels and by the time he's a year old, the by then teenage looking kid gets into college...";
	if hp of Mike is 100:
		say "[line break]";
		say "You don't see Mike or Lea ever again, as they were taken to the leopardmen's lair to serve as the feline's play-toys. With them face-fucking Mike all the time, forcing him to swallow their cum, it doesn't take very long until he becomes a leopardess in heat. Him and Lea are the center of many a gang-bang, during which Mike is knocked up several times with litters of leopard kits. After his and Lea's daughter is born and grows to sexual maturity, she joins the lineup of submissive breeding holes for the gang.";
	otherwise if hp of Mike > 4 and hp of Mike < 98 and humanity of player > 10:
		say "[line break]";
		say "As the military moves into the city Mike tries to explain his special situation, but the soldiers just ignore him and try to 'free those poor people' - earning rewarding the men several painful bites from the dogs. That leads to all of Mike's party being locked up together in a warehouse-turned-holding-facility at the outskirts of the city. It takes almost three weeks before finally a doctor comes along to check them out. With him actually listening to what Mike says and having a look at the tattoos and identification chips the 'brainwashed humans' still have from their dog days, all of them are transferred to the regular medical facility. After Mike gets a shot to make him non-infectious, he's set free with all his dogs.";
		say "Months later his child with Lea is born, turning out to be a beautiful little girl who grows up to be a teenager within one year before her aging stabilizes to human levels. Having inherited her father's intelligence as well as the ability to understand and talk to dogs from Lea, she grows up with a unique perspective...";
		say "Mike goes on to running a lucrative business, breeding his human dogs with each other and training their human-dog offspring. With a pure-bred 'homo canis' going for about the price of a good racehorse, mostly to wealthier changed people, he buys a large ranch out in the countryside. You having a standing invitation from Mike to come over whenever you want, quite a few of your weekends are spent enjoying trips into the natural setting and... other entertainments.";

Stag ends here.
