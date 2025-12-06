Version 1 of Infection Vials by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]


Part 1 - Vial Harvesting

Table of OwnedVials
Name(text)	PlayerOwned(number)
with 1000 blank rows

Table of LarissaVials
Name(text)	LarissaOwned(number)
with 1000 blank rows

to VialGain (VialName - text) by (N - number):
	VialGain VialName by N silence state is 0;

to VialGain (VialName - text) by (N - number) silently:
	VialGain VialName by N silence state is 1;

to VialGain (VialName - text) by (N - number) silence state is (Silence - a number):
	if there is a Name of VialName in the Table of Random Critters: [infection exists]
		if there is a Name of VialName in the Table of OwnedVials: [row already exists]
			if debug is at level 5:
				say "DEBUG: Row [VialName] exists. Adding 1 to PlayerOwned.";
			choose a row with name of VialName in the Table of OwnedVials;
			now PlayerOwned entry is PlayerOwned entry + N;
		else: [new row to be filled]
			if debug is at level 5:
				say "DEBUG: Row [VialName] does not exist. Filling blank row with data.";
			Choose a blank row from Table of OwnedVials;
			now Name entry is VialName;
			now PlayerOwned entry is N;
		if Silence is 0:
			say "You manage to extract a vial of [special-style-1][VialName][roman type] nanites for study and use.";
		sort Table of OwnedVials in name order;
	else: [infection does not exist]
		say "ERROR! '[VialName]' is not a valid infection to gain infection vials for. Please report this message and the context you saw it in on the FS Discord!";

to VialLoss (VialName - text) by (N - number):
	VialLoss VialName by N silence state is 0;

to VialLoss (VialName - text) by (N - number) silently:
	VialLoss VialName by N silence state is 1;

to VialLoss all (VialName - text):
	if there is a Name of VialName in the Table of OwnedVials:
		choose a row with name of VialName in the Table of OwnedVials;
		if PlayerOwned entry > 0:
			VialLoss VialName by PlayerOwned entry;
		else:
			if debug is at level 5:
				say "DEBUG -> Trying to remove [VialName] from player who doesn't have any.[line break]";
			blank out the whole row; [removing vials from the list that the player no longer has]
	else:
		if debug is at level 5:
			say "DEBUG -> Trying to remove [VialName] from player who doesn't have any.[line break]";

to VialLoss all (VialName - text) silently:
	if there is a Name of VialName in the Table of OwnedVials:
		choose a row with name of VialName in the Table of OwnedVials;
		if PlayerOwned entry > 0:
			VialLoss VialName by PlayerOwned entry silently;
		else:
			if debug is at level 5:
				say "DEBUG -> Trying to remove [VialName] from player who doesn't have any.[line break]";
			blank out the whole row; [removing vials from the list that the player no longer has]
	else:
		if debug is at level 5:
			say "DEBUG -> Trying to remove [VialName] from player who doesn't have any.[line break]";

to VialLoss (VialName - text) by (N - number) silence state is (Silence - a number):
	if there is a Name of VialName in the Table of OwnedVials:
		choose a row with name of VialName in the Table of OwnedVials;
		if Silence is 0:
			LineBreak;
			if N is 1:
				say "     [bold type]You lose [if PlayerOwned entry is 1]your[else]1[end if] [VialName] infection vial![roman type][line break]";
			else:
				say "     [bold type]You lose [if PlayerOwned entry <= N]all your[else][N][end if] [VialName] infection vials![roman type][line break]";
		decrease PlayerOwned entry by N;
		if PlayerOwned entry < 1:
			blank out the whole row; [removing vials from the list that the player no longer has]
	else:
		if debug is at level 5:
			say "DEBUG -> Trying to remove [VialName] from player who doesn't have any.[line break]";

[called in the code of Core Mechanics/Alt Combat.i7x]
To Vialchance (x - a text):
	if researchbypass is 1, continue the action;
	if there is a name of x in the Table of Random Critters:
		choose row with name of x from Table of Random Critters;
		if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true, continue the action;
		if there is a resbypass in row MonsterID of Table of Random Critters and resbypass entry is true, continue the action;
		if scenario is "Researcher" or nanite collector is equipped:
			let vialcollectible be 10 + ( 2 * intelligence of Player ) + ( level of Player / 2 );
			if nanitemeter is 1:
				decrease vialcollectible by 10;
				if vialcollectible > 65, now vialcollectible is 65;
			else if nanitemeter is 3:
				increase vialcollectible by 10;
				if vialcollectible > 75, now vialcollectible is 75;
			else:
				if vialcollectible > 70, now vialcollectible is 70;
			let vcoll be 0;
			if a random number between 1 and 100 <= vialcollectible:
				now vcoll is 1;
			else if "Expert Researcher" is listed in feats of Player and a random number between 1 and 100 <= vialcollectible:
				now vcoll is 1;
			if vcoll is 1:
				LineBreak;
				VialGain x by 1;
				now vcoll is 0;
	else:
		say "ERROR! '[x]' is not a valid infection to gain infection vials for. Please report this message and the context you saw it in on the FS Discord!";


Part 2 - Vial Inventory

VialInventorying is an action applying to nothing.

understand "vint" as VialInventorying.
understand "vinv" as VialInventorying.
understand "vial inventory/inv" as VialInventorying.

check VialInventorying:
	if scenario is not "Researcher" and nanitemeter is 0:
		say "     You don't possess anything of that nature." instead;
	if number of filled rows in Table of OwnedVials is 0:
		say "     Your collection of infection vials is empty." instead;

carry out VialInventorying:
	say "Your infection vial collection consists of:[line break]";
	say "Type [bold type]vial <name>[roman type] to [bold type][bracket]U[close bracket][roman type]se a vial, [bold type]vialdrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy a vial, [bold type]vialalldrop <name>[roman type] to [bold type][bracket]X[close bracket][roman type]Destroy all of a vial";
	if Larissa is visible, say ", [bold type]vialsell <name>[roman type] to [bold type][bracket]S[close bracket][roman type]ell a vial";
	say " or [bold type]vialeverythingdrop[roman type] to [link][bold type][bracket]C[close bracket][roman type][as]vialeverythingdrop[end link]lean out every last vial you have.";
	LineBreak;
	sort Table of OwnedVials in name order;
	if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
	let linkparts be {{"U", "vial"}, {"D", "vialdrop"}, {"X", "vialalldrop"}, {"S", "vialsell"}};
	repeat with x running from 1 to number of filled rows in Table of OwnedVials:
		choose row x from Table of OwnedVials;
		if hypernull is not 1:
			repeat with linktext running through linkparts:
				linkfind "[entry 2 of linktext] [Name entry]"; [sets hyperindex to the existing or added entry matching link]
				if entry 2 of linktext is not "vialsell" or Larissa is visible:
					say "[set link hyperindex][bracket][entry 1 of linktext][close bracket][terminate link] ";
		say "[Name entry] x[PlayerOwned entry]";
		if x < number of filled rows in Table of OwnedVials:
			if remainder after dividing x by invcolumns is 0:
				LineBreak;
			else:
				say "  ||  ";
	LineBreak;

Part 3 - Vial Commands

understand "vial [text]" as vialing.

Vialing is an action applying to one topic.

Researchbypass is a number that varies. Researchbypass is normally 0.

carry out vialing:
	let NamedVial be the topic understood;
	let NamedVialCap be NamedVial in title case;
	if debug is at level 5:
		say "DEBUG: [NamedVial][line break]";
		say "DEBUG: [NamedVialCap] in title case[line break]";
	let found be 0;
	repeat through Table of OwnedVials:
		if Name entry exactly matches the text NamedVialCap, case insensitively:
			now found is 1;
			say "What harm could a terribly infectious bio-nanite be? Down the hatch!";
			VialLoss name entry by 1;
			repeat through Table of Random Critters:
				if name entry exactly matches the text NamedVialCap, case insensitively:
					now researchbypass is 1;
					if non-infectious entry is true:
						now non-infectious entry is false;
						infect NamedVialCap;
						now non-infectious entry is true;
					else:
						infect NamedVialCap;
					now researchbypass is 0;
					break;
			break;
	if found is 0:
		say "     You don't seem to have any such vial.";

to deletevial (x - text):	[removes 1 vial of a given type from the player's inventory]
	VialLoss x by 1;

understand "vialdrop [text]" as vialdropping.

Vialdropping is an action applying to one topic.

Carry out vialdropping:
	let NamedVial be the topic understood;
	let NamedVialCap be NamedVial in title case;
	if debug is at level 5:
		say "DEBUG: [NamedVial][line break]";
		say "DEBUG: [NamedVialCap] in title case[line break]";
	VialLoss NamedVialCap by 1;

understand "vialalldrop [text]" as vialalldropping.

Vialalldropping is an action applying to one topic.

Carry out vialalldropping:
	let NamedVial be the topic understood;
	let NamedVialCap be NamedVial in title case;
	if debug is at level 5:
		say "DEBUG: [NamedVial][line break]";
		say "DEBUG: [NamedVialCap] in title case[line break]";
	VialLoss all NamedVialCap;

understand "vialeverythingdrop" as VialEverythingDropping.

VialEverythingDropping is an action applying to nothing.

Check VialEverythingDropping:
	if the number of filled rows in the Table of OwnedVials is 0, say "     You don't even have any vials!" instead;

Carry out VialEverythingDropping:
	say "     [bold type]Do you really want to destroy all vials you have?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, out with this junk!";
	say "     ([link]N[as]n[end link]) - Err, on second thought...";
	if Player consents:
		blank out the whole of Table of OwnedVials; [cleaning out everything]
	LineBreak;


Infection Vials ends here.
