Version 2 of Pets by Core Mechanics begins here.
[Version 2.1 - Command tweaks]
[- Originally Authored By: Nuku Valente -]

Pet is a kind of person.
A pet can be tamed. A pet is usually not tamed.
A pet has text called summondesc.
A pet has text called dismissdesc. Dismissdesc is usually "You send your ally away.".
A pet has a text called assault.
A pet has a number called lastfight. lastfight is usually 255.
The player has a pet called companion.

Definition: A person is lonely:
	if companion of Player is nullpet, yes;

Definition: A person is not lonely:
	if companion of Player is nullpet, no;

before examining a pet (called x):
	if debugactive is 1:
		say "DEBUG -> Traits of [x]: [Traits of x][line break]";
	if x is the companion of the player:
		increase score by 0;
	else:
		say "I don't see any [x] around here at the moment.";
		stop the action;

Table of GameCharacterIDs (continued)
object	name
Nullpet	"Nullpet"

Nullpet is a pet. Nullpet is a part of the player;

DismissPlayerPet is an action applying to nothing.
understand "ally dismiss" as DismissPlayerPet.
understand "pet dismiss" as DismissPlayerPet.
understand "dismiss" as DismissPlayerPet.

carry out DismissPlayerPet:
	if Player is lonely:
		say "There is no ally around to dismiss.";
	else:
		say "[dismissdesc of companion of Player]";
		now companion of Player is nullpet;

CallPlayerPet is an action applying to one thing.
understand "ally [tamed pet]" as CallPlayerPet.
understand "pet [tamed pet]" as CallPlayerPet.

carry out CallPlayerPet a pet (called x):
	if companion of Player is not x:
		if Player is not lonely:
			say "[dismissdesc of companion of Player]";
			LineBreak;
		now the companion of Player is x;
		say "[summondesc of x]";
	else:
		say "They are already your current ally.";

CountPlayerPets is an action applying to nothing.
understand "allies" as CountPlayerPets.
understand "ally" as CountPlayerPets.
understand "pets" as CountPlayerPets.
understand "pet" as CountPlayerPets.

Carry out CountPlayerPets:
	say "Allies: ";
	let PetList be a list of texts;
	repeat with Pet running through tamed pets:
		add Printed Name of Pet to PetList;
	sort PetList;
	if hypernull is 0:
		repeat with Pet running through PetList:
			say "[link][Pet][as]ally [Pet][end link] ";
		LineBreak;
	else:
		say "[PetList]";
	if companion of Player is nullpet:
		say "Active Ally: NONE[line break]";
	else:
		say "Active Ally: [companion of Player][line break]";
	say "Ally COMMANDS:[line break]";
	say "[bold type]ally <name>[roman type] - Make the named ally your active one.";
	say "[bold type]ally dismiss[roman type] - Send away your ally (for now).";
	say "[link][bold type]ally overview[roman type][end link] - Display a table with the stats of all currently available allies.";

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
		say "You have no allies!";
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

Table of GameCharacterIDs (continued)
object	name
Latex Vixen	"Latex Vixen"

Latex Vixen is a pet. Latex Vixen is a part of the player.
understand "Example" as Latex Vixen.
printed name of Latex Vixen is "Example".
The description of Latex Vixen is "Sleek latex lines run over hir bright green and black form. Shi has a narrow snout with oddly solid looking teeth, often bared in a grin or smile. She has ripe C cupped breasts, a long shiny tail and a cock that stands out against her black belly, as pink as the belly is deep black.".
The weapon damage of latex vixen is 10.
The level of latex vixen is 4.
The dexterity of latex vixen is 12.
The summondesc of latex vixen is "You feel hands settle on your midsection from behind as soft breasts press against your back. The shiny vixen steps into view from behind, ready to follow you wherever you go and see to your various 'needs'.".
The assault of latex vixen is "[Vixattack]".

instead of sniffing the Latex Vixen:
	say "The latex vixen sadly smells of latex and incompletion.";

To say Vixattack:
	say "Not coded yet.";

Pets ends here.
