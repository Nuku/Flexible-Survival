Version 3 of Pets by Core Mechanics begins here.
[- Originally Authored By: Nuku Valente -]
[ Version 2.1 - Command tweaks ]
[ Version 3 - Rebuild of the pet system by Bigfish and Wahn ]

Part 0 - Basic Setup

Chapter 1 - Declarations

Pet is a kind of person.
A pet can be tamed. A pet is usually not tamed.
A pet has text called summondesc.
A pet has text called dismissdesc. Dismissdesc is usually "You send your ally away.".
A pet has a list of text called IDList.
A pet has a text called assault.
A pet has a number called lastfight. lastfight is usually 255.
A pet has a person called NPCObject. NPCObject of a pet is usually NullPet.

The player has a list of pets called CompanionList.

Chapter 2 - Definitions

Definition: A person is lonely:
	if companionList of Player is empty, yes;

Definition: A person is not lonely:
	if companionList of Player is empty, no;

Chapter 3 - Bugfix

[backwards compatibility fix]
a postimport rule:
	repeat with CurrentPet running through pets:
		now CurrentPet is nowhere; [banished to the void]

Part 1 - Pet Functions

Chapter 1 - Maximum Companions

MaxCompanions is a number that varies.[@Tag:NotSaved] MaxCompanions is usually 1.

to CalcMaxCompanions:
	now MaxCompanions is 1;
	if "Double Team" is listed in feats of Player:
		increase MaxCompanions by 1;

an everyturn rule:
	CalcMaxCompanions;
	if number of entries in companionList of Player > MaxCompanions:
		repeat with CurrentPet running through companionList of Player:
			let DismissName be "";
			now DismissName is printed name of CurrentPet;
			if "Feral" is listed in Traits of CurrentPet:
				if Player is booked or Player is bunkered:
					say "     [bold type]As your party seems a bit big right now, you decide to send your companion home.[roman type][line break]";
					DismissFunction DismissName;
					break;
				else:
					next;
			else:
				say "     [bold type]As your party seems a bit big right now, you decide to send your companion home.[roman type][line break]";
				DismissFunction DismissName;
				break;

Chapter 2 - Adding Combat Companions

AddCompanion is an action applying to one topic.

understand "pet [text]" as AddCompanion.
understand "ally [text]" as AddCompanion.

SummonFailure is a truth state that varies.[@Tag:NotSaved] SummonFailure is usually false.

carry out AddCompanion:
	let InputName be the topic understood;
	AddCompanionFunction InputName;

to AddCompanionFunction (NewCompanion - a text):
	let AddPet be Nullpet;
	repeat with Z running through tamed pets:
		if NewCompanion is listed in IDList of Z:
			now AddPet is Z;
			break;
	if AddPet is NullPet:
		say "     You have no ally called [NewCompanion in title case]!";
	else:
		let MaxCompanions be 1;
		if "Double Team" is listed in feats of Player:
			increase MaxCompanions by 1;
		if AddPet is listed in companionList of Player:
			say "     [AddPet] is already following you!";
		else:
			let y be number of entries in companionList of Player;
			if y >= MaxCompanions:
				say "     You cannot have any more allies following you right now! If you want to choose [AddPet], you'll have to send someone else away!";
			else:
				say "[summondesc of AddPet]";
				if SummonFailure is false: [pet summon successful]
					add "currentCompanion" to Traits of Addpet;
					add Addpet to companionList of Player;
				else:	[failed to call the pet]
					now SummonFailure is false; [reset]

to ForceCompanionJoin (NewCompanion - a text):
	let AddPet be Nullpet;
	repeat with Z running through tamed pets:
		if NewCompanion is listed in IDList of Z:
			now AddPet is Z;
			break;
	if AddPet is not NullPet:
		add "currentCompanion" to Traits of Addpet;
		add Addpet to companionList of Player;

Chapter 3 - Removing Combat Companions

DismissFailure is a truth state that varies.[@Tag:NotSaved] DismissFailure is usually false.

understand "dismiss [text]" as DismissCompanion.

DismissCompanion is an action applying to one topic.

carry out DismissCompanion:
	let InputName be the topic understood;
	DismissFunction InputName;

understand "dismiss" as DismissFirstCompanion.
understand "ally dismiss" as DismissFirstCompanion.
understand "pet dismiss" as DismissFirstCompanion.

DismissFirstCompanion is an action applying to nothing.

check DismissFirstCompanion:
	if number of entries in CompanionList of Player is 0, say "     You don't have any allies following you right now!" instead;

carry out DismissFirstCompanion:
	let DismissName be printed name of entry 1 of companionList of Player;
	DismissFunction DismissName;

to DismissFunction (InputName - a text):
	let DismissPet be Nullpet;
	repeat with Z running through tamed pets:
		if InputName is listed in IDList of Z:
			now DismissPet is Z;
			break;
	if DismissPet is NullPet:
		say "     You have no ally called [InputName in title case]!";
	else if DismissPet is not listed in companionList of Player:
		say "     [DismissPet] is not following you!";
	else:
		say "[dismissdesc of DismissPet]";
		if DismissFailure is false:
			remove "currentCompanion" from Traits of DismissPet;
			remove DismissPet from companionList of Player;
		else: [pet couldn't be sent away]
			now DismissFailure is false; [reset]

to ForceCompanionDismiss (NewCompanion - a text):
	let DismissPet be Nullpet;
	repeat with Z running through tamed pets:
		if NewCompanion is listed in IDList of Z:
			now DismissPet is Z;
			break;
	if DismissPet is not NullPet:
		remove "currentCompanion" from Traits of DismissPet;
		remove DismissPet from companionList of Player;

Chapter 4 - Companion Screen

CountPlayerPets is an action applying to nothing.
understand "allies" as CountPlayerPets.
understand "ally" as CountPlayerPets.
understand "pets" as CountPlayerPets.
understand "pet" as CountPlayerPets.

Carry out CountPlayerPets:
	say "Allies:";
	let PetList be a list of texts;
	repeat with Pet running through tamed pets:
		add Printed Name of Pet to PetList;
	if PetList is empty:
		say " None";
	else:
		sort PetList;
		if hypernull is 0:
			repeat with Pet running through PetList:
				linkfind "ally [Pet]";
				say " [set link hyperindex][Pet][terminate link]";
		else:
			say " [PetList]";
	LineBreak;
	if companionList of Player is empty:
		say "Active Ally: None";
	else:
		say "Active [if number of entries in CompanionList of Player is 1]Ally[else]Allies[end if]:";
		repeat with z running through CompanionList of Player:
			say " [link][z][as]look [z][end link]";
	say "[line break][line break]Ally Commands:[line break]";
	say "[bold type]ally <name>[roman type] - Make the named ally your active one.";
	say "[link][bold type]ally dismiss[roman type][end link] - Send away your ally (for now).";
	say "[link][bold type]ally overview[roman type][end link] - Display a table with the stats of all currently available allies.";

Chapter 5 - Companion Overview Table

Table of PetOverviewList
Name (text)	Lvl(number)	Dmg(number)	Dex(number)
--	--	--	--
with 50 blank rows.

PetOverview is an action applying to nothing.
understand "allies overview" as PetOverview.
understand "ally overview" as PetOverview.
understand "pets overview" as PetOverview.
understand "pet overview" as PetOverview.

carry out PetOverview:
	let PetNumber be 0;
	blank out the whole of Table of PetOverviewList; [empty out all old data]
	repeat with Pet running through tamed pets:
		choose a blank row in the Table of PetOverviewList;
		now Name Entry is Printed Name of Pet;
		now Lvl Entry is Level of Pet;
		now Dmg Entry is Weapon Damage of Pet;
		now Dex Entry is Dexterity of Pet;
		increase PetNumber by 1;
	if PetNumber is 0:
		say "     You have no allies!";
	else:
		sort the Table of PetOverviewList in Name order;
		let PetOverviewName be "";
		let PetOverviewLvl be "";
		let PetOverviewDmg be "";
		let PetOverviewDex be "";
		say "[fixed letter spacing]";
		say "Name                 | Lvl | Dmg | Dex |[line break]";
		say "---------------------|-----|-----|-----|[line break]";
		repeat with N running from 1 to the number of filled rows in the Table of PetOverviewList:
			choose row N in the Table of PetOverviewList;
			now PetOverviewName is "[Name Entry]";
			now PetOverviewLvl is "[Lvl Entry]";
			now PetOverviewDmg is "[Dmg Entry]";
			now PetOverviewDex is "[Dex Entry]";
			say "[PetOverviewName formatted to 20 characters] | [PetOverviewLvl formatted to 3 characters] | [PetOverviewDmg formatted to 3 characters] | [PetOverviewDex formatted to 3 characters] |[line break]";
		say "[variable letter spacing]";

Chapter 6 - Leveling Up Companions

to Pet level up (companion - a pet):
	increase level of companion by 1;
	decrease XP of companion by ( level of companion minus 1 ) times 10;
	if "Good Teacher" is listed in feats of Player:
		increase XP of companion by ( level of companion minus 1 ) times 4;
	say "[companion] has gained level [level of companion]! Congratulations!";
	if remainder after dividing level of companion by 3 is 0:
		increase weapon damage of companion by 1;
	if remainder after dividing level of companion by 5 is 0:
		increase dexterity of companion by 1;

Part 2 - Example Companion

Table of GameCharacterIDs (continued)
object	name
Nullpet	"Nullpet"

Nullpet is a pet.

Table of GameCharacterIDs (continued)
object	name
Latex Vixen	"Latex Vixen"

Latex Vixen is a pet.
understand "Example" as Latex Vixen.
printed name of Latex Vixen is "Example".
Description of Latex Vixen is "Sleek latex lines run over her bright green and black form. She has a narrow snout with oddly solid looking teeth, often bared in a grin or smile. She has ripe C cupped breasts, a long shiny tail and a cock that stands out against her black belly, as pink as the belly is deep black.".
Weapon Damage of latex vixen is 10.
The level of latex vixen is 4.
Dexterity of latex vixen is 12.
The summondesc of latex vixen is "You feel hands settle on your midsection from behind as soft breasts press against your back. The shiny vixen steps into view from behind, ready to follow you wherever you go and see to your various 'needs'.".
The assault of latex vixen is "[Vixattack]".

instead of sniffing the Latex Vixen:
	say "The latex vixen sadly smells of latex and incompletion.";

To say Vixattack:
	say "Not coded yet.";

Pets ends here.
