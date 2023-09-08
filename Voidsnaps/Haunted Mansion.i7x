Haunted Mansion by Voidsnaps begins here.

[Beginning event resolutions:
1 - Explore immediately.
2 - Explore later.
100 - Sascha feels betrayed. Explores alone. Player doesn't see him again.
Traits: 
"Finding Help"- Unlocks encounter in the occult library, which lets you progress.
"Exploration in Progress"- You can't leave the haunted house until you deal with what's inside it.]

Section 1 - Room Declarations

Table of GameRoomIDs (continued)
Object	Name
Haunted House Entrance	"Haunted House Entrance"

Haunted House Entrance is a room. It is fasttravel. It is private.
Description of Haunted House Entrance is "[Mansiondesc]".

instead of sniffing Haunted House Entrance:
	say "     The haunted house smells much like you'd expect it to- dusty and old, with an odor like mothballs. There's something you can't quite place behind it- Like there's lightning in the air. It's a bit ominous, combined with the yawning entrance and gloomy interior.";

to say MansionDesc:
	say "     A quiet mansion stands before you, creaking at the slightest breeze. It looks like it's been abandoned for a long time. If you were in a horror movie, you're sure that something awful would happen inside. Still, there's something interesting about it. It's like it's calling to you, asking you to explore. Maybe there's some nice stuff inside?";

Table of GameRoomIDs (continued)
Object	Name
Haunted House Foyer	"Haunted House Foyer"

Haunted House Foyer is a room.
Haunted House Foyer is north of Haunted House Entrance.
Haunted House Foyer is sleepsafe.
Description of Haunted House Foyer is "[MansionFoyerdesc]".

instead of sniffing Haunted House Foyer:
	say "     The inside of the haunted house smells like dust and neglect, with an undercurrent of something damp. Has the roof fallen in?";

to say MansionFoyerDesc:
	say "     Inside the mansion is a spacious room opening out into a decadent, though destroyed, staircase. The stairs have given out, and much of the decorative, carved wood is in a heap. You doubt you could go upstairs, even if you were excessively careful! To your right, a stairway yawns into a gloomy basement, though you can see a faint glow at the bottom. There are other doors leading off in various directions, but they seem to be locked when you try them.[if Sascha is in Haunted House Foyer]Sascha sits on the couch, issuing orders to Ozeg and watching him as he cleans. Strangely, the demon seems happy to follow orders despite his nudity, his tongue hanging out of the side of his mouth as he attempts to use his thick draconic fingers to do delicate tasks.[end if][line break]";

Table of GameRoomIDs (continued)
Object	Name
Haunted House Basement	"Haunted House Basement"

Haunted House Basement is a room.
Haunted House Basement is below Haunted House Foyer.
Haunted House Basement is sleepsafe.
Description of Haunted House Basement is "[HauntedHouseBasementdesc]".

instead of sniffing Haunted House Basement:
	say "     Something mysterious permeates the basement. Like the scent of ozone mixed with well-exercised men and cologne.";

to say HauntedHouseBasementDesc:
	say "     After a short walk down creaking, not-so-well-maintained stairs, the mansion's basement greets you. It's spacious, perhaps even more so than the first floor was, and the scent of dust and decay seems less pronounced. In place of that scent is something alluring and electric, like bottled lightning and musky cologne combined.";

Table of GameRoomIDs (continued)
Object	Name
Hidden Occult Library	"Hidden Occult Library"

Hidden Occult Library is a room.
Hidden Occult Library is west of Haunted House Basement.
Hidden Occult Library is sleepsafe.
Description of Hidden Occult Library is "[OccultLibrarydesc]".

instead of sniffing Hidden Occult Library:
	say "     Smells like old books and wine. Clearly no one's cleaned this place in a while. Still, the scent is oddly comforting.";

to say OccultLibraryDesc:
	say "     Books line every wall, from the floor to the ceiling, covered in thick dust. Even though you could clean them off, you worry that you'd damage them in the process, and what little you can make out makes you doubt you could read them in the first place! Better to leave them for someone else to browse.";

Table of GameRoomIDs (continued)
Object	Name
Barred Hallway	"Barred Hallway"

Barred Hallway is a room.
Barred Hallway is east of Haunted House Basement.
Barred Hallway is sleepsafe.
Description of Barred Hallway is "[Barreddesc]".

instead of sniffing Barred Hallway:
	say "     Smells like metal bars, dust and something you can't quite place. Is that... Arousal? You're not sure how, but you think there's something horny past the bars.";

to say BarredDesc:
	say "     Looking almost like a prison cell, the hallway stops with a full set of bars with a metal door in the center. You can vaguely see that the path stretches past the door, and you wonder if there's a key that can get you past it. To the north, another path branches off[if Sascha is in Dungeon Dead End], where you can hear the faint sounds of panting mixed with wet sounds echoing through the tunnel[end if].[Line Break]";

Table of GameRoomIDs (continued)
Object	Name
Dungeon Dead End	"Dungeon Dead End"

Dungeon Dead End is a room.
Dungeon Dead End is north of Barred Hallway.
Dungeon Dead End is sleepsafe.
Description of Dungeon Dead End is "[DeadEnddesc]".

instead of sniffing Dungeon Dead End:
	say "     The scent of feline arousal permeates the circular room, and a puddle of juices trails toward the wall, putting off a heady scent.";

to say DeadEndDesc:
	say "     [if Sascha is in Dungeon Dead End]Sascha squirms against the wall with his hands pinned. He's on his knees, staring up at you as if begging for help, or begging you to join in. Ghostly hands roam his body, tweaking his nipples and playing with various parts of his body, and a ghostly phallus pumps into his pussy, slowing whenever Sascha's movements reach a fever pitch, keeping him on the edge. You should free him as soon as possible! Though he doesn't look all that uncomfortable... Maybe you could join him for a few minutes?[else]The spot where Sascha was fucked by ghostly appendages still has a wet sheen to it from his dripping cunt. At least he had fun![end if][Line Break]";

Table of GameRoomIDs (continued)
Object	Name
Demonic Torture Circle	"Demonic Torture Circle"

Demonic Torture Circle is a room.
Demonic Torture Circle is sleepsafe.
Description of Demonic Torture Circle is "[DemonCircledesc]".

instead of sniffing Demonic Torture Circle:
	say "     Smells like sexual effluvia with a hint of flame and herbs. Someone's clearly been busy.";

to say DemonCircleDesc:
	say "     Smeared glyphs on the ground mingle with old, dried fluids. Chains lead from each wall to the middle of the room [if Ozeg is in Demonic Torture Circle], where you see a large, scaly form currently being fucked silly by at least three glowing, ghostly dicks. Three ghost hands work his shaft, but there's a conspicuous lack of a finish, and his breath comes in labored, over-worked bursts whenever they slow their work, panting around a mouthful of ghostly shaft. He doesn't seem to notice you[else], where you can see scruff marks on the ground where Ozeg was once imprisoned[end if].[line break]";


Section 2 - Haunted House Introduction

Table of GameEventIDs (continued)
Object	Name
Kitty Adventures	"Kitty Adventures"

Kitty Adventures is a situation.
ResolveFunction of Kitty Adventures is "[ResolveEvent Kitty Adventures]".
Prereq1 of Kitty Adventures is Wild Kitty.
Prereq1Resolution of Kitty Adventures is { 4, 5, 6, 7, 51 }. [either had sex (oral, vaginal, anal, thighfuck) or just befriended Sascha in the first event]
Prereq2 of Kitty Adventures is Rough But Sweet.
Prereq2Resolution of Kitty Adventures is { 1, 2, 3, 4, 5, 6 }.
Sarea of Kitty Adventures is "Outside".

to say ResolveEvent Kitty Adventures:
	if Resolution of Kitty Adventures is 0: [first adventure - Haunted Mansion!]
		say "     Roaming the city around the Grey Abbey Library, you pick your way through streets choked with crashed cars and piles of rubble and trash. Thanks to your usual vigilance, you become aware of slow but quite loud flapping noises rapidly approaching, even before the owner of those wings announces themselves with a bellowing, draconic roar. You barely have time to duck into a small side alley before a colossal wyvern comes in, swooping low along the street, landing with outstretched claws on a minivan, which crumples under the giant lizard's weight. Then a second or two later, you realize that it's not just one wyvern, but two, as a second beast lands not far from the first, this one clearly male, with a magnificent crown of horns and an already extended cock drooling thick goop onto the street as he approaches the first, female wyvern.";
		say "     As the beasts hump away, carelessly kicking aside whole cars as they engage in their mating ritual, you wisely duck further into the alley, hoping not to become collateral damage of the frenzied mating or possibly an unwilling participant of the wyvern couple's sloppy antics. Doing your best to avoid stepping on any trash strewn across the ground, you pass a smelly dumpster and are almost at the other end of the alley when your gaze falls upon the side door of a building bearing a sign reading 'Staff Only.' It's barely shut, held in place by a busted lock carelessly looped through the latch. Pausing right in front of the door, you listen for a second but don't catch anything noticeable over the wyvern's racket, then slowly pull open the door. Beyond lies what must have been a storeroom, judging by some metal shelves and strewn-about ripped boxes. ";
		let bonus be (( Perception of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Perception Check):[line break]";
		if diceroll + bonus >= 10:
			say "Wandering through the ransacked old storeroom, you spot something hidden underneath one of the nearby shelves. It's a four-pack of beer bottles lying on its side that must have accidentally been pushed under the lowest shelf when someone looted the room. Their loss, your gain!";
			ItemGain TodtGrains Beer by 4;
		else:
			say "You find nothing but empty containers strewn about and a few mystery puddles.";
		WaitLineBreak;
		say "     As you return from your looting trip after finding a dead end at the other entrance, you hear a voice call out behind you. 'What'cha doing? Just some casual looting today?' Whirling around, you see an empty alley with no one in sight. A chuckle draws your attention further up where Sascha is hanging upside-down over the edge of a fire escape two stories up, just with his legs hooked over it, one hand holding the lollipop he's licking, the other waving wildly in greeting. 'Funny to see you here. I was planning to race through the car wrecks, but I guess THAT freerunning course is being 'renovated' right now.' With a shrug, he waves his hand towards the street with the wyverns, from where you can hear roars, tearing metal, and what must be bricks raining down on the asphalt. 'They're going all out, hah!'";
		say "     Before you can respond, the lithe cat suddenly plops his sucker back into his mouth, then straightens out his legs to let them slip over the edge of the railing! He starts to fall, head first towards the ground! Your heart stops for a second, only to start beating again as you remind yourself of Sascha's usual antics. Before your eyes, he catches the edge of the last platform before the alley floor with his clawed hands, swings around that point, and transforms his momentum into an impressive backward somersault before landing securely on the ground. Padding over on slender paws, he almost prances over to you, running a hand down your upper arm and giving it a companionable squeeze. 'So, with my racetrack out of commission right now and us running into each other - how about we have an adventure instead? Remember that mansion where we met before? Rumor has it that it's haunted, and I always wanted to explore it!'";
		LineBreak;
		say "     [bold type]The black cat looks at you with a broad grin on his face, waiting for a response.[roman type][line break]";
		LineBreak;
		let Sascha_Adventure_Choices be a list of text;
		add "Of course you want to explore a haunted mansion in the middle of the nanite apocalypse!" to Sascha_Adventure_Choices;
		add "Sure, but you've kinda got plans for right now. Later would be better..." to Sascha_Adventure_Choices;
		add "That doesn't quite match your idea of fun. You'll skip out on this adventure." to Sascha_Adventure_Choices;
		let Sascha_Adventure_Choice be what the player chooses from Sascha_Adventure_Choices;
		if Sascha_Adventure_Choice is:
			-- "Of course you want to explore a haunted mansion in the middle of the nanite apocalypse!":
				LineBreak;
				say "     'Let's go find us some ghosts!' Sascha exclaims happily, then leads you down the street with a skip in his step. Following some at times fairly convoluted routes, but which are leading safely past various dangers, you approach the mansion not long after, coming to a stop in front of its gate.";
				move Sascha to Haunted House Entrance;
				move Player to Haunted House Entrance;
				AddNavPoint Haunted House Entrance;
				say "[SaschaMansionReady]";
				now Kitty Adventures is Resolved;
			-- "Sure, but you've kinda got plans for right now. Later would be better...":
				LineBreak;
				say "     Sascha is momentarily saddened that you can't just set out immediately, but his smile is back a moment later, 'Okay then, but don't let me wait too long, or I might be tempted to go in on my own!' He then gives you detailed instructions of how to get to the mansion, before giving his goodbyes and walking up to the wall of a nearby building, climbing up a rain-gutter drainage pipe in short notice. After watching him reach the roof, giving you a friendly wave before climbing onto it, you turn your attention back to your own survival in the city.";
				AddNavPoint Haunted House Entrance;
				now Sascha is in Haunted House Entrance;
				now Kitty Adventures is Resolved;
			-- "That doesn't quite match your idea of fun. You'll skip out on this adventure.":
				LineBreak;
				say "     You state that you don't like the idea of exploring such a creepy-looking place with Sascha. It's not your idea of fun to explore old, decrepit areas that could collapse on your head at any time. You try not to be too pushy about your opinion, but by the time you've finished speaking, Sascha's expression has changed from its usual mischievous smile. Instead, he wears something you can only describe as hurt. 'So you were just pretending to enjoy the same things I do to get in my pants, huh?' He says with a sigh. 'I'm used to that sort of thing. Every guy on a dating site saying he's 'into hiking,' everyone making plans then ditching me at the last moment for something else.' Wiping his eyes, he shakes his head, then turns toward the mansion's entrance and shrugs. 'It's fine. If you just wanted to fuck me, you should have said so. I would have [if player is male]sat on your dick [else if player is female]fucked you [end if]without all the lies. See you later, I guess.' As you watch Sascha's tail disappear through the doorway, the thought occurs to you that you should go after him. Still, though, the hollow tone he had tells you that you shouldn't. Maybe if you give him time to cool down, he'll return to you. Of course, with the city's condition, it's more likely that you could [bold type]never see him [roman type]again."; [Sad Sascha :(]
				now Resolution of Kitty Adventures is 100; [skipped out on adventures. Sascha's upset with you. He's not coming back.]
				now Kitty Adventures is resolved;
				move Sascha to Nowhere;

Section 3 - Talk Menus

to say SaschaOutsideTalk_Menu:
	say "     [bold type]Are you ready to go into the haunted mansion?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let Sascha know you're ready to explore";
	now sortorder entry is 1;
	now description entry is "You've finished all the things you needed to do. Ask him if he still wants to explore";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask Sascha what's so interesting about the mansion";
	now sortorder entry is 2;
	now description entry is "Ask Sascha about the mansion's backstory. What makes it so interesting that he wants to explore it";
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
				if (nam is "Let Sascha know you're ready to explore"):
					say "[SaschaMansionReady]";
				else if (nam is "Ask Sascha what's so interesting about the mansion"):
					say "[Mansion_Backstory]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the catboy, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SaschaMansionReady:
	say "     After a short time to prepare, you return to where Sascha's waiting for you, stating that you're ready to explore the haunted house. Even though the house has an intimidating look to it, you don't want to let the kitty explore on his own- he might get hurt!";
	change the north exit of Haunted House Entrance to Haunted House Foyer;

to say Mansion_Backstory:
	say "     Looking over at the looming structure with excitement gleaming in his eyes, Sascha throws you a wink and says, 'They say the man who lived in it went mad back in the 50s when his lover didn't return from the war. He never left the place again until someone found him dead in the parlor, clutching some old love letters. Not that anyone knows when or how that happened. Things became quiet after that. Decades passed; people started rumors about ghosts trapped inside, wandering the halls. Some tried to explore within, only to emerge with their hair turned white!' With a smirk, Sascha waves his hands to mime a 'ghostly haunt,' then reaches out and drums his finger over an official-looking sign plastered across the closed entrance. It reads 'Danger! Do not enter, unstable structure!' 'City hall put these up to keep people out. But of course, that makes it all the more enticing to see what's in there, doesn't it? Especially now, as the last few times I came past this place at night, I heard groaning noises from within!'";
	if Daytimer is day:
		say "     Looking at the structure, which seems to lean on one side as the roof has sagged a bit, you can imagine the old building making some noises as it cools after the sun has shone onto it during the day. It doesn't need any ghosts or ghouls to do that, but you don't want to rain on Sascha's parade, so you give him an interested nod and quash your skepticism. 'Come on, let's find out what it is!'";
	else:
		say "     Almost as if on command, a groaning sound can be heard from somewhere within the looming mansion, making you wonder who or what might be causing it. 'See?! Come on, let's find out what it is!'";

Section 4 - Haunted House Events - Inside

instead of going south from Haunted House Foyer while ("Exploration In Progress" is listed in Traits of Sascha):
	say "     You can't leave Sascha alone in the basement! Go find him and you can leave together!";

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Curious Kitty"	Curious Kitty	"[EventConditions_Curious Kitty]"	Haunted House Foyer	2500	2	100

to say EventConditions_Curious Kitty:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Curious Kitty	"Curious Kitty"

Curious Kitty is a situation.
ResolveFunction of Curious Kitty is "[ResolveEvent Curious Kitty]".
Sarea of Curious Kitty is "Nowhere".

to say ResolveEvent Curious Kitty:
	say "     Sascha's surprisingly subdued as the two of you enter the (assumedly) haunted mansion. He walks at a sedate pace at your side and only leaves you once you reach a well-furnished living room with a fireplace. As he rifles through drawers, his tongue sticking out of his mouth and his tail twitching curiously, you look around. The place hasn't received a deep clean in years, and every step leaves a clear outline of your feet on the dust-caked wooden floor. Despite this, it looks well furnished, with a plush, though dirty, overstuffed couch, a few ancient-looking recliners, and dust-caked paintings of flowers hanging on the walls. With a bit of elbow grease, anyone could make the place into a home- the question is: why hasn't anyone moved in? The thought of something too terrible for even the horniest mutant to deal with sets you on edge, and you're about to mention it to Sascha when he interrupts you. 'Aw, man. Everything's locked!' Sascha says with a pout, jiggling the decorative handle of a nearby door and tilting his head to look at you. 'I think I saw an open door in that hallway. Maybe we should check it?' Without taking no for an answer, he brushes past you, his paws kicking up a trail of dust as he bolts for the door. You can't help but think of that old saying, 'Curiosity killed the cat,' as you watch him disappear toward the entrance. You'd better follow him!";
	now Curious Kitty is resolved;
	add "Exploration In Progress" to Traits of Sascha;

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Dark Descent"	Dark Descent	"[EventConditions_Dark Descent]"	Haunted House Basement	2500	2	100

to say EventConditions_Dark Descent:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Dark Descent	"Dark Descent"

Dark Descent is a situation.
ResolveFunction of Dark Descent is "[ResolveEvent Dark Descent]".
Sarea of Dark Descent is "Nowhere".

to say ResolveEvent Dark Descent:
	say "     There's no sign of Sascha as you follow his path to a yawning doorway and down a dark, gloomy staircase. You contemplate calling his name, but an intense feeling of being watched makes you wonder if that's such a good idea. Even the walls feel like they're staring at you, looming out of the darkness at your side. Rather than the cozy, expensive vibe of the mansion's first floor, the basement has more of a dungeon feel, with a long, poorly lit hallway stretching in three directions. One is covered with a barred door, while the other two seem open. Perhaps you should explore both sides? Sascha could have gotten lost in the dark!";
	move Sascha to Dungeon Dead End;
	now Dark Descent is resolved;

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Horny Haunters"	Horny Haunters	"[EventConditions_Horny Haunters]"	Dungeon Dead End	2500	0	100

to say EventConditions_Horny Haunters:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Horny Haunters	"Horny Haunters"

Horny Haunters is a situation.
ResolveFunction of Horny Haunters is "[ResolveEvent Horny Haunters]".
Sarea of Horny Haunters is "Nowhere".

to say ResolveEvent Horny Haunters:
	say "[HornyHaunters]";
	now Horny Haunters is resolved;

to say HornyHaunters:
	if "Finding Help" is listed in Traits of Sascha:
		say "     Illuminated by ghostly appendages floating around him and a nearby candle glowing a eerie blue, Sascha squirms on his knees with his hands above his head, his stomach bulging with something unseen and his wrists clenched in one vaguely shimmering disembodied hand. He whimpers lustily around two digits that slurp in and out of his mouth, keeping his tongue busy, and his body quakes as other translucent fingers tease his nipples, clit, and several other places on his captive body. Still, he doesn't seem all that perturbed, spreading his legs and arching his back to give you a good view of his stretched pussy, currently being plugged by a plunging canine cock and balls that slap aggressively off of his cunt. Judging by how wet Sascha's pussy is, dripping to the ground below with every thrust, you doubt he's in any danger, and the look in his eyes is more hungry than anything. You could have some fun with him if you wanted, though he seems too occupied to talk. He's practically begging for it!";
	else:
		say "     As you enter the circular chamber to investigate the wet sounds, a familiar voice greets you with high-pitched mewls and muffled moans. Glowing lights lead you toward the source of the moans, and you shudder as you find where Sascha's wandered off to. Illuminated by ghostly appendages floating around him and a nearby candle glowing an eerie blue, Sascha squirms on his knees with his hands above his head, his stomach bulging with something unseen and his wrists clenched in one vaguely shimmering disembodied hand. He whimpers around two fingers that slurp in and out of his mouth, keeping his tongue busy, and his body quakes as translucent fingers tease his nipples, clit, and several other places on his captive body. Still, he doesn't seem all that perturbed, spreading his legs and arching his back to give you a good view of his stretched pussy, currently being plugged by a plunging canine cock and balls that slap aggressively off of his cunt. Judging by how wet Sascha's pussy is, dripping to the ground below with every thrust, you doubt he's in any danger, and the look in his eyes is more hungry than anything. If it weren't for the fingers he's slurping, you think he might ask you to make out with him!"; 
	say "     Do you want to join the fun or look around to find something to help Sascha out of his predicament?";
	let Sascha_Ghost_Choices be a list of text;
	if "Finding Help" is not listed in traits of Sascha and "Sacramental Wine" is not listed in traits of Sascha: [not yet searching for help, and not yet having found help]
		add "Find something to free the cat!" to Sascha_Ghost_Choices;
	add "Watch the ghost hands ravage Sascha." to Sascha_Ghost_Choices;
	if Player is male: [neuters can watch!]
		add "Fuck Sascha's ass while the ghost cock pounds his pussy." to Sascha_Ghost_Choices;
		add "Double stuff Sascha's Pussy." to Sascha_Ghost_Choices;
	if "Sacramental Wine" is listed in traits of Sascha:
		add "Douse the candle and free Sascha!" to Sascha_Ghost_Choices;
	if "Finding Help" is listed in traits of Sascha:
		add "Step back from the scene, for now." to Sascha_Ghost_Choices;
	let Sascha_Ghost_Choice be what the player chooses from Sascha_Ghost_Choices;
	if Sascha_Ghost_Choice is:
		-- "Find something to free the cat!": [Go find Wine]
			LineBreak;
			say "     You shake your head to clear the horny thoughts and promise Sascha you'll be back, then walk the way you came, heading back toward the three-way split in the basement's halls and ignoring his frustrated moans. [bold type]The bars prevent you from exploring one path, but maybe you'll find something to help the poor cat if you go the other way. [roman type][line break]";
			TraitGain "Finding Help" for Sascha;
		-- "Watch the ghost hands ravage Sascha.": [Pussygeist]
			LineBreak;
			say "[SaschaGhostFuck]";
		-- "Fuck Sascha's ass while the ghost cock pounds his pussy.": [Anal]
			LineBreak;
			say "[SaschaGhostAnalFuck]";
			NPCSexAftermath Sascha Receives "AssFuck" from Player;
		-- "Double stuff Sascha's Pussy.": [Double Vaginal]
			LineBreak;
			say "[SaschaGhostStuffed]";
			NPCSexAftermath Sascha Receives "PussyFuck" from Player;
		-- "Douse the candle and free Sascha!":
			LineBreak;
			say "     Returning to the moaning kitty, you step over him, ignoring his erotic gyrations and retrieving the bottle of sacramental wine from your bag. Popping the cork, you douse the otherworldly flame with it, cringing back at the distinctly unpleasant sulfur smell that emanates from the sizzling candlewick. The results are instantaneous- Sascha crumples to the ground, twitching as you release him from arcane bondage. 'Aw.' Sascha pants as you kneel to ask him if he's alright, turning his head and interrupting you before you can voice your concern. He licks his lips and grins, pushing himself up to his knees, and you can see his spare paw playing with his clit as he leans back against the wall, eyes half closed. 'You could have waited a while. That felt so good. I've never let anyone edge me that long before.'";
			TraitGain "Sascha Freed" for Sascha;
			move Sascha to Nowhere;
			say "     After he works his needy sex over the edge in an exhibitionist finish blatantly aimed at teasing you, Sascha stands, leaving his torn clothes where the otherworldly orgy threw them and stretching with a yawn. 'Did you find the key to that door?' He asks, unaffected by his short-term imprisonment and even sounding refreshed. He rolls his eyes at your dumbfounded expression when you answer him and steps closer, hooking his arms around your shoulders. 'I'm fine, [SaschaPAddress]! Let's see what's going on! We still haven't found the source of that weird noise.' Realizing it's futile to argue with the nude cat, you sigh and nod, following his shapely butt as he parades back the way you came, holding one of your hands in one still-wet paw. Sometimes you wonder if you should be involved with someone with such an awful sense of self-preservation. Oh well, at least he's cute!";
		-- "Step back from the scene, for now.":
			LineBreak;
			say "     You shake your head as you stare at Sascha. Why are you back here? You're supposed to be finding something to free the poor kitty. It's not like there's a lot of places to look in this basement. There has to be something in [bold type]one of the other rooms.[roman type] [Line Break]";

to say SaschaGhostFuck:
	say "     With effort, you adjust Sascha's position, spreading his legs and setting him on your lap so you can watch what's happening to him more closely. There's an unmistakable rhythm to the arcane fuckery, and you're almost impressed by how realistic the cock plunging in and out of his pussy looks. If you didn't know better, you could mistake it for a real, though oddly blue canine cock. Experimentally, you grip the knot at the base of the ghostly cock, squeezing it and delighting in its firmness and realism. It even feels like it's got blood pumping through it! It's no wonder that Sascha's rocking his hips, desperate to get the knot into his needy pussy. It must feel as good as the real thing! As you feel along the swinging balls, impressed by their churning motion, you realize you could aid the cock's path into Sascha's insides from this position. Sascha wants the knot, and you're willing to help him get it. Why shouldn't you help him enjoy himself?";
	say "     Taking hold of the base of the canine cock as it pumps away into Sascha's dripping snatch, you apply gentle pressure, forcing the arcane appendage to bounce back against your other hand, then deeper into Sascha. A delighted, finger-muffled moan encourages you, and soon you're stuffing that bulb of pseudo-flesh past Sascha's lips, sealing it inside of him and setting off a desperate frenzy of shallow humps from the mindless disembodied dick. Now firmly knotted on a frantically tugging cock, Sascha groans and squirms, leaking arousal from his overstuffed cunt. A delighted, high-pitched squeal echoes through the room once the knot finally slurps free, and Sascha goes limp, twitching with the cock's renewed thrusts and panting away. It seems that the hands haven't finished with him, and even as he lies there with his legs spread, they redouble their efforts, working him into desperation once more. While it might be hot to watch the blissed-out kitty get fucked into unconsciousness, you doubt he'll last much longer in this condition. Maybe you should find some way to help him!";
	if "Sacramental Wine" is not listed in traits of Sascha:
		TraitGain "Finding Help" for Sascha;

to say SaschaGhostAnalFuck:
	say "     Settling down on the ground before Sascha, you adjust his position, flipping the poor thing over before the ghostly hands tighten their grip. He wiggles his rump in an invitation, and his glistening pink tailhole catches your eye, soaked with his juices from the arcane cock's pounding efforts. Setting aside your gear and grasping your freed cock, you raise yourself to avoid the plunging canine cock's rampage and line yours up with the pretty kitty's tight ass. Hissing through your teeth, you slip into Sascha's well-used ass, gripping his cheeks and working him open with gentle thrusts. He's so soft, like slippery silk, and his inner walls work your cock with ease, encouraging you to go balls deep. Impossible to resist, he brings you to a fever pitch as you slam into his perfect ass, painting his innards with copious pre and almost matching the slapping rhythm of the ghostly cock ruining his pussy. Kneeling over Sascha, you relish the sensation of the ghostly cock rubbing against yours through the thin wall separating you, feeling your balls rub against the pumping ghost dick even as they draw up, so close to filling the pretty kitty's talented ass.";
	say "     Before you blow, you turn Sascha's head to meet your gaze, delighting in the glazed, over-fucked expression on his face and wiping away drool as it drips from his chin. A soft purr starts in his throat as he feels you twitching inside of him, and he shoves back, hilting you and clamping down as though begging for your release, and you oblige, erupting deep into his ass and thrusting through your orgasm. As you slowly withdraw, you pat the pretty kitty's rump, leaving him with the phantom cock still stirring his dribbling cunt and his ass dripping your cum. His tail twitches and wraps around your wrist, and he winks over his shoulder as if telling you to take your time before melting into the teasing embrace of his disembodied lovers. You wonder which will run out of stamina first, the magic holding him in place or Sascha's insatiable appetite for dick.";
	if "Sacramental Wine" is not listed in traits of Sascha:
		TraitGain "Finding Help" for Sascha;

to say SaschaGhostStuffed:
	say "     The way Sascha wiggles his hips tells you he's not satisfied with the dicking he's receiving. It's probably a bad idea, but you can't stand the thought of leaving him unsatisfied, so you grip his hips, setting aside your gear and slipping your nude crotch beneath his rocking hips. Carefully, you roll two fingers past the plunging phantom cock, then guide your shaft alongside it, biting your lip as the pistoning dick almost butts your balls, sawing against your underside and spreading Sascha's wetness down your length. It takes some work to avoid the canine cock's mindless thrusting (you doubt that it would feel good to have its balls slamming into yours at full speed) though eventually, you figure out an angle that lets you line yourself up. Encouraged by Sascha's purring and attempts to spear himself on your hard cock, you alternate your rhythm with the ghostly canine appendage, grinding your underside against it and stretching the captive kitty's pussy with slow thrusts until you're deep inside of him. It's an extremely tight fit, but thankfully Sascha's so wet, and your phantom neighbor is so tireless that all you have to do is pump your hips and enjoy the ride, letting the delightful suction of his pussy work your cock.";
	say "     Soon enough, you lose track of time, watching Sascha's eyes cross, and his tongue doubles its effort on the ghostly fingers within his mouth. A sudden gush of pussy juices and rhythmic clenches, accompanied by wildly squirming feline thighs, shows you that Sascha's enjoying himself as much as you are, and you settle in, feeling your finish slowly rise. Groaning aloud, you hilt yourself, gritting your teeth as the tireless knotted cock shoves you over the edge into an intense orgasm and stirs your cum into a foamy mess. Trapped in Sascha's overstuffed cunt, you try your best to pull out, but the ghostly dick's tireless shoves make that challenging, and before you can extricate yourself, your poor, oversensitive shaft is milked of another orgasm, popping free and dousing Sascha's throbbing clit in another thick load of cream. Shivering, you lie there to recover, listening to Sascha's needy sex as your cum amplifies the slurping sounds echoing through the room, accompanied by his satisfied purrs. As much as you'd like to stay and see whether the ghostly fingers run out of steam before the hypersexual kitty, you should find a way to free him. Gathering your gear, you spare one more glance at the glowing fuckfest, then turn to leave.";
	if "Sacramental Wine" is not listed in traits of Sascha:
		TraitGain "Finding Help" for Sascha;

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Drunken Apparition"	Drunken Apparition	"[EventConditions_Drunken Apparition]"	Occult Library	2500	2	100

to say EventConditions_Drunken Apparition:
	if "Finding Help" is listed in Traits of Sascha:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Drunken Apparition	"Drunken Apparition"

Drunken Apparition is a situation.
ResolveFunction of Drunken Apparition is "[ResolveEvent Drunken Apparition]".
Sarea of Drunken Apparition is "Nowhere".

to say ResolveEvent Drunken Apparition:
	say "     As you search the occult library for something to save Sascha from his predicament, you realize that none of the books on the shelf are readable! Their writing seems to swim and avoid your eye, and at times it blurs into sloppy ink smears that mean nothing, as though protecting their secrets. Frustrated, you try every book in the place, slamming them down on a nearby wooden table and leaning against the wall. 'You're looking in the wrong playsh.' A slurred, drunken voice from behind you startles you out of your thoughts, and you turn around to see something vaguely shimmering before you. As you watch, it clarifies into something similar to a man without enough detail to make out a face or other distinguishing marks. 'Twist the bookend. That'sh where 'e hides the good shtuff.'";
	say "     Without any other options, you follow the ghost's instructions, twisting the bookend and watching as the wall slides inward, revealing a hidden alcove. Sadly, all that waits behind the bookshelves are a couple of bottles of wine and a key tucked into the dusty, forgotten space. 'Gimme the left one, and I'll tell ya a shecret!' The drunken ghost says in a sing-song voice, his form vibrating with excitement and his finger shaking as he points to the furthest wine bottle. 'It'sh a great shecret. Might shave your little friend!' He continues. Despite his lack of features, he seems excited, and his voice wavers slightly. You contemplate being selfish, but you have no use for a dusty old bottle of wine, so you dutifully pop the cork out of its tip, then awkwardly push the bottle toward the specter's face, pouring the contents of the bottle where you assume his face is. You wonder if it's the right spot when you hear the telltale splash on the ground below, but the spirit's satisfied belch once the bottle's empty seems like evidence that you've done as he asked.";
	WaitLineBreak;
	say "     ''Kay, so, that bottle on the right'sh real nashty. I tried to shteal some when the ol' fuddy-duddy used it to put some candle thingy out. Cursed shite tashted like bleach n' brimstone. Don't drink it if you don't want to turn out like me!' With a rude belch, the apparition disappears into a puff of wine-breath-scented mist, and you're left alone again. You ponder his words, then realize that the 'candle' he mentioned must be that strange, glowing candle next to Sascha! That must be the source of the ghostly dicking's power! If you sprinkle some of it on the candle, that should set the over-fucked cat free! [bold type]Carefully, you stow the bottle of wine in your pack alongside the key, then ready yourself to return to Sascha. [roman type][line break]";
	TraitGain "Sacramental Wine" for Sascha;
	TraitGain "Rusty Key" for Sascha;
	TraitLoss "Finding Help" for Sascha;
	now Drunken Apparition is resolved;

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Edge of Eternity"	Edge of Eternity	"[EventConditions_Edge of Eternity]"	Barred Hallway	2500	2	100

to say EventConditions_Edge of Eternity:
	if "Sascha Freed" is listed in Traits of Sascha and "Rusty Key" is listed in Traits of Sascha:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Edge of Eternity	"Edge of Eternity"

Edge of Eternity is a situation.
ResolveFunction of Edge of Eternity is "[ResolveEvent Edge of Eternity]".
Sarea of Edge of Eternity is "Nowhere".

to say ResolveEvent Edge of Eternity:
	say "     'Come on, come on!' Sascha says, practically jumping on your back as you fish the rusty key out of your pack and slot it into the lock. His antics distract you, and just after you hear the lock click, the key breaks off, falling to the ground in two halves. 'Whoops,' comes the cat's lighthearted reply to this unfortunate circumstance, and he quietly looks away, much like a housecat caught with its paw in the fish tank. Before you can stop him, he runs off into the newly opened path, tail flicking with curiosity. Sighing and preparing to free Sascha from another sexually charged trap, you plod after him, blinking as the gloomy ambiance gives way to brighter lighting. The light's source becomes apparent as the basement opens into an eerie chamber that looks at home in any demon-based horror movie. Unknown pale fluids stain almost every inch of the floor, and a scaly form rests on an altar in the center of a giant pentagram, smudged by goo dripping from a massive manhood.";
	say "     The sheer volume of ghostly hands holding the poor creature down almost blocks his features from view, revealing nothing but dark reddish brow scales and a pair of demonic horns. He doesn't react to your presence, and his eyes seem closed while his mouth is occupied by another of the knotted phantom cocks, plunging deep into his throat and dragging muffled, echoing moans around its length. A quick stroll around the bound demon reveals his ass is utterly destroyed, currently occupied by two plunging cocks that alternate and stir his loose backside, puffing his hole until it's swollen and almost equine-looking from the knots' tugging. Stroking, rubbing, frantically milking hands occupy nearly every inch of the demonic reptile's body, touching every possible erogenous zone. Judging by the demon's half-hard, leaking cock, they aren't allowing it to finish, despite their efforts. How long has the creature been here? What did he do to deserve such a punishment? A glance around tells you that there are similar candles to the ones that kept Sascha captive moments ago, arranged at the pentagram's points. You could try to use the rest of the bottle of wine to douse them, or you could leave the demon to his fate. Who knows what he'll do when you let him go?";
	say "     What do you want to do?";
	let Ozeg_Altar_Choices be a list of text;
	add "Ask Sascha what to do." to Ozeg_Altar_Choices;
	add "Free him." to Ozeg_Altar_Choices;
	let Ozeg_Altar_Choice be what the player chooses from Ozeg_Altar_Choices;
	if Ozeg_Altar_Choice is:
		-- "Ask Sascha what to do.":
			say "     Tearing your eyes away from the orgy of stroking hands and violating cocks, you search for Sascha, finding him sitting in front of the demonic creature's panting face with his paw beneath his chin. He seems to be deep in thought. Asking the contemplative cat his opinion on what to do, you air your concerns. Whatever this reptile is, he's large enough to be a problem if he's not friendly. Should you let him go or leave him here and forget about this place? And that's not even accounting for any curses set to protect the trap or who knows what else! Sascha looks up at you with a tilted head, his tail flicking from side to side. 'Is it even a question? He's not in any state to attack us. We can just run away if he's not friendly.' Stretching his legs, he scoots closer, tilting the reptile's chin and contemplating his face. 'Besides, he's kinda cute, in a brick wall sort of way. You know how much I like to climb~.'";
			say "[FreeOzeg]";
		-- "Free him.":
			say "[FreeOzeg]";
	now Edge of Eternity is Resolved;
	TraitLoss "Rusty Key" for Sascha;
	TraitLoss "Sacramental Wine" for Sascha;


to say FreeOzeg:
	say "     Walking around the pentagram, you put out each candle, watching the ghostly appendages disappear in groups, uncovering more of the panting creature's body until he's left in the center of the gloomy room. Suddenly unseen torches flare on nearby walls, and his eyes shoot open, focusing on Sascha with slitted golden pupils. In a flash, before you can react, he's lumbered to his feet, throwing himself on top of Sascha with a strange, bellowing sound. Quickly, you ready your equipment, steeling yourself for a fight to save your kitty friend, but your fears are unfounded as a croaking voice rings out, vibrating through the scaly, shivering hunk of masculinity. 'Master.' The newly freed demon says with wonder in his eyes, leaning over Sascha and dwarfing him under sweating musculature. He pants, and an expression that you'd expect to see on a loyal dog's face paints his reptilian features as he enfolds Sascha in a massive bearhug, his draconic cheeks rubbing against Sascha's naked chest. 'Master. I promise I will do whatever you like. Please don't put me back in there. I can't withstand another moment.' He pants, his eyes wild and half-crazed. 'I'll grant your wishes- I'll do anything.' The poor thing looks like he's about to cry as he frantically begs Sascha, and you look from his shivering, massive form, to Sascha's face, hoping he'll know what to do in this crazy situation. 'Can we keep him?' Sascha quips as he cradles the over-affectionate demon's face, a facetious grin on his face in response to your perplexed expression. You're struck with the sudden urge to leave before things get more silly than they already have, but it would probably be best not to leave the two alone... Sascha might take advantage of the demon.";
	TraitLoss "Exploration In Progress" for Sascha;
	TraitLoss "Sacramental Wine" for Sascha;
	move Ozeg to Haunted House Foyer;
	move Sascha to Haunted House Foyer;
	say "[OzegRelief]";

to say OzegRelief:
	say "     Despite the demon's fearsome draconic appearance, he's as docile as a puppy, following Sascha up the stairs without a complaint and sitting on the floor at his feet, clinging to one of the cat's legs. His cock has resurged, and his balls visibly churn, bulging with denial, while his dark scales glimmer despite the gloomy atmosphere. You pause to explore more of his appearance as he looks up at Sascha with something akin to hero worship. The timid, horny demon looks like a bodybuilder, with perfectly sculpted muscles and a chest that would put most women to shame, though his pecs sit differently than tits would, bouncing when he moves and flexing to rock hard. A bulky tail curls around him, adorned with spikes and covered in scales, while his hands are clawed and dragonlike, with thick fingers that would look oversized on an alpha orc! Alongside his fearsome muscles, spiky accents made of the same material as his draconic horns break up his silhouette, adding to his imposing figure. Of course, no matter how fearsome he looks, you think he'd submit to even the most girlish fox if they threatened him. How long was he stuck on that altar to become so submissive?"; 
	say "     Now that you've left the basement, you should probably ask the demon his name and maybe take care of his erection before it messes up the carpet. It looks expensive.";
	say "     [bold type]Do you want to help the demon with his erection?[roman type][line break]";
	say "     [link](Y)[as]y[end link] - That cock is huge. Fuck yeah, you want to play with it.";
	say "     [link](N)[as]n[end link] - No. You'll wait until later, if at all.";
	if player consents: [Jerking Ozeg off]
		LineBreak;
		say "     Kneeling before the demon, you spread his thighs with both hands, kicking away the expensive rug beneath you and reaching out to feel his throbbing manhood. It bucks beneath your fingers as you speak, and you massage it gently, rewarding its oozing affection with your fingers. Calmly, you ask the squirming demon who he is and what he's doing in this old abandoned house. 'A-Ah. Master~.' The demon's voice goes up an octave, and he leans back against the couch's cushion, pushing his hips forward to buck his dick into your hands. 'M-My name is Ozeg. Formerly a warrior of the armies of hell. I-I was summoned here by a mistaken mage.' Pausing as pleasure overcomes him, the demon closes his eyes, biting his lower lip and creaming your fingers with a fresh batch of sticky arousal. 'I couldn't grant his wish for the resurrection of his lover, and that angered him.' You can put the rest of it together. The mage's version of torture was to leave Ozeg edged for eternity. What an awful fate. [if player is kinky]Though honestly you find the idea sort of hot. [end if][line break]";
		say "     Playing with the dragon's massive dark red orbs, you lean in to kiss along the tip of his extra-thick cock, flicking your tongue over its slit and delving over the edge to taste the masculine musk gathered in his foreskin. He's so responsive that you can't help but tease him, but in truth, anyone would find it hard to suck that massive monster cock. He'll have to settle for a nice handjob instead. Running your hands over Ozeg's chest and feeling his flexing pecs, you tweak his nipples for a moment, then redouble your efforts on his needy shaft, delighting in how desperate he's getting. It's not often that someone so bulky is this submissive, and you plan to enjoy every second of making him cum his brains out, working his cock at max speed, and making him whimper. 'Not gonna forget about me, are you?' Sascha plops next to you, still nude with sticky fur from his time with the ghostly hands. He playfully pushes you to the side to lick at the dragon's head and purrs as he slurps the masculine river flowing from its tip, massaging Ozeg's balls like a comfortable cat 'making biscuits' on a bed.";
		WaitLineBreak;
		say "     Not to be outdone, you join Sascha, rolling your tongue against his and polishing Ozeg's tip until he's begging for mercy, whimpering and moaning with a deep, desperate voice and pumping his hips. 'Master! I can't. I'm going to!' Desperately he humps your combined hands as he tries to warn you about the impending eruption, even while smearing his cockhead over your faces. A pent-up load of several decades churns beneath Sascha's fingertips, and his balls gurgle a warning before his cock bloats, the underside swelling from a thick throb of jizz boiling up his cum vein. And with that, your world turns WHITE, as the large demonic dragon erupts like a geyser. The massive cock bucks in your hands like a wild stallion as a thick burst of cum shoots high into the air, nearly pulling out of your grasp and slapping you across the face. The flow of creamy, cascading ropes paints the ceiling above, then cum rains down to your flabberghasted expression, coating most of it in thick, incredibly gooey seed that blocks out almost all of your senses, covering your world in dripping masculinity and threatening to cover every piece of furniture in the place with sticky satisfaction.";
		say "     Worse still for the upholstery, the dragon's blasts only seem to grow MORE explosive, leaving him a panting, insensate mess as he paints the ceiling and nearly every surface in a slimy masculinity. Eventually, your face becomes the next casualty and even the cloudy sight you still had left is gone, erased by syrupy darkness. Sascha comes to your rescue as you sit there, barely breathing through a thick curtain of demonic dragon cum, licking the dragon's semen from your face with a teasing kiss to the tip of your nose, then slipping his tongue past your lips for a long, cummy kiss. You return his affection until the dragon's softening cock rudely breaks you from the moment, slopping against your cheek and dribbling pitifully. Its owner has given himself to the pleasure you forced on him, and he lies there, breathing heavily with closed eyes and digging his claws into the upholstery as aftershocks of pleasure set his muscles twitching.";
		WaitLineBreak;
		say "     'Mmm. We're keeping this big lug.' Sascha purrs as he takes hold of Ozeg's cock, bringing it to his lips and cleaning it with long, slow licks that urge more creamy dragon batter onto his tongue. You doubt he's finished with the dragon's manhood, and judging by the almost audible throb of Ozeg's shaft, it doesn't seem that the dragon minds. Watching Sascha's teasing for a bit, you wipe yourself down with a nearby decorative cloth (after shaking the dust from it), then stand and gather your gear. If you stayed until Sascha finished with the poor dragon, you doubt you'd get anything done, and you have other business to take care of in the meantime. Knowing that neither of the two can hear you in their lusty little world, you don't bother saying goodbye.";
		say "     [bold type]Sascha may find you if he needs you, or he might stay here.[roman type] Either way, you know the cat well enough that you don't worry about his safety.";
		NPCSexAftermath Ozeg receives "Stroking" from Sascha;
	else: [Sascha fucks him off screen]
		say "     Sighing, you put the demon's manhood out of your mind and snap your fingers to regain his attention from his frantic face-rubbing against Sascha's paws. Trying to keep your tone sympathetic, you ask him what he was doing in the basement. What did he do to get imprisoned in such a way? Someone had to put him there. Who was it? And almost as an afterthought, you ask his name. 'M-My name's Ozeg, sir. I'm sorry. I did not mean to be rude.' As though he wants to hide behind Sascha's leg, the demon turns his attention toward you but shivers under your gaze, unable to meet your eyes, bowing his head gently. 'I was summoned to this world by the lord of this manor. Once, I was a warrior of hell, but he seemed to think I was more powerful than I was.' Pulling his knees up to his chest, the dragon cuts a pathetic figure despite the drooling, irrepressible dick between his thick thighs. 'He demanded I grant him his fondest wish, the return of his love, but he didn't take the impossibility of his request well.'";
		say "      Squirming like a schoolgirl with her first crush, the demonic dragon mumbles into his hand, his voice wavering. 'Torture didn't work, so he tried other methods. When his health declined, he left me to rot, and added more vigor to my punishment. Every second was so...' trailing off, Ozeg goes silent, his thighs rubbing together against his beercan cock in a way that doesn't tell you if he enjoyed what the house's owner did to him but makes quite a mess, further soiling the carpet below his bare ass with sticky goo. Nothing the dragon says seems to be a lie, and with his size, he doesn't have to play coy. He could hold Sascha hostage and get whatever he wanted from you. If he's willing to play nice, you suppose it wouldn't be a bad idea to keep him around. 'You can go ahead, [SaschaPAddress]. I think I'll give this big guy a night to remember.' Sascha says before you can ask him to leave the place with you. He's already throwing a leg over the unresisting dragon's shoulder and turning his head toward the cat's already well-fucked cunt. You can guess where this is going, so give them time to get acquainted, returning to the house's entrance and closing the door behind you.";
		say "     [bold type]Sascha may find you if he needs you, or he might stay here.[roman type] Either way, you know the cat well enough that you don't worry about his safety.";
		now Energy of Ozeg is turns;
		TraitLoss "Sascha Freed" for Sascha;


instead of going north from Haunted House Entrance while (Energy of Ozeg - turns < 10):
	say "     You think of going inside the haunted house, but remembering the cummy mess that a demon that was pent up for decades made of the place, you decide to leave Sascha and his new buddy to clean things up a while longer. Maybe a day or two...";

[Code to test the mansion more easily]
SaschaMansionTest is an action applying to nothing.

understand "ZMansionSkip" as SaschaMansionTest.

check SaschaMansionTest:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out SaschaMansionTest:
	say "     <You've now met Sascha, fucked his pussy, and met him again to do the same. This will allow you to access the mansion content more easily! Thank you in advance if you're seeing this because you're helping me test! You should be free to search for Kitty Adventures now.>";
	now Resolution of Wild Kitty is 5;
	now Wild Kitty is Resolved;
	now Resolution of Rough But Sweet is 2;
	now Rough But Sweet is Resolved;

Haunted Mansion ends here.