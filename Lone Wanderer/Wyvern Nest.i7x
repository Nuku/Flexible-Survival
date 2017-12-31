Version 1 of Wyvern Nest by Lone Wanderer begins here.
[Version 1 - New location, NPC, items and everything associated with it]

Section 0 - Variables

wn_r is a number that varies.	[wn_r = Wyvern Nest_Relationship - Relationship with the Wyvern]
wn_r is usually 0.
wn_rope is a truth state that varies.	[Means to skip the strength check for the wyvern nest.]
wn_rope is usually false.
wn_ls is a number that varies. wn_ls is usually 250.	[wn_ls = Wyvern Nest last searched; a variable to mark how much time passed since the last time you searched the nest]
wn_trc is a number that varies.							[wn_trc = Wyvern Nest Table Row count]
wn_index is a number that varies.						[The index of the currently selected row]
wn_diceroll is a number that varies.					[Wyvern nest diceroll; apparently diceroll doesn't exist outside the scope of single functions, so I'm using my own. This one does persist.]
wn_oldbias is a number that varies.						[Storing the actual wyvern bias value, as I'm using it to generate a male wyvern on fights.]
wn_debug is a truth state that varies. wn_debug is usually false.	[Debug flag; it's only for me; I flip its flag outside the game.]
wn_rectest is a number that varies.
wn_recn is a number that varies.

when play begins:
	WN_Update_trc;
	WN_AddRow "Wyvern Cum" with 7;
	WN_AddRow "Cream Stand" with 17;
	now wn_recn is 10;
	RecTest wn_recn with wn_rectest;
	say "The Fibonacci of 10 is: [wn_rectest]";

[wn_r = Wyvern nest Relationship													]
[0 = Wyvern not met																	]
[1 = Wyvern met but not been to nest yet											]
[2 = Wyvern met and visited nest													]
[3 = Unwillingly became Wyverns offspring and then fled								]
[4 = Willingly became Wyverns offspring or accepted its touches afterwards			]

Section 1 - Room definition and Wyvern encounter in this nest

Wyvern Nest is a room.
[Wyvern Nest is above Rock Arch.]
Wyvern Nest is above Rocky Cliff.
the description of Wyvern Nest is "[WyvernNestDesc]".

to say WyvernNestDesc:
	say "     You stand on a large, crudely constructed, nest-like structure. The outer part of the nest has been built out of several felled palm trees, here there are several vertical logs sticking out. Inbetween these pillars there are numerous other logs laid on top of each other approximating a circle pattern. Most of the stabilizing logs have been covered with a bit of white mucus, reminiscent of the wyverns' goop. On closer inspection you can see bite and claw marks on the trees that have been used to construct this huge home. The floor is vetted with lots of straw but also some more of the sticky wyvern secretions, not all of them being the sticky glue used to hold together this nest. Within this nest there are a couple of man-sized eggs, presumably victims of what is housing in this nest, their shells feeling hard on touch. On the straw floor you can discover a large assortment of items, most of which seems to be junk the nest's owner found on the beach. Maybe you can [italic type]search the wyvern nest[roman type] for something of use?";
	say "[link]search[as]Search the Wyvern Nest[end link]";
	
instead of going up from Rocky Cliff:	[The function of visiting the nest. You roll dice to get up unless you threw down a rope from an earlier discovery]
	say "     You approach the wall, on top of if it rests a circular construction of felled palm trees";	[Different starts, depeding on player's relationship]
	if wn_r is 0:
		say ". Curiosity piqued, you want to see what is up there, maybe it's a nest and you could snag something useful up there or maybe even [if daytimer is day]lunch[else]dinner[end if]";
	else if wn_r is 1:
		say ". Remembering that the wyvern wandering the beach fled to this spot, it doesn't seem too far off that this must be its nest. Hopefully it isn't up there currently, so maybe you can scavenge something useful up there";
	else if wn_r is 2:
		say ". Despite already having visited the nest, ";
	else if wn_r is 3:
		say ". Memories of your humiliating experience being up there keep you pinned; you feel a sense of dread but yet, you still want to go up there for some reason. Is it to gather resources or are you secretely yearning to see your faux parent again? Shaking your head, you dismiss these useless thoughts";
	else if (bodyname of player is "Wyvern" and player is pure):
		say ". Memories of your previous experiences with your guardian make you subconsciously chirp, sounding like a fragile call of a small wyvern. Yearning to be touched and protected by the wyvern patriarch, you take position to get up.";
	else:
		say ". Many others who get captured by wyvern's would consider themselves lucky to be you, to have gotten away, but yet... you are standing here, wanting to walk back into the beast's nest.";
	if wn_rope is false:
		say ". Unfortunately you don't have any climbing gear with you, which means, you'll have to trust your bare hands and your strength to climb up these walls.";
		let bonus be (( the strength of the player minus 10 ) divided by 2);
		if 2 is listed in bookcollection, increase bonus by 2;
		let diceroll be a random number from 1 to 20;
		now wn_diceroll is diceroll;
		say "     You roll 1d20([wn_diceroll])+[bonus] = [special-style-1][wn_diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Strength Check):[line break]";
		increase wn_diceroll by bonus;
		if wn_diceroll > 16:	[Success]
			say "     Success: Making good progress, you put one foot up after another, climbing up with grunts. You feel like you weren't exactly made for this, but any thoughts or physical exertion keeps you from looking down, finding out whether you have vertigo or not. After many more grunts and some useless thoughts you reach up one final time, before you pull yourself up to the top of the wall.";
			move player to Wyvern Nest;
		else:				[Failure]
			PlayerWounded(30);
			say "     Fail: Making good progress, you are about half-way up before [one of]your arms fail you[or]you take one wrong step, trip[at random] and lose halt. Too shocked, you don't have time to scream as the air keeps pushing against you in your descent. With a sudden, painful splash you land in the water. Despite the pain of the harsh landing, you are relieved to find that you didn't break anything or in fact didn't die from the slip. You're sure that even if you broke something your nanites would still try to repair your wounds quickly as they are now, fixing your bruises.";
			move player to Rocky Cliff;
	else:
		say ". Grasping the rope you climb up.";
		move player to Wyvern Nest;
		
[If the wyvern is in the nest, you encounter it. The wyvern is there during the night. You fight it and leave the nest if you win. If you lose you are encased in an egg. After hatching, you become its offspring. If you have become its "offspring" you can wander around the nest area, but the patriarch won't let you leave easily.]
Every turn when the player is in Wyvern Nest:
	if daytimer is night:
		if LastTurnDay is true:
			say "The Wyvern come swooping down.";
		now the Wyvern Patriarch is in the Wyvern Nest;
	else if daytimer is day:
		if LastTurnDay is false:
			say "The Wyvern takes off to hunt on the Beach.";
		now the Wyvern Patriarch is nowhere;

Section 2 - Aiding functions and Wyvern Nest specific commands

[Challenge male or female version]
To WN_ClawFightM:
	now wn_oldbias is wyvernbias;
	now wyvernbias is 5;
	challenge "Wyvern";
	now wyvernbias is wn_oldbias;

[Wyvern routines]
To WN_HatchlingDayRoutine:
	say "REMOVE ME";

To WN_HatchlingNightRoutine:
	say "REMOVE ME";

[Update wn_trc function]
To WN_Update_trc:	[Update the table row count]
	[now wn_trc is number of rows in the table of wn_discoveries;]
	now wn_trc is 0;
	sort Table of wn_discoveries in index order;
	repeat through the Table of wn_discoveries in index order:
		increase wn_trc by 1;
		
[Roll the wn_diceroll; update the wn_index]
To WN_Roll:	[Roll a random number and return the index of the randomly selected row]
	let diceroll be a random number from 1 to wn_trc;
	now wn_diceroll is diceroll;
	if wn_debug is true:
		say "DEBUG: You rolled a [bold type][wn_diceroll][roman type].";
		LineBreak;
	say ". You find ";
	say "[name in row wn_diceroll of the Table of wn_discoveries]";
	say "!";
	now wn_index is 0;
	while wn_index < index in row wn_diceroll of the Table of wn_discoveries:
		increase wn_index by 1;
		
[Function to get the index of the last row]
To WN_LastIndex: [Find the index of the last row]
	now wn_index is 0;
	while wn_index < index in row wn_trc of the Table of wn_discoveries:
		increase wn_index by 1;
		
[Delete a row in the table of wn_discoveries and update the table row count]
To WN_DeleteRow (N - number):
	choose row N in the Table of wn_discoveries;	[Get the currently selected row into the focus of Inform. Then blank it and sort the table, leaving all blank entries at the bottom.]
	blank out the whole row;
	WN_Update_trc;
	
[Add a row in the table of wn_discoveries. It will discover a new index on its own.]
To WN_AddRow (S - a text) with (N - a number):
	choose a blank row in table of wn_discoveries;
	now index entry is N;
	now name entry is S;
	WN_Update_trc;

[Definition of "nestSearch" command]
nestSearch is an action applying to nothing.
Understand "search wyvern nest" as nestSearch. Understand "search the wyvern nest" as nestSearch.

Check nestSearch:	[This may not work. Test it]
	if the location of player is not Wyvern Nest:
		say "You can't see any such thing." instead.

carry out nestSearch:
	if wn_ls - turns is less than 6:
		say "     You already explored the nest for some stuff recently. It would be unwise to get the wyvern's belongings too much into disarray.";
	else:
		now wn_ls is turns;
		say "     You look around the nest, hoping to find something";
		WN_Roll;
		WN_Payload (wn_index);

Section 3 - Table of discoveries of Junk in the Wyvern Nest and associated functions

[Table of Wyvern Nest discoveries]
Table of wn_discoveries
index	name
1	"Seashell Shield"
2	"Rope"
3	"Half-Digested Mass"
4	"Sustenance"
5	"Wyvern Goop"
6	"Hot Dog Stand"
8	"Wyvern Egg"
9	"Mirror"
10	"Large Sign"
11	"Torn Swim Trunks"
12	"Good Burger"
13	"Odd Curiosity"
14	"Effigy"
15	"Black Pearl"
16	"Lewd Box"
--	--
--	--

[Execute payload]
To WN_Payload (N - a number):
	if N is 1:
		WN_SeaSh;
	else if N is 2:
		WN_FindRope;
	else if N is 3:
		WN_FindHDM;
	else if N is 4:
		WN_FindSustenance;
	else if N is 5:
		WN_FindGoop;
	else if N is 6:
		WN_FindHDS;
	else if N is 7:
		WN_FindCum;
	else if N is 8:
		WN_FindEgg;
	else if N is 9:
		WN_FindMirror;
	else if N is 10:
		WN_FindSign;
	else if N is 11:
		WN_FindST;
	else if N is 12:
		WN_FindGB;
	else if N is 13:
		WN_FindOC;
	else if N is 14:
		say "REMOVE ME";
	else if N is 15:
		WN_FindBP;
	else if N is 16:
		WN_FindLB;
	else if N is 20:
		WN_FindICS;
	else:
		say "Invalid.";
	
[Payload of the discoveries]
to WN_SeaSh:
	say "     You find a Seashell shield. Confused about it you pack it into your inventory.";
	LineBreak;
	say "[bold type]You gain a Seashell Shield![roman type][line break]";
	increase carried of Seashell Shield by 1;
	WN_DeleteRow wn_diceroll;

to WN_FindRope:
	say "     You find rope, you throw it down.";
	now wn_rope is true;	[Now you don't have to roll for strength to get to the nest anymore]
	WN_DeleteRow wn_diceroll;
	
to WN_FindHDM:
	say "     You find some icky mass. Feeling compelled to clean the nest up, you take it to throw it away later.";
	LineBreak;
	say "[bold type]You gain 1 Half-Digested Mass![roman type][line break]";
	increase carried of Half-Digested Mass by 1;
	
to WN_FindSustenance:
	let diceroll be a random number from 0 to 5;
	now wn_diceroll is diceroll;
	if wn_diceroll is 0:
		say "     Unbelievable, there is actually a [one of]can of food lying on the nestground, but on closer inspection it does seem to be a military ration. Hopefully whoever this belonged to isn't in one of these eggs. Feeling compelled to honor the fallen, you salute to the egg standing closest to you[or]some fish lying on the nestground. The thought of eating raw fish doesn't exactly sound appealing, but it seems to have been caught recently, judging by its pristine look[or]hot dog lying on the nestground. It's not necessarily in good condition as it has been squished and stomped into the hay, but you deem that you can't exactly be picky in this day and age about your food[at random]";	[Food]
		say "[bold type]You gain 1 food![roman type][line break]";
		increase carried of food by 1;
	else if wn_diceroll is 1:
		say "     Score! There is a bag of tortilla chips hidden inbetween some logs of the edge of the nest. Judging by feeling around the wrinkly bag, it seems like they have received some rough treatment, having most of its contents pulverized. The bag itself doesn't show any tears, so the contents are probably still safe. It's not too bad, many people do in fact enjoy eating the bottom part of the bag, so maybe you'll get to see why others enjoy eating crumbs";	[Chips]
		say "[bold type]You gain 1 chips![roman type][line break]";
		increase carried of chips by 1;
	else if wn_diceroll is 2:
		say "     There is so much junk lying around in this nest; you find that there is even a ship's mast wedged between many of the logs, holding the nest together. Following the mast, you see something indescript just outside the nest, compelling you to step closer. Retching you turn your head when you have closed up to the pile. Filled with morbid curiosity you take a closer look at the mass; it's a flesh coloured pile that feels wet and soft on touch, almost like meat. The conclusion that the wyvern living here threw up one of its past meals doesn't seem to far off with the smell and all the attributes of the pile. For some reason you decide to help clean up the area and take the acrid, juicy piece of flesh along with you";	[Half-Digested Mass]
		say "[bold type]You gain 1 Half-Digested Mass![roman type][line break]";
		increase carried of Half-Digested Mass by 1;
	else if wn_diceroll is 3:
		say "     Your foot gets caught on something, causing you to tumble forward. Tipping over you grasp onto one of the eggs, surprisingly enough the egg doesn't topple over and does offer you the opportunity to stabilize yourself. Sighing in relief you are grateful that the unborn wyvern has been in the right place at the right time. After convincing yourself that you didn't break anything, you take a look back at what caught your foot. In amazement you find a bottle of water glued to the straw with some of the wyvern's natural, yellowish-white glue. It takes a bit of effort to pry the water bottle free; it still feels a bit sticky on touch. Hopefully you'll be able to avoid ingesting the residue when you consume the contents later";	[Water Bottle]
		say "[bold type]You gain 1 water bottle![roman type][line break]";
		increase carried of water bottle by 1;
	else if wn_diceroll is 4:
		say "     Not knowing what to look for, your eyes search the hay to your feet";	[Soda]
		say "[bold type]You gain 1 soda![roman type][line break]";
		increase carried of soda by 1;
	else if wn_diceroll is 5:
		say "     ";	[Dirty Water]
		say "[bold type]You gain 1 dirty water![roman type][line break]";
		increase carried of dirty water by 1;
	say ". You stash your find away. Hopefully the wyvern won't miss anything.";
	
to WN_FindGoop:
	say "     You step into soome goop, groaning at that. For some reason you find yourself compelled to pick some up; perhaps it's somewhat nourishing; how else would the people within the eggs grow?";
	say "[bold type]You gain 1 Wyvern Goop![roman type][line break]";
	increase carried of wyvern goop by 1;

to WN_FindHDS:
	say "     You find a hot dog stand. It's torn open and there's nothing more inside. It's empty.";
	
to WN_FindCum:
	say "     You find strings of cum on the nest, ranging from one end to the other end, but most of it drips from the eggs.";

to WN_FindEgg:
	say "     Not really finding anything you take a gander at these eggs. Putting an ear against it, you try to listen for signs within. You can hear/feel a very faint shifting. Unsettled you step away.";

to WN_FindMirror:
	say "     It's astounding that there is a mirror somewhere in the grass nearby. You step out to take a look at yourself. Your [face of player] a testament to how the last happenings in your life changed you. But after all, despite your appearance you're still you. Having taken a moment to ascertain yourself, you feel more calm.";
	increase humanity of player by 10;

to WN_FindSign:
	say "     REMOVE ME";
	
to WN_FindST:
	say "     REMOVE ME";
	increase carried of Torn Swim Trunks by 1;
	WN_DeleteRow wn_diceroll;
	
to WN_FindBP:
	say "     REMOVE ME";
	[increase carried of Black Pearl by 1;]
	WN_DeleteRow wn_diceroll;
	
to WN_FindGB:
	say "     REMOVE ME";
	
to WN_FindOC:
	let diceroll be a random number from 0 to 5;
	now wn_diceroll is diceroll;
	if wn_diceroll is 0:
		say "     ";	[Hawkman]
	else if wn_diceroll is 1:
		say "     ";	[PVC Dolphin]
	else if wn_diceroll is 2:
		say "     ";	[Blue Gryphon]
	else if wn_diceroll is 3:
		say "     ";	[Fruit Bat]
	else if wn_diceroll is 4:
		say "     ";	[Viking]
	else if wn_diceroll is 5:
		say "     ";	[Frog]
		
to WN_FindBP:
	[if KyrverthStage is 3:]
	if wn_r is 2:
		say "     Remembering Kyrverth's desire for treasure, you look around whether you can find anything. The owner of this nest does hoard a wide variety of stuff, so you're positive you might find something useful among the trash. Somehow you know that something is under one of these eggs; it's hidden within the straw just in front of one of the eggs. What you pull out has your mouth agape - a large sphere that lacks any colour. In fact this orb even seems to absorb most of light that hits its smooth, pitch black surface but some of it is still reflected, leaving a brilliant shimmer. Turning it with your hands, this thing does really seem to be perfect with its spherical shape. At some point you blink rapidly as some [if daytimer is day]sunlight[else]moonlight[end if] directly reflected into your eyes. You feel a bit confused and spaced out as you look around. Judging by the [if daytimer is day]sun[else]moon[end if] you do seem to have been standing around here for a while. This pearl does seem to have an influence over you, and you don't know whether carrying it around is a good idea but you stash it away nonetheless. Hopefully this will appease the dragon.";
		[now Kyrverthitemget is 5;]
	else:
		say "     While searching through the straw in this home you feel something call out to you. You can't quite put it, but you know that there is something really valuable in this nest. Shaking this feeling off, you know that you can not stay in this nest for too long.";
		
to WN_FindLB:
	say "     REMOVE ME";
	
to WN_FindICS:
	say "     Surprised, you find a familiar sight within the nest. The ice cream stand from before is here. Unfortunately it's empty.";
	
[In Sarockats file: In the gryphon event; select a blank row and make its index 21, its name "Gryphon Ice Cream Stand" and its payload WN_FindICS]

Section 4 - Wyvern Nest specific items
	
[Wyvern Nest specific items]
Table of Game Objects (continued)
name	desc	weight	object
"Half-Digested Mass"	"An amorphous mass of... something. You are not sure of its origins, the only thing you do know about this flesh-like pulp is that it was inside the belly of another beast. The thought of eating this repulses you."	1	Half-Digested Mass
"Seashell Shield"	"It's a shell of a giant oyster. While the creamy white shell has been chipped and scratched it does seem pretty sturdy."	2	Seashell Shield
"Torn Swim Trunks"	"A pair of swim trunks that have been ripped apart. You don't think it's going to offer much protection. In fact it's less protective than regular clothing and leaves your crotch area open."	2	Torn Swim Trunks

Half-Digested Mass is a grab object. It is part of the player. Understand "hdmass" as Half-Digested Mass.
The usedesc of Half-Digested Mass is "[HDMUsing]";

to say HDMUsing:
	if ((hunger of player > 50) or ("Vore Predator" is listed in feats of player)):	[Conditions: Hunger is great or you are a vore predator, at that point you are used to stuff yourself with anything]
		say "Your hunger is overbearing and it's hard to find food in this post-apocalyptic land. Your body urging you to eat something, you are hesitating with the piece of meat in your hand. REMOVE ME";
		decrease humanity of player by 20;
		decrease hunger of player by 15;
	else:
		say "Briefly pondering with the raw meat in your hands, you examine its texture, it being a bit discoloured of being attacked by the previous eaters['] enzymes and acids. That and the smell are enough to convince you to stash it away; you are not eating this.";
		increase carried of Half-Digested Mass by 1;	[Increase count of half-digested mass by 1; You don't use it after all]

instead of sniffing Half-Digested Mass:
	say "Taking the soft and unidentified mass into your hand, you take a whiff. You regret your decision with its acrid and acidic odour punishing your sense of smell. Hastily packing the meat away, you cough and grasp for more fresh air, trying to get the pungent taste out of your nostrils; in the meantime you wonder why you even carry around this piece of garbage.";

Seashell Shield is equipment.
It is not temporary.

Torn Swim Trunks is equipment.
It is not temporary.
The placement of Torn Swim Trunks is "body".
The descmod of Torn Swim Trunks is "REMOVE ME".
		
Section 5 - NPC definition of Wyvern Patriatch

Wyvern Patriatch is a man.
The description of Wyvern Patriarch is "[WyvernPDesc]".
[The conversation of Wyvern Patriarch is { "Breathing heavily." }.]
The scent of Wyvern Patriarch is "     The wyvern smells like the sea but with a spicy undertone.".
[Wyvern Patriarch is in Wyvern Nest.]

to say WyvernPDesc:
	if debugactive is 1:
		say "DEBUG -> Wyvern Nest Relationship: [wn_r] <- DEBUG[line break]";
	say "     REMOVE ME";

instead of conversing the Wyvern Patriarch:
	say "     You face the wyvern and speak to it, [one of]asking it for its name[or]introducing yourself[or]asking whether it is hungry[or]asking whether it can talk[or]asking whether you may borrow some equipment[at random]. The wyvern tilts its head, yellow eyes with slitted pupils pinned on your form in a blank, animal-like stare. The nest guardian probably didn't understand you, but it still tries to discern why you are meaningfully standing in front of it. Before it gets any ideas to do anything else to you, you move to another spot in the nest, pretending to be busy with something else. Thankfully, this seems to be enough to make it lose interest as the wyvern moves its long neck to groom the scales on its back.";
	
instead of fucking the Wyvern Patriarch:
	say "     Knowing that the patriarch is rather primal and instinct driven you know that you cannot dictate how it's going to fuck you. But you could offer yourself in a certain way to influence it. How shall you do so?";
	
Section 6 - Events

[Definition of all events]
Wandering Wyvern is a situation. The sarea of Wandering Wyvern is "Beach".
Death from above is a situation. The sarea of Death from above is "Beach".	
Shooting Blanks is a situation. The sarea of Shooting Blanks is "Beach".
Crossbreeding is a situation. The sarea of Crossbreeding is "Beach".
Junk Coinnoisseur is a situation. The sarea of Junk Coinnoisseur is "Beach".

[Adding the events to blacklists]
when play begins:
	add Wandering Wyvern to badspots of guy;
	add Wandering Wyvern to badspots of furry;
	add Death from above to badspots of guy;
	add Death from above to badspots of furry;
	add Shooting Blanks to badspots of guy;
	add Shooting Blanks to badspots of furry;
	add Crossbreeding to badspots of guy;
	add Crossbreeding to badspots of girl;
	add Crossbreeding to badspots of furry;
	add Junk Coinnoisseur to badspots of guy;
	add Junk Coinnoisseur to badspots of furry;
	
[Resolving all of the events]
Instead of resolving Wandering Wyvern:
	if wn_r is 0:
		say "     The [if daytimer is day]sunlight reflecting on the nearby water surface blinds you[else]sky is clear with stars illuminating the dark[end if] as you walk along the shore. A soft breeze moves the waves towards the coast, softly splashing atop the sand before the water moves back. This serene place could make one forget for a moment about the fact that this beach is haunted by creatures that people would find unbelievable just a few weeks ago. This moment of reflection is interrupted as you notice a footmark on the dry sand; a footprint of the paw of a three-clawed creature. Before you can make any guesses, you notice a shadow creeping up from behind. Recognizing the shadow as one of the wyvern creatures from the city, you barely dodge its goop that it tried to entrap you with. Cursing yourself how you let such a large creature sneak up on you, you ready yourself for combat.";
		[set wyvernbias to male; to cheat the system to get a male wyvern]
		WN_ClawFightM;
		if hp of player > 0:
			say "     REMOVE ME";
		else:
			say "     REMOVE ME";
			move player to Wyvern Nest;
	else if wn_r is 1:
		say "     REMOVE ME";
	
Instead of resolving Death from above:
	say "     One of the wyverns from the city is approaching you from above";
	now Death from above is resolved;
	
Instead of resolving Shooting Blanks:
	say "     REMOVE ME";
	now Shooting Blanks is resolved;

Instead of resolving Crossbreeding:
	say "     REMOVE ME";
	now Crossbreeding is resolved;
	
Instead of resolving Junk Coinnoisseur:
	say "     REMOVE ME";
	now Junk Coinnoisseur is resolved;
	
Section 7 - Sex/Vore Scenes

to say WN_SexSelection:	[The Sex menu that shows up]
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Grooming";
	now sortorder entry is 3;
	now description entry is "Get cleaned and taken care of by the wyvern.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck it off";
	now sortorder entry is 1;
	now description entry is "Service the beast orally.";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Present yourself";
		now sortorder entry is 2;
		now description entry is "Let yourself get taken by this beast.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Cock vore";
	now sortorder entry is 3;
	now description entry is "Coax it into stuffing you down its dick again.";
	[]
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
				if (nam is "Grooming"):
					say "[wn_grooming]";
				if (nam is "Suck it off"):
					say "[wn_oral]";
				if (nam is "Present yourself"):
					say "[wn_fuck]";
				if (nam is "Cock vore"):
					say "[wn_cv]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the attempt?";
			if the player consents:
				now sextablerun is 1;
				say "     You change your mind and try to scurry off of the Patriarch's grasp";
				[if Wyvern is horny:
					get fucked with a random scene;
				else:
					you are let go;]
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
	
To say wn_grooming:
	say "REMOVE ME";
	
To say wn_oral:
	say "REMOVE ME";
	
To say wn_fuck:
	say "REMOVE ME";
	
To say wn_cv:
	say "REMOVE ME";
	
Section 8 - Endings

Section 9 - Debug commands and Problems

[Debug commands specific for the nest.]
WN_DebugStart is an action applying to nothing.
Understand "wn debug start" as WN_DebugStart. Understand "wndebugstart" as WN_DebugStart.

carry out WN_DebugStart:
	if wn_debug is false:
		now wn_debug is true;
	else:
		now wn_debug is false;
		
WN_DebugAdd is an action applying to nothing.
Understand "wn add" as WN_DebugAdd. Understand "wnadd" as WN_DebugAdd.

carry out WN_DebugAdd:
	if wn_debug is true:
		WN_AddRow "Ice Cream Stand" with 20;
	else:
		say "This is not for your eyes.";

WN_DebugStatus is an action applying to nothing.
Understand "wn status" as WN_DebugStatus. Understand "wnstatus" as WN_DebugStatus.

carry out WN_DebugStatus:
	if wn_debug is true:
		say "The number of rows in wn_discoveries is: [bold type][wn_trc][roman type].";
		WN_LastIndex;
		say "The index of the last row is: [wn_index]";
	else:
		say "This is not for your eyes.";
		
WN_DebugPrintTable is an action applying to nothing.
Understand "wn table" as WN_DebugPrintTable. Understand "wntable" as WN_DebugPrintTable.

carry out WN_DebugPrintTable:
	if wn_debug is true:
		say "Table of wn_discoveries";
		LineBreak;
		repeat with N running from 1 to the number of filled rows in the Table of wn_discoveries:
			Choose row N in the Table of wn_discoveries;
			say "[index in row N of the Table of wn_discoveries]	[name in row N of the Table of wn_discoveries]";
			LineBreak;
	else:
		say "This is not for your eyes.";
		
[Referencing the functions in the table doesn't exactly work, as Inform always wants table entries to have a type. So maybe I have to search for a function that converts a string to a function]

Wyvern Nest ends here.