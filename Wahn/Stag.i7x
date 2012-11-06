Version 1 of Stag by Wahn begins here.
[Version 1 - Mike and Lea]

"Adds a Male Stag to Flexible Survivals Wandering Monsters table, With Impreg chance"


Section 1 - Dog-Walking Event

[First meeting, the player can then peacefully chat with the stag guy or try to 'free' his pet, leading to combat and further hostile meetings...]

Dog Walking is a situation. The level of Dog Walking is 7.
The sarea of Dog Walking is "Warehouse";

Instead of resolving a Dog Walking:
	if hp of Mike is 0:   						[first meeting]
		say "     Around a building corner in front of you comes a young naked human woman on all fours. As she trots a bit closer and barks at you, you see she's obviously pregnant and has a collar around her neck. Before you can decide if and what to do now, a bipedal stag walks after her around the corner. He's clothed in jeans and hiking boots, with his shirtless upper body showing he's in good shape. His skin is covered in short brown fur, getting lighter at the belly and showing a cream colored treasure trail starting at his navel leading down to his crotch. Atop his head is a large rack of antlers, proud and powerful.";
		say "     As the guy sees you, he turns to the woman and commands 'Heel, Lea' which she immediately obeys, trotting over to stand besides him on all fours.";
		say "     [line break]";
		say "     What do you do now? You could just walk up and try to talk to the stag and his 'pet' (Y). Or attack him, to free the poor woman from her master (N). ";
		if player consents: 						[talking]
			say "     The stag nods at you as you come closer, saying 'Hello there, I'm Mike. I've seen you look at Lea, so I'll say this right now - no, she isn't a woman I've brainwashed into acting like an animal. I'm a professional animal trainer - or I was, before this madness started - and do breed dogs... and she really is one. But then one morning I started sprouting fur. And when I checked on my dogs, they were becoming human. Soon I had a kennel full of humans with the minds of my dogs in them.' He kneels next to her, stroking her head and pert breasts and she gives a content whine. 'Imagine my surprise at being the owner of dozens of obedient, trained dogs with shapes like this...'";
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
			move Mike to Mike's Office;
			move Lea to Mike's Office;
			move player to Mike's Office;
			now Mike's Home is known;
		otherwise:	
			say "     You quickly turn around and flee before you get drawn into the fight too and don't stop running until you're well away. With odds of five against two, you don't think you'll see either Mike or Lea again. Who knows what the leopardmen will do with them...";
			now hp of Mike is 100;			
			remove Mike from play;
			remove Lea from play;
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
					say "     The stag's eyes get big and he replies 'What the fuck? You think I'm one of those creeps that makes people forget their humanity? Hell no - Lea and the others are actual dogs, man. I'm a professional animal trainer - or was, before this chaos. But then one morning I started sprouting fur. And when I checked on my dogs, they were becoming human. Soon I had a kennel full of humans with the minds of my dogs in them. They may look different, but still are animals inside and need a master to care for them.'";
					say "     'So you thought I had enslaved Lea, and I thought you were just a feral looking for something to fuck. Two of the few sane people in the town beating each other up - Hah. How about we forget this silly fighting ever happened?' He offers you his hand and you accept and shake it. Saying 'I'm Mike, by the way. See you later, under friendlier circumstances I hope.' he walks away.";
					now hp of Mike is 1;
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
				if hp of Mike is 0:				[if the player hasn't selected talking above and set the hp to 1 by now, Mike will be permanently hostile (99)]
					now hp of mike is 99;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Stag":
							now monster is y;
							break;
					now area entry is "Warehouse";
					now non-infectious entry is false;

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

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Stag"; [Name of your new Monster]
	now attack entry is "[one of]He pushes you down against the ground with strong arms and gives you a blow in the ribs.[or]You almost stumble and fall down as he gives you a rough shove.[or]His horns prove to be quite sharp as they poke you.[or]A sudden kick lands in your midsection and drives the air from your lungs.[at random]";
	now defeated entry is "[Stag loses]";      [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Stag wins]";       [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[StagDesc]";              [ Description of the creature when you encounter it.]
	now face entry is "furry, with the striking angular features of a proud stag. Your head is crowned by two multiple-pointed antlers";
	now body entry is "male and fit. You have strong arms and hands, capped with blackened fingertips, like hooves that don't compromise dexterity";
	now skin entry is "brown furred";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "Your butt has a deer's tail over it, [skin of player] on the top, soft cream along the underside. The rest of your ass is quite curvy and [skin of player], hiding nothing. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "pitch black human";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face draws out into a snout, slender with a wide nose, new scents teasing your addled senses as your ears grow long and narrow, twitching towards sounds. Short fur swells ticklishly over your new contours as growths sprout from the top of your head, growing quickly into ornate multi-pointed antlers."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your limbs grow long and strong, masculine. Your nails at hands and feet retorm to cover your finger- and toetips in a protective hoof each."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft tingles spread in waves as fur sprouts in odd patterns across you, slowly settling into brown fur over most of your body, with lighter cream coloring starting at your navel and running down to your groin and the insides of your legs"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a short, upturned, and furry tail sprouts into being over your deliciously round [skin of player] ass"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your cock darkens until it is entirely black, but human shaped"; [ cock change text. format as "Your cock feels funny as (your text)" ]
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
	now area entry is "Nowhere";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 11;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 70;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "fit";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "cervine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Npc

[ hp states of Mike   	                              	]
[   0: before the first meeting													]
[   1: met once (peacefully, or talked after fight)			]
[   2: met twice																				]
[   3: helped in the fight against the leopardmen				]
[   4: player got the quest to get a medkit							]
[   5: Lea got patched up																]
[   6: player got their own human doggie as reward			]
[  98: first friendly meeting after after player attack ]
[  99: hostile after player attack 											]
[ 100: lost to the leopardman gang 											]

Mike is a man. 
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
		say "     Holding your arms tight around his chest until your last spurt of semen is deposited, you then pull out in one quick go from his cum-filled asshole, accompanied by a slurping noise. His hole gapes open for a second with cum running out of it, then quickly closes, trapping the rest of your seed inside. You have a last look at the cream-colored for of his crack, wet with your cum, then give the stag a slap on the butt and leave him there like that.";
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
		say "     Mike says 'I don't have anything I could give you as thanks, except... would you maybe want one of my human dogs for your own? I'm still not quite done teaching them all the new tricks they can do with their new bodies, but if you give me some more time, you could take one of them home with you. (human-shape dog pets will be added in another update - choice between a male and female planned)";
		[ Commented out for the moment:
		say "     Mike says 'I don't have anything I could give you as thanks, except... would you maybe want one of my human dogs for your own? They got well trained as dogs and are very obedient - and since they changed, I taught them a few extra tricks too...' he winks and gives a small nod to Lea and her pregnant belly.";
		say "     Do you accept one of the human form dogs from Mike as a reward? ";
		if player consents:
			say "     What gender do you want your new 'dog' to be? (Y = male, N = female) ";
			if player consents:
				say "     Mike takes you to the kennel, where you have a look at his 'dogs'. In the end, you choose Xerxes, a black-haired male looking about nineteen years old, with muscled runner's legs and strong arms. He attentively looks to Mike as he explains that you're his new master, then comes over to you to sniff you and lick your hand.";
				say "     You bring your new pet to the library. Hopefully he'll make a good guard-dog...";
				move Xerxes to library;
			otherwise:
				say "     Mike takes you to the kennel, where you have a look at his 'dogs'. In the end, you choose Helen, a blond female looking about nineteen years old, with a shapely body and nice perky breasts. She attentively looks to Mike as he explains that you're her new master, then comes over to you to sniff you and lick your hand.";
				say "     You bring your new pet to the library. Hopefully she'll make a good guard-dog...";
				move Helen to library;
			now hp of Mike is 6;
		otherwise:
			say "     Mike shrugs as you decline, says 'As you wish. But the offer stands, so just say so if you change your mind.'"; } ]
	otherwise if hp of Mike is 6:		
		say "     Mike gives you a friendly nod, then says 'Hello again. How's it going with your new pet? No problems, I hope?' You chat a bit about caring for your human shape dog and survival in the city in general.";
	otherwise:
		say "     Mike is not in a state when he should be able to talk - please report how you got this.";
		
Lea is a woman. 
The description of Lea is "     Originally one of Mike's dogs, Lea now is a young human woman of about nineteen. She has shoulder-length blond hair and a slender physique, although her breasts have obviously filled out quite a bit to go with the pregnant belly. But no matter what she looks like - there's still only a dog's mind behind her eyes, so she walks on all fours and only uses barks and growls as communication. [if hp of Mike < 5]A deep gash from a leopardman's claw mark her side. It doesn't look good - she needs some bandages and most likely antibiotics too. And soon.[otherwise if hp of Mike > 4]A clean white bandage covers most of her upper torso, protecting her healing wound from getting dirty again.[end if]";
The conversation of Lea is { "Woof." };
lastfuck of Lea is usually 555.				

instead of fucking Lea:
	if hp of Mike < 5:
		say "     Mike roughly shoves you aside as you try to fondle Lea. 'Get a hold of yourself - can't you see she's hurt?'";
	otherwise if hp of Mike > 4:	
		say "     Mike puts a hand on your shoulder and pulls you aside. 'Lea is still recovering. She needs some rest, ok? Besides... she's my favorite dog - who did you think put those puppies in her belly?'";

instead of conversing Lea:
	if hp of Mike < 5:
		say "     Lea gives you a pitiful whine as you try talking to her.";
	otherwise if hp of Mike > 4:	
		say "     Lea gives a welcoming yip as you approach, then comes closer and licks your hand. She's not really a candidate for meaningful conversation, but watching her pounce after a tennis ball and fetch it for you has a relaxing influence on you.";

		
Xerxes is a man. 
The description of Xerxes is "     A paper cut-out of a naked male human, this is only a stand-in for Xerxes at the moment. Once he's finished, this will be replaced by an npc...";
The conversation of Xerxes is { "Woof." };
lastfuck of Xerxes is usually 555.		
		
Helen is a woman. 
The description of Helen is "     A paper cut-out of a naked female human, this is only a stand-in for Helen at the moment. Once she's finished, this will be replaced by an npc...";
The conversation of Helen is { "Woof." };
lastfuck of Helen is usually 555.		
		
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
	
Stag ends here.