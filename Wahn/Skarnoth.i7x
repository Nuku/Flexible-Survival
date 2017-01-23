Version 1 of Skarnoth by Wahn begins here.
[Version 1 - New Creature]

"Adds a demon npc to Flexible Survival, entering the game as an aftermath of freeing Elijah and a quest line"

[ Skarnoth, the demon                                                                      ]
[                                                                                          ]
[ HP of Skarnoth                                                                           ]
[   0: starting state, not met yet                                                         ]
[   1: brought to the library, nothing done with him yet                                   ]

[ libido of Skarnoth - player interactions with imps                                       ]
[   0: never met an Imp Scout                                                              ]
[   1: fought, won and tied up an Imp Scout                                                ]
[   2: fought, won and tried to kill an Imp Scout                                          ]
[   3: player fought more than one imp and got a hint to talk to Elijah                    ]
[   4: player talked to Eli, didn't go through with the attack                             ]
[  10: fought, lost and was marked by an Imp Scout                                         ]
[  11: marked player talked to Eli, didn't go through with the attack                      ]
[  20: player took him as a slave and moved him into the library                           ]


Half-Renovated Room is a room.
Northwest of Grey Abbey Library is Half-Renovated Room.
Half-Renovated Room is sleepsafe.
The description of Half-Renovated Room is "[LibrarySideRoomDesc]";

to say LibrarySideRoomDesc: 
	say "     This large room of the Grey Abbey Library seems to be where most of the furniture of the old abbey ended up when the building was converted to its new purpose. With its high ceiling, ample floor-space and even a big fireplace, it could have been a dining hall or something in the past. Now it is mostly filled with numerous pieces of furniture, some stacked quite high and partially covered in white sheets. The two still accessible walls are covered in scaffolding and show signs of recent work on them - looks like workers were in the progress of refurbishing the room for library use when the nanite outbreak began.";
	if Skarnoth is in Half-Renovated Room:
		say "     Since you brought the demon prince Skarnoth here and securely attached the long chain on his collar to the scaffolding, the imprisoned predator has done his best to improve his comfort of his prison. A soft (if somewhat threadbare and stained) couch has been dragged to stand against the back wall and shows signs of being used as a bed. He even found a high-backed armchair somewhere, which is now set up next to the fireplace. Sitting in it, the demon awaits you, wearing an arrogant expression as if he was a king awaiting supplicants.";

Section 1 - Description

Skarnoth is a man. The hp of Skarnoth is usually 0.
The description of Skarnoth is "[SkarnothDesc]".
The conversation of Skarnoth is { "Woof." }.
SkarnothLibraryEntry is a number that varies. [when he was brought in]

to say SkarnothDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Skarnoth], LEVEL: [level of Skarnoth], LIBIDO: [libido of Skarnoth], LIBRARY ENTRY TURN: [SkarnothLibraryEntry] <- DEBUG[line break]";	
	say "     Skarnoth the demon prince is a magnificent specimen of masculinity, with a strikingly handsome face framed by blood-red hair. His firm pecs and six-pack abs would fit an underwear model - which he kind of is, as you stripped him of his regalia, taking off anything but a skin-tight black thong. The strip of fabric does more to show off the bulge of his package than to conceal anything.";
	say "     Letting your gaze stray from the flawless, reddish skin of the demon's torso, his similarity to the perfection a Greek statue does diminish a bit - as Skarnoth's otherworldly nature shows clearly on the rest of his body. Starting with a few small scales on the sides of his upper body, then larger and more solid ones on his hips and down the legs, the infernal being has overlapping, flexible scales. His feet bear sharp claws, as do the hands (if a bit smaller ones), and further scale-plates make it appear like he is wearing elaborate bracers as well as pauldrons to cover his shoulders. Also, he has a long tail with a ridge of scales running down the backside, ending in a spaded tip. A pair of large horns curving up from his head completes the image of a handsome and dangerous predator.";

The scent of Skarnoth is "     Skarnoth has an almost entrancing, sexy scent. A pleasant tingle runs down your spine as you take a deep sniff, breathing in the masculine aroma and pheromones, underlain with a little bit of brimstone".

Section 2 - Talking

instead of conversing the Skarnoth:
	if (hp of Skarnoth > 0):
		say "     <This is a placeholder text for this WIP npc. Please have some patience until there is time to write more content for Skarnoth>";
	otherwise:
		say "ERROR-Skarnoth-[hp of Skarnoth]C: He isn't in one of the states she should be in! Please report how you got to this message.";

Section 3 - Sex

Instead of fucking the Skarnoth:
	say "     As you approach the handsome demon, he [one of]leans back in his high-backed chair and hooks a leg over one of its armrests, pushing up his crotch for you to look at[or]gives you a lewd grin and runs a finger along his rippling chest muscles, all the way down to his navel[or]smiles at you lewdly and pushes his tongue out, demonstrating quite a range of flexibility with it[or]beckons you closer with slow, sensual motions of his tail[or]raises both arms and hooks his fingers together behind his head, stretching his muscles in an enticing show of masculinity[at random]. 'What brings you here master,' Skarnoth greets you with a teasing tone, 'Do you want to teach this evil-doer to be a productive member of society, happy to be introduced to a better way? No... I don't think so - not with that lusty gleam in your eyes. So - punishment it is then, eh? Show me what a bad, bad boy I've been!'";
	say "     Laughing in amusement, he proceeds to lightly slap a hand against one of his rock-hard pecs, then abs, followed by sliding it down to the black thong barely concealing his sizable manhood. Stretching the flexible fabric to hook it under his balls, the demon prince reveals his thick and throbbing cock and strokes it slowly up and down. With a wink to you, he adds, 'And if you feel like getting a little taste of the forbidden fruit, I'm definitively your man. Come on - you won, so live a little. No one's gonna hold it against you if you crave a nice thick demon cock. I won't tell anyone, I promise.' Skarnoth's sharp canines almost seem to gleam as he smiles broadly after saying that, wiggling his eyebrows at you.";
	wait for any key;
	say "[SkarnothSexMenu]";

to say SkarnothSexMenu:
	setmonster "Demon Prince";
	choose row monster from the table of random critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Skarnoth's cock";
	now sortorder entry is 1;
	now description entry is "Give him a blow-job.";
	[
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck him";
		now sortorder entry is 2;
		now description entry is "Use the demon's mouth.";
	[]
	if (cocks of player > 0 or cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "69 with Skarnoth";
		now sortorder entry is 3;
		now description entry is "Share oral pleasures with your male demon.";
	[]
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Ride the Skarnoth's dick (vaginal)";
		now sortorder entry is 4;
		now description entry is "Let the demon breed you.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride the Skarnoth's dick (anal)";
	now sortorder entry is 5;
	now description entry is "Let the demon fill your ass with his seed.";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Skarnoth's ass";
		now sortorder entry is 6;
		now description entry is "Fill the demon's ass with your cock.";
	]
	sort the table of fucking options in sortorder order;
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
				if nam is "Suck Skarnoth's cock":
					say "[SkarnothSex1]";
				otherwise if (nam is "Face-fuck him"):
					say "[SkarnothSex2]";
				otherwise if (nam is "69 with Skarnoth"):
					say "[SkarnothSex3]";
				otherwise if (nam is "Ride the Skarnoth's dick (vaginal)"):
					say "[SkarnothSex4]";
				otherwise if (nam is "Ride the Skarnoth's dick (anal)"):
					say "[SkarnothSex5]";
				otherwise if (nam is "Take Skarnoth's ass"):
					say "[SkarnothSex6]";				
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the chained demon, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SkarnothSex1: [player sucks him]
	say "     Licking your lips at the sight of Skarnoth's large prick, standing straight up and with prominent veins throbbing along its length, you take a step forward towards the widely grinning demon. 'I knew you couldn't resist,' he says in a charming voice while his long tail snakes towards you, brushing your lower leg with the spaded tip and then wandering upwards as the appendage wraps around to draw you in. The orange glow in his eyes gets a little brighter as he dabs a clawed finger to the tip of his cock, wiping up the almost glowing droplet of pre-cum there. As you bump against the demonic male's muscular thighs and feel the heat radiating off his body, Skarnoth raises his hand to offer his pre. Almost without thinking, you find yourself hungrily licking it off his finger. He tastes spicy and hot, tingling a little on your tongue, and you find yourself craving more - so you take his finger into your mouth to suck even the last little bit off.";
	say "     'Very good,' Skarnoth says and lets you suckle on his clawed digit for a short while, carefully stroking your tongue with its sharp point to give an enticing sensation of danger without actually hurting you. 'Why don't you go for more straight from the tap,' he adds after pulling out and stroking along the edge of your jaw, then nods down to his long, thick and throbbing manhood. There is more tasty pre welling up from his cum-slit right in that very moment, with a thin line of it already trickling down the shaft in an irresistible spectacle. Falling to your knees, you lean forward and run your tongue up the side of Skarnoth's erection, exploring its comfortably hot firmness with the tip. Soon, you reach the cockhead and slide your lips over it, sucking down hard to get another tasty treat.";
	say "     [WaitLineBreak]";
	say "     'Eager, aren't you? I like that in my p- err, master.' Skarnoth says with a grin, then pushes on the back of your head to make you go lower. Not forcefully, but with a firm yet gentle touch, making your stretched lips sink further down on his pole. Soon, the mushroom head of his cock bumps the back of your throat, making you swallow reflexively, snorting and choking on his penis - but the demonic male doesn't even think about letting you pull off. His hands remain wrapped around your head, firmly holding you just where you are while he says, 'Come on, you can do better. Relax your throat a bit and allow me in. You know you want to.' With no way to go but forwards, you submit to the demon's intention of face-fucking you.";
	say "     Soon, the hot and throbbing spear of Skarnoth's erection pushes further into you, stretching your throat around its girth. 'Yeah, you're doing really nice,' he gives a throaty grunt as his balls slap against your chin - you've taken all of Skarnoth's cock! 'This is what mortals were made for, you know. Some religions have that all mixed up,' comes the next comment, followed by him grinding your nose deep into the bush of his bright red pubic hair. You can't help but huff his masculine aroma, which makes you go weak-kneed and tingly - oh no, wait... that's the lack of oxygen from having his cock blocking your airway. The demon pulls you off his erection a moment later, chuckling at the way you gasp for breath, then starts to face-fuck you in earnest, hilting himself in your throat in a fast-paced rhythm.";
	say "     [WaitLineBreak]";
	say "     Skarnoth makes use of you for his own enjoyment, humping your mouth hard and almost without pause, which keeps you just a bit delirious but also somehow wanting for him to do it more. You don't know how long your breathtaking session takes, but at some point, the throbs of more pre come faster and faster while Skarnoth's grunts raise in urgency. Preparing yourself for his orgasm, you gulp down as he pulls out most of the way to cover your tongue with his load. The demon's cum is thick and creamy, even spicier than his pre and really quite hot, filling you with an inner warmth as you swallow it. More and more blasts of cum are blasted into your mouth and you do your best to eat it all, but after a little while, its hotness becomes a little bit of an issue - both in taste and temperature, as you start sweating and getting a red head, your eyes tearing up just a little.";
	say "     At that point, Skarnoth pulls his manhood out and blasts your face with the next spurt of cum, leaving a hot line of sticky whiteness across one cheek. 'Hope you like jalapeno peppers,' he says with a chuckle, 'And if not... you'll surely get used to it soon. Trust me, they all do.' He keeps a hand on your head to hold you close while aiming his cock with the other one, doing his very best to cover as much as possible of your face and upper body with his load. Only when his orgasm finally ebbs off does the demon let go, loosening his tail from around your hips too as he leans back in satisfaction. 'That was fun,' he says loudly, smiling as you get to your feet and start wiping up his cum to lick it off your fingers. 'Be sure to come back for more... master,' the demon adds after that, with the last word being an almost amused afterthought.";

to say SkarnothSex2: [he sucks the player]
	say "     A";

to say SkarnothSex3: [69 with Skarnoth]
	say "     A";

to say SkarnothSex4: [player pussy fucked]
	say "     A";

to say SkarnothSex5: [player ass fucked]
	say "     A";

to say SkarnothSex6: [Skarnoth's ass fucked]
	say "     A";

Section 4 - Events



instead of going northwest from Grey Abbey Library while (hp of Skarnoth > 0):	
	move player to Half-Renovated Room;
	if debugactive is 1:
		say "     DEBUG: SKARNOTH WALK-IN - HP OF SKARNOTH: [hp of Skarnoth], THIRST OF Skarnoth: [thirst of Skarnoth][line break]";
	say "     .";
	
Section 5 - Infection for combat purposes

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Demon Prince";
	now attack entry is "[one of]Skarnoth[or]The demon prince[or]The powerful demon[or]The handsome demon[at random] [one of]flashes past you in a flurry of claw-slashes with his hands, leaving behind bleeding gashes in your side.[or]jumps forward and gives you a bear hug, forcing both arms against your sides in impotent immobility. As air is being driven out of your lungs, you feel his breath hotly against your cheek, followed by his tongue licking possessively along your jawline. An eye-blink later, he lets go of you, laughing as you collapse to the ground and gasp for air.[or]throws himself on you and grabs your arm, then humps his hips forward. He is playing with you, only leaving a few scratches after making sure you feel his erect cock rub against your side.[or]gets a grip on your shoulder and throws you to the ground wish a harsh shove, which puts you on all fours with your ass raised. 'That's the proper way to await your master. Maybe you'll be an amusing pet after all.'[or]gives you a head-ringing slap that dazes you for a second, then lets his clawed hands roam over your body, feeling and groping you.[or]grabs you by the neck and aggressively kisses you, with his tongue exploring your mouth.[at random]";
	now defeated entry is "[line break]";
	now victory entry is "[line break]";
	now desc entry is "Stepping forward, the demon prince sneers at you. 'Usually people beg and whimper as they're dragged here. You see - they know what awaits them. It will be fun to make you realize the error of your ways! Oh, how you'll scream,' he chuckles darkly. Wiping a drop of blood from his last victim off his leather jacket and sucking his finger clean, the demon attacks without mercy";
	now face entry is "<noninfective>";
	now body entry is "<noninfective>";
	now skin entry is "<noninfective>";
	now tail entry is "";
	now cock entry is "<noninfective>";
	now face change entry is "<noninfective>";
	now body change entry is "<noninfective>";
	now skin change entry is "<noninfective>";
	now ass change entry is "<noninfective>";
	now cock change entry is "<noninfective>";
	now str entry is 20;
	now dex entry is 18;
	now sta entry is 18;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 22;
	now sex entry is "Male";           [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 275;               [ The monster's starting hit points. ]
	now lev entry is 20;               [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 35;              [ Monster's average damage when attacking. ]
	now area entry is "nowhere";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;       [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 9;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;            [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;            [ Target libido the infection will rise towards. ]
	now loot entry is "";              [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;         [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]demonic[or]infernal[or]powerful[at random]";
	now type entry is "[one of]demon[at random]";
	now magic entry is false;          [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;      [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]
	
when play ends:
	if bodyname of player is "Demon Slave":
		say "     Your new reality in hell focuses on satisfying Skarnoth's every desire - of which there are many, mostly carnal ones. As the overlord of his own little demonic realm, your master has the power to play with your body shape too, transforming you as he wishes to better enjoy breaking you to his will...";
		stop the action;	
	
Skarnoth ends here.
