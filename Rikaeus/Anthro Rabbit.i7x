Version 4 of Anthro Rabbit by Rikaeus begins here.
[Version 3.1 - Updated to extended heat table - Stripes]
[Version 4.0 - Restructured the infection and mob so that they aren't split identities but rather an actual pack, changed the looks a tiny bit for the infection. Changed the name]
[- Originally Authored By: Lago Moro -]

"Adds a Anthro Rabbit to Flexible Survival's Wandering Monsters table."

LastLuckyFootTurn is a number that varies.

Section 1 - Monster Responses

when play begins:
	add { "Anthro Rabbit" } to infections of girl;
	add { "Anthro Rabbit" } to infections of guy;
	add { "Anthro Rabbit" } to infections of furry;

to say AnthroRabbDesc:
	setmongender 9; [creatures are mixed/variable]
	if bodyname of player is "Anthro Rabbit":
		now combat abort is 1; [stops the fight]
		say "     A small humanoid bunny appears in front of you! Less than four foot nine and completely naked, it could pass as a short adult human if it weren't for the rabbit-like qualities it had. [one of]He[or]She[at random] looks at you excitedly, obviously intrigued by the fact that you appear to share the same infection as them. Seconds later, more of them come out of various hiding places, all crowding around you, chittering about random things as they talk about you being a fellow pack member. The one that had appeared in front of you first walks closer to you, tilting its head at you. 'Does fellow rabbit want to join in some fun?' It asks curiously, gesturing to all of the rabbits present. You get the feeling that the small bunny is propositioning you so you have to think about what to do.";
		say "[DoubleRabbitSexMenu]";
	else if bodyname of player is "Bunny Jock":
		now combat abort is 1; [stops the fight]
		say "     A small humanoid bunny appears in front of you! Less than four foot nine and completely naked, it could pass as a short adult human if it weren't for the rabbit-like qualities it had. [one of]He[or]She[at random] looks almost worshipingly at you, admiring, from where they're staring, your tall stature. 'You're such a huge rabbit!' They say in complete awe, probably wondering how you could be your height. Seconds later however, more of the same rabbit come out of various hiding places, all crowding around you and adoring you just like the first one is. Some of them are even reverently touching your hands. The original however steps forward and stutters out a question. 'C-can we help big rabbit somehow?' They say in a way that makes you feel like they're trying to proposition you.";
		say "[JockRabbitSexMenu]";
	else:
		say "A small humanoid bunny appears in front of you! Less than four foot nine and completely naked, it could pass as a short adult human if it wasn't for the ears, the paws, and the short fur covering [one of]his body. He[or]her body. She[at random] is looking at you curiously, as if contemplating what to do next. However, before you can say anything, out of various hiding places come multiple similar looking creatures, all of them of varying genders. As they approach, you can hear some of them mutter in an excited voice, 'A new pack member!'";

to say AnthroRabbVictory:
	if HP of Player > 0: [submitted]
		say "     Dropping to the floor and holding your hands up as if to present yourself in a submissive stance. The rabbits however look at you rather oddly, not comprehending what the heck you're doing. 'Maybe soon to be pack-member needs a hug?' One of them suggests. They all perk up at this and walk up to you and start hugging you, rubbing themselves up against you in a lovingly-like fashion, clearly trying to cheer you up in a misperceived assumption that you're sad. After a few minutes, you feel them leave you alone on the ground with accomplished looks on their faces.";
		if lucky rabbit foot is not owned:
			say "     Before you get up and leave, you notice something on the ground though. Pushing yourself onto your feet, you move towards it and see that it's a rabbit's foot. You think to yourself and assume that the bunnies left this behind, perhaps for you? You shrug your shoulders and pick it up, feeling the velvety softness of the fur, such nicety probably would be a pleasure in such a chaotic time. So, you quickly decide to pocket it, perhaps it could help you in dark times.";
			increase carried of lucky rabbit foot by 1;
		infect "Anthro Rabbit";
	else: [beaten]
		say "     Falling back onto the ground as one of the rabbits give you one good punch, they all punch you. 'New pack member!' You hear some of them mutter again as they all move towards you and start rubbing their paws over you, massaging your wounds as if trying to make you feel better. It certainly does make you feel better, easing the aches and pains a little bit. Once they're done, all of the bunnies look over you and nod their heads before chittering amongst themselves and running off, giving you one last glance as they leave.";
		infect "Anthro Rabbit";

to say AnthroRabbBeaten:
	say "     Knocking the last bunny to the ground, you wipe an imaginary bead of sweat from your brow as you give them a gesture as if asking them to try again. This causes several of the rabbits to [']eep['] out loud as all of them start to scurry and panic as they scramble to their feet and dash away from you. Shrugging your shoulders, you figure that decides that and head on your way.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Anthro Rabbit";
	now enemy title entry is "Rabbit Pack";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]They give a coordinated attack, pushing you back one by one![or]One of them jumps onto your back and smacks you on the head. More than once.[or]You lose your balance and fall on the ground! They try to pin you down by piling on top of you![or]One of them manages to flank you and shoves you to the ground.[at random]";
	now defeated entry is "[AnthroRabbBeaten]";
	now victory entry is "[AnthroRabbVictory]";
	now desc entry is "[AnthroRabbDesc]";
	now face entry is "that of a rabbit, with distinctive ears sprouting from the top of your head and flopping downwards";
	now body entry is "far below average height but agile and your hands are human in quality, fingers and everything though they are lightly padded. The same goes for your feet, though they're a tad bit larger, possibly to help you with jumping.";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "short fur covering almost every inch of your body";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a [one of]short[or]fluffy[or]twitchy[at random] rabbit tail.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]sheathed[or]rabbit[at random]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "floppy bunny ears sprout from the top of your head and hang on the sides of your face"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you feel your body pulse as it changes right in front of your eyes. [if ScaleValue of player < 2]It suddenly grows, becoming larger than it was before, but not as large as you probably were prior to everything. [else if ScaleValue of player > 2]It suddenly starts to shrink, becoming smaller and tinier until you are far below average height for what you were prior to the apocalypse. [end if]Your body is pretty fit for your size, matching the lithe and dexterous form that you've acquired"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "a fair coating of fur covers you from head to toe. Feels almost like velvet"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a small tail sprouts, waggling"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it shrinks into a furry sheathe. A pair of soft balls descends as well"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 6;
	now dex entry is 15;
	now sta entry is 10;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Both";            [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;                 [ How many HP has the monster got? ]
	now lev entry is 4;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 4;                [ Amount of Damage monster Does when attacking.]
	now area entry is "High";           [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 1;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 5;         [ Length infection will make cock grow to if cocks]
	now cock width entry is 3;          [ Size of balls ]
	now breasts entry is 6;             [ Number of Breasts infection will give you. ]
	now breast size entry is 2;         [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 5;         [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 3;          [ Width of female sex infection will try and give you ]
	now libido entry is 10;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Loot monster drops, ]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 2;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]fit[or]slender[or]cute[at random]";
	now type entry is "[one of]bunny[or]rabbit[at random]";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;            [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only)]
	now altcombat entry is "default";
	now BannedStatus entry is false;    [ Row used to designate any special combat features, "default" for standard combat. ]


Table of Game Objects (continued)
name	desc	weight	object
"lucky rabbit foot"	"A trinket in the form of a rabbit's foot that usually brings good luck. The fur appears rather soft to touch."	0	lucky rabbit foot

instead of sniffing lucky rabbit foot:
	say "What are you expecting it to smell like? Okay, maybe a little bit of musk if anything, but that's it.";

lucky rabbit foot is a grab object.
the usedesc of lucky rabbit foot is "[lucky rabbit foot use]".
lucky rabbit foot is part of the player.
lucky rabbit foot is not temporary.

to say lucky rabbit foot use:
	if LastLuckyFootTurn - turns < 5:
		say "     Shooting a look towards the soft charm the rabbits gifted you, you shake your head and decide not to use it in fear of possibly ruining the novelty of the trinket. Perhaps you should wait a bit.";
	else:
		say "     Taking the soft furry trinket into your hands you rub it on your cheek, enjoying the velvety sensation that brushes your face, letting your worries fade away.";
		SanBoost 15;
		now LastLuckyFootTurn is turns;

lucky rabbit foot is infectious. The strain of lucky rabbit foot is "Anthro Rabbit".

Section 3 - Sex Menus for the rabbits

to say DoubleRabbitSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take a rabbit up your ass";
	now sortorder entry is 1;
	now description entry is "Offer one of the rabbits your hole to ride.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck one of them off";
	now sortorder entry is 2;
	now description entry is "Offer your mouth to one of the rabbits.";
	[]
	Sort the table of fucking options in sortorder order;
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Take a rabbit up your ass"):
					say "[DoubleRabbitSex1]";
				if (nam is "Suck one of them off"):
					say "[DoubleRabbitSex2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head tell the rabbit that you'd rather not. It gives you a little forlorn look before it quickly recovers, bounding over to its allies who it leads off to somewhere private you guess. No doubt to either find another person or act like the bunnies they are.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DoubleRabbitSex1:
	say "     Thinking about it for a few seconds you nod your head as you voice your offer to the rabbit in front of you. It grows a happy look on its face before turning to the bunnies behind you two. They hum and point randomly at one who quickly runs forward, presenting itself to you. It's a male rabbit, looking just like the others but the fact that it's a guy visible due to the furry sheathe and balls. Not entirely sure how to do this you are surprised when you are kissed and groped by the bunny. Of course you don't find it repulsive, as you did ask for this so instead you return the kiss. While the two of you get further into the kiss the other rabbits distract themselves with each other. Your partner on the other hand begins to get more intimate with you, pulling off your clothes to get to the body under them.";
	say "     Once you're free of your clothes your fellow rabbit pushes you down onto all fours and starts groping around your ass. He manages to quickly find what he's looking for as you feel a finger shove its way into your hole. Your sex partner scissors and fingers you open, prepping you for his cock so that you don't get hurt, adding more digits the further time goes. It's not entirely a uncomfortable experience as he appears to rub against the right parts to make it a nice sensation. A few minutes later you feel the fingers leave you and something much larger take its place.";
	WaitLineBreak;
	say "     The rabbit gives a little push forward as the head of his cock pops into your hole, causing you to let out a groan. He eases forward as slowly as he can, clearly aware of how much you can take at the moment. Despite that however, it doesn't take him long before he is fully hilted in your ass, his furry balls resting against your cheeks. You look back at him and see that he's giving you a look that's practically asking if you're ready. So you nod at the bunny which prompts him to pull back and slam forward. This makes you gasp out loud in pleasure as he presses against the right nerves which sends wonderful sensations all over your body.";
	say "     Taking that as a cue to go all the way, the rabbit begins to fuck you vigorously, repeatedly pulling out and slamming back in, his balls slapping against your cheeks as he grips you close. As the both of you are in the throes of passion, you take a quick look around and see the other bunnies in rather intimate positions, clearly enjoying themselves. As time goes on you can feel the rabbit getting closer and nearer to climaxing with the tightening of his sack. You turn your head and pull the rabbit into a kiss which appears to set him off as he thrusts into you one last time with a grunt.";
	WaitLineBreak;
	say "     As soon as he thrusts into you one last time you feel his warm seed flow into you, filling you up. At the same time you hear many other gasps and look around, seeing the other bunnies all orgasming as well, shooting their loads over their partners or in them. When your rabbit's climax tapers off he pulls out and gives you another kiss before smiling happily at you, clearly having enjoyed your copulation. He helps you up and brushes off any dust that got on your body before assisting you in getting dressed, clearly a gentleman in your opinion. Once this is all done he gives you an expectant look.";
	say "     'Perhaps pack-mate can visit us again sometime?' he asks, looking at you with hopeful eyes. You give him a soft chuckle and a peck on the cheek which makes him light up with glee before telling him that you might just revisit them whenever you have free time. That causes the rabbit to happily bound over to his fellow bunnies who have already cleaned up rather good. They all wave at you, which prompts you to return it prior to them all leaving together, hopping or running away as they can. You smile and just walk away, continuing what you were doing before.";

to say DoubleRabbitSex2:
	say "     You muse about what the bunnies are offering before nodding at them and suggesting something to the one in front of you. They grow a smile and turn to one of the many male rabbits in the group, gesturing for them to come over. He happily bounds on over and looks at you with an eager smile. Taking a glance over the bunny you can see that yes, it's clearly male from the anatomy that is visible. So, with that in mind you quite quickly get onto your knees and move your face towards his furry balls, inhaling his musky scent, the smell filling you with a horny need. Taking a quick look around before you continue you see that the others are getting into their own intimate scenarios.";
	say "     Right after you stick out your tongue and start to lick at his furry balls, tasting the sweat that gathered. Your partner clearly enjoying it from the moan that emits from his own mouth. As you roam his sack you reach a hand up and start massaging it along with your other ministrations to add onto the sensations that the rabbit is feeling. All of this causes the bunny's cock to start emerging from the sheathe, revealing a hard red member. Interested in going further you start dragging your tongue upwards before it finally reaches his dick, causing a salty taste to explode into your mouth.";
	WaitLineBreak;
	say "     Once you reach the tip, you take it into your mouth and slowly descend onto it, going inch by inch. As you go your rabbit sex partner groans and grabs ahold of your ears, clearly trying to hold himself back from fucking your face. You pull off and chuckle at him, before giving him a nod to go ahead before getting back on his cock. The bunny then eagerly thrusts into your oral cavity, hilting himself fully so that his balls are resting against your chin. Seconds later he begins to piston in and out of your throat, his sack slapping against your chin. Thankfully you can take him all the way or you'd be gagging repeatedly, but all of this gets you an idea.";
	say "     You take your hand and move it to the bunny's hole where you poke a finger at it before you push said digit inwards. This causes your rabbit partner to [']eep['] loudly as he pushes deep into your mouth. You look at him and see that he has a hazy pleasured gaze on his face which prompts you to move your finger further into his rectum. He groans and with a renewed passion begins to face fuck you harder, causing you to move your finger in rhythm with his thrusts. You can tell he's getting close by the clenching of his anal muscles and it's quite obvious when he lets out a loud moan.";
	WaitLineBreak;
	say "     Seconds later you feel a salty liquid fill your mouth as your rabbit partner reaches his climax and releases his load. Shrugging your shoulders, you decide to happily gulp it down. Looking around after you pull off of the bunny's cock you see that the others have reached their own orgasms, if the looks on their faces and the liquid everywhere says anything. Standing up, you brush yourself off, though you're quickly surprised by a kiss from the male that you were having intercourse with. 'Hopefully pack mate can visit us again sometime,' he says, giving you a happy smile before bounding over to his friends. Looking at them with a grin you think about it before heading on your way.";

to say JockRabbitSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck one of the rabbits anally";
		now sortorder entry is 1;
		now description entry is "Have one of the bunnies ride your cock.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get doubleteamed anally and orally";
	now sortorder entry is 2;
	now description entry is "Offer your ass and your mouth to two of the rabbits.";
	[]
	Sort the table of fucking options in sortorder order;
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck one of the rabbits anally"):
					say "[JockRabbitSex1]";
				if (nam is "Get doubleteamed anally and orally"):
					say "[JockRabbitSex2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head tell the rabbit that you'd rather not. It gives a rather sad look in your direction but respects your decision before hurrying off with its fellow bunnies. No doubt to find someone else or to have private time with its friends.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JockRabbitSex1:
	say "     With how eager these rabbits are to please, you get an idea of what you want, vocalizing it to the one in front of you. Their eyes widen and they nod excitedly before moving to one of the many rabbits available. They then drag said bunny who looks rather excited and clearly male. Shrugging your shoulders you shed your clothes and pick up the one foot shorter than you creature and start groping around at his ass, causing him to [']eep['] loudly. You chuckle at him and continue to move your hands around, trying to find his hole, which thankfully doesn't take long. Soon enough you locate it and press one of your padded fingers in.";
	say "     This action makes the bunny you're holding groan and squirm in pleasure as it tries to grip you closer so as to not fall. While you are slowly fingering the rabbit you take a look around at the others and notice that they're getting rather intimate with each other but still somehow managing to watch you. You quickly then decide to add another digit, starting to scissor him open, hoping that this will be enough for the bunny. Doing this for about a minute more you then remove your fingers and position yourself at the entrance of your sex partner, who appears to be holding their breath in anticipation.";
	WaitLineBreak;
	say "     With a swift thrust you push your cock into the rabbit's tight hole, causing the male to let out a loud moan as your length goes deeper and deeper into him. Once you're fully hilted you take a moment to appreciate how into your partner is before you quickly pull out and slam back in, making him yelp as you rub against all the right nerves. Taking that as a voice of consent, you begin to fuck him rapidly, driving your dick in and out as fast as you can, your balls slapping loudly against his cheeks. By now the bunny's own length is rock hard and leaking precum prominently, showing you how much he is enjoying it.";
	say "     Looking around once more, you see that the other rabbits are nearing their own orgasms, as told by the [']eeps['] and shouts as well as the cum everywhere. This spurs you on to finish, so you speed up your thrusts, practically bouncing the bunny up and down your cock, his head thrown back in complete pleasure. However, it appears before you can get to your climax your partner does as you feel his hole clench around your dick and see him spurt all over himself. The tightness of the rabbit's ass on your length ends up being the end for you as you let out a shout of pleasure and slam in one last time, spilling your seed into him.";
	WaitLineBreak;
	say "     As you help the rabbit off your cock and onto the ground he appears to change a bit. He grows a little bit taller and muscular, becoming more like you than his friends. This appears to set off his fellow bunnies who look really excited at this change and surround him in awe. You back away, lest you get swept up into it and start cleaning yourself up a bit. As you do this you notice they've appeared to have started another orgy, which prompts you to chuckle and simply walk away, not wanting to participate again.";

to say JockRabbitSex2:
	say "     Having a few seconds to think about what you want to do, you quickly come to a conclusion. You tell the rabbit in front of you what you wish to do, causing their eyes to widen and then for them to dash over to the group of bunnies. A little bit later they drag over two males who are looking at you with excited looks on their faces, clearly happy about what they're about to get to do. Figuring you should get to it, you divest yourself of your clothes and kneel down on all fours, in front of one of them, bringing you face first with his furry balls and sheathe. Inhaling, the musky smell causes you to groan a bit as you decide to get started.";
	say "     When you begin to lick at the sack of the male in front, you can feel the one behind you groping around at your back end, clearly searching for your hole. It doesn't take long for him to find it, promptly pushing a finger in and causing you to grunt. Taking one of the balls into your mouth you roll it around and swipe your tongue at it, making the rabbit above you moan. Your ministrations manage to make the bunny's length begin to peak out of the sheathe, slowly emerging from it along with a heady aroma.";
	WaitLineBreak;
	say "     Deciding to go further, you remove your mouth from the rabbit's sack and start to trail your tongue up his hard cock, taking in the salty taste. As you do this, the bunny behind you adds another finger and begins to open you up a bit more, scissoring your hole with both digits. Once you reach the tip of the cock you take it into your mouth, slowly going down on it. Thankfully you don't gag when your nose ends up pressed up against the male's stomach, but you do pull back, dragging your tongue along the length as you bring your lips back to the tip. However, before you can deepthroat it again, you feel something much larger and blunter than fingers at your hole.";
	say "     It quite quickly pushes into you, making you groan on the cock in your mouth and moving you back down onto it. The rabbit whose length you're sucking decides to grab ahold of your ears and take control of the situation now that there's a dick in your hole. He promptly pulls out before slamming back in, balls deep, timing it with the other bunny fucking you so that it's a proper spitroast. To the others watching it's probably an interesting sight watching you basically get fucked into sucking a cock. Though to be honest you can't say that you aren't enjoying the experience yourself.";
	WaitLineBreak;
	say "     This method of sex continues for quite a bit, both bunnies practically fucking you into each other. With the one in front of you roughly slamming his cock into your mouth and the other into your hole you're pretty occupied for the time being. But you can tell that both of them are getting close, particularly the one that you're sucking as his dick is spilling copious amounts of precum into you, which you're having to swallow. With the other one you can tell vaguely by the tightening of his balls each time they slap against your ass, which is usually a sign someone is close to orgasm.";
	say "     Sure enough, seconds later you hear both rabbits yell as they slam into you one last time, both balls deep into you, ass and mouth. The amount of cum the one in front of you spills is so much that you have to continuously swallow so as to not choke on it, whereas you're sure that you are probably leaking seed out of your ass profusely. It takes them a bit to come down from their climaxes but when they do, they pull out of you and quickly help you clean up. It's something you didn't expect but are thankful for, nonetheless. Once you're dressed you thank the rabbits for their time and head on your way, a last glance noting that the other bunnies appear to be asking the two who fucked you many questions about how the sex was.";
	infect "Anthro Rabbit";


Anthro Rabbit ends here.
