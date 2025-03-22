Version 6 of Stag by Wahn begins here.
[Version 6.1 - Ares moved to his own file]
[Version 6.2 - Added support for Joanna's questline with Xerxes or Helen - Gherod]
[Version 6.3 - Beta Fang Content added by Prometheus]

"Adds a Male Stag to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Dog-Walking Event

[First meeting, the player can then peacefully chat with the stag guy or try to 'free' his pet, leading to combat and further hostile meetings...]

Table of GameEventIDs (continued)
Object	Name
Dog Walking	"Dog Walking"

Dog Walking is a situation.
ResolveFunction of Dog Walking is "[ResolveEvent Dog Walking]". The level of Dog Walking is 7.
Sarea of Dog Walking is "Warehouse".
when play begins:
	add Dog Walking to BadSpots of MaleList;
	add Dog Walking to BadSpots of FurryList;

to say ResolveEvent Dog Walking:
	project the Figure of Mike_face_icon;
	if HP of Mike is 0: [first meeting]
		say "     Around a building corner in front of you comes a young naked human woman on all fours. As she trots a bit closer and barks at you, you see she's obviously pregnant and has a collar around her neck. Before you can decide if and what to do now, a bipedal stag walks after her around the corner. He's clothed in jeans and hiking boots, with his shirtless upper body revealing he's in good shape. His skin is covered in short brown fur, getting lighter at the belly and sporting a cream-colored treasure trail that starts at his navel and leads down to his crotch. Atop his head is a large rack of antlers, proud and powerful.";
		say "     As the guy sees you, he turns to the woman and commands 'Heel, Lea' which she immediately obeys, trotting over to stand beside him on all fours.";
		LineBreak;
		say "     [bold type]What do you do now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Walk up and try to talk to the stag and his 'pet'.";
		say "     ([link]N[as]n[end link]) - Attack him, to free the poor woman from her master.";
		if Player consents: [talking]
			LineBreak;
			say "     The stag nods at you as you come closer, saying 'Hello there, I'm Mike. I've seen you look at Lea, so I'll say this right now - no, she isn't a woman I've brainwashed into acting like an animal. I'm a professional animal trainer - or I was, before this madness started - and I breed dogs... and she really is one. But then one morning I started sprouting fur. And when I checked on my dogs, they were becoming human. Soon I had a kennel full of humans with the minds of my dogs in them.' He kneels next to her, stroking her head and pert breasts and she gives a content whine. 'Imagine my surprise at being the owner of dozens of obedient, trained dogs with shapes like this... and as I later learned, their new form is permanent and can't be changed again.'";
			say "     He goes on to show you the identification number tattoo on the inside of Lea's right ear from when she was a dog and has you feel her neck where there's a small identification chip under the skin too. Seems like he's telling the truth - crazy story, but what isn't these days in this city...";
			LineBreak;
			say "     You chat a bit more before Mike excuses himself, saying that Lea needs to get her exercise and that he should go on walking.";
			now HP of Mike is 1;
			now Resolution of Dog Walking is 1; [talked to Mike]
		else: [fighting]
			LineBreak;
			challenge "Blacktail Stag";
			if fightoutcome < 20: [player won]
				say "[Stag loses]";
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "[Stag wins]";
			else if fightoutcome is 30: [fled]
				say "     You run as fast as you can and make a clean getaway.";
			now Resolution of Dog Walking is 2; [fought Mike]
			now Dog Walking is resolved;
		increase score by 5;
	else if HP of Mike is 1: [second meeting]
		say "     You run into Mike and his 'dog' Lea, out on the street for a walk. The young woman scampers to you quickly and joyfully licks your hands at seeing you again. Mike smiles at her playful behavior as he walks after her over to you.";
		say "     'Hello again. I'm making sure Lea gets her regular amount of exercise these days - good for the puppies and herself...' You chat a bit with Mike about dogs and inner city survival before he moves on.";
		SanBoost 5;
		now HP of Mike is 2;
		now Resolution of Dog Walking is 3; [met Mike again]
	else if HP of Mike is 98: [first friendly meeting after player attack]
		say "     You run into Mike and his 'dog' Lea, out on the street for a walk. The young woman looks at you suspiciously and growls silently until Mike steps up and strokes her head. 'It's okay Lea, we just had a misunderstanding last time.' Hearing soothing words from her master, she trots over to you and sniffs at you before licking your hands.";
		say "     'Hello again. I'm making sure Lea gets her regular amount of exercise these days - good for the puppies and herself...' You chat a bit with Mike about dogs and inner city survival before he moves on.";
		SanBoost 5;
		now HP of Mike is 2;
		now Resolution of Dog Walking is 3; [met Mike again]
	else if HP of Mike is 2: [third meeting - they're under attack by a gang]
		say "     Moving through the streets, you hear shouting and barking from somewhere ahead. Recognizing the voices of Mike and his 'dog' Lea, you rush forward to find out what's going on.";
		say "     You find the stag and his female companion being attacked by a gang of several leopardmen. The felines have already split them apart from each other, with three circling Mike and another two having cornered Lea against a closed loading dock.";
		say "     [bold type]What now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Jump in to help fight the leopardmen off.";
		say "     ([link]N[as]n[end link]) - Flee before they notice you.";
		if Player consents:
			LineBreak;
			challenge "Leopardman";
			if fightoutcome >= 20 and fightoutcome <= 29: [lost]
				say "     After one last slash with the leopardman's claws, you collapse on the ground, bleeding. Luckily though, your intervention distracted them enough that Mike and Lea fought off three of the attackers in the meantime. Now faced with new odds, the leopardman standing over you abandons the fight, dashing away before the stag and his 'dog' can get to him...";
				now Resolution of Dog Walking is 5; [lost, but distracted the gang enough]
			else if fightoutcome >= 30: [fled]
				say "     You running off led to two of the leopardmen giving chase, tailing you for some time until you manage to lose them. As you make your way back to where you last saw Mike and Lea, you see that they fought off the remaining gang members in the meantime.";
				now Resolution of Dog Walking is 6; [fled, but distracted the gang enough]
			else if fightoutcome >= 10 and fightoutcome <= 19: [won]
				say "     Having given the leopardman quite a beating, you grin at the fearful look on his face as he flees, running away as fast as he can. Your intervention distracted the other members of the small gang too, which allowed Mike and Lea to fight off three of their attackers in the meantime. The remaining unhurt one throws the fight as he sees himself confronted with the three of you and flees...";
				now Resolution of Dog Walking is 4; [helped Mike fight off the gang]
				increase score by 5;
			now HP of Mike is 3;
			say "     Nodding over at you, Mike says 'Thanks a lot for the help' as he kneels next to Lea to check on her. The transformed dog has a long claw-slash on her side and starts to whimper loudly now that the adrenaline of the fight wears off. 'This doesn't look good - might get infected too. I have to get her home.' He picks Lea up in his arms, and you walk down the street together, with you acting as a lookout for more trouble. Soon you arrive at Mike's house, where he leads you to the large dog kennel in the back and sets Lea down on a bed.";
			move player to Mike's Office;
			AddNavPoint Mike's Home;
		else:
			LineBreak;
			say "     You quickly turn around and flee before you get drawn into the fight too and don't stop running until you're well away. With odds of five against two, you don't think you'll see either Mike or Lea again. Who knows what the leopardmen will do with them...";
			now HP of Mike is 100;
			now Resolution of Dog Walking is 7; [left Mike to the gang]
			now Dog Walking is resolved;
	else if HP of Mike > 2 and HP of Mike < 98: [further repeat meetings]
		say "     You run into Mike and his 'dog' Lea again, out on the street for a walk. The young woman scampers to you quickly and joyfully licks your hands at seeing you again. Mike smiles at her playful behavior as he walks after her over to you.";
		say "     'Hello again. I'm making sure Lea gets her regular amount of exercise these days - good for the puppies and herself...' You chat a bit with Mike about dogs and inner city survival before he moves on.";
		SanBoost 5;

Section 2 - Creature Responses

to say Stag wins:
	say "     Looking down at you, the stag says 'I don't want to see you here again, asshole. Fuck off.' After giving you a last hostile stare, he walks off and leaves you lying in the dust.";

to say Stag loses:
	say "     Wiping a trickle of blood from his split lip, the stag takes a step back and says 'OK, OK - you win. Do with me what you want, but I'll never show you where Lea and the others are.'";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if HP of Mike is 0: [last chance to switch to friendly mode]
		choose a blank row in table of fucking options;
		now title entry is "Free Lea";
		now sortorder entry is 1;
		now description entry is "Demand that he sets free the woman he's brainwashed to act as a dog";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck him off";
	now sortorder entry is 2;
	now description entry is "Blow him";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have him suck you off";
		now sortorder entry is 3;
		now description entry is "Get a blowjob";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride his cock with your pussy";
		now sortorder entry is 4;
		now description entry is "Let the stag breed you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get his cock in your ass";
	now sortorder entry is 5;
	now description entry is "Let the stag fill your ass with his seed";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take the stag's ass";
		now sortorder entry is 6;
		now description entry is "Fill him with your cock";
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
				if nam is "Free Lea":
					say "     The stag's eyes get big and he replies 'What the fuck? You think I'm one of those creeps that makes people forget their humanity? Hell no - Lea and the others are actual dogs, man. I'm a professional animal trainer - or was, before this chaos. But then one morning I started sprouting fur. And when I checked on my dogs, they were becoming human. Soon I had a kennel full of humans with the minds of my dogs in them. They may look different, but they're still animals inside and need a master to care for them - and their new form is permanent as it turns out. They won't change again...'";
					say "     'So you thought I had enslaved Lea, and I thought you were just a feral looking for something to fuck. Two of the few sane people in the town beating each other up - Hah. How about we forget this silly fighting ever happened?' He offers you his hand and you accept and shake it. Saying 'I'm Mike, by the way. See you later, under friendlier circumstances I hope.' he walks away.";
					now HP of Mike is 98;
					now Dog Walking is unresolved;
				else if (nam is "Suck him off"):
					say "[MikeSex1]";
				else if (nam is "Have him suck you off"):
					say "[MikeSex2]";
				else if (nam is "Ride his cock with your pussy"):
					say "[MikeSex3]";
				else if (nam is "Get his cock in your ass"):
					say "[MikeSex4]";
				else if (nam is "Take the stag's ass"):
					say "[MikeSex5]";
				if HP of Mike is 0: [if the player hasn't selected talking above and set the HP to 98 by now, Mike will be permanently hostile (99)]
					now HP of mike is 99;
					repeat with y running from 1 to number of filled rows in Table of Random Critters:
						choose row y in Table of Random Critters;
						if Name entry is "Blacktail Stag":
							now MonsterID is y;
							now area entry is "Warehouse";
							now non-infectious entry is false;
							break;
					stop the action;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the stag, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say StagDesc:
	if HP of Mike is 0: [first encounter]
		say "     Seeing your aggressive stance as you come closer, the stag sighs 'Another one of these savages.' Turning to the human at his side he says 'I want you to run home, Lea, you understand? Home. You can't help me in the fight right now and have to think of your puppies...'";
		say "     After a short hesitation and giving a pleading whine, the woman dashes off, with the stag stepping in the way to block any attempt at following her. 'Now let's deal with you,' he says and comes at you with balled fists.";
	else: [repeat fighting]
		say "     A bipedal stag accompanied by a naked, collared and pregnant human woman on all fours crosses your path. He's clothed in jeans and hiking boots, with his shirtless upper body showing he's in good shape. His skin is covered in short brown fur, getting lighter at the belly and showing a cream colored treasure trail leading down to his crotch. Atop his head is a large rack of antlers, proud and powerful.";
		say "     As the guy sees you, he sighs 'That asshole again.' Turning to the human at his side he says 'I want you to run home, Lea, you understand? Home. You can't help me in the fight right now and have to think of your puppies...'";
		say "     After a short hesitation and giving a pleading whine, the woman dashes off, with the stag stepping in the way to block any attempt at following her. 'Now let's deal with you,' he says and comes at you with balled fists.";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Blacktail Stag"	"[PrepCombat_Blacktail Stag]"

to say PrepCombat_Blacktail Stag:
	setmongender 3;

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Blacktail Deer";
	add "Blacktail Stag" to infections of CervineList;
	add "Blacktail Stag" to infections of FurryList;
	add "Blacktail Stag" to infections of NatureList;
	add "Blacktail Stag" to infections of MaleList;
	add "Blacktail Stag" to infections of BipedalList;
	add "Blacktail Stag" to infections of TailList;
	now Name entry is "Blacktail Stag";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Mike";
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]He pushes you down against the ground with strong arms and gives you a blow in the ribs.[or]You stumble and nearly fall down as he gives you a rough shove.[or]His horns prove to be quite sharp as they poke you.[or]A sudden kick lands in your midsection and drives the air from your lungs.[at random]";
	now defeated entry is "[Stag loses]";
	now victory entry is "[Stag wins]";
	now desc entry is "[StagDesc]";
	now face entry is "covered in short brown fur and has the striking angular features of a proud stag. Crowning your head are two impressive multiple-pointed antlers";
	now body entry is "that of a humanoid male, trim and fit. You have strong arms and hands, capped with blackened fingertips, like hooves that don't compromise dexterity";
	now skin entry is "brown furred"; [ format as "Your body is covered in (your text) skin"]
	now tail entry is "Your butt has a deer's tail over it, [Skin of Player] on the top, soft cream along the underside. The rest of your ass is quite curvy and [Skin of Player], hiding nothing."; [ write a whole Sentence or leave blank. ]
	now cock entry is "pitch black human"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it draws out into a snout, slender with a wide nose, new scents teasing your addled senses as your ears grow long and narrow, twitching towards sounds. A tickling sensation accompanies sprouting short fur over your new contours as growths sprout from the top of your head, growing quickly into ornate multi-pointed antlers"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "your limbs become very masculine, long and strong. Your nails reform to cover your finger- and toe-tips in protective hooves"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft tingles spread in waves over it and fur sprouts in odd patterns across you, slowly settling into brown fur over most of your body, with lighter cream coloring starting at your navel and running down to your groin and the insides of your legs"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a short, upturned, and furry tail sprouts into being over its now deliciously round [Skin of Player] shape"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock darkens until it is entirely black, but human shaped in form"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 22;
	now sta entry is 13;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male";
	now HP entry is 55;
	now lev entry is 9;
	now wdam entry is 9;
	now area entry is "Nowhere"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 11;
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples. ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 30; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "blacktail stag milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "fit"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "cervine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
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
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 4 - Mike and Lea

[ HP states of Mike                                       ]
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

Table of GameCharacterIDs (continued)
object	name
Mike	"Mike"

Mike is a man.
Mike is in Mike's Office.
ScaleValue of Mike is 3. [human sized]
Body Weight of Mike is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Mike is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Mike is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Mike is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Mike is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Mike is 5. [length in inches]
Breast Size of Mike is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Mike is 2. [count of nipples]
Asshole Depth of Mike is 8. [inches deep for anal fucking]
Asshole Tightness of Mike is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Mike is 1. [number of cocks]
Cock Girth of Mike is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Mike is 10. [length in inches]
Ball Count of Mike is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Mike is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Mike is 0. [number of cunts]
Cunt Depth of Mike is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Mike is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Mike is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Mike is false.
PlayerRomanced of Mike is false.
PlayerFriended of Mike is false.
PlayerControlled of Mike is false.
PlayerFucked of Mike is false.
OralVirgin of Mike is false.
Virgin of Mike is true.
AnalVirgin of Mike is true.
PenileVirgin of Mike is false.
SexuallyExperienced of Mike is true.
TwistedCapacity of Mike is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Mike is false. [steriles can't knock people up]
MainInfection of Mike is "Blacktail Stag".
Description of Mike is "[MikeDesc]".
Conversation of Mike is { "Oh, hello." }.

to say MikeDesc:
	project the Figure of Mike_face_icon;
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Mike] <- DEBUG[line break]";
	say "     Mike is a bipedal stag, clothed in jeans and hiking boots, with his shirtless upper body showing he's in good shape. His skin is covered in short brown fur, getting lighter at the belly and showing a cream colored treasure trail leading down to his crotch. Atop his head is a large rack of antlers, proud and powerful.";

Table of GameRoomIDs (continued)
Object	Name
Mike's Home	"Mike's Home"

Mike's Home is a room. It is a fasttravel. It is private.
Description of Mike's Home is "     You're at a house with a very large fenced backyard at the edge of the warehouse district. A good location for a dog breeder, as the neighbors didn't complain about noise. At the side of the house (north from you) is the back entrance. Mike has given you the hidden location of the back door's key.".

Table of GameRoomIDs (continued)
Object	Name
Mike's Office	"Mike's Office"

Mike's Office is a room.
Mike's Office is north of Mike's Home.
Mike's Office is sleepsafe.
Description of Mike's Office is "     You're in Mike's office, a relatively large room. A desk with a computer stands in the back, next to a filing cabinet. Lots of boxes of equipment and sacks of dog food line the walls. Seemingly a new addition to the room is a single bed in the center, its white sheets showing a few stains that are most likely dried cum[if HP of Mike < 5]. Lea, Mike's transformed dog, lies on it, whining pitifully[end if].".

Table of GameRoomIDs (continued)
Object	Name
Dog Kennels	"Dog Kennels"

Dog Kennels	is a room.
Dog Kennels is east of Mike's Office.
Dog Kennels is sleepsafe.
Description of Dog Kennels is "     This part of the building consists of a long hallway lined with quite a few large dog kennels on each side. In them are Mike's transformed dogs, many of which rest on air mattresses he added when they became human. The rest sit in front of their wire mesh kennel doors, giving you dog-eyed looks in hope of a walk or some play-time.".

instead of sniffing Mike:
	say "     Mike has a nice smell, strong and masculine.";

Instead of fucking Mike:
	project the Figure of Mike_face_icon;
	[puts Stag as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Blacktail Stag":
			now MonsterID is y;
			break;
	if HP of Mike < 5:
		say "     Mike shakes his head and says 'Not now. I've got other things to worry about.' He turns back to Lea on the bed, stroking her hair and holding her to keep her calm.";
	else if (lastfuck of Mike - turns < 5):
		say "     Mike says 'I'm still worn out from last time. Give me a moment to catch my breath...'";
	else:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck Mike's cock";
		now sortorder entry is 1;
		now description entry is "Give him a blowjob.";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blowjob.";
		[]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Let Mike fuck your pussy";
			now sortorder entry is 3;
			now description entry is "Let the stag breed you.";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Mike fuck your ass";
		now sortorder entry is 4;
		now description entry is "Let the stag fill your ass with his seed.";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take Mike's ass";
			now sortorder entry is 5;
			now description entry is "Fill the stag's ass with your cock.";
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
					if nam is "Suck Mike's cock":
						say "[MikeSex1]";
					else if (nam is "Have him suck your cock"):
						say "[MikeSex2]";
					else if (nam is "Let Mike fuck your pussy"):
						say "[MikeSex3]";
					else if (nam is "Let Mike fuck your ass"):
						say "[MikeSex4]";
					else if (nam is "Take Mike's ass"):
						say "[MikeSex5]";
					infect "Blacktail Stag";
					infect "Blacktail Stag"; [since it's the only source for the infection and you got to wait between scenes, let's make him double infective]
					now lastfuck of Mike is turns;
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the anthro stag, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say MikeSex1: [player sucks him]
	if HP of Mike is 0 or HP of Mike is 99: [post-combat, dominating]
		say "     You step closer to the stag, a bit wary at first, and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his sides. Looks like he's resigned himself to obeying you - for now. Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them before you open up his zipper and pull down his pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You kneel down in front of him and stroke his shaft some more until he's fully hard.";
		say "     Running your tongue over his cock-head and shaft slowly between pumping your hand up and down its length, you tease the stag until he's breathing hard and looks pleadingly down at you. You smile, then take his manhood into your mouth and start giving him an amazing blowjob, going down all the way on his cock and massaging his balls. With how you worked him up beforehand, it's not too long before he suddenly shouts 'I'm coming!' and starts to shoot strings of cum into your mouth. You wait until he stops twitching and the last spurt of semen leaves his cock, then stand up and pull his head to yours for a deep kiss, pushing the cum into Mike's mouth with your tongue. His eyes get wide as he tastes his own cum and even wider as you pull his head back a bit and say 'Now swallow!' After a moment's hesitation, he gulps down the cum and shows you his empty mouth as you ask for it.";
		say "     Satisfied in giving him a load of cum in his stomach, you give the stag a slap on his ass and leave.";
	else: [post-quest, friendly]
		say "     You step closer to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations. Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down his pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Licking your lips in anticipation, you kneel down in front of Mike and stroke his shaft some more until he's fully hard.";
		say "     Running your tongue over his cock-head and shaft slowly between pumping your hand up and down its length, you tease the stag until he's breathing hard and looks pleadingly down at you. You smile, then take his manhood into your mouth and start giving him an amazing blowjob, going down all the way on his cock and massaging his balls. With how you worked him up beforehand, it's not too long before he moans 'I'm getting close...' You continue going down on him and go for some deep-throat action until he can't hold back any more and shouts in lust as his balls pump spurt after spurt of seed into your stomach. You wait until he stops twitching and the last spurt of semen leaves his cock, pull off and take a deep breath. Holding his slowly softening cock in your hand, you give it a quick kiss on the tip, then stand up and pull Mike's mouth to yours. With his arms around you and stroking your back as you make out with each other, Mike says, 'Thank you, that was an amazing blowjob,' in between the kisses.";
	NPCSexAftermath Player receives "OralCock" from Mike;

to say MikeSex2: [he sucks the player]
	if HP of Mike is 0 or HP of Mike is 99: [post-combat, dominating]
		say "     You step closer to the stag, a bit wary at first, and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his sides. Looks like he's resigned himself to obeying you - for now. 'On your knees,' you order, pushing down on his shoulders as he hesitates a moment. With the muscular stag kneeling down before you, you pull out your cock, demonstratively stroking it in front of his face and running it along the edge of his chin. Then you push it against his lips and growl, 'Open up - and no teeth.'";
		say "     With a bit of a sullen expression, the stag opens his mouth and takes your manhood into it, bobbing up and down on your shaft. You let him suck you a while, then feel the need for something more rise inside you and grab his antlers like handholds and use them to hold his head as you start fucking his face. Going deeper and deeper, he has to cough a few times before he manages to relax his throat enough when you push all your cock inside him. It's an amazingly tight feeling as you bottom out and hold his head with your cock down his throat for a moment, then start thrusting in and out. All too soon you feel your orgasm approaching and push your shaft one last time into the stag's throat as you start shooting your seed - straight into his stomach. After the first few shots, you pull out of his mouth and spray the rest of your cum all over his cervine face. With a smile on your lips, you leave the cum-splattered stag kneeling there on the street and walk away.";
	else: [post-quest, friendly]
		say "     You step closer to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Grinding your crotch against his, you show him pretty directly how hot and hard his presence makes you. Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you softly push down on his shoulders, to which he quite readily kneels down in front of you. As you pull out your cock, he takes it into a large hand, stroking it until you're fully hard, then gives its tip a quick lick.";
		say "     Running his tongue over your shaft slowly between pumping his hand up and down its length, Mike teases you until you're breathing hard and almost begging for release. Then he has mercy on you and takes your manhood into his mouth and starts giving you an amazing blowjob, going down all the way on your cock and massaging your balls. With all the kissing and stroking beforehand, it's not too long before you moan 'I'm getting close...' Mike just continues going down on you, even going for some deep-throat action until you can't hold back any more and shout in lust as your balls pump spurt after spurt of seed into his stomach. He waits a moment, then pulls back a bit, taking your last few shots in his mouth. Then he stands up and gives you a deep kiss, allowing you to taste your own cum on his lips and tongue.";
	NPCSexAftermath Mike receives "OralCock" from Player;

to say MikeSex3: [player pussy fucked]
	if HP of Mike is 0 or HP of Mike is 99: [post-combat, dominating]
		say "     You step closer to the stag, a bit wary at first, and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his sides. Looks like he's resigned himself to obeying you - for now. Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them a bit before you open up his zipper and pull down his pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You stroke his shaft some more until he's fully hard, then command him to lie down.";
		say "     Spreading his jeans flat on the ground, the stag sits on them, then lies back. His proudly standing erection looks pretty inviting to you and you quickly strip off your own clothes. Moving to stand over the stag, you crouch down and take hold of his manhood, then slowly lower yourself deeper. Rubbing the tip of his cock against your pussy lips, you make him moan in building arousal, then gasp as you sink your folds over his hard rod. His cock spreading your moist tunnel gives you a pleasant sensation of fullness, getting stronger and stronger until your hips touch and he bottoms out inside you. Looking down at your dominated partner, now held by lust instead of force, you smile, then start sliding up and down his hard shaft. Riding the stag's erection with abandon, you make good use of his length and girth, grinding your hips against him so he hits all the right spots inside you. With your wild ride on his cock, it's not too long before he suddenly shouts 'I'm coming!' and starts to shoot strings of cum deep inside you, filling your womb with fertile seed.";
		NPCSexAftermath Player receives "PussyFuck" from Mike;
		LineBreak;
		say "     You wait until he stops twitching and the last spurt of semen leaves his cock, then pull your pussy off his shaft and move to kneel over his face. Pulling his head up against your cum-dripping pussy, he instantly realizes what you want and starts licking you. Quite talented with his tongue, this stag - his oral attentions quickly bring you the rest of the way to your own orgasm, making your folds drip with femcum in addition to the stag's seed. Thoroughly satisfied, you grin down at the stag's wet face as you stand up and walk away, leaving him lying there on the ground.";
	else: [post-quest, friendly]
		say "     You step closer to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations. Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down his pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Reaching down to stroke him until he's fully hard, your lips find his for another kiss. Moaning 'I want you inside me', you step back and quickly take off your clothes.";
		say "     After slowly stroking his cock while watching you strip, Mike then guides you to the bed to lie down with him. Caressing your body with his hands, following and stroking every curve, he builds up your arousal some more before he finally moves on top of you. You feel his hard cock slide up against your crotch, then find the opening and penetrate your moist pussy lips. With one deep thrust he buries himself deep in your pussy, then starts fucking you with rapid strokes. Moaning loudly, you wrap your arms and legs around Mike to hold on and meet his thrusts. He proves himself to be a virile stag, with enough endurance to satisfy a whole herd of does, as he couples with you for quite a while, driving you to one orgasm and another. Then his restraint breaks down and you hear him grunt 'I'm gonna cum!' seconds before his body stiffens, shudders running through it as burst after burst of his seed blast into your womb.";
		NPCSexAftermath Player receives "PussyFuck" from Mike;
		LineBreak;
		say "     He stays on top, breathing heavily while the last spurts of semen leave his cock, then lowers his head to yours to make out. It's pretty nice to hold his softly furred body against yours, with his slowly softening cock and deposited load giving you a comfortably full feeling. You stay like that for a while, resting together in post-coital bliss before you have to return to everyday survival in the city.";

to say MikeSex4: [player ass fucked]
	if HP of Mike is 0 or HP of Mike is 99: [post-combat, dominating]
		say "     You step closer to the stag, a bit wary at first, and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his sides. Looks like he's resigned himself to obeying you - for now. Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them a bit before you open up his zipper and pull down his pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You stroke his shaft some more until he's fully hard, then command him to lie down. Spreading his jeans flat on the ground, the stag sits on them, then lies back. His proudly standing erection looks pretty inviting to you and you quickly strip off your own clothes.";
		say "     Moving to stand over the stag, you crouch down and take hold of his manhood, then slowly lower yourself deeper. Rubbing the tip of his cock up and down your crack, you make him moan in building arousal, then gasp as you push his cock-head into your asshole and sink down on it. His cock spreading your tight tunnel gives you a pleasant sensation of fullness, getting stronger and stronger until he bottoms out inside you and you feel his fur against your cheeks. Looking down at your dominated partner, now held by lust instead of force, you smile, then start sliding up and down his hard shaft. Riding the stag's erection with abandon, you make good use of his length and girth, grinding your ass against him so he hits all the right spots inside you. With your wild ride on his cock, it's not too long before he suddenly shouts 'I'm coming!' and starts to shoot strings of cum deep inside you, filling your tight ass with fertile seed.";
		NPCSexAftermath Player receives "AssFuck" from Mike;
		LineBreak;
		say "     You wait until he stops twitching and the last spurt of semen leaves his cock, then pull off his shaft with a *plop* and move to kneel over his face. Saying 'Eat me out' in a commanding tone, you pull his head up against your cum-dripping asshole and after a moment's hesitation he starts licking you. Quite talented with his tongue, this stag - his oral attentions quickly bring you the rest of the way to your own orgasm, [if Player is male]with your [Cock of Player] cock shooting long strings of cum all over your partner's chest[else if Player is female]making your folds drip with femcum[end if]. Thoroughly satisfied, you grin down at the stag[if Player is male] and his cum-splattered fur[end if] as you stand up and walk away, leaving him lying there on the ground.";
	else: [post-quest, friendly]
		say "     You step closer to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations. Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down his pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Reaching down to stroke him until he's fully hard, your lips find his for another kiss. Moaning 'I want you inside me', you step back and quickly take off your clothes.";
		say "     Mike strokes his cock as he watches you strip, then lets himself be led to the bed. You get onto it on all fours, sticking out your ass and wiggling it invitingly. Your aroused stag grabs the bottle of lube from the ground, then applies a good amount to your hole and fingers it a bit. He kneels behind you and starts rubbing his manhood up and down between your cheeks. Then you feel the tip of his cock push against your sphincter, slowly increasing the pressure until it yields and Mike's hard cock slides into you. It just feels amazing to have his shaft rub your sensitive insides. Soon he's bottomed out all the way inside you and rests there for a moment, pulling your upper body close and giving you a deep kiss.";
		WaitLineBreak;
		say "     Then he starts thrusting in and out with hard and deep strokes, making you both moan in lust. Slapping noises from when his hips hit your ass fill the room and are soon joined by barks from the kennels that seem to be cheering you on to fuck. Mike proves himself to be a virile stag, with enough endurance to satisfy a whole herd of does, as he couples with you for quite a while, driving you to one orgasm and another. [if Player is male]Your cock sprays two huge loads all over the sheets, as Mike just continues to fuck you until you're hard again and ready for a second cum-shot. [else if Player is female]Your pussy literally drips with femcum, making it trickle down your legs and soak into the sheets under you. [end if]Then his restraint breaks down and you hear him grunt 'I'm gonna cum!' seconds before his body stiffens, shudders running through it as burst after burst of his seed blast deep into your ass.";
		NPCSexAftermath Player receives "AssFuck" from Mike;
		LineBreak;
		say "     Mike stays kneeling behind you as his manhood keeps pulsing with each shot of cum, breathing heavily and holding on to your body. After the last spurt of semen leaves his cock, he gives you a kiss on the neck, then hugs you close and pulls you down so you lie together on your sides on a mostly dry spot of the bed. You two just stay like that for a while, as he spoons you with his slowly softening cock still in your ass, getting some rest before you have to return to the problem of everyday survival in the city.";

to say MikeSex5: [Mike's ass fucked]
	if HP of Mike is 0 or HP of Mike is 99: [post-combat, dominating]
		say "     You step closer to the stag, a bit wary at first, and run your hands over his chest and arms, feeling hard muscles and pinching his nipples. He just stands there and takes your groping, holding his arms at his sides. Looks like he's resigned himself to obeying you - for now. Pushing your hands down the front of his jeans, you feel for his cock and balls, groping them a bit before you open up his zipper and pull down his pants. He's got a human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. You stroke his shaft some more until he's fully hard, push him over to a nearby building's wall and have him stand against it, bent over a bit and bracing himself with his hands.";
		say "     Seeing the buns of his very nice bubble butt, you just have to run your fingers through the short fur covering them. Fondling his firm cheeks under the soft fuzz, you pull them apart, revealing the pink opening of his pucker surrounded by cream colored fur. You wet a finger in your mouth and push it against his opening, then inside a very tightly gripping asshole. You can't wait to get your cock in there... Quickly stripping off your own clothes, you step up behind the stag and wrap your arms around him, feeling up his chest and rubbing yourself against his softly furred backside. With you having gotten him hot and hard before, your dominated partner can't stop himself from moaning in lust as you touch him. Whispering 'I'm gonna fuck you now.' in his ear, you take hold of your [Cock of Player] manhood and place it against his opening, then slowly push forward until his pucker yields and you pop in.";
		WaitLineBreak;
		say "     The stag's ass is amazingly tight, gripping your shaft as you slide deeper. You have to slow down and even stop for a moment in between so you don't just blow your load before you're fully in him. Resting your cock three quarters inside, you take a deep breath and reach around to softly pinch the stag's nipples a bit until you got yourself under control again. Then you move forward, pushing deeper into the stag until you bottom out, with his asshole tight around your cock and the soft fur of his bottom against your hips. Starting to slide in and out, both of you are soon moaning and gasping from the sensations. Fucking the stag with hard and deep strokes, you soon drive him over the edge, shouting 'I'm coming...' as his shaft sprays a huge load of white cum all over the wall he leans against. His inner muscles twitching around your shaft gives you the push you need, your balls tightening as they send spurt after spurt of cum deep into the stag's ass.";
		NPCSexAftermath Mike receives "AssFuck" from Player;
		say "     Holding your arms tight around his chest until your last spurt of semen is deposited, you then pull out in one quick go from his cum-filled asshole, accompanied by a slurping noise. His hole gapes open for a second with cum running out of it, then quickly closes, trapping the rest of your seed inside. You have a last look at the cream-colored fur of his crack, wet with your cum, then give the stag a slap on the butt and leave him there like that.";
	else: [post-quest, friendly]
		say "     You step closer to Mike and pull his head to yours to give him a kiss, then run your hands over his chest and arms, feeling the muscles of his stag body and softly pinching his nipples. Looking down, you see a bulge in his jeans showing his growing arousal at your ministrations. Pushing your hands down the front of his pants, you feel for his cock and balls, groping them as Mike puts his arms around you and kisses you back. After making out a bit and stroking each other's bodies, you open up his zipper and pull down his pants. He's got an impressive human-like cock halfway out of a furred sheath and a nice pair of balls, both covered in cream-colored fur. Reaching down to stroke him until he's fully hard, your lips find his for another kiss. Moaning 'I want to fuck your ass', you step back and quickly take off your clothes.";
		say "     Mike strokes his cock as he watches you strip, then lets himself be led to the bed. Taking the bottle of lube from the floor and handing it to you, he says 'I haven't had much anal sex since back in college, when my roommate Andy and I were constantly at it. So please be gentle...' then gets on all fours on the bed, sticking out his ass and wiggling it invitingly. Seeing the buns of his very nice bubble butt, you just have to run your fingers through the short fur covering them. Fondling his firm cheeks under the soft fuzz, you pull them apart, revealing the pink opening of his pucker surrounded by cream colored fur. You put some lube on your hand and warm it up a bit, then softly push a slippery finger against Mike's pucker, sliding it inside the tight grip of Mike's asshole and making him moan in lust. You can't wait to get your cock in there...";
		WaitLineBreak;
		say "     Quickly stripping off your own clothes, you climb on the bed behind the stag and wrap your arms around him, feeling up his chest and rubbing yourself against his softly furred backside. Hot and hard, reveling in you touching him, Mike reaches back and squeezes your ass, pulling your hips against himself. With him huskily moaning 'Stick it in, I'm ready,' you take hold of your [Cock of Player] manhood and place it against his opening, then slowly push forward until his pucker yields and you pop in. The stag's ass is amazingly tight, gripping your shaft as you slide deeper. You have to slow down and even stop for a moment in between so you don't just blow your load before you're fully in him. Resting your cock three quarters inside, you take a deep breath and reach around to feel his chest and softly pinch Mike's nipples a bit until you get yourself under control again. Then you move forward, pushing deeper into the stag until you bottom out, with his asshole tight around your cock and the soft fur of his bottom against your hips.";
		say "     Starting to slide in and out, both of you are soon moaning and gasping from the sensations. Fucking the stag with hard and deep strokes, you drive him over the edge before much longer, shouting 'I'm coming...' as his shaft sprays a huge load of cum all over the sheets under him. His inner muscles twitching around your shaft gives you the push you need, your balls tightening as they send spurt after spurt of cum deep into the stag's ass.";
		NPCSexAftermath Mike receives "AssFuck" from Player;
		LineBreak;
		say "     Holding your arms tight around his chest until your last spurt of semen is deposited, you then pull him down to lie together on the bed on your sides, spooning with your slowly softening cock still inside him. It's nice to hold him like that, with his warm furred body against your chest. You two just stay like that for a while, getting some rest before you have to return to the problem of everyday survival in the city.";

instead of conversing Mike:
	if HP of Mike is 3:
		say "     Mike softly strokes Lea before turning to you. 'Could you get my medkit? It's on the wall in the other room...' You follow his directions and find the white box with the red cross on it, but when you pick it up, it's pretty light - too light. Opening it up, you find it halfway empty, with only small band-aids and other stuff that won't be of much use right now.";
		say "     As you tell him about it, Mike slaps his head, growling 'Damn, just like me to forget to refill that before a mutant apocalypse.' He looks at you pleadingly - 'Could you maybe try to find another one out in the city? I can't leave Lea right now, she'd hurt herself trying to move around, reopen the wound...'";
		now HP of Mike is 4;
	else if HP of Mike is 4:
		say "     Mike looks up hopefully. 'Have you got a medkit?'";
		if medkit is owned:
			say "     Aware that you have one in your backpack, you answer... ";
			if Player consents:
				say "     You pull the medkit out and start to patch Lea up while Mike holds her tight as she struggles, whining pitifully as you do the painful but necessary steps of cleaning and disinfecting her wound. It's not an easy task, but soon she's well taken care of, with a fresh white bandage around her upper torso.";
				say "     Overjoyed at Lea being better now, Mike says 'Thank you, my friend. I don't know what I would have done without you. I'm in your debt.'";
				ItemLoss medkit by 1;
				now HP of Mike is 5;
			else:
				say "     You just silently shake your head.";
		else:
			say "     You just silently shake your head.";
	else if HP of Mike is 5:
		say "     Mike says 'I don't have anything I could give you as thanks, except... would you maybe want one of my human dogs for your own? They were well trained as dogs and are very obedient - and since they changed, I taught them a few extra tricks too...' he winks and gives a small nod to Lea and her pregnant belly.";
		say "     Do you accept one of the human form dogs from Mike as a reward? ";
		if Player consents:
			say "     [bold type]What gender do you want your new 'dog' to be?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Male.";
			say "     ([link]N[as]n[end link]) - Female.";
			if Player consents:
				LineBreak;
				say "     Mike takes you to the kennel, where you have a look at his 'dogs'. In the end, you choose Xerxes, a black-haired male looking about nineteen years old, with muscled runner's legs and strong arms. He attentively looks to Mike as he explains that you're his new master, then comes over to you to sniff you and lick your hand. After getting a bottle of lube as additional present from Mike, you bring your new pet to the library. Hopefully he'll make a good guard-dog... although the other possibilities sound enticing too.";
				project Figure of Xerxes_soft_icon;
				move Xerxes to the Grey Abbey Library;
				move player to the Grey Abbey Library;
				now HP of Xerxes is 1;
			else:
				LineBreak;
				say "     Mike takes you to the kennel, where you have a look at his 'dogs'. In the end, you choose Helen, a black haired female looking about nineteen years old, with a shapely body and nice perky breasts. She attentively looks to Mike as he explains that you're her new master, then comes over to you to sniff you and lick your hand.";
				say "     Looking down over Helen's naked body, Mike strokes the bulge in his pants, then looks back to you. 'I used condoms when I picked her cherry and trained her, so no worries about that. If you plow that field and bring out some seeds, they're all yours. Might be best to act quick if you got any male pets or want to take her out for walks without all kinds of critters smelling a fertile female...'";
				say "     You bring your new pet to the library. Hopefully she'll make a good guard-dog... although the other possibilities sound enticing too.";
				project Figure of Helen_naked_icon;
				move Helen to the Grey Abbey Library;
				move player to the Grey Abbey Library;
				now HP of Helen is 1;
			now HP of Mike is 6;
		else:
			say "     Mike shrugs as you decline, then says 'As you wish. But the offer stands, so just say so if you change your mind.'";
	else if HP of Mike is 6:
		say "     Mike gives you a friendly nod, then says 'Hello again. How's it going with your new pet? No problems, I hope?' You chat a bit about caring for your human shape dog and survival in the city in general.";
	else:
		say "     Mike is not in a state when he should be able to talk - please report how you got this.";

Table of GameCharacterIDs (continued)
object	name
Lea	"Lea"

Lea is a woman.
Lea is in Mike's Office.
ScaleValue of Lea is 3. [human sized]
Body Weight of Lea is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Lea is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Lea is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Lea is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Lea is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Lea is 4. [length in inches]
Breast Size of Lea is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Lea is 2. [count of nipples]
Asshole Depth of Lea is 8. [inches deep for anal fucking]
Asshole Tightness of Lea is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Lea is 0. [number of cocks]
Cock Girth of Lea is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Lea is 0. [length in inches]
Ball Count of Lea is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Lea is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Lea is 1. [number of cunts]
Cunt Depth of Lea is 9. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Lea is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Lea is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Lea is false.
PlayerRomanced of Lea is false.
PlayerFriended of Lea is false.
PlayerControlled of Lea is false.
PlayerFucked of Lea is false.
OralVirgin of Lea is false.
Virgin of Lea is false.
AnalVirgin of Lea is true.
PenileVirgin of Lea is true.
SexuallyExperienced of Lea is true.
TwistedCapacity of Lea is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Lea is false. [steriles can't knock people up]
MainInfection of Lea is "Human".
Description of Lea is "     Originally one of Mike's dogs, Lea is now a young human woman of about nineteen. She has shoulder-length blond hair and a slender physique, although her breasts have obviously filled out quite a bit to go with her pregnant belly. But no matter what she looks like - there's still only a dog's mind behind her eyes, so she walks on all fours and only uses barks and growls as communication[if HP of Mike < 5]. A deep gash from a leopardman's claw marks her side. It doesn't look good - she needs some bandages and most likely antibiotics too. And soon[else if HP of Mike > 4]. A clean white bandage covers most of her upper torso, protecting her healing wound from getting dirty again[end if].".
Conversation of Lea is { "Woof." }.

instead of fucking Lea:
	if HP of Mike < 5:
		say "     Mike roughly shoves you aside as you try to fondle Lea. 'Get a hold of yourself - can't you see she's hurt?'";
	else if HP of Mike > 4:
		say "     Mike puts a hand on your shoulder and pulls you aside. 'Lea is still recovering. She needs some rest, OK? Besides... she's mine - who did you think put those puppies in her belly?'";

instead of conversing Lea:
	if HP of Mike < 5:
		say "     Lea gives you a pitiful whine as you try talking to her.";
	else if HP of Mike > 4:
		say "     Lea gives a welcoming yip as you approach, then comes closer and licks your hand. She's not really a candidate for meaningful conversation, but watching her pounce after a tennis ball and fetch it for you has a relaxing influence on you.";


Section 5 - Xerxes

[moved to Xerxes.i7x]

Section 6 - Helen

[moved to Helen.i7x]

Section 7 - Ares

[moved to Ares.i7x]

Section 8 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Xerxes['] Epilogue"	"NPC"	""	Xerxes' Epilogue rule	900	false
"Helen's Epilogue"	"NPC"	""	Helen's Epilogue rule	900	false
"Mike's Epilogue"	"NPC"	""	Mike's Epilogue rule	900	false
"Blacktail Stag Infection"	"Infection"	""	Blacktail Stag Infection rule	1000	false

This is the Xerxes' Epilogue rule:
	if Xerxes is in the Grey Abbey Library:
		trigger ending "Xerxes['] Epilogue"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "After succumbing to your infection, you forget all about Xerxes, who faithfully waits for you to come back until he's half-starved. As his hunger finally overwhelms his sense of duty, he moves out into the city and is caught by a pack of female huskies. With them, he's pretty well taken care of from then on, as he gets fed pretty well and is allowed to mount them all the time to satisfy their urges.";
		else:
			say "Since the soldiers most likely wouldn't believe you if you told them that Xerxes is actually a dog - and your dog - you get a bit creative when they come for you. Soon they're convinced he's a regular survivor who had a mental break and whom you took care of. You whisper to him to stay calm and that you'll come get him before he gets carted away to a psych ward. When you're released yourself soon after, you stay close to the holding facility until you manage to acquire a key by getting one of the orderlies dead drunk one night. Sneaking into the facility under cover of darkness, you find and free Xerxes, then make your escape. From then on, your faithful dog never leaves your side for long, always ready to guard your home[if lust of Xerxes > 0] and share your bed[end if].";
			if lust of Xerxes > 3:
				say "The human dog continues to grow gradually smarter and more at ease with his human body. He certainly maintains his canine mindset and prefers to live as such, though he can pass for human when needed. And while you are able to teach him how other people act, he has little interest in doing so when unnecessary. Having no sense of modesty or sexual hangups, he only becomes a better and better sexual partner who's open to anything and anyone as long as you, as his master, will allow it.";

This is the Helen's Epilogue rule:
	if Helen is in the Grey Abbey Library:
		trigger ending "Helen's Epilogue"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "After succumbing to your infection, you forget all about Helen, who faithfully waits for you to come back until she's half-starved. As her hunger finally overwhelms her sense of duty, she moves out into the city and is caught by an alpha husky who incorporates her into his pack. With them, she's pretty well taken care of from then on, as she gets fed pretty well and is often mounted by the pack leader. Over time, she bears several human-shaped puppies for him.";
			if HelenPregnant > 0:
				if Libido of Helen is 1: [by the player]
					say "The first of her children - a boy - being yours from before you lost your humanity, quickly develops into a quite bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he soon tricks the Alpha into an unwinnable fight against a flock of gryphons. With his rival being carried away to the gryphon's flying city to serve as a submissive egg carrier, your son takes over the pack. As new Alpha, he goes on to fuck them all regularly, impregnating the female huskies as well as his human-shape half-sisters and mother while dominating the males by fucking their asses daily.";
				else if Libido of Helen is 2: [by Fang]
					say "The first of her children - a boy - being the offspring of[if (HP of Fang is 1 or HP of Fang is 2)] your pet wolf[else if (HP of Fang is 3 or HP of Fang is 4 or HP of Fang is 7)] your dominant wolf[else] your faithful friend[end if] Fang from before you lost your humanity, quickly develops into a relatively bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he soon shows the ferocious nature inherited from his father and challenges the pack's Alpha husky for dominance. It's a long fight with several quite close calls, but in the end the former pack-master can only limp away, beaten, as Fang's son takes over the pack. As new Alpha, he goes on to fuck them all regularly, impregnating the female huskies as well as his human-shape half-sisters and mother while dominating the males by fucking their asses daily.";
				else if Libido of Helen is 3: [by the Felinoid]
					say "The first of her children - a boy - being the offspring of Klauz from before you lost your humanity, quickly develops into a relatively bright teenager. As he matures, he develops the ability to create a seductive, pheromone-laden smell, almost as strong as his father's was. Growing up in a pack of horny dogs and having absorbed their morals, he makes relentless use of this ability, dominating the whole pack though sexual dependence. Even though the old Alpha is still around, protecting the pack, it's now the felinoid's son who has the power. He fucks them all regularly, males and females, impregnating the female huskies as well as his human-shape half-sisters and mother.";
				else if Libido of Helen is 4: [by Kara]
					say "The first of her children - a boy - being the offspring of Kara, quickly develops into a relatively bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he soon shows the submissive nature inherited from his hyena father and submits to being the male bitch of the pack's alpha husky's. This doesn't stop him from sneaking fucks from the female huskies as well as his human-shape half-sisters and mother whenever he can get away with it. He is caught at this from time to time, but always seems to get out of the worst of the alpha's wrath by tempting the angry husky to viciously pound his ass instead, which he seems to love most of all.";
				else if Libido of Helen is 5: [by Ares]
					say "The first of her children - a boy - being the offspring of Ares, quickly develops into a relatively bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he soon shows the cunning nature inherited from his father and starts fucking the pack bitches behind the alpha's back. Knowing just when and how to sneak fucks from the female huskies as well as his human-shape half-sisters and mother, he's does so whenever he can and is never caught at it. Just about every puppy growing in the females in the following months is secretly his, and before they're born and can show from their looks and smell that he, and not the alpha is the father, he arranges for another male husky to challenge and win over the former pack-master. With the new alpha an imposing figurehead, long used to getting fucked by the cunning young man, Ares['] son becomes the de facto leader of the pack.";
				else if Libido of Helen is 6: [by Carl]
					say "The first of her children - a boy - being the offspring of Carl, quickly develops into a relatively bright teenager. Growing to maturity in a pack of horny dogs and having absorbed their morals, he becomes a faithful beta to his pack-master, standing by his side in many a fight in the chaotic city streets. As a reward, the young man is given free reign over the other males in the pack and mounts them regularly, as well as sometimes getting a go at one female or other after the alpha is done with them. This even extends to his human-shape half-sisters and mother, which results them getting impregnated by the young man, as his sperm proves better adapted for it than the alpha husky's seed.";
		else:
			say "Since the soldiers most likely wouldn't believe you if you told them that Helen is actually a dog - and your dog - you get a bit creative when they come for you. Soon they're convinced she's a regular survivor who had a mental break and whom you took care of. You whisper to her to stay calm and that you'll come get her before she gets carted away to a psych ward. When you're released yourself soon after, you stay close to the holding facility until you manage to acquire a key by getting one of the orderlies dead drunk one night. Sneaking into the facility under cover of darkness, you find and free Helen, then make your escape. From then on, your faithful dog never leaves your side for long, always ready to guard your home[if lust of Helen > 0] and share your bed[end if].";
			if lust of Helen > 3:
				say "The human dog continues to grow gradually smarter and more at ease with her human body. She certainly maintains her canine mindset and prefers to live as such, though she can pass for human when needed. And while you are able to teach her how other people act, she has little interest in doing so when unnecessary. Having no sense of modesty or sexual hangups, she only becomes a better and better sexual partner who's open to anything and anyone as long as you, as her master, will allow it.";
			if HelenPregnant > 0:
				if Libido of Helen is 1: [by the player]
					say "Several months later, she gives birth to your child, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a quite bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and starts having sex with Alice, his first girlfriend, as well as her female golden retriever - thankfully using the condoms you buy him by the box, so neither of them end up pregnant. His growth spurts eventually slow to human levels and by the time he's a year old, your by then teenage looking son gets into college...";
				else if Libido of Helen is 2: [by Fang]
					say "Several months later, she gives birth to the offspring of[if (HP of Fang is 1 or HP of Fang is 2)] your pet wolf[else if (HP of Fang is 3 or HP of Fang is 4 or HP of Fang is 7)] your dominant wolf[else] your faithful friend[end if] Fang, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and starts getting into fights at school over girlfriends - as well as boyfriends, whoever strikes his fancy. Over time, he acquires a few scars that give him a dashing appearance, as well as a small gang of friends and lovers, and you have to buy condoms by the box for their wild parties on most weekends. His growth spurts eventually slow to human levels and by the time he's a year old, the by then teenage looking kid starts working as a car mechanic at a nearby garage...";
				else if Libido of Helen is 3: [by the Felinoid]
					say "Several months later, she gives birth to the offspring of Klauz, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and an inheritance of his father comes through - the ability to create a seductive pheromone-laden musk around himself. By the time you realize what's happening and have a stern talk with him about holding back a bit and using condoms, he managed to impregnate two teachers, five cheerleaders, one of your neighbors and her two German shepherd bitches. Thankfully he went through half the football team too over the course of that weekend, otherwise there'd have been even more knocked up teenagers. His growth spurts eventually slow to human levels and by the time he's a year old, the by then teenage looking kid gets discovered as an actor, owing his good looks and 'charming' personality...";
				else if Libido of Helen is 4: [by Kara]
					say "Several months later, she gives birth to the offspring of Kara, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. He's a very obedient and peaceful child with quite a bit of artistic talent which he throws into drawing and painting. And while his taste in girlfriends (and boyfriends, for that matter), tends towards the rougher and meaner kids, he seems to be quite happy with their abuse and rough treatment. Certainly, you hear plenty of loud and vigorous sex coming from his room over the year it takes him to grow up to full maturity. He becomes an artist and while he doesn't seem to make that much money at it, he's never short on lovers he can shack up with, being their fuck-toy bitch for while living their for free.";
				else if Libido of Helen is 5: [by Ares]
					say "Several months later, she gives birth to the offspring of Ares, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, especially when he enters puberty and the well-developed sex drive as well as cunning of his father comes through. By the time you realize what's happening and have a stern talk with him about holding back a bit and using condoms, he managed to impregnate half the (mostly married) woman he was lawn-mowing for, a teacher and several cheerleaders - all the while double-teaming the girls by having sex with their boyfriends too. His growth spurts eventually slow to human levels and by the time he's a year old, the by then teenage looking kid gets into college...";
				else if Libido of Helen is 6: [by Carl]
					say "Several months later, she gives birth to the offspring of Carl, a beautiful human boy. He develops quickly over the following weeks and months, and you're relieved when he turns out to be a relatively bright kid - able to understand his mother's canine growls as well as human language. It's quite a bit of work to keep up with him, as he's a very active and energetic boy, eager to make friends with just about anyone. Being the captain of the school's football team and quite popular opens a lot of possibilities for him when he soon enters puberty and his well-developed sex drive kicks in. Thankfully his first experiments are with a male teammate and when you find them in bed together the morning after, you have a little talk about being safe and using condoms. Following your instructions about that, the young man manages to avoid getting anyone pregnant, even as he builds up quite a big pack of male and female friends to have sex with him and each other. His growth spurts eventually slow to human levels and by the time he's a year old, the by then teenage looking kid gets into college...";

This is the Mike's Epilogue rule:
	if HP of Mike is 100:
		trigger ending "Mike's Epilogue"; [Here it states, that the ending has been played.]
		say "You don't see Mike or Lea ever again, as they were taken to the leopardmen's lair to serve as the feline's play-toys. With them face-fucking Mike all the time, forcing him to swallow their cum, it doesn't take very long until he becomes a leopardess in heat. He and Lea are the center of many a gang-bang, during which Mike is knocked up several times with litters of leopard kits. After his and Lea's daughter is born and grows to sexual maturity, she joins the lineup of submissive breeding holes for the gang.";
	else if HP of Mike > 4 and HP of Mike < 98 and humanity of Player > 10:
		trigger ending "Mike's Epilogue"; [Here it states, that the ending has been played.]
		say "As the military moves into the city Mike tries to explain his special situation, but the soldiers just ignore him and try to 'free those poor people' - earning the men several painful bites from the dogs. That leads to all of Mike's party being locked up together in a warehouse-turned-holding-facility at the outskirts of the city. It takes almost three weeks before finally a doctor comes along to check them out. With him actually listening to what Mike says and having a look at the tattoos and identification chips the 'brainwashed humans' still have from their dog days, all of them are transferred to the regular medical facility. After Mike gets a shot to make him non-infectious, he's set free with all his dogs.";
		say "Months later his child with Lea is born, turning out to be a beautiful little girl who grows up to be a teenager within one year before her aging stabilizes to human levels. Having inherited her father's intelligence as well as the ability to understand and talk to dogs from Lea, she grows up with a unique perspective...";
		say "Mike goes on to running a lucrative business, breeding his human dogs with each other and training their human-dog offspring. With a pure-bred 'homo canis' going for about the price of a good racehorse, mostly to wealthier changed people, he buys a large ranch out in the countryside. You having a standing invitation from Mike to come over whenever you want, quite a few of your weekends are spent enjoying trips into the natural setting and... other entertainments.";

This is the Blacktail Stag Infection rule:
	if Player has a body of "Blacktail Stag":
		trigger ending "Blacktail Stag Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if HP of Mike > 0 and HP of Mike < 99: [player met and talked with Mike]
				say "As you succumb to the infection, you drift aimlessly through the city for a while until you run into Mike by chance. A bit sad to see someone he knew reduced to such a state, he takes you along and cares for you, putting you in a spacious kennel with his human dogs[if Player is male]. Randy creature that you are, you impregnate several of the females, becoming the progenitor of a very successful breed of pet humans in the changed world[end if][if Player is female]. The male transformed dogs find you irresistible and are constantly eager to mount you, which results in more than one litter of human puppies[end if].";
			else: [only had unfriendly contact with Mike]
				say "As you succumb to the infection, you drift aimlessly through the city for a while, having sex with anyone you come across. After a while, there's a whole herd of willing does and a few stags following you. You lead them to the park to live among the trees, unconcerned about what's going on outside of it.";
		else:
			say "When the rescue comes, you're carted into a holding facility and poked and prodded for a little while before they give you some shots to make you non-infective and release you into the outside world. As busy as they are with the more hostile infected resisting their efforts, there's not much time spent on you.";
			say "As you adjust to living among regular people again, your sleek lines attract many. Even though you end up getting a job as forest ranger and spend a lot of time in the wilderness, several amorous encounters with hikers lead to more and more people visiting the area. Soon there's a small party every weekend, with everyone dancing around a bonfire and getting laid by you before they pair up with one another.";

Stag ends here.
