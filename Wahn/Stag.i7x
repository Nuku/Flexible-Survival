Version 3 of Stag by Wahn begins here.
[Version 3.3 - hp variable on 0 as starting value for X/H]

"Adds a Male Stag to Flexible Survivals Wandering Monsters table, With Impreg chance"

Section 1 - Dog-Walking Event

[First meeting, the player can then peacefully chat with the stag guy or try to 'free' his pet, leading to combat and further hostile meetings...]

Dog Walking is a situation. The level of Dog Walking is 7.
The sarea of Dog Walking is "Warehouse";
when play begins:
	add Dog Walking to badspots of guy;
	add Dog Walking to badspots of furry;

Instead of resolving a Dog Walking:
	if hp of Mike is 0:   						[first meeting]
		say "     Around a building corner in front of you comes a young naked human woman on all fours. As she trots a bit closer and barks at you, you see she's obviously pregnant and has a collar around her neck. Before you can decide if and what to do now, a bipedal stag walks after her around the corner. He's clothed in jeans and hiking boots, with his shirtless upper body showing he's in good shape. His skin is covered in short brown fur, getting lighter at the belly and showing a cream colored treasure trail starting at his navel leading down to his crotch. Atop his head is a large rack of antlers, proud and powerful.";
		say "     As the guy sees you, he turns to the woman and commands 'Heel, Lea' which she immediately obeys, trotting over to stand besides him on all fours.";
		say "     [line break]";
		say "     What do you do now? You could just walk up and try to talk to the stag and his 'pet' (Y). Or attack him, to free the poor woman from her master (N). ";
		if player consents: 						[talking]
			say "     The stag nods at you as you come closer, saying 'Hello there, I'm Mike. I've seen you look at Lea, so I'll say this right now - no, she isn't a woman I've brainwashed into acting like an animal. I'm a professional animal trainer - or I was, before this madness started - and do breed dogs... and she really is one. But then one morning I started sprouting fur. And when I checked on my dogs, they were becoming human. Soon I had a kennel full of humans with the minds of my dogs in them.' He kneels next to her, stroking her head and pert breasts and she gives a content whine. 'Imagine my surprise at being the owner of dozens of obedient, trained dogs with shapes like this... and as I later learned, their new form is permanent and can't be changed again.'";
			say "     He goes on to show you the identification number tattoo on the inside of Lea's right ear from when she was a dog and has you feel her neck where there's a small identification chip under the skin too. Seems like he's telling the truth - crazy story, but which isn't these days in this city...";
			say "     [line break]";
			say "     You chat a bit more before Mike excuses himself, saying that Lea needs to get her exercise and that he should go on walking.";
			now hp of Mike is 1;
		otherwise:											[fighting]
			challenge "Stag";
			Now Dog Walking is resolved;
		increase score by 5;
	otherwise if hp of Mike is 1:			[second meeting]
		say "     You run into Mike and his 'dog' Lea, out on the street for a walk. The young woman scampers to you quickly and joyfully licks your hands at seeing you again. Mike smiles at her playful behaviour as he walks after her over to you.";
		say "     'Hello again. I'm making sure Lea gets her regular amount of exercise these days - good for the puppies and herself...' You chat a bit with Mike about dogs and inner city survival before he moves on.";
		increase humanity of player by 5;
		now hp of Mike is 2;
	otherwise if hp of Mike is 98:		[first friendly meeting after player attack]
		say "     You run into Mike and his 'dog' Lea, out on the street for a walk. The young woman looks at you suspiciously and growls silently until Mike steps up and strokes her head. 'It's okay Lea, we just had a misunderstanding last time.' Hearing soothing words from her master, she trots over to you and sniffs at you before licking your hands.";
		say "     'Hello again. I'm making sure Lea gets her regular amount of exercise these days - good for the puppies and herself...' You chat a bit with Mike about dogs and inner city survival before he moves on.";
		increase humanity of player by 5;
		now hp of Mike is 2;
	otherwise if hp of Mike is 2:			[third meeting - they're under attack by a gang]
		say "     Moving through the streets, you hear shouting and barking from somewhere ahead. Recognizing the voices of Mike and his 'dog' Lea, you rush forward to find out what's going on.";
		say "     You find the stag and his female companion being attacked by a gang of several leopardmen. The felines have already split them apart from each other, with three circling Mike and another two having cornered Lea against a closed loading dock.";
		say "     Do you want to jump in to help fight the leopardmen off (Y), or rather flee before they notice you (N)? ";
		if player consents:
			challenge "Leopardman";
			if lost is 1:
				say "     After one last slash with the leopardman's claws, you collapse on the ground, bleeding. Luckily though, your intervention distracted them enough that Mike and Lea fought off three of the attackers in the meantime. Now faced with new odds, the leopardman standing over you abandons the fight, dashing away before the stag and his 'dog' can get to him...";
			otherwise:
				say "     Having given the leopardman quite a beating, you grin at the fearful look on his face as he flees, running away as fast as he can. Your intervention distracted the other members of the small gang too, which allowed Mike and Lea to fight off three of their attackers in the meantime. The remaining unhurt one throws the fight as he sees himself confronted with the three of you and flees...";	  
				increase score by 5;
			now hp of Mike is 3;	
			say "     Nodding over to you, Mike says 'Thanks a lot for the help' as he kneels next to Lea to check on her. The transformed dog has a long claw-slash on her side and starts to whimper loudly now that the adrenaline of the fight wears off. 'This doesn't look good - might get infected too. I have to get her home.' He picks Lea up in his arms, and you walk down the street together, with you acting as a lookout for more trouble. Soon you arrive at Mike's house, where he leads you to the large dog kennel in the back and sets Lea down on a bed.";	  
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
	if hp of Mike is 0:				[last chance to switch to friendly mode]
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
				if hp of Mike is 0:				[if the player hasn't selected talking above and set the hp to 98 by now, Mike will be permanently hostile (99)]
					now hp of mike is 99;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Stag":
							now monster is y;
							now area entry is "Warehouse";
							now non-infectious entry is false;
							break;

to say StagDesc:
	if hp of Mike is 0:				[first encounter]
		say "     Seeing your aggressive stance as you come closer, the stag sighs 'Another of those savages.' Turning to the human at his side he says 'I want you to run home, Lea, you understand? Home. You can't help me in the fight right now and have to think of your puppies...'";
		say "     After a short hesitation and giving a pleading whine, the woman dashes off, with the stag stepping in the way to block any attempt at following her. 'Now let's deal with you.', he says and comes at you with balled fists.";
	otherwise:								[repeat fighting]
		say "     A bipedal stag accompanied by a naked, collared and pregnant human woman on all fours crosses your path. He's clothed in jeans and hiking boots, with his shirtless upper body showing he's in good shape. His skin is covered in short brown fur, getting lighter at the belly and showing a cream colored treasure trail leading down to his crotch. Atop his head is a large rack of antlers, proud and powerful.";
		say "     As the guy sees you, he sighs 'That asshole again.' Turning to the human at his side he says 'I want you to run home, Lea, you understand? Home. You can't help me in the fight right now and have to think of your puppies...'";
		say "     After a short hesitation and giving a pleading whine, the woman dashes off, with the stag stepping in the way to block any attempt at following her. 'Now let's deal with you.', he says and comes at you with balled fists.";


Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	add { "Stag" } to infections of guy;
	add { "Stag" } to infections of furry;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Stag"; [Name of your new Monster]
	now attack entry is "[one of]He pushes you down against the ground with strong arms and gives you a blow in the ribs.[or]You almost stumble and fall down as he gives you a rough shove.[or]His horns prove to be quite sharp as they poke you.[or]A sudden kick lands in your midsection and drives the air from your lungs.[at random]";
	now defeated entry is "[Stag loses]";      [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Stag wins]";       [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
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
	now area entry is "Nowhere";					[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;									[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 11;					[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;						[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;								[ Number of Breasts infection will give you. ]
	now breast size entry is 0;						[Size of breasts infection will try to attain ]
	now male breast size entry is 0;			[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;									[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;						[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;						[ Width of female sex  infection will try and give you ] 
	now libido entry is 70;								[ Amount player Libido will go up if defeated ]
	now loot entry is "";              		[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;        		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;									[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "fit";		[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "cervine";					[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;							[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;					[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;				[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";			[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - NPCs

[ hp states of Mike																			]
[   0: before the first meeting													]
[   1: met once (peacefully, or talked after fight)			]
[   2: met twice																				]
[   3: helped in the fight against the leopardmen				]
[   4: player got the quest to get a medkit							]
[   5: Lea got patched up																]
[   6: player got their own human doggie as reward			]
[  98: first friendly meeting after after player attack	]
[  99: hostile after player attack 											]
[ 100: lost to the leopardman gang 											]

Mike is a man. Mike is in Mike's Office.
The description of Mike is "     Mike is a bipedal stag, clothed in jeans and hiking boots, with his shirtless upper body showing he's in good shape. His skin is covered in short brown fur, getting lighter at the belly and showing a cream colored treasure trail leading down to his crotch. Atop his head is a large rack of antlers, proud and powerful..";
The conversation of Mike is { "Oh, hello." };
lastfuck of Mike is usually 555.

Mike's Home is a room. It is a fasttravel. It is private.
The description of Mike's Home is "     You're at a house with a very large fenced backyard at the edge of the warehouse district. A good location for a dog breeder, as the neighbours didn't complain about noise. At the side of the house (north from you) is the back entrance to which Mike showed you where a key is hidden.";

North of Mike's Home is Mike's Office.
The description of Mike's Office is "     You're in Mike's office, a relatively large room. A desk with a computer stands in the back, next to a filing cabinet. Lots of boxes of equipment and sacks of dog food line the walls. Seemingly a new addition to the room is a single bed in the center, its white sheets showing a few stains that are most likely dried cum. [if hp of Mike < 5]Lea, Mike's transformed dog lies on it, whining pitifully.[end if]";

East of Mike's Office is Dog Kennels.
The description of Dog Kennels is "     This part of the building consists of a long hallway lined with quite a few large dog kennels on each side. In them are Mike's transformed dogs, many of which rest on air mattresses he added when they became human. The rest sit in front of their wire mesh kennel doors, giving you dog-eyed looks in hope of a walk or some play-time.";

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
		infect "Stag";					[since it's the only source for the infection and you got to wait between scenes, let's make him double infective]
		now lastfuck of Mike is turns;
		

to say MikeSex1:												[player sucks him]
	if hp of Mike is 0 or hp of Mike is 99:     [post-combat, dominating]
		say "     You step close to the stag a bit wary at first and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his side. Looks like he's resigned himself to obeying you - for now.";
		say "     Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them before you open up his zipper and pull down the pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You kneel down in front of him and stroke his shaft some more until he's fully hard.";
		say "     Running your tongue over his cockhead and shaft slowly between pumping your hard up and down its length, you tease the stag until he's breathing hard and looks pleadingly down to you. You smile, then take his manhood into your mouth and start giving him an amazing blow-job, going down all the way on his cock and massaging his balls.";
		say "     With how you worked him up beforehand, it's not too long before he suddenly shouts 'I'm coming!' and starts to shoot strings of cum into your mouth. You wait till he stops twitching and the last spurt of semen leaves his cock, then stand up and pull his head to yours for a deep kiss, pushing the cum into Mike's mouth with your tongue. His eyes get wide as he tastes his own cum and even wider as you pull his head back a bit and say 'Now swallow!' After a moment's hesitation, he gulps down the cum and shows you his empty mouth as you ask for it.";
		say "     Satisfied in giving him a load of cum in his stomach, you give the stag a slap on his ass and leave.";
	otherwise:																	[post-quest, friendly]
		say "     You step close to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations.";
		say "     Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down the pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Licking your lips in anticipation, you kneel down in front of Mike and stroke his shaft some more until he's fully hard.";
		say "     Running your tongue over his cockhead and shaft slowly between pumping your hand up and down its length, you tease the stag until he's breathing hard and looks pleadingly down to you. You smile, then take his manhood into your mouth and start giving him an amazing blow-job, going down all the way on his cock and massaging his balls.";
		say "     With how you worked him up beforehand, it's not too long before he moans 'I'm getting close...' You continue going down on him and go for some deep-throat action until he can't hold back any more and shouts in lust as his balls pump spurt after spurt of seed into your stomach. You wait till he stops twitching and the last spurt of semen leaves his cock, pull off and take a deep breath. Holding his slowly softening cock in your hand, you give it a quick kiss on the tip, then stand up and pull Mike's mouth to yours. With his arms around you and stroking your back as you make out with each other, Mike says 'Thank you, that was an amazing blow-job.' in between the kisses.";

to say MikeSex2:							[he sucks the player]
	if hp of Mike is 0 or hp of Mike is 99:     [post-combat, dominating]
		say "     You step close to the stag a bit wary at first and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his side. Looks like he's resigned himself to obeying you - for now.";
		say "     'On your knees' you order, pushing down on his shoulders as he hesitates a moment. With the muscular stag kneeling down before you, you pull out your cock, demonstratively stroking it in front of his face and running it along the edge of his chin. Then you push it against his lips and growl 'Open up - and no teeth.'";
		say "     [line break]";
		say "     With a bit of a sullen expression, the stag opens his mouth and takes your manhood into it, bobbing up and down on your shaft. You let him suck you a while, then feel the need for something more rise inside you and grab his antlers like handholds and use them to hold his head as you start fucking his face. Going deeper and deeper, he has to cough a few times before he manages to relax his throat enough when you push all your cock inside him. It's an amazingly tight feeling as you bottom out and hold his head with your cock down his throat for a moment, then start thrusting in and out.";
		say "     All too soon you feel your orgasm approaching and push your shaft one last time into the stag's throat as you start shooting your seed - straight into his stomach. After the first few shots, you pull out of his mouth and spray the rest of your cum all over his cervine face. With a smile on your lips, you leave the cum-splattered stag kneeling there on the street and walk away.";
	otherwise:																	[post-quest, friendly]
		say "     You step close to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Grinding your crotch against his, you show him pretty direct how hot and hard his presence makes you.";
		say "     Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you softly push down on his shoulders, to which he quite readily kneels down in front of you. As you pull out your cock, he takes it into a large hand, stroking it until you're fully hard, then gives its tip a quick lick.";
		say "     Running his tongue over your shaft slowly between pumping your up and down its length, Mike teases you until you're breathing hard and almost begging for release. Then he has mercy on you and takes your manhood into his mouth and starts giving you an amazing blow-job, going down all the way on the cock and massaging your balls.";
		say "     With all the kissing and stroking beforehand, it's not too long before you moan 'I'm getting close...' Mike just continues going down on you, even going for some deep-throat action until you can't hold back any more and shout in lust as your balls pump spurt after spurt of seed into his stomach. He waits a moment, then pulls back a bit, taking your last few shots in his mouth. Then he stands up and gives you a deep kiss, allowing you to taste your own cum on his lips and tongue.";

to say MikeSex3:												[player pussy fucked]
	if hp of Mike is 0 or hp of Mike is 99:     [post-combat, dominating]
		say "     You step close to the stag a bit wary at first and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his side. Looks like he's resigned himself to obeying you - for now.";
		say "     Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them a bit before you open up his zipper and pull down the pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You stroke his shaft some more until he's fully hard, then command him to lie down.";
		say "     [line break]";
		say "     Spreading his jeans flat on the ground, the stag sits on them, then lies back. His proudly standing erection looks pretty inviting to you and you quickly strip off your own clothes. Moving to stand over the stag, you crouch down and take hold of his manhood, then slowly lower yourself deeper. Rubbing the tip of his cock against your pussy lips, you make him moan in building arousal, then gasp as you sink your folds over his hard rod. His cock spreading your moist tunnel gives you a pleasant sensation of fullness, getting stronger and stronger until your hips touch and he bottoms out inside you.";
		say "     Looking down over your dominated partner, now held by lust instead of force, you smile, then start sliding up and down over his hard shaft. Riding the stag's erection with abandon, you make good use of his length and girth, grinding your hips against him so he hits all the right spots inside you. With your wild ride on his cock, it's not too long before he suddenly shouts 'I'm coming!' and starts to shoot strings of cum deep inside you, filling your womb with fertile seed. [fimpregchance]";
		say "     [line break]";
		say "     You wait till he stops twitching and the last spurt of semen leaves his cock, then pull your pussy off his shaft and move to kneel over his face. Pulling his head up against your cum-dripping pussy, he instantly realizes what you want and starts licking you. Quite talented with his tongue, this stag - his oral attentions quickly bring you the rest of the way to your own orgasm, making your folds drip with femcum in addition to the stag's seed.";
		say "     Thoroughly satisfied, you grin down at the stag's wet face as you stand up and walk away, leaving him lying there on the ground.";
	otherwise:																	[post-quest, friendly]
		say "     You step close to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations.";
		say "     Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down the pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Reaching down to stroke him until he's fully hard, your lips find his for another kiss. Moaning 'I want you inside me', you step back and quickly take off your clothes.";
		say "     [line break]";
		say "     After slowly stroking his cock while watching you strip, Mike then guides you to the bed to lie down with him. Running caressing hands up and down your body, following and stroking every curve, he builds up your arousal some more before he finally moves on top of you. You feel his hard cock slide up against your crotch, then find the opening and penetrate your moist pussy lips. With one deep thrust he buries himself deep in your pussy, then starts fucking you with rapid strokes. Moaning loudly, you wrap your arms and legs around Mike to hold on and meet his thrusts.";
		say "     He proves himself to be a virile stag, with enough endurance to satisfy a whole herd of does, as he couples with you for quite a while, driving you to one orgasm and another. Then his restraint breaks down and you hear him grunt 'I'm gonna cum!' seconds before his body stiffens, shudders running through it as burst after burst of his seed blast into your womb. [fimpregchance]";
		say "     [line break]";
		say "     He stays on top, breathing heavily while the last spurts of semen leave his cock, then lowers his head to yours to make out. It's pretty nice to hold his softly furred body against yours, with his slowly softening cock and deposited load giving you a comfortably full feeling. You stay like that for a while, resting together in post-coital bliss before you have to return to everyday survival in the city.";

to say MikeSex4:												[player ass fucked]
	if hp of Mike is 0 or hp of Mike is 99:     [post-combat, dominating]
		say "     You step close to the stag a bit wary at first and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his side. Looks like he's resigned himself to obeying you - for now.";
		say "     Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them a bit before you open up his zipper and pull down the pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You stroke his shaft some more until he's fully hard, then command him to lie down.";
		say "     [line break]";
		say "     Spreading his jeans flat on the ground, the stag sits on them, then lies back. His proudly standing erection looks pretty inviting to you and you quickly strip off your own clothes. Moving to stand over the stag, you crouch down and take hold of his manhood, then slowly lower yourself deeper. Rubbing the tip of his cock up and down your crack , you make him moan in building arousal, then gasp as you push his cockhead into your asshole and sink down on it. His cock spreading your tight tunnel gives you a pleasant sensation of fullness, getting stronger and stronger until he bottoms out inside you and you feel his fur against your cheeks.";
		say "     Looking down over your dominated partner, now held by lust instead of force, you smile, then start sliding up and down over his hard shaft. Riding the stag's erection with abandon, you make good use of his length and girth, grinding your ass against him so he hits all the right spots inside you. With your wild ride on his cock, it's not too long before he suddenly shouts 'I'm coming!' and starts to shoot strings of cum deep inside you, filling your tight ass with fertile seed. [mimpregchance]";
		say "     [line break]";
		say "     You wait till he stops twitching and the last spurt of semen leaves his cock, then pull off his shaft with a *plop* and move to kneel over his face. Saying 'Eat me out' in a commanding tone, you pull his head up against your cum-dripping asshole and after a moment's hesitation he starts licking you. Quite talented with his tongue, this stag - his oral attentions quickly bring you the rest of the way to your own orgasm, [if cocks of player > 0]with your [cock of player] cock shooting long strings of cum all over your partner's chest[otherwise if cunts of player > 0]making your folds drip with femcum[end if].";
		say "     Thoroughly satisfied, you grin down at the stag[if cocks of player > 0] and his cum-splattered fur[end if] as you stand up and walk away, leaving him lying there on the ground.";
	otherwise:																	[post-quest, friendly]
		say "     You step close to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations.";
		say "     Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down the pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Reaching down to stroke him until he's fully hard, your lips find his for another kiss. Moaning 'I want you inside me', you step back and quickly take off your clothes.";
		say "     [line break]";
		say "     Mike strokes his cock as he watches you strip, then lets himself be led to the bed. You get onto it on all fours, sticking out your ass and wiggling it invitingly. Your aroused stag grabs the bottle of lube from the ground, then applies a good amount to your hole and fingers it a bit. He kneels behind you and starts rubbing his manhood up and down between your cheeks. Then you feel the tip of his cock push against your sphincter, slowly increasing the pressure until it yields and Mike's hard cock slides into you. It just feels amazing to have his shaft rub your sensitive insides. Soon he's bottomed out all the way inside you and rests there for a moment, pulling your upper body close and giving you a deep kiss.";
		say "     Then he starts thrusting in and out with hard and deep strokes, making you both moan in lust. Slapping noises from when his hips hit your ass fill the room and are soon joined by barks from the kennels that seem to be cheering you on to fuck. Mike proves himself to be a virile stag, with enough endurance to satisfy a whole herd of does, as he couples with you for quite a while, driving you to one orgasm and another.[if cocks of player > 0] Your cock sprays two huge loads all over the sheets, as Mike just continues to fuck you until you're hard again and ready for a second cumshot.[otherwise if cunts of player > 0] Your pussy literally drips with femcum, making it trickle down your legs and soak into the sheets under you.[end if] Then his restraint breaks down and you hear him grunt 'I'm gonna cum!' seconds before his body stiffens, shudders running through it as burst after burst of his seed blast deep into your ass. [mimpregchance]";
		say "     [line break]";
		say "     Mike stays kneeling behind you as his manhood keeps pulsing with each shot of cum, breathing heavily and holding on to your body. After the last spurt of semen leaves his cock, he gives you a kiss on the neck, then hugs you close and pulls you down so you lie together on your sides on a mostly dry spot of the bed. You two just stay like that for a while, him spooning you with his slowly softening cock still in your ass, getting some rest before you have to return to the problems everyday survival in the city.";

to say MikeSex5:												[player ass fucked]
	if hp of Mike is 0 or hp of Mike is 99:     [post-combat, dominating]
		say "     You step close to the stag a bit wary at first and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his side. Looks like he's resigned himself to obeying you - for now.";
		say "     Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them a bit before you open up his zipper and pull down the pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You stroke his shaft some more until he's fully hard, push him over to a nearby building's wall and have him stand against it, bent over a bit and bracing himself with his hands.";
		say "     [line break]";
		say "     Seeing the buns of his very nice bubbly butt, you just have to run your fingers through the short fur covering them. Fondling his firm cheeks under the soft fuzz, you pull them apart, revealing the pink opening of his pucker surrounded by cream colored fur. You wet a finger in your mouth and push it against his opening, then inside a very tightly gripping asshole. You can't wait to get your cock in there...";
		say "     Quickly stripping off your own clothes, you step up behind the stag and wrap your arms around him, feeling up his chest and rubbing yourself against his softly furred backside. With you having gotten him hot and hard before, your dominated partner can't stop himself from moaning in lust as you touch him. Whispering 'I'm gonna fuck you now.' in his ear, you take hold of your [cock of player] manhood and place it against his opening, then slowly push forward until his pucker yields and you pop in.";
		say "     The stag's ass is amazingly tight, gripping your shaft as you slide deeper. You have to slow down and even stop for a moment in between so you don't just blow your load before you're fully in him. Resting your cock three quarters inside, you take a deep breath and reach around to softly pinch the stag's nipples a bit until you got yourself under control again. Then you move forward, pushing deeper into the stag until you bottom out, with his asshole tight around your cock and the soft fur of his bottom against your hips. Starting to slide in and out, both of you are soon moaning and gasping from the sensations.";
		say "     Fucking the stag with hard and deep strokes, you soon drive him over the edge, shouting 'I'm coming...' as his shaft sprays a huge load of white cum all over the wall he leans against. His inner muscles twitching around your shaft gives you the rest too, your balls tightening as they send spurt after spurt of cum deep into the stag's ass.";
		say "     [line break]";
		say "     Holding your arms tight around his chest until your last spurt of semen is deposited, you then pull out in one quick go from his cum-filled asshole, accompanied by a slurping noise. His hole gapes open for a second with cum running out of it, then quickly closes, trapping the rest of your seed inside. You have a last look at the cream-colored fur of his crack, wet with your cum, then give the stag a slap on the butt and leave him there like that.";
	otherwise:																	[post-quest, friendly]
		say "     You step close to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations.";
		say "     Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down the pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Reaching down to stroke him until he's fully hard, your lips find his for another kiss. Moaning 'I want to fuck your ass', you step back and quickly take off your clothes.";
		say "     [line break]";
		say "     Mike strokes his cock as he watches you strip, then lets himself be led to the bed. Taking the bottle of lube from the floor and handing it to you, he says 'I haven't had much anal sex since back in college, when my roommate Andy and I were constantly at it. So please be gentle...' then gets on all fours on the bed, sticking out his ass and wiggling it invitingly. Seeing the buns of his very nice bubbly butt, you just have to run your fingers through the short fur covering them. Fondling his firm cheeks under the soft fuzz, you pull them apart, revealing the pink opening of his pucker surrounded by cream colored fur. You put some lube on your hand and warm it up a bit, then softly push a slippery finger against Mike's pucker, sliding it inside a very tightly gripping asshole and making him moan in lust. You can't wait to get your cock in there...";
		say "     Quickly stripping off your own clothes, you climb on the bed behind the stag and wrap your arms around him, feeling up his chest and rubbing yourself against his softly furred backside. Hot and hard, reveling in you touching him, Mike reaches back and squeezes your ass, pulling your hips against himself. With him huskily moaning 'Stick it in, I'm ready,' you take hold of your [cock of player] manhood and place it against his opening, then slowly push forward until his pucker yields and you pop in.";
		say "     The stag's ass is amazingly tight, gripping your shaft as you slide deeper. You have to slow down and even stop for a moment in between so you don't just blow your load before you're fully in him. Resting your cock three quarters inside, you take a deep breath and reach around to feel his chest and softly pinch the Mike's nipples a bit until you got yourself under control again. Then you move forward, pushing deeper into the stag until you bottom out, with his asshole tight around your cock and the soft fur of his bottom against your hips. Starting to slide in and out, both of you are soon moaning and gasping from the sensations.";
		say "     Fucking the stag with hard and deep strokes, you soon drive him over the edge, shouting 'I'm coming...' as his shaft sprays a huge load of cum all over the sheets under him. His inner muscles twitching around your shaft gives you the rest too, your balls tightening as they send spurt after spurt of cum deep into the stag's ass.";
		say "     [line break]";
		say "     Holding your arms tight around his chest until your last spurt of semen is deposited, you then pull him down to lie together on the bed on your sides, spooning with your slowly softening cock still inside him. It's nice to hold him like that, with his farm furred body against your chest. You two just stay like that for a while, getting some rest before you have to return to the problems everyday survival in the city.";

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
				now hp of Mike is 5;
			otherwise:
				say "			You just silently shake your head.";
		otherwise:
			say "			You just silently shake your head.";
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
			say "     Mike shrugs as you decline, says 'As you wish. But the offer stands, so just say so if you change your mind.'"; 
	otherwise if hp of Mike is 6:
		say "     Mike gives you a friendly nod, then says 'Hello again. How's it going with your new pet? No problems, I hope?' You chat a bit about caring for your human shape dog and survival in the city in general.";
	otherwise:
		say "     Mike is not in a state when he should be able to talk - please report how you got this.";
		
Lea is a woman.  Lea is in Mike's Office.
The description of Lea is "     Originally one of Mike's dogs, Lea now is a young human woman of about nineteen. She has shoulder-length blond hair and a slender physique, although her breasts have obviously filled out quite a bit to go with the pregnant belly. But no matter what she looks like - there's still only a dog's mind behind her eyes, so she walks on all fours and only uses barks and growls as communication. [if hp of Mike < 5]A deep gash from a leopardman's claw mark her side. It doesn't look good - she needs some bandages and most likely antibiotics too. And soon.[otherwise if hp of Mike > 4]A clean white bandage covers most of her upper torso, protecting her healing wound from getting dirty again.[end if]";
The conversation of Lea is { "Woof." };
lastfuck of Lea is usually 555.

instead of fucking Lea:
	if hp of Mike < 5:
		say "     Mike roughly shoves you aside as you try to fondle Lea. 'Get a hold of yourself - can't you see she's hurt?'";
	otherwise if hp of Mike > 4:
		say "     Mike puts a hand on your shoulder and pulls you aside. 'Lea is still recovering. She needs some rest, ok? Besides... she's mine - who did you think put those puppies in her belly?'";

instead of conversing Lea:
	if hp of Mike < 5:
		say "     Lea gives you a pitiful whine as you try talking to her.";
	otherwise if hp of Mike > 4:	
		say "     Lea gives a welcoming yip as you approach, then comes closer and licks your hand. She's not really a candidate for meaningful conversation, but watching her pounce after a tennis ball and fetch it for you has a relaxing influence on you.";


[ hp states of Xerxes															]
[   0: hasn't been brought to the bunker yet			]
[   1: no sex with either Fang or the Felinoid		]
[  10: got fucked only by Fang										]
[  11: got fucked only by the Felinoid						]
[  12: got fucked by both Fang and the Felinoid		]
[ lust of Xerxes																	]
[   0: hasn't had sex with the player							]
[   1: had sex with the player										]

Xerxes is a man. 
The description of Xerxes is "     Originally one of Mike's dogs, Xerxes now is a young human male of about nineteen. He has short black hair and a well-developed physique, with muscular arms and legs. All in all a very handsome guy - but no matter what he looks like - there's still only a dog's mind behind his eyes, so he walks on all fours and only uses barks and growls as communication. He watches you attentively, eager to follow the commands of his master.";
The conversation of Xerxes is { "Woof." };
lastfuck of Xerxes is usually 555.
lastxerxestalk is a number that varies.  lastxerxestalk is usually 555.
hp of Xerxes is usually 0.

instead of going outside from Bunker while (Xerxes is in the Grey Abbey Library and lastfuck of Xerxes - turns > 5 and (hp of Xerxes is 1 or hp of Xerxes is 10) and felinoid companion is tamed ):
	move player to Grey Abbey Library;
	say "     As you emerge from the underground bunker and step back into the library, you hear some rather confused barks and yips from somewhere back between the rows of bookshelves. Sounds like Xerxes. Going to have a look, you find your dog turned teenage human, standing on all fours in the midst of a loose reading group of chairs, his looks following the movements of your felinoid companion. The large feline weaves his way between the chairs with flowing movements, circling Xerxes and from time to time veering closer to rub the side of his head or furred body against Xerxes naked form.";
	say "     Still looking a bit confused, the human dog becomes more and more aroused with each touch of fur and sniff of the felinoid's enticing scent. Soon any doubts about getting this close to any cat are forgotten and Xerxes rubs up against the felinoid, licking its muzzle. Giving a satisfied rumbling purr, the large cat moves to sniff Xerxes ass, then licks between the cheeks of his bubble butt with its wide tongue. Several licks later, the felinoid moves further up, licking the muscled human back of your dog and then his neck.";
	say "     [line break]";
	say "     Standing over the smaller human, his belly-fur touching Xerxes back, the felinoid now is in the perfect position to fuck him. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crack until he soon finds Xerxes tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library and you stay close to watch the show.";
	say "     After quite a while of hot and heavy fucking, Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor. The spasms of his anal muscles during his orgasm must have given the felinoid the rest too, as the large cat buries his hard cock all the way in Xerxes ass and holds still, filling him up with his seed. When he finishes cumming, the big cat pulls out and throws himself on the floor in front of a bookshelf to lounge in satisfaction. Your human-dog pet licks the felinoid's cock clean, then joins him on the floor, snuggling up against his warm fur.";
	say "     [line break]";
	say "     You step back out from between the bookshelves and leave the two of them alone for a while. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
	if hp of Xerxes is 10:
		now hp of Xerxes is 12;
	otherwise:
		now hp of Xerxes is 11;
	now lastfuck of Xerxes is turns;

instead of going outside from Bunker while (Xerxes is in the Grey Abbey Library and lastfuck of Xerxes - turns > 5 and (hp of Xerxes is 1 or hp of Xerxes is 11) and Fang is in the Grey Abbey Library and lastFangfucked - turns > 7 ):
	move player to Grey Abbey Library;
	if ( hp of Fang is 1 or hp of Fang is 2 ):				[Beta Fang]
		say "     As you emerge from the underground bunker and step back into the library, you notice that Fang isn't at his spot next to the door. Wary of unannounced visitors, you look around for signs of a fight or any other indication what happened. Nothing out of the ordinary in sight. Then you hear something from further back in the rows of bookshelves - growling.";
		say "     Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Xerxes, who looks to the ground, then rolls over and bares his muscled chest and genitals. Your wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Xerxes to lick his muzzle. Looks like the question of hierarchy among your pets just got solved. With them establishing their status to each other right now peacefully, you decide not to interfere.";
		say "     [line break]";
		say "     With a commanding growl, Fang pokes Xerxes in the side with his muzzle, making him roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Xerxes asshole in one deep thrust. Licking and lightly nipping Xerxes neck, he pounds into him with an animal's ferocity. Your human-dog pet gives loud moans of lust as he is penetrated deeply again and again and you can see his manhood harden and dribble pre-cum on the library floor. Quite a hot little show you're getting here.";
		say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
		say "     [line break]";
		say "     You step back out from between the bookshelves and leave the two of them to wait till Fang's knot goes down. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
	otherwise if (hp of Fang is 3 or hp of Fang is 4):	[Alpha Fang]
		say "     As you emerge from the underground bunker and step back into the library, you notice that Fang isn't in sight any at his usual spots. Wary of unannounced visitors, you look around for signs of a fight or any other indication what happened. Nothing out of the ordinary. Then you hear something from further back in the rows of bookshelves - growling.";
		say "     Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Xerxes, who looks to the ground, then rolls over and bares his muscled chest and genitals. Your strong Alpha wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Xerxes to lick his muzzle. Looks like he wants to dominate your pet too - as is his right. Xerxes seems to be readily accepting the submissive role, just like you did in the end. Arousal wells up inside you as you think back to your own first time under a dominating Fang and you can't wait to see your human dog have the same experience.";
		say "     [line break]";
		say "     With a commanding growl, Fang pokes Xerxes in the side with his muzzle, making him roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Xerxes asshole in one deep thrust. Licking and lightly nipping Xerxes neck, he pounds into him with an animal's ferocity. Your human-dog pet gives loud moans of lust as he is penetrated deeply again and again and you can see his manhood harden and dribble pre-cum on the library floor. What a hot show you're getting here - you just wish you were the one getting fucked by that powerful wolf's shaft.";
		say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
		say "     [line break]";
		say "     You step back out from between the bookshelves and leave the two of them to wait till Fang's knot goes down. With this new development, new opportunities for fun with your canine master and human dog pet come to your mind as you walk away...";
	if hp of Xerxes is 11:
		now hp of Xerxes is 12;
	otherwise:
		now hp of Xerxes is 10;
	now lastfuck of Xerxes is turns;
	now lastfangfucked is turns;

instead of conversing Xerxes:
	say "     Calling Xerxes to you from wherever he was patrolling in the library, you sit down on the cot you put in here for him and talk with him. Or rather to him - as he still only has the mind of a dog and mostly replies with 'Woof?'', 'Woof.' and 'Woof!'";
	say "     Still, it's rather relaxing to talk a while about your problems and stroke your human dog's hair. It strengthens your sanity a bit and you feel more confident that you will get through this crazy situation.";
	if lastxerxestalk - turns > 8:
		increase humanity of player by 5;
		now lastxerxestalk is turns;
	
instead of sniffing Xerxes:
	say "     Xerxes has a nice smell, fresh and masculine.";
	
Instead of fucking Xerxes:
	if(lastfuck of Xerxes - turns < 5):
		say "     Xerxes still seems a bit worn out from your last fun-time. Let him rest a bit more...";
	otherwise:
		if lust of Xerxes is 0:
			now lust of Xerxes is 1;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Suck Xerxes's cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		if (cunts of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let Xerxes fuck your pussy";
			now sortorder entry is 3;
			now description entry is "Let the human dog breed you.";
		choose a blank row in table of fucking options;
		now title entry is "Let Xerxes fuck your ass";
		now sortorder entry is 4;
		now description entry is "Let the human dog fill your ass with his seed.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Xerxes's ass";
			now sortorder entry is 5;
			now description entry is "Fill the human dog's ass with your cock.";
		sort the table of fucking options in sortorder order;
		if (cocks of player > 0 and Felinoid Companion is tamed and (hp of Xerxes is 11 or hp of Xerxes is 12)):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Xerxes & Felinoid";
			now sortorder entry is 6;
			now description entry is "Hot sex with the felinoid fucking Xerxes.";
		sort the table of fucking options in sortorder order;
		if (cocks of player > 0 and Fang is in the Grey Abbey Library and (hp of Xerxes is 10 or hp of Xerxes is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Xerxes & Fang";
			now sortorder entry is 7;
			now description entry is "Hot sex with Fang fucking Xerxes.";
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
					if nam is "Suck Xerxes's cock":
						say "[XerxesSex1]";
					otherwise if (nam is "Have him suck your cock"):
						say "[XerxesSex2]";
					otherwise if (nam is "Let Xerxes fuck your pussy"):
						say "[XerxesSex3]";
					otherwise if (nam is "Let Xerxes fuck your ass"):
						say "[XerxesSex4]";
					otherwise if (nam is "Take Xerxes's ass"):
						say "[XerxesSex5]";
					otherwise if (nam is "Male threesome with Xerxes & Felinoid"):
						say "[XerxesSex6]";
					otherwise if (nam is "Male threesome with Xerxes & Fang"):
						say "[XerxesSex7]";
		now lastfuck of Xerxes is turns;
		
to say XerxesSex1:												[player sucks him]
	say "     You step besides the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention.";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	say "     [line break]";
	say "     You push softly against him so he lies on his side, then back, with his human erection now standing proudly upwards. Pumping your hard up and down on it again, you put your lips to its tip, then go down on him. Xerxes gives a lust-filled growl and starts instinctual thrusts with his hips, putting his cock deeper into your mouth and making the most of your blow-job. It's not too much longer before he orgasms, body twitching as his human seed gushes into your mouth. You wait till you got it all, every last shot, then swallow it down. Giving your dog a last quick belly-rub over his hard abs, you stand back up and turn back to everyday survival.";

to say XerxesSex2:												[he sucks the player]
	say "     You step besides the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention.";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his bubble butt and give it a squeeze. Standing back up, you quickly strip off your clothes and hold your erect manhood up for Xerxes, who gives you a happy yip, then starts licking it.";
	say "     [line break]";
	say "     He runs his talented tongue along your shaft, then laps at your balls before returning to the tip of your cock and taking it in his mouth. As Xerxes starts giving you a pretty nice blow-job, you resolve to thank Mike the next time you see him for your expertly trained pet. Your human dog is very careful not to touch your best bit with his teeth and uses his tongue to caress your cock as he bobs up and down on it. With his eager sucking, it doesn't take much longer till the need to cum rises in your balls.";
	say "     Moaning, you grab Xerxes head and do a few deep thrusts with your hips, your cock deep in his throat as it starts shooting a huge load. Pumping blast after blast directly into his stomach, you hold his head against your crotch, then pull back a moment later to let him get some air. He quickly goes back to work, catching the last spurts of cum with his mouth, then puts his lips around your cockhead, softly sucking as it goes down.";

to say XerxesSex3:												[player pussy fucked]
	say "     You step besides the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention.";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	say "     [line break]";
	say "     Quickly stripping off your clothes, you get on the cot yourself and assume a position on all fours in front of Xerxes. You wiggle your ass at him and reach down to spread your folds invitingly. Already hot and ready from your earlier stroking, your human dog doesn't hesitate a second before he mounts you from behind in typical doggie-style, hugging your chest has his hips grind against you. His hard shaft quickly finds your moist opening and plunges deep into your body.";
	say "     Xerxes fucks you with a relentless wild energy, his hard thrusts rubbing very sensitive and pleasurable spots inside you. This soon drives your arousal to the max, giving you a mind-blowing orgasm that moistens Xerxes cock with even more slippery femcum[if cocks of player > 0] and makes your cock spray your own load all over the sheets below[end if]. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling your womb with his human seed.[fimpregchance]";
	say "     As his cock and balls keep twitching with blast after blast of cum into you, Xerxes just keeps holding on to you, panting with his head over your shoulder. Turning your head, you pull his lips to yours, kissing him and sticking your tongue in his mouth. Holding him against you with one arm, you move to lie on your sides with him behind you and rest for a while on the cot as you come down from your orgasms.";
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;	
	if baby is 0 and gestation of child is not 0:
		now facename of child is "Human";
		now bodyname of child is "Human";
		now skinname of child is "Human";

to say XerxesSex4:												[player ass fucked]
	say "     You step besides the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention.";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	say "     [line break]";
	say "     Quickly stripping off your clothes, you grab the bottle Mike gave you and apply a generous amount of lube to your hole, then get on the cot and assume a position on all fours in front of Xerxes. You wiggle your ass at him and reach back to spread your cheeks invitingly. Already hot and ready from your earlier stroking, your human dog doesn't hesitate a second before he mounts you from behind in typical doggie-style, hugging your chest has his hips grind against you. His hard shaft pokes your ass and rubs up and down your crack until he finally your hole and presses against you. As your pucker yields to Xerxes invading member, he plunges deep into your body, giving a lustful growl as he bottoms out in one thrust.";
	say "     Xerxes fucks you with a relentless wild energy, his hard thrusts rubbing very sensitive and pleasurable spots inside you. This soon drives your arousal to the max, giving you a mind-blowing orgasm[if cocks of player > 0] that makes you shoot long streams of cum all over the sheets below[otherwise if cunts of player > 0] that makes your pussy drip with femcum[end if]. Your anal muscles twitching around his cock obviously excites Xerxes, as his growls of lust increase and he speeds up before plunging in one last time and filling your asshole with his human seed.[mimpregchance]";
	say "     As his cock and balls keep twitching with blast after blast of cum into you, Xerxes just keeps holding on to you, panting with his head over your shoulder. Turning your head, you pull his lips to yours, kissing him and sticking your tongue in his mouth. Holding him against you with one arm, you move to lie on your sides with him behind you and rest for a while on the cot as you come down from your orgasms.";
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	if baby is 0 and gestation of child is not 0:
		now facename of child is "Human";
		now bodyname of child is "Human";
		now skinname of child is "Human";

to say XerxesSex5:												[Xerxes ass fucked]
	say "     You step besides the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, looking happy at getting his master's attention.";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his bubble butt and give it a squeeze, then push a finger against his tight pucker. Reaching over, you grab the bottle Mike gave you and squirt some lube on your hand, warming it up a bit before starting to push first one, then two lubed fingers up Xerxes ass. After a first little whine, Xerxes gets into this anal invasion, even giving you a lustful yip as you stroke his prostrate. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	say "     [line break]";	
	say "     Quickly stripping off your clothes, you put some more lube your shaft, then get on the cot and kneel behind your waiting human dog. Running your hands from his shoulders over his muscular back down to his hips, you pull him towards you a bit, then move forward until the tip of your cock touches his pucker.";
	say "     Stroking his skin and telling him in soft tones to relax, you push forward and slide into his body. Xerxes hole is incredibly warm and tight - no wonder, with only Mike and maybe one or two of the other human dogs having been in there before you. You take a moment to appreciate the tightly gripping feel of his ass as you bottom out, then start fucking him, with Xerxes panting and yipping in lust as you slide in and out. Sounds like he really enjoys getting ass-fucked, and reaching around him you find that his manhood his rock hard.";
	say "     Touching his cock seems to have been the last straw for his orgasm, and as you do another deep thrust into Xerxes ass he gives a deep grunt and shoots a huge load of cum all over the sheets below. With the flexing of his anal muscles around your shaft with each of his spurts, you're close behind him, moaning loudly as you cream his asshole with your sperm. With your cock twitching inside him with blast after blast of cum, you pull Xerxes upper body against your chest, and give him a deep kiss. Then, after your last shot, you pull him down to lie together with you on the cot and enjoy each other's warmth and closeness for a while as you come down from your respective orgasms.";

to say XerxesSex6:												[male player and felinoid + Xerxes]
	say "     Accompanied by your felinoid companion, you walk over to the cot you put up here in the library for Xerxes. The large cat sniffs the human-dog's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'You want another round with him? Sure.'";
	say "     With a quick whistle you summon Xerxes, the dog in the buck-naked body of a young man immediately rushing to you from where he was patrolling through the long rows of bookshelves in the library. He hesitates for a second as he sees the felinoid, then comes continues walking closer, looking happy at getting his master's attention. Soon he's standing on all fours next to you. 'Good dog' you say as you crouch down beside him, patting his head and stroking over his shoulders and muscular back. The felinoid immediately joins you on Xerxes other side, rubbing the side of furred body against your dog's naked skin. The effects of his touch and heady musk take effect almost immediately, with Xerxes breathing becoming quicker as he pants in lust and his cock filling out to dangle beneath his body.";
	say "     [line break]";
	say "     Circling around to his backside, the felinoid licks Xerxes asshole with his rough tongue a few times until it's nice and wet with his saliva. Then he moves further up, licking over the muscled back of your human dog and continuing to his neck. Standing over the smaller human, his belly-fur touching Xerxes back, the felinoid now is in the perfect position to fuck him. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crack until he soon finds Xerxes tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	say "     [line break]";
	say "     What would you like to do now? Do you let Xerxes blow you and feed him your load (Y), or fuck and fill the felinoid's ass (N)? ";
	if player consents:    	[sucked by Xerxes]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [cock of player] hardon and stroke it a few times before holding it out for Xerxes. Your obedient dog immediately goes for it, taking your hard length into his mouth and starts bobbing up and down on it. You give a deep moan as he keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Xerxes hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in his throat and shoot spurt after spurt of cum directly into his stomach.";
		say "     Breathing heavily, you stand still as Xerxes softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
		say "     [line break]";
		say "     Even though the felinoid and Xerxes are quite virile males, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor, his twitching anal muscles give the large cat fucking him the last nudge towards orgasm too. A deep rumble of satisfaction vibrates in the felinoid's throat as he pushes his member as deep as it will go and fills Xerxes asshole with his seed.";
		say "     Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Xerxes with him. Stretched out comfortably on the floor, the felinoid holds Xerxes against his warm belly fur with his front paws around him and and starts licking his sweaty back. Looks as if he's actively trying to infect him, or at least wants to spread his scent over all of your human pet's body.";
	otherwise:							[fucking the Felinoid]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [cock of player] hardon and grab the bottle of lube Mike gave you. After spreading some of the slick substance on your shaft, you step up behind the two rutting beasts. Running your hands up through the soft fur on his lower back, you grab the felinoid's hips tightly then slam forward, burying your cock to the hilt in his warm, tight cave. Roaring at the sudden anal intrusion, the felinoid stops thrusting into Xerxes for a moment, looking back over his shoulder with partly bared teeth. That doesn't last long, though - moving in and out of his hole, your shaft stimulates his sensitive prostrate, and soon your big cat is purring in satisfaction and fucking Xerxes again.";
		say "     [line break]";
		say "     Even though you'd wish your threesome could last forever, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor, he starts a chain reaction. The human dog's twitching asshole drives your felinoid companion over the edge, a deep rumble of satisfaction vibrating in his throat as he fills Xerxes up with his seed. The big cat's insides in turn grip your penis tightly with each shot of cum shooting through his shaft, making you follow them to an amazing orgasm. You gasp as you grind your hips against the felinoid's furry behind and blast after blast of your sperm shoot into his tight chute.";
		say "     After a moment of just holding on to the large feline and catching your breath, you pull out and watch the felinoid's pink pucker snap shut before any of your seed can leak out. Satisfied but exhausted after this session, you sink down on Xerxes cot. The big cat and human dog separate from each other too, then lie down next to the cot on the floor, with Xerxes cuddling up to the felinoid's soft and warm belly fur. Purring as loud as a idling motor, the big cat starts licking his sweaty human skin. Looks as if he's actively trying to infect him, or at least spread his scent over all of your human pet's body.";
	if Fang is in the Grey Abbey Library:			[rivalry messages]
		say "     [line break]";
		if hp of Fang is 1 or hp of Fang is 2:	[Beta Fang]
			if hp of Xerxes is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Looks like he's not happy that the big cat is getting ass he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if hp of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Xerxes closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		otherwise:															[Alpha Fang]
			if hp of Xerxes is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Looks like he's not happy that the big cat is getting ass he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Xerxes a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";


to say XerxesSex7:												[Male Player with Fang & Xerxes]
	if (hp of Fang is 1 or hp of Fang is 2):		[Beta Fang]
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Xerxes' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the cot you put up here in the library for your human dog.";
		say "     With a quick whistle you summon Xerxes, the dog in the buck-naked body of a young man immediately rushing to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Pulling out your [cock of player] manhood, you pump your hand up and down its length a few times, then say 'Here boy, I got something for you.' Xerxes eagerly dashes over, then licks your balls and cock a bit before taking it into his mouth. Quite good at blowing cock, this dog turned human teenager.";
		say "     [line break]";
		say "     As your human-dog pet blows you, Fang moves up behind him and sniffs Xerxes butt, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and as you slide your shaft once again into Xerxes throat you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Xerxes human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes ass. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting blown as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Xerxes head to stop from losing it right then and there. Cock resting for a moment in his throat, you take a deep breath, then slowly pull out and take a step back. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		say "     [line break]";
		say "     What do you want to do now? Get blown by Xerxes and feed him your load (Y), or fuck and come in Fang's ass (N)? ";		
		if player consents:    	[sucking]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Xerxes immediately goes for it, taking your hard length into his mouth and starts bobbing up and down on it. You give a deep moan as he keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Xerxes hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in his throat and shoot spurt after spurt of cum directly into his stomach.";
			say "     Breathing heavily, you stand still as Xerxes softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
			say "     [line break]";
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to down and allowing them to separate, you lay back on the cot and get comfortable.";
		otherwise:							[fucking Fang]
			say "     [line break]";
			say "     Your eyes searching out your goal - the tight hole under Fang's tail - you stroke your hard cock and step closer to Fang's rear end. Running your hands through the fur on his lower back, you grab hold of the wolf's hips and sink your [cock of player] shaft into him with one deep thrust. After giving a loud yelp at the sudden anal invasion, Fang stops for a second and looks back. Seeing it's you, he accepts being fucked as his due to the Alpha, even tightening his anal muscles around you as you move inside him. Then the hot threesome continues, now mirroring the hierarchy in your little pack.";
			say "     [line break]";
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
		say "     [line break]";
		say "     Seeing your Alpha penetrate Xerxes makes you quite hard as well and you quickly strip off your clothes. Pulling out your [cock of player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Xerxes eagerly licks your balls and cock a bit before taking it into his mouth. Ah, Mike trained this dog turned teenage human really well. He delivers an expert blowjob, even deep-throating all of your cock without any problems.";
		say "     Getting sucked as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Xerxes head to stop from losing it right then and there. Cock resting for a moment in his throat, you take a deep breath, then slowly pull out and take a step back. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		say "     [line break]";
		say "     What do you want to do now? Get blown by Xerxes and feed him your load (Y), or wait your turn at filling his ass (N)? ";		
		if player consents:    	[sucking]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Xerxes immediately goes for it, taking your hard length into his mouth and starts bobbing up and down on it. You give a deep moan as he keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Xerxes hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in his throat and shoot spurt after spurt of cum directly into his stomach.";
			say "     Breathing heavily, you stand still as Xerxes softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to his nearby cot and sit down to watch the rest of your Alpha's coupling with your pet.";
			say "     [line break]";
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     With the powerful wolf once again cementing his dominant position, this worked out well. He and Xerxes still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get comfortable.";
		otherwise:							[fucking Xerxes]
			say "     [line break]";
			say "     Deciding that you'll wait your turn, you move over to Xerxes nearby cot and sit down on its edge, watching your companions mate and jerk off a bit to it. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     You move over to crouch beside them, fondling and stroking both their bodies as you wait for Fang's knot to go down. Some time later, the wolf pulls out of Xerxes hole and sits down on the floor nearby, curling up to lick himself clean. With Xerxes hole still gaping a bit and leaking some of your Alpha's seed, you quickly get on top of him and ram your erection home. Even stretched by Fang's shaft, he's still nicely tight and feeling your strong wolf's cum filling his hole and squishing around your thrusting member is a definite plus. It doesn't take all that long until you feel a familiar tingling in your balls, and with one last thrust, you bottom out inside Xerxes and come, adding your seed to Fang's load.";
			say "     Phew. Satisfied and just a bit exhausted, you pull out of Xerxes and move over to his cot and lie down on it. The human dog follows you soon after, curling up at the foot of the bed.";
		if felinoid companion is tamed:		[rivalry messages - Alpha Fang vs Felinoid]
			say "     [line break]";
			if hp of Xerxes is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - taking Xerxes away from Fang and mounting him himself most likely. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - mounting Xerxes ass again to make him his alone possibly. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";

[ hp states of Helen															]
[   0: hasn't been brought to the bunker yet			]
[   1: no sex with either Fang or the Felinoid		]
[  10: got fucked only by Fang										]
[  11: got fucked only by the Felinoid						]
[  12: got fucked by both Fang and the Felinoid		]
[ thirst states of Helen													]
[   0: Starting State - not pregnant							]
[   1: invisibly pregnant by the player						]
[   2: visibly pregnant by the player							]
[	libido states of Helen													]
[   0: Starting State - not pregnant							]
[   1: pregnant by the player											]
[   2: pregnant by Fang														]
[   3: pregnant by the Felinoid										]
[ lust of Helen																		]
[   0: hasn't had sex with the player							]
[   1: had sex with the player										]
[ HelenPregnant - timer since impregnation				]

An everyturn rule:
	if Helen is in the Grey Abbey Library and thirst of Helen > 0:
		if HelenPregnant is 36:
			now thirst of Helen is 2;   [visible pregnancy]
		increase HelenPregnant by 1;

Helen is a woman. 
The description of Helen is "     Originally one of Mike's dogs, Helen now is a young human of about nineteen. She has long black hair and a slender physique, with some muscles on arms and legs. A pretty face completes the image of a beautiful woman - but no matter what she looks like - there's still only a dog's mind behind her eyes, so she walks on all fours and only uses barks and growls as communication. She watches you attentively, eager to follow the commands of her master. [if thirst of Helen is 2 and libido of Helen is 1]Her belly shows a slight bulge, the result of your previous coupling.[otherwise if thirst of Helen is 2 and libido of Helen is 2]Her belly shows a slight bulge, the result of her mating with Fang.[otherwise if thirst of Helen is 2 and libido of Helen is 3]Her belly shows a slight bulge, the result of her mating with your felinoid companion.[end if]";
The conversation of Helen is { "Woof." };
lastfuck of Helen is usually 555.
lasthelentalk is a number that varies.  lasthelentalk is usually 555.
hp of Helen is usually 0.
HelenPregnant is a number that varies. 
	
instead of going outside from Bunker while (Helen is in the Grey Abbey Library and lastfuck of Helen - turns > 5 and (hp of Helen is 1 or hp of Helen is 10) and felinoid companion is tamed ):
	move player to Grey Abbey Library;
	say "     As you emerge from the underground bunker and step back into the library, you hear some rather confused barks and yips from somewhere back between the rows of bookshelves. Sounds like Helen. Going to have a look, you find your dog turned teenage human standing on all fours in the midst of a loose reading group of chairs, her looks following the movements of your felinoid companion. The large feline weaves his way between the chairs with flowing movements, circling Helen and from time to time veering closer to rub the side of his head or furred body against her naked form.";
	say "     Still looking a bit confused, the human dog becomes more and more aroused with each touch of fur and sniff of the felinoid's enticing scent. Soon any doubts about getting this close to any cat are forgotten and Helen rubs up against the felinoid, licking its muzzle. Giving a satisfied rumbling purr, the large cat moves to sniff Helen's pussy, then licks over her female parts with its wide tongue. Several licks later, the felinoid moves further up, running its tongue over the human back of your dog and then her neck.";
	say "     [line break]";
	say "     Standing over the smaller human, his belly-fur touching Helen's back, the felinoid now is in the perfect position to fuck her. Lowering his hind legs a bit, the feline rubs his spined cock up and down the inside of the human-dog's legs until he soon finds Helen's tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library and you stay close to watch the show.";
	say "     After quite a while of hot and heavy fucking, Helen moans and noises rise up to a loud pleased yip, announcing her orgasm to anyone in hearing range. Visibly satisfied in making her come, the felinoid isn't far behind, burying his hard cock all the way in Helen's pussy and holding still, filling her up with his seed. When he finishes cumming, the big cat pulls out and throws himself on the floor in front of a bookshelf to lounge in satisfaction. Your human-dog pet licks the felinoid's cock clean, then joins him on the floor, snuggling up against his warm fur.";
	say "     [line break]";
	say "     You step back out from between the bookshelves and leave the two of them alone for a while. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
	if hp of Helen is 10:
		now hp of Helen is 12;
	otherwise:
		now hp of Helen is 11;
	now lastfuck of Helen is turns;
	if thirst of Helen is 0:							[not pregnant]
		now thirst of Helen is 1;						[pregnant]
		now libido of Helen is 3;						[...by the Felinoid]
		now HelenPregnant is 1;							[pregnancy timer]

instead of going outside from Bunker while (Helen is in the Grey Abbey Library and lastfuck of Helen - turns > 5 and (hp of Helen is 1 or hp of Helen is 11) and Fang is in the Grey Abbey Library and lastFangfucked - turns > 7 and ( hp of Fang is 1 or hp of Fang is 2 ) ):
	move player to Grey Abbey Library;
	if (hp of Fang is 1 or hp of Fang is 2):						[Beta Fang]
		say "     As you emerge from the underground bunker and step back into the library, you notice that Fang isn't at his spot next to the door. Wary of unannounced visitors, you look around for signs of a fight or any other indication what happened. Nothing out of the ordinary in sight. Then you hear something from further back in the rows of bookshelves - growling.";
		say "     Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Helen, who looks to the ground, then rolls over and bares her breasts and moist pussy. Your wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Helen to lick his muzzle. Looks like the question of hierarchy among your pets just got solved. With them establishing their status to each other right now peacefully, you decide not to interfere.";
		say "     [line break]";
		say "     With a commanding growl, Fang pokes Helen in the side with his muzzle, making her roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Helen's pussy in one deep thrust. Licking and lightly nipping Helen's neck, he pounds into her with an animal's ferocity. Your human-dog pet gives loud moans of lust as she is penetrated deeply again and again and you can see her rock backwards to get more of that wolf shaft inside her. Quite a hot little show you're getting here.";
		say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as she orgasms, giving lust-filled moans and whimpers. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
		say "     [line break]";
		say "     You step back out from between the bookshelves and leave the two of them to wait till Fang's knot goes down. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
	otherwise if (hp of Fang is 3 or hp of Fang is 4):	[Alpha Fang]
		say "     As you emerge from the underground bunker and step back into the library, you notice that Fang isn't in sight any at his usual spots. Wary of unannounced visitors, you look around for signs of a fight or any other indication what happened. Nothing out of the ordinary. Then you hear something from further back in the rows of bookshelves - growling.";
		say "     Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Helen, who looks to the ground, then rolls over and bares her breasts and moist pussy. Your strong Alpha wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Helen to lick his muzzle. Looks like he wants to dominate your pet too - as is his right. Helen seems to be readily accepting the submissive role, just like you did in the end. Arousal wells up inside you as you think back to your own first time under a dominating Fang and you can't wait to see your human dog have the same experience.";
		say "     [line break]";
		say "     With a commanding growl, Fang pokes Helen in the side with his muzzle, making her roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Helen's pussy in one deep thrust. Licking and lightly nipping Helen's neck, he pounds into her with an animal's ferocity. Your human-dog pet gives loud moans of lust as she is penetrated deeply again and again and you can see her rock backwards to get more of that wolf shaft inside her. What a hot show you're getting here - you just wish you were the one getting fucked by that powerful wolf's shaft.";
		say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as she orgasms, giving lust-filled moans and whimpers. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
		say "     [line break]";
		say "     You step back out from between the bookshelves and leave the two of them to wait till Fang's knot goes down. With this new development, new opportunities for fun with your canine master and human dog pet come to your mind as you walk away...";
	if hp of Helen is 11:
		now hp of Helen is 12;
	otherwise:
		now hp of Helen is 10;
	now lastfuck of Helen is turns;
	now lastfangfucked is turns;
	if thirst of Helen is 0:							[not pregnant]
		now thirst of Helen is 1;						[pregnant]
		now libido of Helen is 2;						[...by Fang]
		now HelenPregnant is 1;							[pregnancy timer]
	
instead of conversing Helen:
	say "     Calling Helen to you from wherever she was patrolling in the library, you sit down on the cot you put in here for her and talk with her. Or rather to her - as she still only has the mind of a dog and mostly replies with 'Woof?'', 'Woof.' and 'Woof!'";
	say "     Still, it's rather relaxing to talk a while about your problems and stroke your human dog's hair. It strengthens your sanity a bit and you feel more confident that you will get through this crazy situation.";
	if lasthelentalk - turns > 8:
		increase humanity of player by 5;
		now lasthelentalk is turns;

instead of sniffing Helen:
	say "     Helen has a nice smell, fresh and feminine. [if thirst of Helen > 0]There's a slight undertone to it, hinting at her being pregnant.[end if]";

Instead of fucking Helen:
	if(lastfuck of Helen - turns < 5):
		say "     Helen still seems a bit worn out from your last fun-time. Let her rest a bit more...";
	otherwise:
		if lust of Helen is 0:
			now lust of Helen is 1;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Lick Helen's pussy";
		now sortorder entry is 1;
		now description entry is "Give her a blow-job.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Have her suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Helen's pussy";
			now sortorder entry is 3;
			now description entry is "Fill the human dog's pussy with your cock.";
		sort the table of fucking options in sortorder order;
		if (cocks of player > 0 and Felinoid Companion is tamed and (hp of Helen is 11 or hp of Helen is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Helen & Felinoid";
			now sortorder entry is 4;
			now description entry is "Hot sex with the felinoid fucking Helen.";
		sort the table of fucking options in sortorder order;
		if (cocks of player > 0 and Fang is in the Grey Abbey Library and (hp of Helen is 10 or hp of Helen is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Helen & Fang";
			now sortorder entry is 5;
			now description entry is "Hot sex with Fang fucking Helen.";
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
					otherwise if (nam is "Take Helen's pussy"):
						say "[HelenSex3]";
					otherwise if (nam is "Male threesome with Helen & Felinoid"):
						say "[HelenSex4]";
					otherwise if (nam is "Male threesome with Helen & Fang"):
						say "[HelenSex5]";
		now lastfuck of Helen is turns;

to say HelenSex1:												[player licks her]
	say "     You step besides the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, looking happy at getting her master's attention.";
	say "     'Good dog' you say as you crouch down beside her, patting her head and stroking over her shoulders. Your hands stray deeper and under her body, cupping her shapely breasts and fondling them before moving on to her moist pussy. Helen gives you a pleased yip, dripping female juices over your fingers as you spread her lips. Patting the cot, you tell her 'Up here, girl' and reward her with some more stroking as she obeys.";
	say "     You push softly against her so she lies on her side, then back, legs spread to expose her ready pussy to you. Smiling, you go on to fondle her, then lean down to run your tongue over her nether lips. She gives you pleased moans and yips, getting louder and louder as you stick your tongue into her and do your best to orally please her. It's not too much longer before she orgasms, body shuddering as her pussy starts squirting femcum. You lick some of it up, rubbing the rest into her skin. Giving your dog a last quick belly-rub and fondle of her breasts, you stand back up and turn back to everyday survival.";

to say HelenSex2:												[she sucks the player]
	say "     You step besides the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, looking happy at getting her master's attention.";
	say "     'Good dog' you say as you crouch down beside her, patting her head and stroking over her shoulders. Your hands stray deeper and under her body, cupping her shapely breasts and fondling them. Standing back up, you quickly strip off your clothes and hold your erect manhood up for Helen, who gives you a happy yip, then starts licking.";
	say "     She runs her talented tongue along your shaft, then laps at your balls before returning to the tip of your cock and taking it in her mouth. As Helen starts giving you a pretty nice blow-job, you resolve to thank Mike the next time you see him for your expertly trained pet. Your human dog is very careful not to touch your best bit with her teeth and uses her tongue to caress your cock as she bobs up and down on it. With her eager sucking, it doesn't take much longer till the need to cum rises in your balls.";
	say "     Moaning, you grab Helen's head and do a few deep thrusts with your hips, your cock deep in her throat as it starts shooting a huge load. Pumping blast after blast directly into her stomach, you hold her head against your crotch, then pull back a moment later to let her get some air. She quickly goes back to work, catching the last spurts of cum with her mouth, then puts her lips around your cockhead, softly sucking as it goes down.";

to say HelenSex3:												[her pussy fucked]
	say "     You step besides the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, looking happy at getting her master's attention.";
	say "     'Good dog' you say as you crouch down beside her, patting her head and stroking over her shoulders. Your hands stray deeper and under her body, cupping her shapely breasts and fondling them before moving on to her moist pussy. Helen gives you a pleased yip, dripping female juices over your fingers as you spread her lips. Patting the cot, you tell her 'Up here, girl' and reward her with some more stroking as she obeys.";
	say "     [line break]";
	say "     Quickly stripping off your clothes, get on the cot and kneel behind your waiting human dog. Running your hands down her body, you take some time to fondle her breasts, then stroke the soft skin of her hips and ass. Rubbing her pussy with your fingers again, you feel how moist and ready she is, your cock aching in anticipation as you move its tip into position against her.";
	say "     Stroking Helen's soft skin and hearing her animal-like needful noises, you push forward and slide your manhood into her body. Her pussy is incredibly warm and tight - no wonder, with only Mike having been in there before you. You take a moment to appreciate the tightly gripping feel of her as you bottom out, then start fucking her, with Helen panting and yipping in lust as you slide in and out. She likes getting fucked a lot, with her body producing copious amounts of femcum to lube your coupling.";
	say "     Helen's moans build up into a crescendo, echoing loudly through the library as she orgasms. You yourself are not far behind and soon give a deep moan as your balls start twitching and send spurt after spurt of cum to fill Helen's womb. With your cock delivering your seed into her, you pull Helen's upper body against your chest, and give her a deep kiss. Then, after your last shot, you pull her down to lie together with you on the cot and enjoy each other's warmth and closeness for a while as you come down from your respective orgasms.";
	if thirst of Helen is 0:							[not pregnant]
		now thirst of Helen is 1;						[pregnant]
		now libido of Helen is 1;						[...by the player]
		now HelenPregnant is 1;							[pregnancy timer]
		
to say HelenSex4:												[Player fucks the felinoid as he shafts Helen]
	say "     Accompanied by your felinoid companion, you walk over to the cot you put up here in the library for Helen. The large cat sniffs the human-dog's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'You want another round with her? Sure.'";
	say "     With a quick whistle you summon Helen, the dog in the buck-naked body of a young woman immediately rushing to you from where she was patrolling through the long rows of bookshelves in the library. She hesitates for a second as she sees the felinoid, then comes continues walking closer, looking happy at getting her master's attention. Soon she's standing on all fours next to you. 'Good dog' you say as you crouch down beside her, patting her head and stroking over her smooth skin and pert breasts. The felinoid immediately joins you on Helen's other side, rubbing the side of furred body against your dog's naked form. The effects of his touch and heady musk take effect almost immediately, with Helen's breathing becoming quicker as she pants in lust and her pussy gets moist and ready for sex.";
	say "     [line break]";
	say "     Circling around to her backside, the felinoid licks Helen's crotch with his rough tongue a few times. Then he moves further up, licking over the arched back of your human dog and continuing to her neck. Standing over the smaller human, his belly-fur touching Helen's back, the felinoid now is in the perfect position to fuck her. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crotch until he soon finds Helen's swollen pussy lips and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	say "     [line break]";
	say "     What would you like to do now? Do you let Helen blow you and feed her your load (Y), or fuck and come in the felinoid's ass (N)? ";		
	if player consents:    	[sucked by Helen]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [cock of player] hardon and stroke it a few times before holding it out for Helen. Your obedient dog immediately goes for it, taking your hard length into her mouth and starts bobbing up and down on it. You give a deep moan as she keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Helen's hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum directly into her stomach.";
		say "     Breathing heavily, you stand still as Helen softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
		say "     [line break]";
		say "     Even though the felinoid is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her female juices literally dripping on the library floor and creating a small puddle, that gives large cat the last nudge towards too. A deep rumble of satisfaction vibrates in the felinoid's throat as he pushes his member as deep as it will go and fills Helen's womb with his seed.";
		say "     Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Helen with him. Stretched out comfortably on the floor, the felinoid holds Helen against his warm belly fur with his front paws around her and starts licking her sweaty back. Looks as if he's actively trying to infect her, or at least wants spread his scent over all of your human pet's body.";
	otherwise:							[fucking the Felinoid]
		say "     [line break]";
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [cock of player] hardon and grab the bottle of lube Mike gave you. After spreading some of the slick substance on your shaft, you step up behind the two rutting beasts. Running your hands up through the soft fur on his lower back, you grab the felinoid's hips tightly then slam forward, burying your cock to the hilt in his warm, tight cave. Roaring at the sudden anal intrusion, the felinoid stops thrusting into Helen for a moment, looking back over his shoulder with partly bared teeth. That doesn't last long, though - moving in and out of his hole, your shaft stimulates his sensitive prostrate, and soon your big cat is purring in satisfaction and fucking Helen again.";
		say "     [line break]";
		say "     Even though you'd wish your threesome could last forever, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her female juices literally dripping on the library floor and creating a small puddle, that gives large cat the last nudge towards too. The felinoid gives a deep rumble of satisfaction vibrating in his throat as he fills Helen up with his seed. The big cat's insides in turn grip your penis tightly with each shot of cum shooting through his shaft, making you follow them to an amazing orgasm. You gasp as you grind your hips against the felinoid's furry behind and blast after blast of your sperm shoot into his tight chute.";
		say "     After a moment of just holding on to the large feline and catching your breath, you pull out and watch the felinoid's pink pucker snap shut before any of your seed can leak out. Satisfied but exhausted after this session, you sink down on Helen's cot. The big cat and human dog separate from each other too, then lie down next to the cot on the floor, with Helen cuddling up to the felinoid's soft and warm belly fur. Purring as loud as a idling motor, the big cat starts licking her sweaty human skin. Looks as if he's actively trying to infect her, or at least wants to spread his scent over all of your human pet's body.";
	if Fang is in the Grey Abbey Library:
		say "     [line break]";
		if hp of Fang is 1 or hp of Fang is 2:	[Beta Fang]
			if hp of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Helen closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		otherwise:						[Alpha Fang]
			if hp of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving the felinoid and Helen a hostile stare. Seeing the other fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";

to say HelenSex5:												[Player fucks Fang as he shafts Helen]
	if (hp of Fang is 1 or hp of Fang is 2):		[Beta Fang]	
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Helen' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the cot you put up here in the library for your human dog.";
		say "     With a quick whistle you summon Helen, the dog in the buck-naked body of a young woman immediately rushing to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Pulling out your [cock of player] manhood, you pump your hand up and down its length a few times, then say 'Here girl, I got something for you.' Helen eagerly dashes over, then licks your balls and cock a bit before taking it into her mouth. Quite good at blowing cock, this dog turned human teenager.";
		say "     [line break]";
		say "     As your human-dog pet blows you, Fang moves up behind her and sniffs Helen's pussy, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and as you slide your shaft once again into Helen's throat you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Helen's human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's pussy. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting blown as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Helen's head to stop from losing it right then and there. Cock resting for a moment in his throat, you take a deep breath, then slowly pull out and take a step back. Now having his mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		say "     [line break]";
		say "     What do you want to do now? Get blown by Helen and feed her your load (Y), or fuck and come in Fang's ass (N)? ";		
		if player consents:    	[sucking]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Helen immediately goes for it, taking your hard length into her mouth and starts bobbing up and down on it. You give a deep moan as she keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Helen's hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum directly into her stomach.";
			say "     Breathing heavily, you stand still as Helen softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
			say "     [line break]";
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to down and allowing them to separate, you lay back on the cot and get comfortable.";
		otherwise:							[fucking Fang]
			say "     [line break]";
			say "     Your eyes searching out your goal - the tight hole under Fang's tail - you stroke your hard cock and step closer to Fang's rear end. Running your hands through the fur on his lower back, you grab hold of the wolf's hips and sink your [cock of player] shaft into him with one deep thrust. After giving a loud yelp at the sudden anal invasion, Fang stops for a second and looks back. Seeing it's you, he accepts being fucked as his due to the Alpha, even tightening his anal muscles around you as you move inside him. Then the hot threesome continues, now mirroring the hierarchy in your little pack.";
			say "     [line break]";
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and sealing the deal of dominance and submission. That only leaves you, with Fang's anal muscles twitching and gripping your manhood tightly as you thrust in one last time. Filling the wolf's back passage with a huge load of your seed, you once again prove your dominance as Alpha over him.";
			say "     Resting on Fang's furry back for a moment, you then pull your cock out of his cum-filled hole and stagger over to the nearby cot. Satisfied but exhausted after this session, you sink down on it and lie back to get some rest. Both your submissive pets still stand where they fucked, patiently waiting for Fang's knot to down and allowing them to separate.";
		if felinoid companion is tamed:			[rivalry message - Beta Fang vs Felinoid]
			say "     [line break]";
			if hp of Helen is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving the Fang and Helen a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must be your imagination you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving the Fang and Helen a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what the Felinoid has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must be your imagination you tell yourself as you doze off...";
	otherwise if (hp of Fang is 3 or hp of Fang is 4):		[Alpha Fang]	
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Alpha hot and ready to go, you give a quick whistle to summon Helen and the dog in the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of her, she then turns her backside to the wolf, taking a secure stance and spreads her legs a bit further.";
		say "     With a satisfied growl Fang moves up behind her and sniffs Helen crotch, then jumps up and mounts her human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's ready pussy. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     [line break]";
		say "     Seeing your Alpha penetrate Helen makes you quite hard as well and you quickly strip off your clothes. Pulling out your [cock of player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Helen eagerly licks your balls and cock a bit before taking it into her mouth. She delivers an expert blowjob, even deep-throating all of your cock without any problems.";
		say "     Getting sucked as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Helen's head to stop from losing it right then and there. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and take a step back. Now having her mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		say "     [line break]";
		say "     What do you want to do now? Get blown by Helen and feed her your cum (Y), or wait your turn at filling her pussy (N)? ";		
		if player consents:    	[sucking]
			say "     [line break]";
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Helen immediately goes for it, taking your hard length into her mouth and starts bobbing up and down on it. You give a deep moan as she keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Helen's hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum directly into her stomach.";
			say "     Breathing heavily, you stand still as Helen softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to her nearby cot and sit down to watch the rest of your Alpha's coupling with your pet.";
			say "     [line break]";
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and sealing the deal of dominance and submission.";
			say "     With the powerful wolf once again cementing his dominant position, this worked out well. He and Helen still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get comfortable.";
		otherwise:							[fucking Helen]
			say "     [line break]";
			say "     Deciding that you'll wait your turn, you move over to Helen's nearby cot and sit down on its edge, watching your companions mate and jerk off a bit to it. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and sealing the deal of dominance and submission.";
			say "     You move over to crouch beside them, fondling and stroking both their bodies as you wait for Fang's knot to go down. Some time later, the wolf pulls out of Helen's hole and sits down on the floor nearby, curling up to lick himself clean. With Helen's pussy still gaping a bit and dripping femcum and your Alpha's seed, you quickly get on top of her and ram your erection home. Even stretched by Fang's shaft, she's still nicely tight and feeling your strong wolf's cum filling her hole and squishing around your thrusting member is a definite plus. It doesn't take all that long until you feel a familiar tingling in your balls, and with one last thrust, you bottom out inside Helen and come, adding your seed to Fang's load.";
			say "     Phew. Satisfied and just a bit exhausted, you pull out of Helen and move over to her cot and lie down on it. The human dog follows you soon after, curling up at the foot of the bed.";
		if felinoid companion is tamed:			[rivalry message - Alpha Fang vs Felinoid]
			say "     [line break]";
			if hp of Helen is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving the Fang and Helen a calculating look. Seems almost like he's up to something - taking Helen away from Fang and mounting her himself most likely. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if hp of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register your felinoid companion standing some distance away among the bookshelves and giving the Fang and Helen a calculating look. Seems almost like he's up to something - filling Helen again to make her his alone possibly. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";

Section 4 - Endings

when play ends:
	if bodyname of player is "Stag":
		if humanity of player is less than 10:
			if hp of Mike > 0 and hp of Mike < 99:			[player met and talked with Mike]
				say "As you succumb to the infection, you drift aimlessly through the city for a while until you run into Mike by chance. A bit sad to see someone he knew reduced to such a state, he takes you along and cares for you, putting you in a spacious kennel with his human dogs.[if cocks of player > 0] Randy creature that you are, you impregnate several of the females, becoming the progenitor of a very successful breed of pet humans in the changed world.[end if][if cunts of player > 0]The male transformed dogs find you irresistible and are constantly eager to mount you, which results in more than one litter of human puppies...";
			otherwise:								[only had unfriendly contact with Mike]
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
	if Helen is in the Grey Abbey Library:
		say "[line break]";
		if humanity of player is less than 10:
			say "After succumbing to your infection, you forget all about Helen, who faithfully waits for you to come back until she's half-starved. As her hunger finally overwhelms her sense of duty, she moves out into the city and is caught by an alpha husky who incorporates her into his pack. With them, she's pretty well taken care of from then on, as she gets fed pretty well and is often mounted by the pack leader. Over time, she bears several human-shaped puppies for him.";
			if HelenPregnant > 0:
				if libido of Helen is 1:						[by the player]
					say "The first of her children - a boy - being yours from before you lost your humanity, quickly develops into a quite bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he soon tricks the Alpha into an unwinnable fight against a flock of gryphons. With his rival being carried away to the gryphon's flying city to serve as a submissive egg carrier, your son takes over the pack. As new Alpha, he goes on to fuck them all regularly, impregnating the female huskies as well as his human-shape half-sisters and mother while dominating the males by fucking their asses daily.";
				otherwise if libido of Helen is 2:	[by Fang]
					say "The first of her children - a boy - being the offspring of [if (hp of Fang is 1 or hp of Fang is 2)]your pet wolf[otherwise if (hp of Fang is 3 or hp of Fang is 4)]your dominant wolf[end if] Fang from before you lost your humanity, quickly develops into a relatively bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he soon shows the ferocious nature inherited from his father and challenges the pack's Alpha husky for dominance. It's a long fight with several quite close calls, but in the end the former packmaster can only limp away, beaten, as Fang's son takes over the pack. As new Alpha, he goes on to fuck them all regularly, impregnating the female huskies as well as his human-shape half-sisters and mother while dominating the males by fucking their asses daily.";
				otherwise if libido of Helen is 3:	[by the Felinoid]
					say "The first of her children - a boy - being the offspring of your felinoid companion from before you lost your humanity, quickly develops into a relatively bright teenager. As he matures, he develops the ability to create a seductive, pheromone-laden smell, almost as strong as his father's was. Growing up in a pack of horny dogs and having absorbed their morals, he makes relentless use of this ability, dominating the whole pack though sexual dependence. Even though the old Alpha is still around, protecting the pack, it's now the felinoid's son who has the power. He fuck them all regularly, males and females, impregnating the female huskies as well as his human-shape half-sisters and mother.";
		otherwise:
			say "Since the soldiers most likely wouldn't believe you if you told them that Helen is actually a dog - and your dog - you get a bit creative when they come for you. Soon they're convinced she's a regular survivor who had a mental break and whom you took care of. You whisper to her to stay calm and that you'll come get her before she gets carted away to a psych ward. When you're released yourself soon after, you stay close to the holding facility until you manage to acquire a key by getting one of the orderlies dead drunk one night. Sneaking into the facility under cover of darkness, you find and free Helen, then make your escape. From then on, your faithful dog never leaves your side for long, always ready to guard your home[if lust of Helen > 0] and share your bed[end if].";
			if HelenPregnant > 0:
				if libido of Helen is 1:						[by the player]
					say "Several months later, she gives birth to your child, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a quite bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and starts having sex with Alice, his first girlfriend, as well as her female golden retriever - thankfully using the condoms you buy him by the box, so neither of them end up pregnant. His growth spurts eventually slow to human levels and by the time he's a year old, your by then teenage looking son gets into college...";
				otherwise if libido of Helen is 2:	[by Fang]
					say "Several months later, she gives birth to the offspring of [if (hp of Fang is 1 or hp of Fang is 2)]your pet wolf[otherwise if (hp of Fang is 3 or hp of Fang is 4)]your dominant wolf[end if] Fang, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and starts getting into fights at school over girlfriends - as well as boyfriends, whoever strikes his fancy. Over time, he acquires a few scars that give him a dashing appearance, as well as a small gang of friends and lovers, and you have to buy condoms by the box for their wild parties on most weekends. His growth spurts eventually slow to human levels and by the time he's a year old, the by then teenage looking kid starts working as a car mechanic at a nearby garage...";
				otherwise if libido of Helen is 3:	[by the Felinoid]
					say "Several months later, she gives birth to the offspring of your felinoid companion, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and an inheritance of his father comes through - the ability to create a seductive pheromone-laden musk around himself. By the time you realize what's happening and have a stern talk with him about holding back a bit and using condoms, he managed to impregnate two teachers, five cheerleaders, one of your neighbours and her two German Shepherd bitches. Thankfully he went through half the football team too over the course of that weekend, otherwise there'd have been even more knocked up teenagers. His growth spurts eventually slow to human levels and by the time he's a year old, the by then teenage looking kid gets discovered as an actor, owing his good looks and 'charming' personality...";
	if hp of Mike is 100:
		say "[line break]";
		say "You don't see Mike or Lea ever again, as they were taken to the leopardmen's lair to serve as the feline's playtoys. With them face-fucking Mike all the time, forcing him to swallow their cum, it doesn't take very long till he becomes a leopardess in heat. Him and Lea are the center of many a gang-bang, during which Mike is knocked up several times with litters of leopard kits. After his and Lea's daughter is born and grows to sexual maturity, she joins the lineup of submissive breeding holes for the gang.";	
	otherwise if hp of Mike > 4 and hp of Mike < 98 and humanity of player > 10:
		say "[line break]";
		say "As the military moves into the city Mike tries to explain his special situation, but the soldiers just ignore him and try to 'free those poor people' - earning rewarding the men several painful bites from the dogs. That leads to all of Mike's party being locked up together in a warehouse-turned-holding-facility at the outskirts of the city. It takes almost three weeks before finally a doctor comes along to check them out. With him actually listening to what Mike says and having a look at the tattoos and identification chips the 'brainwashed humans' still have from their dog days, all of them are transferred to the regular medical facility. After Mike gets a shot to make him non-infectious, he's set free with all his dogs.";
		say "Months later his child with Lea is born, turning out to be a beautiful little girl who grows up to be a teenager within one year before her aging stabilizes to human levels. Having inherited her father's intelligence as well as the ability to understand and talk to dogs from Lea, she grows up with a unique perspective...";
		say "Mike goes on to running a lucrative business, breeding his human dogs with each other and training their human-dog offspring. With a pure-bred 'homo canis' going for about the price of a good racehorse, mostly to wealthier changed people, he buys a large ranch out in the countryside. You having a standing invitation from Mike to come over whenever you want, quite a few of your weekends are spent enjoying trips into the natural setting and... other entertainments.";		

Stag ends here.
