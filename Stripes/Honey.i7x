Version 2 of Honey by Stripes begins here.
[Version 2.2.1 - Queen Bee sex now affects libido. Neuter outcome selected]
[Version 2.3 - Made Honey an NPC/pet located in the library garden - Luneth]

"Adds a bee girl pet named Honey."

[ HP of bee girl      ]
[ 0 = not encountered ]
[ 1 = saved           ]
[ 2 = leave hive      ]
[ 3 = found bear      ]
[ 4 = lost/fled bear  ]
[ 5 = won - queen bee ]
[ 100 = not saved     ]

the linkaction of Honey is "[honeylinkaction]".

to say honeylinkaction:
	say "Possible Actions: [link]talk[as]talk Honey[end link], [link]smell[as]smell Honey[end link], [link]fuck[as]fuck Honey[end link][line break]";

Section 1 - Events

Smashed Hive is a situation.
The sarea of Smashed Hive is "Park".
when play begins:
	add Smashed Hive to badspots of girl;

Instead of resolving a Smashed Hive:
	if HP of bee girl is 0:
		say "     As you search through the park, you come across a giant, devastated bee hive. The hive was built around the branches of a large tree and may have been over 15 feet tall when completed intact. Now, broken fragments of it lay scattered around the area and only some of the upper chunks cling to the top branches to give you a scope of its size. Scattered around the sticky rubble are the bodies of numerous bee girl drones, unmoving. Cautiously, you step between the sticky chunks of honeycomb to take a closer look.";
		say "     As you follow the bear tracks all around the area, you can see that one or even several bears assaulted the hive for the sweet honey. Much of the honeycomb center has been taken away, though you may be able to retrieve some for yourself. As you look around to find a clean section to pick from, you hear a weak buzz from behind you. Turning, you see one of the bee drone's still alive, struggling to get up despite her injuries.";
		if medkit is owned:
			say "     [bold type]Do you try to help the poor bee girl with your medkit or do you grab some honey while you can and make a run for it?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Help the bee girl.";
			say "     ([link]N[as]n[end link]) - Grab some honey and run.";
			if the player consents:
				say "     Taking care not to appear threatening and trying to reassure her that you only want to help, you move slowly over to the bee girl. She buzzes angrily at you, but stumbles and cannot remain upright. Using your medkit, you try your best to patch her up, feeling sorry for this lone survivor";
				if ( "Expert Medic" is not listed in feats of player and a random chance of 1 in 10 succeeds ) or ( "Expert Medic" is listed in feats of player and a random chance of 8 in 100 succeeds ):
					say ". This uses up the last of that medkit, so you hope it turns out to be worth it.";
					delete medkit;
				else:
					say ".";
				say "[beegirlsaved]";
			else:
				say "     Not wanting to risk getting too close to the enraged bee girl, you grab some chunks of honeycomb and make a run for it.";
				say "     Honeycomb x 5 obtained.";
				increase carried of honeycomb by 5;
				increase score by 10;
				now HP of bee girl is 100;
				now Smashed Hive is resolved;
		else if healing booster is owned:
			say "     [bold type]Do you try to help the poor bee girl with a healing booster or do you grab some honey while you can and make a run for it?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Help the poor bee girl.";
			say "     ([link]N[as]n[end link]) - Grab the honey and run.";
			if the player consents:
				say "     Taking care not to appear threatening and trying to reassure her that you only want to help, you move slowly over to the bee girl. She buzzes angrily at you, but stumbles and cannot remain upright. Moving to her side, you inject her with the healing booster, feeling sorry for this lone survivor and hoping it was worth using a booster to save her.";
				delete healing booster;
				say "[beegirlsaved]";
			else:
				say "     Not wanting to risk getting too close to the enraged bee girl, you grab some chunks of honeycomb and make a run for it.";
				say "     Honeycomb x 5 obtained.";
				increase carried of honeycomb by 5;
				increase score by 10;
				now HP of bee girl is 100;
				now Smashed Hive is resolved;
		else:
			say "     Feeling there is nothing that you can do for her, and not wanting to risk staying around an enraged bee girl, you grab some chunks of honeycomb and make a break for it.";
			say "     Honeycomb x 5 obtained.";
			increase carried of honeycomb by 5;
			increase score by 10;
			now HP of bee girl is 100;
	else if HP of bee girl is 1:
		if companion of player is bee girl:
			say "     Your meandering through the park takes you back to the ruins of the shattered bee hive. The sticky rubble has been picked through since you were last here, the last of the honey having been taken. Even the bodies of the fallen drones are gone - something you don't want to think about too much. Looking down at Honey, who is clutching your side tightly, she could have shared their grisly fate had you not helped her[if scalevalue of player is 1]. As you hug her[else]. As you kneel down to hug her[end if], you notice some bear tracks and dried dribbles of honey heading off into the woods. You might be able to track down one of the bears responsible for this, if you want to.";
			say "     [bold type]Shall you try?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if the player consents:
				say "     Patting Honey's head and telling her you'll take care of it, you point towards the bear's path. She buzzes nervously, worry showing on her face. 'You'd face it for me? But it's so big and scary. Please be careful.'  Taking her little hand in yours, you go head to the path and start following the tracks.";
				let bonus be ( perception of player minus 10 ) divided by 2;
				let featbonus be 0;
				if "Expert Hunter" is listed in feats of player, increase featbonus by 2;
				if "Master Baiter" is listed in feats of player, increase featbonus by 2;
				let dice be a random number from 1 to 20;
				say "     You roll 1d20([dice])+[bonus]+[featbonus]: [dice + bonus + featbonus] vs 13: ";
				if ( dice + bonus + featbonus ) > 12:
					say "At first, it's pretty easy to follow the bear's trail with all the dripping honey and its footprints on the sandy path. But as the messy drops become less frequent and fallen leaves cover the path, it becomes more difficult. You almost walk past a break between the trees, but spot a few broken branches and a tuft of brown fur. Sure enough, a little investigating shows the bear's gone off the trail at this point. It seems this bear's been through here several times.";
					attempttowait;
					say "     Following the tracks and snapped branches for a few minutes leads you to a cluster of large boulders. The bear seems to have made its home here, having scattered a few odds and ends around, including a large clay pot labeled as 'hunny'. When the bear lumbers into view, she's stuffing her maw with a pawful of sticky honey from another such crock pot. Her ill-gotten gains have made this one somewhat pudgier than the other bears around, causing her red shirt to stretch tightly over her upper chest, struggling to contain her large bosom.";
					say "     Seeing you both there, she drops the honey pot in surprise. It smashes to the ground in a sticky mess. 'Oh bother,' she says. 'Look at what you made me do.'  She licks the last of the honey from her sticky paw before balling it into a fist and striding towards you. 'The honey's mine - every last smackerel,' she growls.";
					now HP of bee girl is 3;
					challenge "Bear";
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "     The bear gives another sad moan of 'Oh bother' as she staggers back. She trips over a log and ends up tumbling end over end and around, coming to a crashing halt as she falls face first between the rocks. Her pudgy body gets stuck in the rocks and, despite her struggles, she cannot pull herself free. Honey laughs and gives the bear's furry brown bottom a hard smack. 'That'll teach you to steal from bees,' she yells at the bear. While this is going on, your eyes are drawn to the bear's big backside and her honeyed slit.";
						if cocks of player > 0:
							say "     In the mood to celebrate, you take hold of your [cock size desc of player] [cock of player] cock and line it up with her pussy. Feeling you there, she moans and tries to squirm her way free, but she's thoroughly stuck and at your mercy. With a firm grip on her rear, you thrust into the bad bruin, pounding away at her juicy cunt. She moans and groans in pleasure as you have your way with her, unable to stop you. Though from the sounds of it, she probably wouldn't want you to, instead crying for more. You both cry out loudly as you cum, pumping your hot seed into her[if cock width of player >= 20]. Your excessive load only plumps her up further, ensuring she'll be stuck there even longer[end if].";
						else:
							say "     In the mood to celebrate, you give her ass a firm push, making sure she's good and stuck before burying your face between her legs. Feeling you there, she moans and tries to squirm her way free, but she's thoroughly stuck and at your mercy. You bring your mouth to her juicy cunt and start eating out the bad bruin, lapping up her hot juices and thrusting a few fingers into her pussy. She moans and groans in pleasure as you have your way with her, unable to stop you. Though from the sounds of it, she probably wouldn't want you to, instead crying for more. Your rough attention soon drives her to a loud orgasm that delivers more of her delicious juices onto your tongue.";
						attempttowait;
						say "     Stepping back, you are hugged by the bee girl. She's sticky with some of the honey, having been messily eating it while you had your fun with the bear. You're treated to a sweet, sticky kiss from her, complete with eager groping. 'Oh, you were so brave and strong to face that mean bear. Come, I want to reward you.'  She smiles sweetly and leads you back to the hive's clearing, proudly carrying the bear's last honey jar. Back beneath the hive's tree, she holds up the crock for you. On your knees, you start by pouring a small taste of it into your mouth, but as Honey buries her face in your crotch and starts licking, you keep going, wanting mouthful after mouthful.";
						say "     By the time you've emptied the remainder of the jar down your throat and down your front, your [if cocks of player > 0 or cunts of player > 0]groin[else]body[end if] is hot with excitement and you long for something more. The bee girl, as if expecting this, pulls something she's kept hidden under the honey in her little bag. It is some purple jelly that smells delicious, your mouth watering the moment you see it. 'You'll make a wonderful queen; one who's kind, strong, brave and sexy,' she says as you gobble down the hormone- and nanite-rich royal jelly, hardly hearing her as that heat you're feeling surges higher.";
						attempttowait;
						say "     You push the cute bee girl to the ground and bury your face between her legs, lapping at her pussy to get at her honeyed juices. She moans and pants as you excitedly eat her out, your body demanding more. As she's driven to orgasm again and again, the effects of the royal jelly take hold. Your skin becomes smooth and lovely with a golden-bronze tan as your body reshapes itself. You become tall, slender and sexy, with a narrow waist, curved hips and flat stomach. Your face shifts into one of great, feminine beauty and framed by a full head of black and yellow hair. While your body and face are ones that many a model would envy, they are further enhanced by bee-like features. Chitin forms in the likeness of elbow length gloves, knee high boots and a skimpy [if cunts of player is 0 and cocks of player > 0]speedo[else]bikini[end if] at your waist. The plating at your torso accents your [if breast size of player > 0]bosom[else]flat chest[end if] while an orange puff of fur around your neck looks like the collar to an elegant coat or robe, adding to your sexy look. You grow a second pair of arms, small and handy for little tasks and holding like those of the bee girl. But the greatest pleasure comes as your antennae and bee abdomen grows in, the latter being plump and beautiful with a sharp stinger at the end.";
						say "     As the transformation comes to an end, leaving you as a sexy and [if cunts of player > 0]womanly[else]effeminate[end if] queen bee, you can't help but feel a stronger love for Honey. She is no longer simply a companion or someone to protect, but also a beautiful and cherished member of your hive. This altered mindset does not alarm you, your thoughts changed to accept it just as your body has. Buzzing happily, you walk off together, leaving the ruins of the old hive behind.";
						attempttowait;
						project the figure of QueenBee_icon;
						say "     The queen is dead. Long live the queen.";
						now HP of bee girl is 5;
						increase score by 25;
						setmonster "Queen Bee";
						choose row monster from the table of random critters;
						now non-infectious entry is false;
						now tailname of player is "Queen Bee";
						now facename of player is "Queen Bee";
						now skinname of player is "Queen Bee";
						now bodyname of player is "Queen Bee";
						now cockname of player is "Queen Bee";
						attributeinfect;
						now tail of player is tail entry;
						now face of player is face entry;
						now skin of player is skin entry;
						now body of player is body entry;
						now cock of player is cock entry;
						if libido of player < libido entry, now libido of player is libido entry;
						PlayerEat 25;
						increase thirst of player by 4;
						now lastfuck of bee girl is turns;
					else if fightoutcome >= 20 and fightoutcome <= 29:
						say "     Having lost and been used by the large bruin, you stagger back into the woods. Honey rejoins you, taking your hand and helping you back to the old hive. 'I'm glad you were willing to stand up to the bear for me, but I'm just happy you're back safe and sound.'  You nod and take her hand, leaving the ruins of the old hive behind for good.";
						now HP of bee girl is 4;
					else:
						say "     Unwilling or unable to keep fighting, you and Honey make a break for it, running back into the woods. The pudgy bear only gives pursuit briefly before she's tried and panting for breath. She gives an angry roar of warning not to return and heads back to her campsite. You and the bee girl make your way back to the old hive. 'I'm glad you tried standing up to the bear for me. They're really scary, aren't they?'  You nod and take her hand, leaving the ruins of the old hive behind for good.";
						now HP of bee girl is 4;
					now Smashed Hive is resolved;
				else:
					say "Despite your search, you fail to find that bear. It has to be around here somewhere, but you follow the path in search of traces of where she went, but eventually end up circling back towards the park's main path and give up the search for now.";
			else:
				say "     Deciding it'd not be worth the bother to try and track down the bear, you gently guide poor Honey away from the site of her loss. Given how the place has been stripped clean, you resolve not to come back here again to spare her the pain.";
				now HP of bee girl is 2;
				now Smashed Hive is resolved;
		else:
			say "     Your meandering through the park takes you back to the ruins of the shattered bee hive. The sticky rubble has been picked through since you were first here, the last of the honey having been taken. Even the bodies of the fallen drones are gone - something you don't want to think about too much. Without Honey here with you, there's little point in lingering any longer and you head back into the park.";
	else:
		say "ERROR-Honey-[HP of bee girl]E: This event should be closed.";
		now Smashed Hive is resolved;


to say beegirlsaved:
	[WaitLineBreak]
	say "     Thanks to your timely medical assistance, the bee girl is stabilized. You take a moment to look her over while she's passed out. She has a small body, roughly four feet tall and youthful looking. Her arms are human, but ending in delicate hands with chitinous plates over them. Growing from her sides, she has a smaller pair of insectile arms tucked to her sides. Much of her skin is covered in chitin plating with soft, fluffy hairs like a bumblebee, though her main arms, shoulders and upper chest have human skin, making it seem as if she's wearing a yellow and black dress. Her face is cute and youthful, with long, blond hair. Poking from her hair are a pair of antennae and she has some plating on her chin and throat. Her cute, little rear has a bee's abdomen attached to it, though her stinger's been broken off. Clearly she went down fighting and this was the main injury you had to patch up, as bees normally die after stinging once.";
	say "     As you're patting her patched-up abdomen, she regains consciousness and starts upright. She buzzes angrily at you before realizing that she's been healed. She calms down and smiles at you. 'Uhh... thank you,' she buzzes softly. Wringing her lower hands together nervously, she gets up and looks around at her ruined hive. With tears in her eyes, she wraps her arms around you and clutches to you tightly. It seems you've made a new friend.";
	say "     Stroking her soft hair and speaking reassuringly, you manage to calm her down and she smiles up at you. 'I'm Honey. Oh! The honey!' she exclaims, running around to gather up as much as she can of the hive's destroyed supply, putting it into a bag so she'll have something to live off of without her home and sisters. 'Here. You can have a little too,' she says, giving you a couple of pieces as thanks. When you head off, she follows along, having nowhere else to go but with her rescuer.";
	say "     Honeycomb x 2 obtained.";
	increase carried of honeycomb by 2;
	increase score by 20;
	now bee girl is tamed;
	now HP of bee girl is 1;
	say "     (The bee girl is now tamed! You can make her your active pet by typing [bold type][link]pet bee girl[as]pet bee girl[end link][roman type] and initiate sex with her while active by typing [bold type][link]fuck bee girl[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type])";


Section 2 - Bee Girl NPC/Pet

bee girl is a pet. bee girl is a part of the player.
understand "Honey" as bee girl.
The description of bee girl is "[HoneyDesc]".
The weapon damage of bee girl is 3.
The level of bee girl is 1.
The Dexterity of bee girl is 16.
The summondesc of bee girl is "[SummonHoney]".
The dismissdesc of bee girl is "[DismissHoney]".
The assault of bee girl is "[one of]The bee girl buzzes around, slapping and punching at your foe from behind![or]The bee girl dive bombs the enemy, jabbing with her stinger-less abdomen repeatedly and bashing her fists on their back, buzzing wildly![or]Buzzing angrily, the bumblebee scratches and claws at your foe with her hard, chitinous fingertips![or]The bee drone tosses globs of sticky honey onto your foe, slowing them down while they get unstuck![or]The buzzing drone drops an armload of small rocks and junk onto your enemy from above![at random]".
the fuckscene of bee girl is "[sexwithHoney]".

to say SummonHoney:
	remove Honey from play;
	if player is in Garden and Honey is in Garden: [summoning while standing next to her]
		say "     Buzzing cheerily at your call, the bumblebee drone flies over to join your side.";
	else: [regular summoning]
		say "     Buzzing cheerily at your call, the bumblebee drone flies over to join your side.";

to say DismissHoney:
	move Honey to Garden;
	if player is not in Garden: [regular dismiss]
		say "     Honey presses a quick kiss to your cheek before flying away.";
	else: [dismissing her in the abbey]
		say "     Honey just shrugs her shoulders, going back to work in the garden.";

Honey is a woman.
The description of Honey is "[HoneyDesc]".

instead of sniffing Honey:
	say "[HoneyScent]";

instead of fucking Honey:
	say "[sexwithHoney]";

to say HoneyDesc:
	if debugactive is 1:
		say "DEBUG -> HP of bee girl: [HP of bee girl] <- DEBUG[line break]";
	project the figure of Honey_icon;
	say "     The bee drone has a youthful appearance despite her maturity. Her face, shoulders, arms and upper chest appear to be mostly human, though her lower body and hands are covered in insectile plating, looking like a tight-fitting yellow and black dress. She has a small pair of insect arms at her sides, which can be used to hold small things. The bee abdomen attached to her tight bottom lacks its stinger.";
	if player is in Garden:
		say "     At the moment the little bee girl is busy fixing up the garden.";
	else:
		say "     At the moment the little bee girl is flying around, buzzing contently.";

instead of sniffing bee girl:
	say "[HoneyScent]";

to say HoneyScent:
	say "     Honey, unsurprisingly, smells of honey.";

instead of conversing the Honey:
	if player is in Garden and Honey is in Garden:
		say "[HoneyTalkMenu]";
	else if companion of player is bee girl:
		say "[HoneyTalkMenu]";
	else:
		say "     Honey isn't here.";

instead of conversing bee girl:
	if bee girl is not tamed:
		say "     Who?";
	else:
		if player is in Garden and Honey is in Garden:
			say "[HoneyTalkMenu]";
		else if companion of player is bee girl:
			say "[HoneyTalkMenu]";
		else:
			say "     Honey isn't here.";

to say HoneyTalkMenu:
	LineBreak;
	project the figure of Honey_icon;
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
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Chit Chat"):
					say "[HoneyTalk1]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the bee girl, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say HoneyTalk1:
	let randomnumber be a random number from 1 to 2;
	if HP of bee girl is 5: [you are viewed as the queen bee]
		if randomnumber is:
			-- 1:
				say "     'I'm so glad we were able to avenge my hive.'";
			-- 2:
				say "     'What do you think about the garden? I think it looks just super now!";
	else:
		if randomnumber is:
		-- 1:
			say "     'I really hope we will be able to get justice for my hive soon...'";
		-- 2:
			say "     'I'm gonna work really hard to get this garden sorted, we need more pretty flowers here!'";

to say sexwithHoney:
	if lastfuck of Honey - turns < 4:
		say "     You've had some fun with Honey quite recently. Perhaps you should give her a break for a little longer?";
	else:
		say "     Checking out your sexy drone, you are able to see her sweet nectar glistening over her pussy. She is obviously primed and ready to receive your attentions.";
		say "[HoneySexMenu]";

to say HoneySexMenu:
	LineBreak;
	project the Figure of Honey_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Eat out Honey";
	now sortorder entry is 1;
	now description entry is "Use your tongue to pleasure Honey";
	[]
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get eaten out by Honey";
		now sortorder entry is 2;
		now description entry is "Have Honey eat you out";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get Blown by Honey";
		now sortorder entry is 3;
		now description entry is "Have Honey suck your cock";
	[]
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get fingered by Honey";
		now sortorder entry is 4;
		now description entry is "Have Honey finger your pussy";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Honey";
		now sortorder entry is 5;
		now description entry is "Penetrate Honey with your cock";
	[]
	if HP of bee girl is 5 and bodyname of player is "Queen Bee":
		choose a blank row in table of fucking options;
		now title entry is "Queen bee fun";
		now sortorder entry is 6;
		now description entry is "Have some fun with your loyal drone";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Eat out Honey"):
					say "[HoneySex1]";
				if (nam is "Get eaten out by Honey"):
					say "[HoneySex2]";
				if (nam is "Get blown by Honey"):
					say "[HoneySex3]";
				if (nam is "Get fingered by Honey"):
					say "[HoneySex4]";
				if (nam is "Fuck Honey"):
					say "[HoneySex5]";
				if (nam is "Queen bee fun"):
					say "[HoneySex6]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the bee girl, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say HoneySex1: [player eats out Honey]
	say "     The bee girl's antennae twitch, sensing you a moment before you pounce her into a hug. Buzzing playfully, you roll [if HP of bee girl >= 5]your loving drone[else]her[end if] onto her back and bury your face between her legs. You nuzzle at the soft, golden hair covering her pussy and start lapping at her honeypot. And how appropriate that name is for it, for her juices are thick, sweet and rich like honey. Loving her taste, you drive her to several orgasms before finally stopping. She hugs you tightly and uses her long, slender tongue to lick away the sticky honey from your face.";
	if HP of bee girl >= 5, infect "Queen Bee";

to say HoneySex2: [player gets gets eaten out by Honey]
	say "     Sensing [if HP of bee girl >= 5]her queen's[else]your[end if] arousal, Honey snuggles up to you and nuzzles your crotch. Her tongue, long and thin, slides out to tease at your wet pussy. Pressing her lips to your dripping folds, she slides that wriggling tongue down into you, making you moan in delight. Her tongue quite skillfully delves to your very depths to taste your[if HP of bee girl >= 5 and player is queenbeecocked] honeyed[end if] nectar. You cum several times and she happily drinks down your sweet waters until you're both satisfied.";
	if HP of bee girl >= 5, infect "Queen Bee";

to say HoneySex3: [player gets blown by Honey]
	say "     Sensing [if HP of bee girl >= 5]her queen's[else]your[end if] arousal, Honey snuggles up to you and nuzzles your crotch. Her tongue, long and thin, wraps around your shaft and wriggles over it. She takes you into her mouth and starts sucking hungrily while that [if HP of bee girl >= 5]wonderful[else]strange[end if] tongue teases you incessantly. Her upper arms run over your body, stroking and caressing you while her smaller ones cup your balls and knead them until you finally cum. She drinks down your seed, clearly loving the taste and always happy to [if HP of bee girl >= 5]service her queen's needs[else]repay you for your kindness[end if].";
	if HP of bee girl >= 5, infect "Queen Bee";

to say HoneySex4: [player gets fingered by Honey]
	say "     The cute bee girl buzzes over to you and snuggles close. As you run your hands through her soft hair and caress her sensitive antennae, she runs the small hand from one of her lower arms across your wet pussy, teasing your sensitive folds. After a little stroking, she slips a finger into you, then another, then the whole of the little hand. The chitin is firm, but flexes and feels very nice stuffed inside your needy cunt. She drives it into you again and again until you orgasm loudly. As you get back on the move, you catch her licking and sucking your [if HP of bee girl >= 5 and player is queenbeecocked] honeyed[end if] juices from her little hand with a grin.";
	if HP of bee girl >= 5, infect "Queen Bee";

to say HoneySex5: [player fucks Honey]
	say "     Drawn to her by her sweet scent, you take Honey into your arms and run your hands over her body. She buzzes happily and hugs [if HP of bee girl >= 5]her queen[else]you[end if] tightly. Lifting her small body up into your arms, you slide your cock into her warm pussy. Normally hidden under a puff of soft, golden hair, her honeypot is tight and wet around your [cock of player] cock. Her wings buzz excitedly as she bounces in your arms, riding your cock until you finally pump your thick[if HP of bee girl >= 5 and player is queenbeecocked], honeyed[end if] seed into her.";
	if HP of bee girl >= 5, infect "Queen Bee";

to say HoneySex6: [Queen bee fun with Honey]
	if cocks of player > 0:
		say "     Finding your attention drawn to the cute little bee girl, some new instinct in you becomes excited and your wings buzz. Hearing this, Honey smiles at you and comes over, putting her arms around you. 'Oh, let me serve you, my queen,' she says playfully even as she takes hold of your stiff cock. She slides her long, thin tongue over your [cock of player] manhood before taking it into her mouth and sucking at it hungrily. You rub her head and moan about what a [one of]loyal[or]pretty[or]sexy[or]cute[or]eager[at random] drone she is as that delightful tongue of hers works you over. Her hands caress your sexy body and rub your [ball size] as she pushes you closer to orgasm.";
		say "     Some new instinct in you becomes excited and your wings buzz. Hearing this, Honey smiles at you and stretches out, putting her juicy little muff on wanton display for you, cutely holding her folds open to bare her honeyed lovehole. 'I am yours to claim, my queen,' she says with a playful smile. Unable to turn down such an offer, you move atop her, lining up your cock with her lovely pussy and thrust it into her youthful body. Her upper hands run over your body while the smaller pair pull on your hips, urging you to fuck her ever harder. The feel of that honeyed hole around your [cock of player] penis is great. As you cum, thoughts of having a hive full of such sexy girls to breed and to serve you fill your mind. After pumping your [cum load size of player] load into her, you pull out and share several kisses with her before continuing on your way.";
		infect "Queen Bee";
	else if cunts of player > 0:
		say "     Finding your attention drawn to the cute bee girl, some new instinct in you becomes excited and your wings buzz. Hearing this, Honey smiles at you and comes over, putting her arms around you. 'Oh, let me serve you, my queen,' she says playfully even as she brushes her fingertips across your wet folds. Taking a seat, you spread your legs invitingly and have her move between them. She buries her face in your crotch, fingering your pussy before diving in and lapping up your [if player is queenbeecocked]honeyed [end if]juices like delicious nectar. As you cum, thoughts of finding a hive to breed many more such pretty and loyal bee girls play across your mind, turning you on greatly. Once she's done licking you clean, you caress her head softly and thank her for her fine service.";
		infect "Queen Bee";

Section 3 - Sexxxings

An everyturn rule:
	if companion of player is bee girl and skipturnblocker is 0:
		if cocks of player > 0 or cunts of player > 0:
			increase libido of player by 6;
			let diceroll be a random number from 35 to 200; [lust check vs 200, player libido 35 or less auto-wins]
			if diceroll < libido of player and lastfuck of bee girl - turns >= 4:
				say "[fuckscene of bee girl]";

the fuckscene of bee girl is "[sexwithHoney]".

to say sexwithHoney:
	if lastfuck of bee girl - turns < 4:
		say "     You've had some fun with the bee girl quite recently. Perhaps you should give her a break for a little longer?";
	else if cocks of player is 0 and cunts of player is 0:
		say "[beesexhoneypot]";
		if HP of bee girl >= 5, infect "Queen Bee";
		now lastfuck of bee girl is turns;
	else:
		let T be a random number between 1 and 5;
		if HP of bee girl >= 5 and bodyname of player is "Queen Bee" and a random chance of 1 in 3 succeeds:
			say "[beesexqueen]";
		else if cocks of player > 0:
			if T is 1 or T is 2:
				say "[beesexmale1]";
			if T is 3 or T is 4:
				say "[beesexmale2]";
			if T is 5:
				say "[beesexhoneypot]";
		else:
			if T is 1 or T is 2:
				say "[beesexfemale1]";
			if T is 3 or T is 4:
				say "[beesexfemale2]";
			if T is 5:
				say "[beesexhoneypot]";
		if HP of bee girl >= 5, infect "Queen Bee";
		now lastfuck of bee girl is turns;


to say beesexmale1:
	say "     Drawn to her by her sweet scent, you take Honey into your arms and run your hands over her body. She buzzes happily and hugs [if HP of bee girl >= 5]her queen[else]you[end if] tightly. Lifting her small body up into your arms, you slide your cock into her warm pussy. Normally hidden under a puff of soft, golden hair, her honeypot is tight and wet around your [cock of player] cock. Her wings buzz excitedly as she bounces in your arms, riding your cock until you finally pump your thick[if HP of bee girl >= 5 and player is queenbeecocked], honeyed[end if] seed into her.";
	now libido of player is ( libido of player + 1 ) / 3;

to say beesexmale2:
	say "     Sensing [if HP of bee girl >= 5]her queen's[else]your[end if] arousal, Honey snuggles up to you and nuzzles your crotch. Her tongue, long and thin, wraps around your shaft and wriggles over it. She takes you into her mouth and starts sucking hungrily while that [if HP of bee girl >= 5]wonderful[else]strange[end if] tongue teases you incessantly. Her upper arms run over your body, stroking and caressing you while her smaller ones cup your balls and knead them until you finally cum. She drinks down your seed, clearly loving the taste and always happy to [if HP of bee girl >= 5]service her queen's needs[else]repay you for your kindness[end if].";
	now libido of player is ( libido of player + 1 ) / 2;

to say beesexfemale1:
	say "     Sensing [if HP of bee girl >= 5]her queen's[else]your[end if] arousal, Honey snuggles up to you and nuzzles your crotch. Her tongue, long and thin, slides out to tease at your wet pussy. Pressing her lips to your dripping folds, she slides that wriggling tongue down into you, making you moan in delight. Her tongue quite skillfully delves to your very depths to taste your[if HP of bee girl >= 5 and player is queenbeecocked] honeyed[end if] nectar. You cum several times and she happily drinks down your sweet waters until you're both satisfied.";
	now libido of player is ( libido of player + 1 ) / 2;

to say beesexfemale2:
	say "     The cute bee girl buzzes over to you and snuggles close. As you run your hands through her soft hair and caress her sensitive antennae, she runs the small hand from one of her lower arms across your wet pussy, teasing your sensitive folds. After a little stroking, she slips a finger into you, then another, then the whole of the little hand. The chitin is firm, but flexes and feels very nice stuffed inside your needy cunt. She drives it into you again and again until you orgasm loudly. As you get back on the move, you catch her licking and sucking your [if HP of bee girl >= 5 and player is queenbeecocked] honeyed[end if] juices from her little hand with a grin.";
	now libido of player is ( libido of player + 1 ) / 3;

to say beesexhoneypot:
	say "     The bee girl's antennae twitch, sensing you a moment before you pounce her into a hug. Buzzing playfully, you roll [if HP of bee girl >= 5]your loving drone[else]her[end if] onto her back and bury your face between her legs. You nuzzle at the soft, golden hair covering her pussy and start lapping at her honeypot. And how appropriate that name is for it, for her juices are thick, sweet and rich like honey. Loving her taste, you drive her to several orgasms before finally stopping. She hugs you tightly and uses her long, slender tongue to lick away the sticky honey from your face.";
	now libido of player is ( ( libido of player + 1 ) * 2 ) / 3;
	PlayerEat 6;
	increase thirst of player by 1;

to say beesexqueen:
	if cunts of player is 0 or a random chance of 2 in 3 succeeds:
		if a random chance of 2 in 5 succeeds:
			say "     Finding your attention drawn to the cute little bee girl, some new instinct in you becomes excited and your wings buzz. Hearing this, Honey smiles at you and comes over, putting her arms around you. 'Oh, let me serve you, my queen,' she says playfully even as she takes hold of your stiff cock. She slides her long, thin tongue over your [cock of player] manhood before taking it into her mouth and sucking at it hungrily. You rub her head and moan about what a [one of]loyal[or]pretty[or]sexy[or]cute[or]eager[at random] drone she is as that delightful tongue of hers works you over. Her hands caress your sexy body and rub your [ball size] as she pushes you to orgasm. You drain your [cum load size of player] load down the horny girl's throat with thoughts of a hive full of such talented servants to tend to your needs. Honey buzzes happily as she enjoys the tasty reward for her duty fulfilled.";
			now libido of player is ( libido of player + 1 ) / 2;
		else:
			say "     Finding your attention drawn to the cute little bee girl, some new instinct in you becomes excited and your wings buzz. Hearing this, Honey smiles at you and stretches out, putting her juicy little muff on wanton display for you, cutely holding her folds open to bare her honeyed lovehole. 'I am yours to claim, my queen,' she says with a playful smile. Unable to turn down such an offer, you move atop her, lining up your cock with her lovely pussy and thrust it into her youthful body. Her upper hands run over your body while the smaller pair pull on your hips, urging you to fuck her ever harder. The feel of that honeyed hole around your [cock of player] penis is great. As you cum, thoughts of having a hive full of such sexy girls to breed and to serve you fill your mind. After pumping your [cum load size of player] load into her, you pull out and share several kisses with her before continuing on your way.";
			now libido of player is ( libido of player + 1 ) / 3;
	else:
		say "     Finding your attention drawn to the cute bee girl, some new instinct in you becomes excited and your wings buzz. Hearing this, Honey smiles at you and comes over, putting her arms around you. 'Oh, let me serve you, my queen,' she says playfully even as she brushes her fingertips across your wet folds. Taking a seat, you spread your legs invitingly and have her move between them. She buries her face in your crotch, fingering your pussy before diving in and lapping up your [if player is queenbeecocked]honeyed [end if]juices like delicious nectar. As you cum, thoughts of finding a hive to breed many more such pretty and loyal bee girls play across your mind, turning you on greatly. Once she's done licking you clean, you caress her head softly and thank her for her fine service.";
		now libido of player is ( libido of player + 1 ) / 2;
	decrease humanity of player by 3;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;



Section 4 - Endings

when play ends:
	if bee girl is tamed:
		if bodyname of player is "Queen Bee":
			now tempnum is 0; [content in Queen Bee]
		else if humanity of player < 10 and bodyname of player is "Black Equinoid":
			now tempnum is 0; [succumb content in black equinoid]
		else if humanity of player < 10 and bodyname of player is "Drone Wasp":
			now tempnum is 0; [succumb content in Drone Wasp]
		else if humanity of player < 10:
			say "     When you succumb and end up giving in to your instincts, Honey ends up leaving you. She buzzes off sadly into the city to find a new hive[if HP of bee girl >= 5] on her own[end if].";
		else:
			say "     When the military comes to rescue you and the other survivors they can find, Honey is able to come with you. Her small, girlish looks and her cute offer of honey from her precious bag wins over the gruff soldiers. As you're heading off, she grins and winks playfully to you, acting like an innocent little girl in front of the soldiers. A sample of the honey is tested just to be safe, but it is clean and non-infectious, as you already know. Honey keeps up her little girl act, claiming to be orphaned (which is true enough), and is released into your custody.";
			say "     When you set up your new life, Honey takes over a disused shed near your home and starts turning it into a new hive. With the royal jelly she hid at the bottom of her bag, she transforms herself into a new queen and gathers herself some new bee girl drones. Honey, now voluptuous and womanly, is a frequent lover of yours. You spend many a sunny day in her hidden hive with attention lavished on you both by her and her many lovely and lustful drones[if HP of bee girl >= 5]. She never seems to feel sad that you didn't end up remaining her queen, content in her new life as royalty living alongside you[end if].";

Honey ends here.
