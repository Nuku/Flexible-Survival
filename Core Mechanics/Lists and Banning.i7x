Version 2 of Lists and Banning by Core Mechanics begins here.
[ Version 1 - Banning/Warding - Written by Speedlover]
[ Version 1.1 - Updates to have Tags for content and Flags for creatures / situations - Dys]
[ Version 2 - Flags and Tags renamed into unique XLists]

Section 1 - Declarations

marker is a kind of thing.
A marker has a list of text called infections.

[Species Lists]
AmphibianList is a marker. [list of amphibian infections - frogs, ...]
AquaticList is a marker. [list of aquatic infections]
ArachnidList is a marker. [list of arachnic infections - spidergirl, scorpions, spidertaur, ...]
AvianList is a marker. [list of avian/bird infections - pigeon, ...]
AvianpredList is a marker. [list of predatory avian/bird infections - hawk, ...]
BovineList is a marker. [list of bovine infections - cows, sheep, antelopes, yaks, bison, buffalo, ...]
CanineList is a marker. [list of canine/lupine infections]
CervineList is a marker. [list of cervine infections - Deer, Elk, Moose, Reindeer, ...]
CetaceanList is a marker. [list of air-breathing aquatics - Dolphin, Whale, Porpoise, ...]
EquineList is a marker. [list of equine infections]
FelineList is a marker. [list of feline infections]
FoodList is a marker. [list of animated food infections - Gingerbread, Cheesecake, ...]
HumanList is a marker. [list of human infections]
HybridList is a marker. [list of mixed infections - manticore, ...]
InsectList is a marker. [list of insectile infections - ant, bee, scarab, ...]
LatexList is a marker. [list of infections w/latex/rubber/plastic skin]
LeporineList is a marker. [list of rabbit infections - rabbit, hare, ...]
MachineList is a marker. [list of machine infections]
MarsupialList is a marker. [list of marsupial infections - kangaroo, koala, ...]
MustelidList is a marker. [list of mustelid infections - weasels, ferrets, wolverines, badgers, ...]
NonOrganicList is a marker. [list of nonorganic infections - golems, etc.]
OrcList is a marker. [list of orc and orc-adjacent infections - orc warrior, worg, ...]
PiscineList is a marker. [list of gilled aquatics - fish...]
PlantList is a marker. [list of plant infections]
PorcineList is a marker. [list of piggy infections - pigs, boars, warthogs, ...]
PrimateList is a marker. [list of primate infections - gorilla, monkey, ...]
ReptileList is a marker. [list of reptiles/snakes/dragons/dinosaurs/etc... infections]
RodentList is a marker. [list of mustelid infections - rats, mice, beaver, chinchilla, ...]
SlimeList is a marker. [list of slime infections]
ToyList is a marker. [list of animated toy infections - plush lion, plastic reindeer, ...]
UrsineList is a marker. [list of bear infections]
VulpineList is a marker. [list of vulpine infections]

[Origin Lists]
HistoricalList is a marker. [list of historical creature infections]
MagicalList is a marker. [list of magic based infections]
MythologicalList is a marker. [list of mythological creature infections]
NatureList is a marker. [list of infections based on natural creatures]
OtherworldlyList is a marker. [list of infections from other worlds]
ScienceList is a marker. [list of creatures that were created]

[Genital Lists]
BarbedCockList is a marker. [List of creatures with a barbed cock - feline, ...]
BluntCockList is a marker. [list of infections w/blunt cock - equine, ...]
InternalCockList is a marker. [list of infections w/internal male genitals]
InternalBallsList is a marker. [list of infections w/internal male genitals]
KnottedCockList is a marker. [list of infections w/knotted cock - canine, ...]
OviPositorList is a marker. [list of infections with ovipositor]
PrehensileCockList is a marker. [list of infections with movable cock]
SheathedCockList is a marker. [list of infections with sheathed cocks]
TaperedCockList is a marker. [list of infections with tapering cock - canine, orca, ...]
TentacleCockList is a marker. [list of infections w/tentacle cock]

[Tail Lists]
TailList is a marker. [list of infections with tails]

[Locomotion Lists]
BipedalList is a marker. [2 legs]
QuadrupedalList is a marker. [4 legs]
HexapedalList is a marker. [6 legs]
OctapedalList is a marker. [8 legs]
TaurList is a marker. [4 legs + arms]
SerpentineList is a marker. [no legs, slithering]
SlidingList is a marker. [no legs, gooping]
FlightList is a marker. [list of infections w/flight capability]
SwimList is a marker. [list of infections capable of swimming underwater]

[Body State Lists]
AlwaysLacList is a marker. [infections that lactate constantly]
HeatList is a marker. [infections capable of heat]
AlwaysHeatList is a marker. [infections are always in heat]
RutList is a marker. [infections capable of rut]
AlwaysRutList is a marker. [infections are always in rut]
GillList is a marker. [can breathe underwater]
NotBreathingList is a marker. [does not need to breathe]

[Impregnation Lists]
BirthList is a marker. [infections that are doing live births]
EgglayList is a marker. [infections that are capable of laying eggs]
MpregList is a marker. [infections that are capable of Mpreg]
OviImpregnatorList is a marker. [list of infections capable of ovi impregnation - used for the function NPCSexAftermath to determine the way of impregnation]
SterileList is a marker. [infections that are sterile]

[Mind Lists]
FeralmindList is a marker. [list of feral infections]
HivemindList is a marker. [list of hive mind infections]
PackmindList is a marker. [list of pack creatures]

[Combat Ability Lists]
FirebreathList is a marker. [List of fire breathing creatures]
TailweaponList is a marker.

[TODO: replace this one in the code with the locomotion lists]
NoLegList is a marker. [list of infections without legs]

Flag is a kind of thing.
A Flag has a list of text called Infections.
A Flag has a list of situations called BadSpots.
A Flag can be banned. A Flag is usually not banned.
A Flag can be warded. A Flag is usually not warded.

Tag is a kind of thing.
A Tag has a list of text called Infections.
A Tag has a list of situations called BadSpots.
A Tag can be warded. A Tag is usually not warded.
A Tag can be banned. A Tag is usually not banned.

BodyHorrorList is a flag.
FurryList is a flag.
DemonList is a flag.
FeralList is a flag.
HumorousList is a flag.
HumanoidList is a flag. [not currently available for ban/ward]

FemaleList is a flag.
HermList is a flag.
MaleList is a flag.
TransList is a flag.

CockVoreList is a tag.
CuckList is a tag.
IncestList is a tag.
MindcontrolList is a tag.
NonconList is a tag.
VoreList is a tag.

The player has a list of text called WardList.
The player has a list of text called BanList.

Section 2 - Ban Menu

to new ban menu:
	let FlagList be {"Body Horror", "Females", "Feral", "Furry", "Hellspawn", "Hermaphrodite", "Humorous", "Males", "Transgender"};
	let TagList be {"Cockvore", "Cuck", "Incest", "Mindcontrol", "Noncon", "Vore"};
	let countnumber be 1;
	let nbmexit be 0;
	while nbmexit is 0:
		say "[bold type]Select which categories you want banned/warded:[roman type][line break]";
		say "[bold type]Warding or banning a category will permanently disable any associated events. Warding a category will mean you can only find a matching monster by hunting for them, while banning removes them from the game entirely.[roman type][line break]";
		say "[bold type](Banning/warding is sure to choke off MANY threads of the story and quests as well. Use with caution. You have been warned.)[roman type][line break]";
		say "[line break][bold type]FLAGS[roman type][line break]";
		while countnumber <= number of entries in FlagList:
			linkfind "[countnumber]";
			say "[set link hyperindex][countnumber] - [entry countnumber of FlagList][terminate link]: ";
			bancheck entry countnumber of FlagList;
			increase countnumber by 1;
		say "[line break][bold type]TAGS[roman type][line break]";
		while countnumber <= (number of entries in FlagList + number of entries in TagList):
			linkfind "[countnumber]";
			say "[set link hyperindex][countnumber] - [entry (countnumber - number of entries in FlagList) of TagList][terminate link]: ";
			bancheck entry (countnumber - number of entries in FlagList) of TagList;
			increase countnumber by 1;
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-[countnumber - 1])> [run paragraph on]";
			get a number;
			if (calcnumber >= 0 and calcnumber < countnumber):
				break;
			else:
				say "Invalid Entry. Pick from 0 to [countnumber - 1].";
		LineBreak;
		if calcnumber is 0:
			now nbmexit is 1;
		else if calcnumber <= number of entries in FlagList:
			banchange entry calcnumber of FlagList;
		else:
			banchange entry (calcnumber - number of entries in FlagList) of TagList;
		now countnumber is 1; [Must reset to 1 or it won't print the list again]

to bancheck (name - text):
	if name is listed in BanList of Player:
		say "[special-style-2]Banned[roman type][line break]";
	else if name is listed in WardList of Player:
		say "[special-style-1]Warded[roman type][line break]";
	else:
		say "[bold type]Normal[roman type][line break]";

to banchange (name - text):
	if name is listed in BanList of Player:
		remove name from BanList of Player;
		oldflagunban name;
		if clearnomore is 0:
			clear the screen;
		else:
			say "[bold type][name] is now normal.[roman type][line break]";
	else if name is listed in WardList of Player:
		remove name from WardList of Player;
		oldflagunward name;
		add name to BanList of Player;
		oldflagban name;
		if clearnomore is 0:
			clear the screen;
		else:
			say "[bold type][name] is now banned.[roman type][line break]";
	else:
		add name to WardList of Player;
		oldflagward name;
		if clearnomore is 0:
			clear the screen;
		else:
			say "[bold type][name] is now warded.[roman type][line break]";
	if clearnomore is not 0:
		wait for any key;

to oldflagban (flagname - text):
	if flagname is:
		-- "Body Horror":
			now BodyHorrorList is banned;
		-- "Cockvore":
			now CockVoreList is banned;
		-- "Furry":
			now FurryList is banned;
		-- "Males":
			now MaleList is banned;
		-- "Females":
			now FemaleList is banned;
		-- "Humorous":
			now HumorousList is banned;
		-- "Hermaphrodite":
			now HermList is banned;
		-- "Hellspawn":
			now DemonList is banned;
		-- "Feral":
			now FeralList is banned;
		-- "Transgender":
			now TransList is banned;
		-- "Cuck":
			now CuckList is banned;
		-- "Incest":
			now IncestList is banned;
		-- "Noncon":
			now NonconList is banned;
		-- "Mindcontrol":
			now MindcontrolList is banned;
		-- "Vore":
			now VoreList is banned;

to oldflagward (flagname - text):
	if flagname is:
		-- "Body Horror":
			now BodyHorrorList is warded;
		-- "Cockvore":
			now CockVoreList is warded;
		-- "Furry":
			now FurryList is warded;
		-- "Males":
			now MaleList is warded;
		-- "Females":
			now FemaleList is warded;
		-- "Humorous":
			now HumorousList is warded;
		-- "Hermaphrodite":
			now HermList is warded;
		-- "Hellspawn":
			now DemonList is warded;
		-- "Feral":
			now FeralList is warded;
		-- "Transgender":
			now TransList is warded;
		-- "Cuck":
			now CuckList is warded;
		-- "Incest":
			now IncestList is warded;
		-- "Noncon":
			now NonconList is warded;
		-- "Mindcontrol":
			now MindcontrolList is warded;
		-- "Vore":
			now VoreList is warded;

to oldflagunban (flagname - text):
	if flagname is:
		-- "Body Horror":
			now BodyHorrorList is not banned;
		-- "Cockvore":
			now CockVoreList is not banned;
		-- "Furry":
			now FurryList is not banned;
		-- "Males":
			now MaleList is not banned;
		-- "Females":
			now FemaleList is not banned;
		-- "Humorous":
			now HumorousList is not banned;
		-- "Hermaphrodite":
			now HermList is not banned;
		-- "Hellspawn":
			now DemonList is not banned;
		-- "Feral":
			now FeralList is not banned;
		-- "Transgender":
			now TransList is not banned;
		-- "Cuck":
			now CuckList is not banned;
		-- "Incest":
			now IncestList is not banned;
		-- "Noncon":
			now NonconList is not banned;
		-- "Mindcontrol":
			now MindcontrolList is not banned;
		-- "Vore":
			now VoreList is not banned;

to oldflagunward (flagname - text):
	if flagname is:
		-- "Body Horror":
			now BodyHorrorList is not warded;
		-- "Cockvore":
			now CockVoreList is not warded;
		-- "Furry":
			now FurryList is not warded;
		-- "Males":
			now MaleList is not warded;
		-- "Females":
			now FemaleList is not warded;
		-- "Humorous":
			now HumorousList is not warded;
		-- "Hermaphrodite":
			now HermList is not warded;
		-- "Hellspawn":
			now DemonList is not warded;
		-- "Feral":
			now FeralList is not warded;
		-- "Transgender":
			now TransList is not warded;
		-- "Incest":
			now IncestList is not warded;
		-- "Cuck":
			now CuckList is not warded;
		-- "Noncon":
			now NonconList is not warded;
		-- "Mindcontrol":
			now MindcontrolList is not warded;
		-- "Vore":
			now VoreList is not warded;

Lists and Banning ends here.
