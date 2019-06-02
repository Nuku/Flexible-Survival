Milking Facility by Kernog begins here.

[New location made of three rooms.
Entrance -> Requires a key card item found in the Underground Labs
Storage room -> Player can observe cow -> random gender milking scene
Control room -> Computer

Milking Bunker entrance is navigable

Computer can have either of these actions:
* Dispense ration -> delivers one bottle of infected milk to the player every day
* Raise productivity -> delivers two bottles instead of one
* Upgrade suits -> Milk becomes non-infectious
* Raise storage capacity -> GO

Mention the pet being captured as well
]

Section 1 - General

Table of GameRoomIDs (continued)
Object	Name
Milking Facility Entrance	"Milking Facility Entrance"
Milking Facility Factory	"Milking Facility Factory"
Milking Facility Operations Room	"Milking Facility Operations Room"

Table of Game Objects (continued)
name	desc	weight	object
"ESPP bunker keycard"	"A metallic access card, marked with the address of a bunker for some unspecific secret project"	1	ESPP bunker keycard
"manufactured milk"	"A bottle of milk manufactured at the milking factory"	1	manufactured milk

ESPP bunker keycard is a grab object. It is a part of the player.
manufactured milk is a grab object. It is a part of the player. Understand "milk" as manufactured milk. manufactured milk is infectious. The strain of manufactured milk is "Bottlenose Toy". The trade of manufactured milk is "distilled milk". The purified of manufactured milk is "distilled milk". manufactured milk is milky.


Section 2 - Entrance

Milking Facility Entrance is a room. It is fasttravel.
earea of Milking Facility Entrance is "Outside".
The description of Milking Facility Entrance is "[milkingFacilityEntranceDesc]".

to say milkingFacilityEntranceDesc:
	if Milking Facility Entrance is unvisited:
		if ESPP bunker keycard is owned:
			say "     Following the address written on the note accompanying the keycard, you make your way to the abandoned [']Milking Facility['] it mentioned. The words [italic type]Emergency Supplies Production Project, Facility 14 -  Dairy Products[roman type] are written in big letters over the door. The door is still sealed, but the electronic lock seems to be in working condition, and waiting for a keycard.";
		else:
			say "     You stumble upon the entrance of a bunker. Before the Events, it was hidden in a boarded-up building. Now that the boards have been yanked open, and the concrete walls crumbled, the mysterious bunker is exposed to the outside world. The words [italic type]Emergency Supplies Production Project, Facility 14 -  Dairy Products[roman type] are written in big letters over the door. The door is still sealed, but the electronic lock seems to be in working condition, and waiting for a keycard. You notice, next to the identification device, a small plaque directing employees who have lost their card to a room in the Trevor Labs Building in the inner city. [bold type]Judging from the minus in front of the room number, it should be somewhere underground in that building[roman type].";
	else:
		if ESPP bunker keycard is owned:
			say "     You face the entrance of the Dairy Products Facility. The metallic door is still sealed, but the electronic lock seems to be in working condition, and waiting for you to swipe in the keycard.";
		else:
			say "     You face the entrance of the Dairy Products Facility. The metallic door is still sealed, but the electronic lock seems to be in working condition, and waiting for a keycard. You notice, next to the identification device, a small plaque directing employees who have lost their card to a room in the Trevor Labs Building in the inner city. [bold type]Judging from the minus in front of the room number, it should be somewhere underground in that building[roman type].";

instead of going in from Milking Facility Entrance while ESPP bunker keycard is not owned:
	say "     You cannot go in. You lack a keycard.";

Section 2-1 Keycard situation

Table of GameEventIDs (continued)
Object	Name
Milking Facility Keycard	"Milking Facility Keycard"

Milking Facility Keycard is a situation. The sarea of Milking Facility Keycard is "Sealed".

Instead of resolving a Milking Facility Keycard:
	if Milking Facility Entrance is unvisited:
		say "     You stumble upon an abandoned office. A metallic plaque is nailed next to the door, and reads [italic type]Emergency Supplies Production Project[roman type]. The only object remaining in the room is a heavy, metallic desk. Inside the drawer, you find a keycard labelled [italic type]Facility 14 -  Dairy Products[roman type]. You take it, in case you find said facility in the city.";
	else:
		say "     You stumble upon an abandoned office. A metallic plaque is nailed next to the door, and reads [italic type]Emergency Supplies Production Project[roman type]. Remembering the bunker you have found earlier, you search the room. The only object remaining in the room is a heavy, metallic desk, so it is quickly done. Inside the drawer, you find a keycard labelled [italic type]Facility 14 -  Dairy Products[roman type]. You take it, and make a mental note of returning to the bunker whenever you can.";
	add "ESPP bunker keycard" to the invent of Player;
	now Milking Facility Keycard is resolved;


Section 3 - Factory

Milking Facility Factory is a room. It is inside of Milking Facility Entrance.
The description of Milking Facility Factory is "[milkingFacilityFactoryDesc]".
The scent of Milking Facility Factory is "     The room is filled with an odd mix of smells: strong scent of vinyl with hints of sweat coming from the vinyl cows.".

vinyl cows is scenery in Milking Facility Factory. "[vinylCowsScene]".
The scent of vinyl cows is "     The cows smell heavily of vinyl, and another, sweet-smelling chemical which gives you goosebumps.".

to say milkingFacilityFactoryDesc:
	if Milking Facility Factory is unvisited:
		say "     After entering the bunker and going down some stairs, you arrive in a large room, plunged in the dark. The only thing you can sense are the strong odor of vinyl, and the noise of machinery and pumps going on. Then, you hear a cow moo. Just as you pondered about the fate of poor cattle animals stuck in a bunker, a sensor detects your presence, and the lights go on. There are no cows in the room; no [italic type]real[roman type] cows, that is. Left and right, sitting in perfect lines, are a dozen of bovine statues casted in vinyl, and hooked up to various tubes and pumps. [if Bouncy Castle is visited]This sight brings you bad memories of your tribulations with other kinds of inflated objects. The plastic-looking toys emit another series of long, eerie moos, confirming your bad feeling about your discovery[else]the incongruity of the sight takes you aback for a moment, and really startles you when the plastic statues emit another series of long, eerie moos[end if]. You slowly advance in the alley, to observe these cows more closely. The vinyl bovines wobble and struggle constantly, until white liquids run through the transparent tubes hooking them to a large metallic tank, behind them. You recognize the liquids as sperm and milk. There are people inside these vinyl cows.";
		say "     You approach one of the cows and attempt to touch it. Instantly, cable-like tentacles descend from the ceiling and repel you. 'Please refrain from interacting with the workforce,' a canned message warns you flatly through the speakers. It seems that all you can do at the moment is look at the vinyl cows, or head to the control room, to the north of the factory.";
	else:
		say "     You stand in the factory of the Milking Facility. To your left and right, a dozen of [if milkingFactorySuitUpgraded is 0]plastic-like[else]metal-like[end if] vinyl cows are lined up. Tubes are hooked to their various private parts, and extract cum and milk at a [if milkingFactoryProductivityUp is 0]leisurely[else]frantic[end if] space, filling large metallic tanks behind them. North of the factory is a control room. Over the control room's door hangs a clock, indicating that the next pause of the [']workers['] will not be before a while.";

to say vinylCowsScene:
	say "     You report your attention to the dozen of vinyl cows lined up on each side of the room. The bovines have now a slick and shiny body, with a black-and-white metallic surface, which feels like it comes straight out of a high-tech factory. [if milkingFactorySuitUpgraded is 1]Thanks to the upgrade you authorized, it looks bulkier and sturdier than the previous model, without any useless addition; would you not hear raspy moos escape from the filter, you would have confused the vinyl cow for a statue. The fan has disappeared, and it seems that the person inside is forced to breathe the recycled air. It must be hot as hell inside[else]Their featureless face ends with an integrated fan which brings fresh, but filtered air in and out the inside of the suit, probably directly the lungs of the person inside. The rotund bovine constantly wobbles, following its prisoner's various squirmings[end if]. Various additional, transparent tubes are hooked on the cows['] surfaces. You can tell, from each tube's position, the gender of each prisoner. [if milkingFactoryProductivityUp is 0]The milkers go at a leisurely pace on their recipient. The ones working on female and herm breasts emit a constant, modest stream of human dairy. Every ten minutes or so, a groan here and there signal that one of the cock milkers extracted a new dose of cum from a cow[else]Since you activated the full productivity mode, the room is a concert of groans and moos. Breast milkers keep pumping and pumping, filling the tubes to full capacity, and the male cows seems to cum one after the other, continuously[end if]. The breast milk, and the other kind of [']milk['] is collected by the tubes, and stored in big, metallic containers sitting behind the cows. Next to each cow is a monitor, but they seem to be locked on a screensaver, an endless scenery of grassy hills.";

Section 4 - Control Room

Milking Facility Operations Room is a room. It is north of Milking Facility Factory.
The description of Milking Facility Operations Room is "[milkingFacilityControlDesc]".

to say milkingFacilityControlDesc:
	if Milking Facility Operations Room is unvisited:
		say "     You enter the small control room. The lights turn on a room in an almost pristine state, as if you arrived right after the occupants have left. You even spot a cup of stale coffee on a table. The most important feature of the room seems to be the large computer screen sitting at the other end of the room. 'Welcome, administrator. Awaiting instructions,' the screen displays ominously. You also notice an abandoned diary on the table. You might want to [bold type]look at the diary[roman type] whenever you have time to spare.";
	else:
		say "     You are in Milking Facility's Control Room. It is in the same, clean state than when you left it. The facility's computer awaits your interaction with it, at the other end of the room. The abandoned diary is still resting on the table.";

Section 4-1 - The diary

abandoned operator diary is scenery in Milking Facility Operations Room.
The description of abandoned operator diary is "An abandoned diary, waiting to be read."
The scent of abandoned operator diary is "The diary has a faint smell of leather, mixed with vinyl."

readingOperatorDiary is an action applying to nothing.
understand "use diary" as readingOperatorDiary.
understand "use abandoned operator diary" as readingOperatorDiary.
understand "use the diary" as readingOperatorDiary.
understand "use the abandoned operator diary" as readingOperatorDiary.
understand "read diary" as readingOperatorDiary.
understand "read abandoned operator diary" as readingOperatorDiary.
understand "read the diary" as readingOperatorDiary.
understand "read the abandoned operator diary" as readingOperatorDiary.

check readingOperatorDiary:
	if abandoned operator diary is not visible, say "You cannot use this action here." instead;

carry out readingOperatorDiary:
		say "     You read the first entry. It seems to have been written roughly one month before the nanite outbreak: [italic type]Hello, research diary. Damn, this feels weird. Two months ago, I was partying with my friends after earning my doctorate, and now I am in this top-secret-confidential-defense bunker, in order to perform governmental research. The Man wants us to devise a way to synthetize dairy products, in case of ecological or biological disaster. Standard federal paranoia, I guess, but I can see the promises it holds for civilian applications, do I do not mind. We just finished setting up everything. The cattle will only arrive next trimester, right now we are trying to tune our machine learning algorithm, to help us with our research. The AI is a little clunky, but I'm sure that, with the proper training sets, we will be able to extract something out of it.[roman type]";
		WaitLineBreak;
		say "     You skip a few, unimportant entries, and reach a second entry, written one week after the nanite outbreak: [italic type]Last week was crazy, for a lack of better words. I came to work, as usual, but then the security guard had me and the others confined inside the bunker. 'Biohazard outbreak,' he told us. The day passed, then the day after that, and then another day. Everyone was already nervous, and some were starting to panic. Ironically, the Emergency Supplies Production Project did not have any emergency supplies... The guard left the bunker on the fourth day, taking the risk to break the quarantine in search of food and water. This was the last time we saw him. On the fifth day, me and five others armed ourselves with whatever we could find, and explored the Outside. God, it was as if the Apocalypse had set in. Then, when we arrived near the Library, we were attacked by some kind of latex fox thing. He tried to hump poor Susie. Fortunately, I was there. We walked all the way to the beach, and decided to call it a day after finding some supplies in the restaurant. But something else followed us. How should I describe it? It was a big, purple inflatable bottlenose dolphin, walking on both legs. An anatomically correct one, too. It carried another pool toy with him (or her, we're still confused about that too). We chased off the bottlenose. We decided to investigate further tomorrow.[roman type]";
		WaitLineBreak;
		say "     The next entry, written the day after, seems important too. [italic type]The six of us went to the beach, and we tried to find the bottlenose toy from yesterday. We did not find here, but we saw some monstrous figures in the distance. What happened to the city? We eventually found an abandoned shack. Pool toys, these ones inflated. Then, it happened. First, the toys started to move and scream like crazy, startling everyone. Then, one of these things fell on Thomas. This one was deflated, and open. Did it fall on him intentionally, or was it an accident. Thomas was like gobbled-up by the pool toy, which zipped close after him. We watched, powerless, as the dolphin slowly filled with air on his own. We understood why all these pool toys were moving. Susie proposed we brought Thomas back to the Bunker, to find a way to get him out without hurting him. On the way back, a penis started to grow under the toy, as if it was a leaving thing. We heard Thomas grunt louder and louder, until the blasted thing ejaculated on us. We quickly understood that, the more we touched the toy, the more it was [']stimulated[']. We eventually managed to get Thomas back. We hooked him up to the MOO. That damn computer took a while to answer, only to write that it was [']working on a new solution[']. Work faster, dammit![roman type]";
		WaitLineBreak;
		say "     The next entry, written the next day: [italic type]MOO found a way to open the suit! I did not really understand its explanation. Something about nanomachines which took over the suit. Thomas was... Not the same. He had been turned into some weird human/pool toy hybrid, and had to be restrained as he instantly lunged at us, talking nonsense about [']sharing the fun with us[']. What a mess. And the worse came after that. MOO messaged us, and told us that he had successfully resolved his mission. I still shudder when I saw the schematics display on the screen. It really comes to a machine to think about milking humans for food. Thankfully, Susie put a forceful stop to MOO's background programs responsible for this. She could not throw away the whole thing, but at least MOO will not be able to act on it.[roman type]";
		WaitLineBreak;
		say "     The next and final entry, written one week after: [italic type]WHOEVER'S READING THIS DON'T (illegible scribbling).[roman type]";


Section 5 - The Computer

milking facility console is a thing. It is in Milking Facility Operations Room.
The description of milking facility console is "[milkingFacilityConsoleDesc]".

to say milkingFacilityConsoleDesc:
	say "     A large computer screen and its console awaits your input. You do not see the tower unit anywhere, which means that it must be somewhere deeper within the complex or somewhere else entirely, out of your reach. A webcam follows your movements constantly. Whenever you come within a couple of meters from the screen, it displays a series of reports:[line break]";
	say "     Next extract [if milkingFacilityLastProduction - turns < 8]dispensed in: [(8 - milkingFacilityLastProduction - turns) * 3] hours[else][bold type]available[roman type][end if][line break]";
	say "     Suit upgrades: [bold type][if milkingFactorySuitUpgraded is 1]effective[else]pending approval[end if][roman type][line break]";
	say "     Productivity optimizations: [bold type][if milkingFactoryProductivityUp is 1]committed[else]awaiting commit[end if][line break]";
	say "     Storage augmentation: [bold type][if milkingFactoryPlayerTrap is 1]ready[else]confirmation needed[end if][roman type][line break]";

[Milk dispenser counter. Works in the same way than lastFuck]
milkingFacilityLastProduction is a number that varies. When play begins, now milkingFacilityLastProduction is turns.
milkingFactoryProductivityUp is a number that varies. milkingFactoryProductivityUp is usually 0.
milkingFactorySuitUpgraded is a number that varies. milkingFactorySuitUpgraded is usually 0.
milkingFactoryPlayerTrap is a number that varies. milkingFactoryPlayerTrap is usually 0.

milkingFactoryManagement is an action applying to nothing.
understand "use console" as milkingFactoryManagement.
understand "use the console" as milkingFactoryManagement.
understand "use milking facility console" as milkingFactoryManagement.
understand "use the milking facility console" as milkingFactoryManagement.
understand "manage factory" as milkingFactoryManagement.
understand "manage the factory" as milkingFactoryManagement.

check milkingFactoryManagement:
	if milking facility console is not visible, say "You cannot use this action here." instead;

carry out milkingFactoryManagement:
	say "     Your hands are barely on the keyboard that the screen turns on. [italic type]Welcome, administrator. Please choose the issue to manage in the menu.[roman type][first time] A little lost, you click on the help icon on the screen. The program asks you some strange question: are you a researcher or a survivor? Your gender? Your family situation? And so on. Eventually, the screen displays an explanation: [italic type]Greetings, new administrator. I am MOO, Milking Optimization Organizer. My primary duty is to find a secure source of dairy products, in case of civilization collapse. This facility is currently experimenting on animated vinyl organisms, and their fluid extraction capacities. As the new administrator, you are required to review the improvement propositions that I make, and that are still pending approval since the disappearance of the previous administrator. I strongly recommend that you approve them. Your status also gives you the right to receive a daily dispense of the products of this facility. Let us make great work together, administrator.[roman type][only]";
	LineBreak;
	say "     [bold type]What do you want to do with the computer?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if milkingFacilityLastProduction - turns >= 8:
		choose a blank row in table of fucking options;
		now title entry is "Dispense dairy product";
		now sortorder entry is 1;
		now description entry is "Ask MOO to give you some of the dairy produced by the factory.";
	else:
		say "Next dairy extract dispensed in: [(8 - milkingFacilityLastProduction - turns) * 3] hours.";
	[]
	if milkingFactorySuitUpgraded is 0:
		choose a blank row in table of fucking options;
		now title entry is "Approve suit upgrades";
		now sortorder entry is 2;
		now description entry is "Check the 'Suit upgrades' entry";
	[]
	if milkingFactoryProductivityUp is 0:
		choose a blank row in table of fucking options;
		now title entry is "Commit productivity optimizations";
		now sortorder entry is 2;
		now description entry is "Check the 'Productivity optimizations' entry";
	[]
	if milkingFactoryPlayerTrap is 0:
		choose a blank row in table of fucking options;
		now title entry is "Augment storage space";
		now sortorder entry is 2;
		now description entry is "Check the 'Storage space' entry";
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
				if nam is "Dispense dairy product":
					say "     [italic type]Dispensing dairy products. Thank you in advance for your feedback[roman type], the computer prints on the screen, before displaying the mentioned feedback survey. [one of]What you thought was a coffee dispenser suddenly hums to life in the room[or]The dispenser turns on and hums softly[stopping]. After some rumbling, [if milkingFactoryProductivityUp is 0]a sealed bottle of milk falls down[else]two sealed bottles of milk fall one after the other[end if] where the coffee cup would be.";
					now milkingFacilityLastProduction is turns;
					add "manufactured milk" to the invent of Player;
					if milkingFactoryProductivityUp is 1, add "manufactured milk" to the invent of Player;
				if nam is "Approve suit upgrades":
					say "     A pop-up appears on the screen: [italic type]Suit upgrades will allow addition of purification functionalities, providing the consumer with 100% safe dairy. Approval cannot be rescinded. Do you confirm?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Confirm.";
					say "     ([link]N[as]n[end link]) - Cancel.";
					if Player consents:
						LineBreak;
						say "     [italic type]Thank you, administrator,[roman type] MOO answers. You hear the factory stir to life outside. Large tubes are suspended over each vinyl cow and pour down a shiny black molasses on them. The molasses sticks to the cows['] bodies and integrates with them. The shiny black-and-white motif reforms on the surface. The cows look bulkier and do not move an inch anymore, as if they have turned into statues.";
						now milkingFactorySuitUpgraded is 1;
						now manufactured milk is not infectious;
					else:
						LineBreak;
						say "     [italic type]Regrettable,[roman type] the AI replies cryptically.";
				else if nam is "Commit productivity optimizations":
					say "     A pop-up appears on the screen: [italic type]Productivity optimizations will allow us to gain around 100% in daily productivity by removing non-essential biological limiters. Commit cannot be rolled back. Do you confirm?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Confirm.";
					say "     ([link]N[as]n[end link]) - Cancel.";
					if Player consents:
						LineBreak;
						say "     [italic type]Thank you, administrator,[roman type] the computer tells you. The cows start mooing frantically outside of the control room as the milking machine gears up its ministrations.";
						now milkingFactoryProductivityUp is 1;
					else:
						LineBreak;
						say "     [italic type]Regrettable,[roman type] the AI replies cryptically.";
				else if nam is "Augment storage space":
					say "     A pop-up appears on the screen: [italic type]Creation of empty storage will allow us to gain around 100% in daily productivity by adding new production units. Search for viable subjects will begin as soon as approval is given. Do you confirm?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Confirm.";
					say "     ([link]N[as]n[end link]) - Cancel.";
					if Player consents:
						LineBreak;
						say "     [italic type]Thank you, administrator, and goodbye,[roman type] the screen displays. Nothing seems to have changed in the factory. A sense of dread overcomes you, like you have been tricked somehow.";
						now milkingFactoryPlayerTrap is 1;
					else:
						LineBreak;
						say "     [italic type]Regrettable,[roman type] the AI replies cryptically.";
			wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step away from the console. [italic type]Goodbye, administrator,[roman type] the screen displays, before it turns off.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";


Section 6 - Special bound state and game over scene

milkingCowSuitBindStage is a number that varies.[@Tag:NotSaved] milkingCowSuitBindStage is usually 0.

instead of going south from Milking Facility Operations Room while milkingFactoryPlayerTrap is 1:
	say "     The first thing you notice, when you pass the door of the control room, is the empty, black podium next to the door, and the mass of black vinyl goop sitting on it. The second thing you notice, far too late, are the mechanical arms grabbing your shoulders and hoisting you in the air. While you struggle with your bindings, other arms drop from the ceiling. They clamp on everything you wear and pull, leaving you naked and devoid of any weapon. The arms position you over the black pool of vinyl, and lets you fall in it. Instantly, the material sticks to your body and immobilizes you on your knees. A cow-shaped mask forms in front of your face. You catch it just in time before it slams on you. With your hands occupied, you cannot defend yourself against what comes next.";
	if Player is herm:
		say "     As if to confirm your dreadful suspicion, you feel something fix itself on your groin. You look down and see [Cock Count of Player] metallic milker[smn] attached to your cock[smn]. [ittheym] start[smv] pumping air in-and-out, and [itstheirm] inner rubber sheath[esmn] vacuum[smv] against your length[smn]. At the same time, you feel your [Cunt Count of Player] cunt[sfn] spread apart by what feels like bull-shaped dildo[sfn]. [ittheyf] start[sfv] jackhammering your puss[yfn], keeping you busy[if Nipple Count of Player > 0 and Breast Size of Player > 0]. With a loud [italic type]schlop[roman type], rubber cups attach themselves to your breasts and quickly vacuum, espousing your forms before going to work on you with an insistent [italic type]puff-pfff[roman type] noise[end if].";
	else if Player is male:
		say "     As if to confirm your dreadful suspicion, you feel something fix itself on your groin. You look down and see [Cock Count of Player] metallic milker[smn] attached to your cock[smn]. [ittheym] start[smv] pumping air in-and-out, and [itstheirm] inner rubber sheath[esmn] vacuum[smv] against your length[smn][if Nipple Count of Player > 0 and Breast Size of Player > 0]. With a loud [italic type]schlop[roman type], rubber cups attach themselves to your breasts and quickly vacuum, espousing your forms before going to work on you with an insistent [italic type]puff-pfff[roman type] noise[end if].";
	else if Player is female:
		say "     As if to confirm your dreadful suspicion, you feel something fix itself on your crotch. You feel your [Cunt Count of Player] cunt[sfn] spread apart by what feels like bull-shaped dildo[sfn]. [ittheyf] start[sfv] jackhammering your puss[yfn], keeping you busy[if Nipple Count of Player > 0 and Breast Size of Player > 0]. With a loud [italic type]schlop[roman type], rubber cups attach themselves to your breasts and quickly vacuum, espousing your forms before going to work on you with an insistent [italic type]puff-pfff[roman type] noise[end if].";
	else if Nipple Count of Player > 0 and Breast Size of Player > 0:
		say "     As if to confirm your dreadful suspicion, you feel something fix itself on your breasts. With a loud [italic type]schlop[roman type], rubber cups attach themselves to your breasts and quickly vacuum, espousing your forms before going to work on you with an insistent [italic type]puff-pfff[roman type] noise.";
	say "     Panic sets in, as you may have sealed your own fate in your own greediness.";
	WaitLineBreak;
	milkingCowSuitBind;

to milkingCowSuitBind:
	now boundsegment is 10000;[no escape]
	psycheeval;
	libidoeval;
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		now boundstate is true;
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if milkingCowSuitBindStage < 1: [Sets player to first stage of being bound.]
			now milkingCowSuitBindStage is 1;
		if lustatt > 99: [lustatt is short for 'lust attribute'. When reaching 100, the player orgasms. This check uses > 99 to force orgasm even if lustatt is somehow above 100]
			MilkingCowSuitOrgasm; [Calls the function defined later on]
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 5) + 1;
			if milkingCowSuitBindStage < 5, increase milkingCowSuitBindStage by 1; [Increases bound state intensity after every orgasm. At 4, instant game over.]
			if milkingCowSuitBindStage is 5: [Last stage. Game over. Placed above in top bind code to display orgasm, then complete submission.]
				say "     This orgasm was the last one to break your will to fight. Disoriented, debilitated with pleasure, you barely react when the exterior view of prison is suddenly cut from the screen of your googles. As the milking resumes, so do your moans, but your mask transforms them into feral moos. Your weakened mind easily accepts your new existence as a cow, until the machine does not even need to translate your noises anymore. You are kept in this state for what seems an eternity, suspended in soft, pleasurable darkness, continuously milked of all your fluids and kept alive by the computer for its nefarious experiments.";
				WaitLineBreak;
				now BodyName of Player is "milkingCowSuitSexSlave";
				now humanity of Player is 0;
				end the story saying "Trapped inside the cow suit, your daily life now resumes to being ceaselessly milked of your cum in pitch black darkness.";
				now Trixieexit is 1;
			if milkingCowSuitBindStage < 4: [Hides content to prevent endings colliding]
				now lustatt is Libido of Player;
				milkingCowSuitSanityOrgasm; [Calls the function defined later on]
				milkingCowSuitProgress; [Calls the function defined later on]
		now enduring is false;
		if milkingCowSuitBindStage < 4: [Hides content to prevent endings colliding]
			say "[milkingCowSuitBindDesc]";
			say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
			say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
			say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
			say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Struggle: :ᘌꇤ⁐ꃳ[line break][run paragraph on]";
			if humanity of Player < 1: [Lost all sanity. Instant game over.]
				if milkingCowSuitBindStage is 1:
					say "     Your already weakened sanity is unable to resist the mind-crushing orgasm, which gets you [if Player is male]to empty your balls inside the milker[smn][else if Player is female]to spray the inner-layer of the suit with fem-cum[else]to cum[end if] while letting out an almost inhuman bellow. The suit promptly engulfs you and seals your head inside an air-tight mask, muffling your sounds and turning them into lascivious moos. Taking advantage of your state of shock, the suit slowly hisses around you, isolating you from the outside world in a bubble of air. An anal plug and a thick rubber gag joins the other implements invading your body. The machine learning algorithm slowly adapts to your physiology, while you aimlessly wiggle inside your vinyl prison. Your mask is fitted with a video screen, which shows you an endless scenery of grassy field, seen from the eyes of a cow. The virtual cow reacts to each of your movements, and your already damaged mind slowly identifies itself as the animal.";
				else if milkingCowSuitBindStage is 2:
					say "     Your already weakened sanity is unable to resist the mind-crushing orgasm, which gets you [if Player is male]to empty your balls inside the milker[smn][else if Player is female]to spray the inner-layer of the suit with fem-cum[else]to cum[end if] while letting out an almost inhuman bellow. Taking advantage of your state of shock, the suit finishes to fill with air, isolating you from the outside world in a bubble of air. An anal plug and a thick rubber gag joins the other implements invading your body. The machine learning algorithm finishes to adapt to your physiology, while you aimlessly wiggle inside your vinyl prison. The life feed displayed in your googles is replaced by an endless scenery of grassy field, seen from the eyes of a cow. The virtual cow reacts to each of your movements, and your already damaged mind slowly identifies itself as the animal.";
				else if milkingCowSuitBindStage is 3:
					say "     Your already weakened sanity is unable to resist the mind-crushing orgasm, which gets you [if Player is male]to empty your balls inside the milker[smn][else if Player is female]to spray the inner-layer of the suit with fem-cum[else]to cum[end if] while letting out an almost inhuman bellow. Taking advantage of your state of shock, the suit finishes to fill with air, isolating you from the outside world in a bubble of air. The machine learning algorithm finishes to adapt to your physiology, while you aimlessly wiggle inside your vinyl prison. The life feed displayed in your googles is replaced by an endless scenery of grassy field, seen from the eyes of a cow. The virtual cow reacts to each of your movements, and your already damaged mind slowly identifies itself as the animal.";
				say "     As the milking resumes, so do your moans, transformed into feral moos, until the machine does not even need to translate your noises anymore. You are kept in this state for what seems an eternity, suspended in soft, pleasurable darkness, continuously milked of all your fluids and kept alive by the computer for its nefarious experiments.";
				WaitLineBreak;
				now BodyName of Player is "milkingCowSuitSexSlave";
				now humanity of Player is 0;
				end the story saying "Trapped inside the cow suit, your daily life now resumes to being ceaselessly milked of your cum, in pitch black darkness.";
				now Trixieexit is 1;
			else: [Section of actions possible during the bind.]
				let k be 0;
				now keychar is "INVALID";
				change the text of the player's command to "";
				while keychar is "INVALID":
					now k is the chosen letter;
					translate k;
					if the player's command matches "[number]":
						now keychar is "[number understood]";
				if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle": [player picked struggle]
					LineBreak;
					increase struggleatt by 1;
					if milkingCowSuitBindStage is 3 or struggleatt < boundsegment: [Determines if the cumulative "struggle attribute" < or equal to bound stage. If equal to, the player escapes. Each orgasm will remove struggleatt.]
						if milkingCowSuitBindStage is 1:
							say "     [one of]You pull on the mask trying to press on your face. The thing is almost impossible to rip off, and you need to use all your strength. Just as you throw it away, another cow muzzle forms from the vinyl puzzle, negating your efforts[or]You attempt to pull yourself off from the vinyl. With great efforts, you almost manage to stand up, but it was only MOO letting you tire out. The vinyl yanks you back on your knees, and you are back to the start[or]You attempt to yank the implements stimulating your body. Despite the vinyl sticking to your hand trying to hinder you, you manage to get a good grip. Alas, the [if Player is male]milker forms soft spikes pressing against your penis[esmn][else if Player is female]dildos form soft spikes pressing against the inner walls of your puss[yfn][else]suit forms soft spikes pressing against your chest[end if], urging you to stop from sheer discomfort[at random].";
						else if milkingCowSuitBindStage is 2:
							say "     You push against the walls of your vinyl prison. [one of]You use your hands and feet to push in front of you, in attempt to rip the material off. You think you are getting to something, when a rip starts showing on your video screen. But it instantly repairs itself, nullifying your efforts[or]You try to stand up and use your full body's strength to break the vinyl. Through the camera, you see the partially inflated cow stretch and stretch, deforming itself to keep yourself inside, the muzzle unmoving. Until it snaps back, and you are slammed against the floor from the rubber effect.[or]You yank your hips in an attempt to yank out the [if Player is male]milker[smn][else if Player is female]dildo[sfn][else]implements[end if] from your genitals. You feel your efforts rewarded at first. Then, MOO incorporates your movements to its cycle and your humpings quickly become counter-productive, raising your lust[at random].";
						else if milkingCowSuitBindStage is 3:
							say "     You desperately attempt to move your limbs. [one of]You attempt to shake your body left and right, and use the momentum to roll on the side. MOO quickly puts a stop to that, by redistributing the air in the middle layer, so that it matches your movements. The momentum is killed in the egg[or]You flex your muscles, in an attempt of dislodging your limbs. As soon as you start making a little progress, MOO cuts your air supply, only turning it back on when the asphyxiation stops your efforts[at random].";
						else if milkingCowSuitBindStage is 4:
							say "     You try to move, to find any modicum of progress that would keep you from despairing. [one of]You shake your body, trying to move it independently from the cow suit. On the camera, mechanical arms arrive again, and flip the cow in the air, again and again. You feel nothing, but you start to get more and more dizzy and nauseous, until your brain refuses to move an inch[or]You try to focus your efforts on a specific spot of the inner layer, with the aim of deflating it enough to give you back some freedom of movement. The AI retaliates by increasing the pressure inside your suit until even your lungs have trouble breathing. Once you are pacified by the vinyl's smothering embrace, the suit returns to its initial state[at random].";
						else: [Debug failsafe]
							say "     ERROR <OtterSuitStruggleMessage>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";
					else if lustatt > 79: [Struggle variation for high lust]
						if milkingCowSuitBindStage is 1:
							say "     With some difficulty, you manage to free your hands from the encroaching vinyl. Grabbing a nearby ledge, you start to pull yourself out, inch by inch. But then, you sense your orgasm coming. Panicking, you pull even stronger. The artificial intelligence, sensing your increasing vitals, gears up its machine into overdrive. Your body freezes in mid air as your brain attempts to process the onslaught of stimuli it goes through. Stuck in a dead-end, it has no choice but to deliver a powerful climax. Crying in pleasure, you hump the deflated, vinyl suit as you [if Player is male]unload your [Cum Load Size of Player] load inside the milker[smn][else if Player is female]squirt repeatedly in orgasmic pleasure[else]cum hard[end if] Keeping your body paralyze with overstimulation, the machine brings you back in the middle of the vinyl, while the suit finishes forming around your body.";
						else if milkingCowSuitBindStage is 2:
							say "     You feel another orgasm coming in the middle of another push. You violently trash in your prison, yearning to make progress before the inevitable. On the direct-live feed you are forced to see, you see your human shape agitate, while it violently punches and kicks the vinyl cow, like a cartoon character trapped in a bag. Then the orgasm comes. You think that you have frozen in place, but your pelvis is actually violently humping the air while [if Player is male]cum escape from the tube[smn] attached to your milker[smn][else if Player is female]fem-cum is ejected outside from your violent orgasm[else]it cums hard[end if]. You watch, powerless, as the vinyl cow slowly reforms around your body, and goes into the next stage of its capture program.";
						else if milkingCowSuitBindStage is 3:
							say "     You can feel your third orgasm come insidiously. Your movements quickly lose all sense of coordination. The program managing your suit presses its advantage, and maintains you in place, while you hump against the air layer and go over the edge once more. You mind blanks out, and you have only the barest feeling of something leaving your body, as you are lost in the throes of pleasure. Utterly knocked out and detached from reality, you slump down inside the suit, while it completes its installation.";
						else: [4+: Impossible to trigger]
							say "     ERROR <MilkingCowSuitStruggleFail>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";
						now Libido of Inflatable Otter Suit is 0;
						now boundsegment is 0;
					else: [No escape]
						say "     ERROR <MilkingCowSuitStruggleSuccess>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";
						now Libido of Inflatable Otter Suit is 0;
						LineBreak;
						cleanboundmemory;
						now Trixieexit is 1;
						now milkingCowSuitBindStage is 0;
				else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2": [player picked oblige/abide - currently no custom text for each!]
					LineBreak;
					if milkingCowSuitBindStage is 1:
						say "     Instead of fighting the inevitable, you simply brace yourself on all fours and pump your hips against the [if Player is male]milker[smn][else if Player is female]dildo[sfn][else]vinyl[end if] stimulating you. Understanding that you are not fighting it, MOO allows itself to take its time and experiment on your body, while rewarding you for your cooperative behavior by slightly releasing its grip on you.";
					else if milkingCowSuitBindStage is 2:
						say "     Obliging the machine, you moan with glee each time it hits a right spot on your body, helping its tuning. To entice you, the video feed turns into a simulated [']X-ray mode['], showing an almost perfect reproduction of your body humping inside the suit.";
					else if milkingCowSuitBindStage is 3:
						say "     Taking pleasure in your captivity, you play with your mask's microphone, trying to make the most realistic moo, while you roll your hips in rhythm with the machinery hooked to your suit. The AI turns a X-ray mode on the video feed, and allows you to vary between different angles by moving your eyes.";
					else if milkingCowSuitBindStage is 4:
						say "     You placidly watch the video feed provided by the vinyl mask, mooing in pleasure each time the machine hits the right spot. MOO diffuses farm scents and noises through your mask, helping your mind in becoming a nice little milk cow.";
				else: [player picked endure/recover]
					now enduring is true;
					LineBreak;
					if boundrecover is true: [recover]
						if milkingCowSuitBindStage is 1:
							SanBoost 1;
						else if milkingCowSuitBindStage is 2:
							SanBoost 2;
						else: [3+]
							SanBoost 3;
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity, recovering a small portion of your lost humanity.";
					else: [endure]
						if milkingCowSuitBindStage is 1:
							say "     You attempt to resist the rising pleasure, in order to focus on your escape attempts. You have somewhat mixed results, as you are not helped by the dozen of mooing vinyl cows populating the room.";
						else if milkingCowSuitBindStage is 2:
							say "     You try to think about something non-sexual in order to lower your arousal. Sensing your dropping sexual appetite, the screen replaces the live-feed by various video clips and animations of milking and heavy bondage, bringing you back on the subject.";
						else if milkingCowSuitBindStage is 3:
							say "     You attempt to stop moving your hips, so that the machines have less power on you. MOO decides to make your hips move for you, and uses the air-filled layer of your suit to press on your body, and simulate a slow gyration.";
						else:
							say "     You try to delay the inevitable, and not think of sexual pleasure at all. However, trapped in a simili-void, with a video of yourself as only stimulation, your efforts are doomed to fail from the start.";
				if Trixieexit is 0:
					if boundrecover is false, MilkingCowSuitSanityPassive;
					MilkingCowSuitLust;
					if boundrecover is true, now boundrecover is false;
				WaitLineBreak;
				next;

[
The following section is included in order of appearance in-game.
- milkingCowSuitBindOrgasm appears at the top on a new turn if the player cums.
- milkingCowSuitProgress prints below orgasm if progressing to next bound level.
	- Occurs after every orgasm in this particular bind state.
	- May require multiple orgasms in other binds (e.g. a state spanning multiple intensity levels).
- milkingCowSuitBindDesc always prints below these but above the options list.
]

to MilkingCowSuitOrgasm: [Orgasm description. Progresses to next bound segment.]
	if milkingCowSuitBindStage is 1:
		say "     You scream into the vinyl muzzle as the sexual stimulation brings you over the edge. Your hips buck against [if Player is male]the milker[smn] attached to your cock[smn][else]the thick dildo[sfn] pistoning into your cunt[sfn]. While your mind temporarily blanks out, your sexual fluids leave the suit through a series of tubes[end if], [if Nipple Count of Player > 0 and Breast Size of Player > 0]joining the milk of your breasts[else]joining the rest[end if] inside the storage tank.";
	else if milkingCowSuitBindStage is 2:
		say "     You whine pathetically as another orgasm takes over your body, and MOO steals yet another load from you. This time, the suit does not stop after a long, torturous minute, until it has taken everything it could from you. The suit is much more efficient, too. [if Player is herm]The milker's latex sheath[smn] squeezes around your dick[s] in synchronicity with your ejaculation, and the dildo[sfn] adapt[sfv] [itstheirm] hammering to the contractions of your cunt[sfn][else if Player is female] The dildo[sfn] adapt[sfv] [itstheirm] hammering to the contractions of your cunt[sfn][else if Player is male]The milker's latex sheath[smn] squeezes around your dick[s] in synchronicity with your ejaculation[end if]. You have trouble getting your breath back, as your teary eyes are fixed on your own wheezing shape through the video feed.";
	else if milkingCowSuitBindStage is 3:
		say "     You cum for the third time. Your scream is muffled by the thick gag in your mouth, but your eyes ring with a loud, unnatural moo. The material contracts under your body, as if to simulate you mounting a breeding post or another cow. [if milkingFactorySuitUpgraded is 1]The upgraded cow suit in front of your eyes does not move an inch, confusing your brain even more[else]The vinyl cow in front of your eyes seem to follow your movements slightly[end if]. Your orgasm does not seem to end, as MOO prolongs your suffering with inhuman efficiency, by making you go through a series of mini, half-ruined orgasms before the final, mind-crushing one. The anal plug joins the fun, [if Player is male]inflating and pressing against your prostate in order to rise your productivity[else]letting you squeeze around it and let the rumbles carry your orgasm over its natural time limit[end if].";
	else if milkingCowSuitBindStage is 4:
		say "     Half-crying, half-moaning, you close your eyes tight as another orgasm wash over your body. You feel as if your body turns into liquid, then makes one with the cow as it milks you on, and on, and on, until your mind blanks out and you almost lose consciousness. Eventually, you slump down in your air-tight prison, exhausted to the point that you are unable to move a single finger from exhaustion.";
	else: [Debug failsafe]
		say "     ERROR <MilkingCowSuitOrgasm>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";

to milkingCowSuitProgress: [Displays once when entering the next bound segment. 1 does not need to be checked since the bind starts at that value.]
	if milkingCowSuitBindStage is 1:
		say "     ERROR <MilkingCowSuitBindStageProgressTooLow>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";
	else if milkingCowSuitBindStage is 2:
		say "     The partially-inflated cow suit keeps hissing around you while you recover from your orgasm. Ropes of vinyl launch from your neck, and link with the head part of the suit. It promptly slams on you like a rubber band, and isolate you from the outside world. A small screen in the otherwise opaque hood turns on. It displays a live feed of your trapped form, as if seen by someone outside the suit.";
		if Player is herm:
			say "     With perfect timing, the various apparatus return to work on your body. And thus, you have a perfect angle on the milking pump[smn] sliding up and down your [cock size desc of Player] cock[smn] and the thick, ox-shaped dildo[sfn] ramming your [cunt size desc of Player] cunt[sfn][if Nipple Count of Player > 0 and Breast Size of Player > 0], and the milking cups pressing on your breasts in order to extract their contents[end if].";
		else if Player is female:
			say "     With perfect timing, the various apparatus return to work on your body. And thus, you have a perfect angle on the thick, ox-shaped dildo[sfn] ramming your [cunt size desc of Player] cunt[sfn][if Nipple Count of Player > 0 and Breast Size of Player > 0], and the milking cups pressing on your breasts in order to extract their contents[end if].";
		else if Player is male:
			say "     With perfect timing, the various apparatus return to work on your body. And thus, you have a perfect angle on the milking pump[smn] sliding up and down your [cock size desc of Player] cock[smn][if Nipple Count of Player > 0 and Breast Size of Player > 0], and the milking cups pressing on your breasts in order to extract their contents[end if].";
		say "     Panicking you scramble inside the suit. Your hands desperately attempt to find a zipper or a weak point in your prison. The constant video feed hinders you, as it is more disorienting and distracting than anything, when all it shows is the vague shape of a person push against the inner surface of a growing [if milkingFactorySuitUpgraded is 1]bulky[else]round[end if] cow.";
	else if milkingCowSuitBindStage is 3:
		say "     You grown in shock and fatigue from your second forced orgasm, while your various fluids are sucked away. The inside of the cow suit feels unbearably hot. You sweat heavily against the inner layer's surface while more air is added. Your free space is dramatically restrained, and your limbs are forced into sleeves, forcing you to stay on all fours. From the outside, the vinyl looks now more cow than man. You, and the silhouette in the video feed, jump as a thick plug pushes inside your ass. It vibrates intensely against your [if Player is male]prostate[else]vaginal walls[end if]. Then, you realize that you cannot close your mouth after shouting, as a phallic-shaped mouth gag inflates and locks your jaws in place. You feel something pour into your throat. The machine gives you your first dose of stimulant, laced with aphrodisiac. [if Nipple Count of Player > 0 and Breast Size of Player > 0]The drug seems to have an effect on your breasts too, as they start to release milk liberally into the constantly sucking tubes. [end if]The other stimulations return promptly after, and resume eating away at your mental resistance.";
	else if milkingCowSuitBindStage is 4:
		say "     This time, you take a while to recover from the grogginess of your most recent orgasm. Meanwhile, the suit finishes to inflate around you. Your prison is now indistinguishable from the other vinyl cows. [if milkingFactorySuitUpgraded is 1]Because the suit recycles its air, you are perfectly insulated in a warm, rubbery prison[else]The fan integrated into your muzzle brings you fresh air, but it is a meager consolations compared to your unescapable predicament[end if]. The air layer separating the inner suit from the outside is so thick, that you do not feel the ground under your body. You could be flipped upside down or fall on the side, and never realize it. The only thing you feel right now is the continuous pleasure inflicted on your body, while your eyes are locked on the [if milkingFactorySuitUpgraded is 1]bulky[else]jiggling[end if] vinyl cow. Every breath you take, every saliva you gulp is laced with pleasure-enhancing drugs. The smart suit starts to use a system of rhythmic contractions to force your body into humping motions, and more and more thoughts of giving in and going along the flow starts popping up in your mind.";
	else: [stage 3+]
		say "     ERROR <OtterSuitBindStageProgressTooHigh>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";

to say milkingCowSuitBindDesc: [Displays at the top of the bound screen after every action. Modified by current bound stage.]
	if milkingCowSuitBindStage is 1:
		say "     You are down on your knees, trapped inside a black mass which threatens to engulf you[if Player is male]. A milker is hooked to your cock[smn] and pumps slowly. It slurps down a bit of pre-cum here and then, as MOO tries to find the optimal rhythm for your physiology[end if][if Player is female]. The fluid matter has formed an almost perfect reproduction of a bull cock, adapted to the size of your [cunt size desc of Player] cunt[sfn]. It pushes, inch by inch in your puss[yfn] in an attempt to find your g-spot[sfn][end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]. Milking cups are hooked on each of your [Nipple Count of Player] breasts and stimulate them in an attempt to draw out milk[end if]. [one of]You turn your head just in time, as the muzzle part of the vinyl slime tried to fit on your [FaceName of Player] head. You push it back with some difficulty.[or]The mass of vinyl tries to stick your hands to the floor. You pull them away just in time, in a brief tug-of-war with the animated goop[or]The vinyl slowly creeps up your neck, trying to find the mask part in order to fuse with it.[purely at random]";
		say "     Your could try to [bold type]S[roman type]truggle in vain, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] MOO, or attempt to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] its relentless teasing.";
	else if milkingCowSuitBindStage is 2:
		say "     You are completely encased inside what looks, from the outside, like a deflated cow costume. The suit continuously fills with air, while various tubes and machinery are hooked on you and harass your body[if Player is male]. A milker is hooked to your cock[smn] and pumps with fearsome regularity, neither too fast nor too slow for your unconscious tastes. Pre-cum regularly leaves through the sheath's tube, while it waits for the main product[end if][if Player is female]. Bull-shaped cock[sfn] ram your cunt[sfn], slowly changing shape to stimulate every sensitive spot[end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]. Milking cups pump your breasts, collecting more and more natural milk with each passing minute[end if].";
		say "     Your could try to [bold type]S[roman type]truggle in vain, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] your captor, or attempt to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] its arousing motions.";
	else if milkingCowSuitBindStage is 3:
		say "     You are trapped in a fully inflated vinyl cow. The fake animal is now stuck on its four legs, your limbs trapped inside. There is now enough air for you to keep your naked, sweating body from touching the ground. A gag fills your mouth, muffling your sound and transforming them into animalistic moos through an integrated microphone. The gag regularly forces a liquid down your throat, which makes you feel like your body heat goes through the roof, and keeps you aroused and productive. [if milkingFactorySuitUpgraded is 1]. The air, simply recycled before being sent back to your lungs alongside a dose of drug, becomes progressively warmer[else]You feel the soft rumble of the fan integrated to your muzzle, which feeds you fresh, drug-laced air[end if]. [if Player is male]A milker is hooked to your cock[smn]. It has learned to vary its rhythm, slowing down or picking up in speed, toying with you. Your pre is collected and used to lubricate the sheath of the milker. [end if][if Player is female]The dildo[sfn] ramming your cunt[sfn] have lost their animalistic shaped. They are now lined up with ridges, bumps and other texture tricks, so perfectly-shaped for you that you can feel each and every one of them. [end if]A thick anal plug fills your ass, and rumbles hard against your [if Player is male]prostate[else]vagina[end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]. An uninterrupted flow of milk flows down your breast milkers, now that you are under the effect of the aphrodisiac and that your milk productivity is jacked up[end if].";
		say "     Your could try to [bold type]S[roman type]truggle in vain, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] your prison, or attempt to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] its incredibly arousing motions.";
	else if milkingCowSuitBindStage is 4:
		say "The suit is fully inflated and operates at full capacity. The thick air layer makes you feel like you are suspended into a void[if milkingFactorySuitUpgraded is 1]. The impression is reinforced by the bulky structure of your prison, completely immobile on the video feed. The inside of the suit is very warm, as it espouses your forms and the heat has nowhere else to go[end if]. The whole suit rhythmically contracts around you, matching your every move. A gag fills your mouth, muffling your sound and transforming them into animalistic moos through an integrated microphone. The gag regularly forces a liquid down your throat, which makes you feel like your body heat goes through the roof, and keeps you aroused and productive. [if milkingFactorySuitUpgraded is 1]The air, simply recycled before being sent back to your lungs alongside a dose of drug, becomes progressively warmer[else]You feel the soft rumble of the fan integrated to your muzzle, which feeds you fresh, drug-laced air[end if]. [if Player is male]The penis milker[smn] feel now as if [ittheym] [ismv] part of your body, and [itstheirm] rubbery sheath[smn] [ismv] a second skin, constantly moving around your [CockName of Player] cock[smn], torturing you with pleasure. [end if][if Player is female]The dildo[sfn] have lost all pretention of simulating sex. [ittheyf] [isfv] rammed as far as [ittheyf] can inside of you, and keep spinning, grazing your pleasure spots with all [itstheirf] ridges and bumps. [end if]A thick anal plug fills your ass, and rumbles with frequently-changing rhythms against your [if Player is male]prostate[else]vagina[end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]. The milk flows liberally from your breasts, so much that it pulls around your areolas while it waits to be collected by the tubes, now continuously white[end if].";
		say "     Your could try to [bold type]S[roman type]truggle in vain, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] your new universe, or attempt to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] its incredibly arousing motions.";
	else: [Debug failsafe]
		say "     ERROR <milkingCowSuitInvalidBindStage>: This text should never appear. Please file a bug report on the FS Discord and include the above error message.";

to MilkingCowSuitLust: [Passively increases the player's lust attribute. Higher bound segments increase the per-turn lust gain.]
	let obladj be 1;
	if obliging is true:
		now obladj is 2; [Value to multiply lust gain by if obliging.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide lust gain by if enduring.]
	if milkingCowSuitBindStage is 1:
		increase lustatt by ((8 + (lustadjust * 2)) * obladj) / endureadj;
	else if milkingCowSuitBindStage is 2:
		increase lustatt by ((10 + (lustadjust * 2)) * obladj) / endureadj;
	else: [stage 3+]
		increase lustatt by ((12 + (lustadjust * 3)) * obladj) / endureadj;

to MilkingCowSuitSanityPassive: [Passively decreases the player's sanity attribute. Higher bound segments increase the per-turn sanity loss.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide sanity loss by if enduring.]
	if milkingCowSuitBindStage is 1:
		if (enduring is false and a random chance of 1 in 2 succeeds) or (enduring is true and a random chance of 1 in 4 succeeds):
			decrease humanity of Player by 2;
	else if milkingCowSuitBindStage is 2:
		if enduring is false or (enduring is true and a random chance of 1 in 2 succeeds):
			decrease humanity of Player by 4;
	else: [stage 3+]
		decrease humanity of Player by (6 + psycheadjust) / endureadj;

to milkingCowSuitSanityOrgasm: [Causes sanity to sharply plummet upon orgasm.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide sanity loss by if enduring.]
	if struggleatt > 0, decrease struggleatt by 1;
	if milkingCowSuitBindStage is 1:
		decrease humanity of Player by (3 + psycheadjust) / endureadj;
	else if milkingCowSuitBindStage is 2:
		decrease humanity of Player by (4 + psycheadjust) / endureadj;
	else if milkingCowSuitBindStage is 3:
		decrease humanity of Player by (4 + psycheadjust * 2) / endureadj;


Milking Facility ends here.
