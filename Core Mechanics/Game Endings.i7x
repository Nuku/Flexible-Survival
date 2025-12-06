Version 1 of Game Endings by Core Mechanics begins here.

[TODO: Rebuild the game endings as a menu, where you can choose one option of endings you qualify]
[ Allowing for multiple endings to be watched: "This is one way your life could have continued. Do you want to see another?"]

EndingID is a number that varies.[@Tag:NotSaved] EndingID is usually 1.

a Game Ending is a kind of object.
TheEnd is a Game Ending.[@Tag:NotSaved]
TheEnd has a truth state called Player died. Player died is usually false. [The player died. Includes starvation, dehydration, eaten alive and so on.]
TheEnd has a truth state called Player imprisoned. Player imprisoned is usually false. [The player got imprisoned, enslaved and so on. Always involuntarily.]
TheEnd has a truth state called Player leaving. Player leaving is usually false. [The player left 'everything' behind. Always voluntarily.]
TheEnd has a text called Ending Reason. Ending Reason is usually "". [The cause of the ending. Extra info, like "Vore by Wyvern" (in case of vore death for example) and so on.]
TheEnd has a list of texts called Ending Flags. [Additional ending flags, like "Taur Player" for example.]
TheEnd has a list of texts called Excluded Types. [Ending types to be excluded.]

to the/-- Player is dead/killed/murdered/vored:
	now Player died of TheEnd is true;

to decide if the/-- Player/Player's dead/killed/murdered/vored:
	if Player died of TheEnd is true, decide yes;
	decide no;

to the/-- Player is gone/imprisoned/enslaved/lost:
	now Player imprisoned of TheEnd is true;

to decide if the/-- Player/Player's gone/imprisoned/enslaved/lost:
	if Player imprisoned of TheEnd is true, decide yes;
	decide no;

to the/-- Player has left:
	now Player leaving of TheEnd is true;

to decide if the/-- Player left:
	if Player leaving of TheEnd is true, decide yes;
	decide no;

to the/-- Player was/-- ended by ( R - a text ):
	now Ending Reason of TheEnd is R;

to decide if the/-- Player/Player's ended by ( R - a text ):
	if Ending Reason of TheEnd is R, decide yes;
	decide no;

to add the/-- ending flag ( F - a text ):
	add F to Ending Flags of TheEnd;

to decide if the/-- ending flag ( F - a text ) is set:
	if F is listed in Ending Flags of TheEnd:
		decide yes;
	decide no;

to exclude ( Type - a text ) endings:
	add Type to Excluded Types of TheEnd;

to decide if ( Type - a text ) endings are excluded:
	if Type is listed in Excluded Types of TheEnd, decide yes;
	decide no;

[setending is internally used for trigger ending and related functions. Not designed to be useful outside of that.]
to setending ( Ending - text ):
	setending ending silence state is 0;

to setending ( Ending - text ) silently: [suppresses the debug output]
	setending ending silence state is 1;

to setending ( Ending - text ) silence state is ( Silence - a number ): [sets the ending ID by its name entry for later use]
	let found be 0;
	repeat with y running from 1 to number of filled rows in Table of GameEndings:
		choose row y in Table of GameEndings;
		if priority entry <= 0:
			next;
		if Name entry exactly matches the text Ending, case insensitively:
			now found is 1;
			now EndingID is y;
			break;
	if found is 0:
		say "ERROR - Ending '[Ending]' not found. (setending)[line break]";
	else if debug is at level 6 and Silence is 0:
		say "DEBUG: Current [']ending['] set to: [EndingID] = [name entry][line break]";

to trigger the/-- ending ( Ending - a text ):
	setending Ending;
	choose row EndingID in the Table of GameEndings;
	if Priority entry >= 0: [Make sure, that the ending was found and EndingID is set correctly]
		if Name entry exactly matches the text Ending, case insensitively:
			now Triggered entry is true;

to decide if the/-- ending ( Ending - a text ) is triggered:
	setending Ending silently;
	choose row EndingID in the Table of GameEndings;
	if Priority entry >= 0:
		if Name entry exactly matches the text Ending, case insensitively:
			if Triggered entry is true:
				decide yes;
	decide no;

to decide if one of the/-- endings in ( Endings - a list of texts ) is triggered:
	repeat with N running from 1 to the number of entries in Endings:
		if ending "[entry N of Endings]" is triggered:
			decide yes;
	decide no;

[
to decide if all of the/-- endings in ( Endings - a list of texts ) are triggered:
	repeat with N running from 1 to the number of entries in Endings:
		if not ending "[entry N of Endings]" is triggered:
			decide no;
	decide yes;
]

vetcheat is an action applying to nothing.
understand "i am a pro" as vetcheat.

vetcheater is a number that varies.

check vetcheat:
	if vetcheater is not 0:
		say "You can only use this once." instead;

carry out vetcheat:
	increase vetcheater by 1;
	increase XP of Player by 200;
	if level of Player < 5:
		if XP of Player > ( level of Player plus one ) times 10:
			level up;
		if XP of Player > ( level of Player plus one ) times 10:
			level up;
		if XP of Player > ( level of Player plus one ) times 10:
			level up;
		if XP of Player > ( level of Player plus one ) times 10:
			level up;
		if XP of Player > ( level of Player plus one ) times 10:
			level up;
		else if "Fast Learner" is listed in feats of Player and XP of Player > ( level of Player plus one ) times 8:
			level up;
	decrease score by 400;

understand "summer" as supersponsor.

when play ends:
	clear the screen;
	say "[bold type]Game Over![roman type][line break]";
	ratetheplayer;
	say "[bracket][link]Restart[end link][close bracket] [bracket][link]Restore[end link][close bracket] [bracket][link]Undo[end link][close bracket]";
	say "----------";
	follow the self examine rule;
	LineBreak;
	[Go through the Table of GameEndings]
	sort the Table of GameEndings in Priority order;
	repeat with N running from 1 to the number of rows in the Table of GameEndings:
		if there is no Priority in row N of the Table of GameEndings:
			next; [Failsafe. Should never happen.]
		choose row N in the Table of GameEndings;
		if Priority entry is 0:
			next; [Skip the initial row.]
		if debug is at level 9:
			let SubtypeString be "";
			if Subtype entry is not "":
				now SubtypeString is " ([Subtype entry])";
			say "DEBUG: Handling ending ['][Name entry]['], Type: [Type entry][SubtypeString], Priority: [Priority entry], Triggered: [if Triggered entry is true]yes[else]no[end if].[no line break]";
		if Type entry endings are excluded:
			if debug is at level 9:
				say " (EXCLUDED)[line break]";
			next;
		follow the Ending entry;
		if Player dead or Player imprisoned:
			if debug is at level 1:
				say "DEBUG: The Player is either dead or imprisoned, enslaved and so on. Finishing here![line break]";
			break;
	[FS Multiplayer AD here]
	say "----------[line break]";
	say "I hope you enjoyed playing that as much as we enjoyed coding/writing it! It doesn't have to end here though! Come join other mutants and play in the Multiplayer Flexible Survival universe with us!";
	say "https://flexiblesurvival.com[line break]";
	say "Once you have a character, click [']direct control['], and we'll be there, waiting to give a hand!";
	say "Already have a MUD/MUCK/MUSH client? We're at flexiblesurvival.com port 2222";


to ratetheplayer:
	if GenderLock is 1 and score > 0:
		now tempnum is (score / 20);
		increase score by tempnum;
	if "Ultimatum" is listed in feats of Player and score > 0:
		now tempnum2 is (score / 10);
		increase score by tempnum2;
	say "In Scenario: [bold type][scenario][roman type], you have achieved a score of [bold type][score][roman type].";
	if GenderLock is 1 and score > 0, say "For choosing no gender lock, you received a bonus of [tempnum] points.";
	if "Ultimatum" is listed in feats of Player and score > 0, say "Your Ultimatum perk grants you a bonus of [tempnum2] points.";
	say "You've achieve the rank of: [bold type]";
	if score < 0:
		say "A used, broken condom!";
	else if score < 120:
		say "A used condom!";
	else if the score < 240:
		say "Post-Apocalyptic Passaround!";
	else if the score < 500:
		say "Salacious Scavenger!";
	else if the score < 1000:
		say "Wanton Wastewanderer!";
	else if the score < 1500:
		say "Serpent Blisskin!";
	else if the score < 2000:
		say "Maester Baster!";
	else if the score < 2500:
		say "Baude Warrior!";
	else if score > 9000:
		say "Th- What, 9000?!";
	else:
		say "The Lord Humungus!";
	say "[roman type]";
	if the score > 999:
		say "Your performance was so excellent, we'll give you a little... help, for your next run through. Type 'I am a pro' to gain 200 XP. It only works once per character";
		if bookfound is not 0:
			let tempnum be 0;
			sort table of library books in booknum order;
			repeat with y running from 1 to number of rows in table of library books:
				choose row y in table of library books;
				if booknum entry is bookfound:
					now tempnum is y;
					break;
			choose row tempnum from table of library books;
			if humanity of Player < 10:
				say ". Your confused, instinctual thoughts are sometimes broken by strange thoughts or images from a book you once read";
			else:
				say ". With all the excitement you went through at the library, the book you found remains firmly in your mind";
			say ". In the Abbey, type ['][bold type]dewey [bookcode entry][roman type]['] to find it again in your next game";
		say ".";
	LineBreak;

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Player Starvation"	"Death"	"Starvation"	Player Starvation rule	10	false
"Player has died"	"Death"	""	Player has died rule	10	false
"Epilogue Intro"	"Epilogue"	""	Epilogue Intro rule	50	false

This is the Player Starvation rule:
	if thirst of Player >= 100 or hunger of Player >= 100:	[blocking regular endings]
		trigger ending "Player Starvation";
		say "     You have perished from [if hunger of Player >= 100 and thirst of Player >= 100]starvation and thirst[else if hunger of Player >= 100]starvation[else]thirst[end if] and are no more. Your body becomes a meal for another of the more predatory creatures roaming the city.";
		the Player is dead;

This is the Player has died rule:
	if ending "Player has died" is triggered:
		the Player is dead;

This is the Epilogue Intro rule: [The player didn't die or bad ended]
	if humanity of Player < 10 and HP of Player > 0:
		if BodyName of Player is "Anthro Dragoness" and HP of Doctor Matt <= 100:
			trigger ending "Epilogue Intro";
			say "     Following some unknown instinct, you seek out another of your own, and home in on Orthas, the dragon that was guarding the lab. She pets you gently along your neck and makes soothing sounds that have you almost purring. She proves to be a loving and kind mistress and you protect her fiercely for the remainder of your long life.";
	else:
		trigger ending "Epilogue Intro";
		say "     You emerge from your harrowing experience with your mind intact, with your [BodySpeciesName of Player in lower case] form and [FaceSpeciesName of Player in lower case] face";
		if BodyName is "Human":
			say ". Despite the traumas set on you, you do your best to fit back in with humanity after the rescue arrives";
		say ".";
		if Player is male:
			if Cock Length of Player > 10 or Ball Size of Player > 3:
				say "     Your extreme masculine attributes prove to be more than a little awkward. As society puts itself back together, you do find a niche. Others, changed as you, require the services of such studs, and you never lack for something to do on the weekends[if Cock Count of Player > 1]. Your multiple endowments become quite popular amongst some infected, who come from some great distances to be serviced by you. Though it is illegal to charge for such services, many leave you a 'gift' regardless, even a marriage proposal or two[end if].";
			else if Cock Count of Player > 1:
				say "     Your multiple endowments become quite popular amongst some infected, who come from some great distances to be serviced by you. Though it is illegal to charge for such services, many leave you a 'gift' regardless, even a marriage proposal or two.";
		if SkinName of Player matches the text "Human", case insensitively:
			increase score by 0;
		else:
			say "     Your unnatural [Skin of Player] flesh makes you stand out in a crowd. You find it difficult to keep friends outside of other infected, even after you're declared safe for contact.";
		if "Fertile" is listed in feats of Player and Player is not sterile and ( number of filled rows in the Table of PlayerChildren + FeralBirths) > 5:
			if Player is female:
				say "     You've been pregnant so many times and given birth to so many children that the nanites make a very strange change to your reproductive organs. Your body automatically stored a large amount of cum from the last creature that screwed you. Each time you give birth, a small amount of the cum is used to re-impregnate you automatically. You spend the rest of your life in a constant state of pregnancy. At first, you're alarmed by this, but your ever-growing brood of children cares for your every whim so you quickly begin to enjoy your new life.";
			else if "MPreg" is listed in feats of Player and mpregcount >= 6:
				if "Breeding True" is not listed in feats of Player and "They Have Your Eyes" is not listed in feats of Player:
					say "     You've been pregnant so many times and given birth to so many children with your unusually altered body that the nanites make further changes to your reproductive organs. Your body begins automatically storing some cum from anyone or anything that's screwed you. Soon after you give birth, a small amount of the stored cum is automatically leaked out from a few of these storage chambers to be used to re-impregnate you if someone hasn't yet mated you. This medley of semen is somehow mixed together to give you children from several sires. You spend the rest of your life in a constant state of male pregnancy. At first, you're alarmed by this, but soon you're seeking out diverse lovers to add their semen to your stores, loving the beautiful array of hybrid children you birth. Your ever-growing brood cares for your every whim, allowing you to enjoy your new life as a male breeder. Most of your children turn out as males as well, many capable of male pregnancy like you, though lacking your body's ability to be eternally pregnant.";
				else:
					say "     You've been pregnant so many times and given birth to so many children with your unusually altered body that the nanites make further changes to your reproductive organs. Your body begins automatically storing a large amount of cum from the last creature that screwed you. Each time you give birth, a small amount of the cum is used to re-impregnate you automatically. You spend the rest of your life in a constant state of male pregnancy. At first, you're alarmed by this, but your ever-growing brood of children cares for your every whim so you quickly begin to enjoy your new life. Most of your children turn out as males as well, many capable of male pregnancy like you, though lacking your body's ability to be eternally pregnant.";
			if "Wild Womb" is listed in feats of Player and ( Player is female or ( "MPreg" is listed in feats of Player and mpregcount >= 6 ) ):
				say "     However, thanks to your unusual tendency to birth feral children, many of your young soon strike out on their own, often sneaking away in the night, as their instinct to breed and spread their infection takes control.";
		if BodyName of Player is "Anthro Dragoness":
			say "     Your dragon like body proves as much a curiosity as repulsion in those around you. You find gainful employment as a mascot for a theme park, where you are paid to wander the park and entertain the clients within. The job proves largely enjoyable, especially since the more annoying people are intimidated by your bulk and claws.";

Game Endings ends here.
