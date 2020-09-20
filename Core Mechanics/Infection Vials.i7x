Version 1 of Infection Vials by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]


Part 1 - Vial Harvesting

[called in the code of Core Mechanics/Alt Combat.i7x]
To Vialchance (x - a text):
	choose row MonsterID from Table of Random Critters;
	if researchbypass is 1, continue the action;
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
			let VialsOwned be 0;
			repeat with z running through vials of Player:
				if z is x, increase VialsOwned by 1;
			if VialsOwned > 14:
				say "You contemplate taking some more [special-style-1][x][roman type] nanite samples, but then decide against it as you already have plenty of those.";
			else:
				say "You manage to extract a vial of [special-style-1][x][roman type] nanites for study and use.";
				add x to vials of Player;
			now vcoll is 0;


Part 2 - Vial Inventory

VialInventorying is an action applying to nothing.

understand "vint" as VialInventorying.
understand "vinv" as VialInventorying.
understand "vial inventory" as VialInventorying.
understand "vial inv" as VialInventorying.

carry out VialInventorying:
	sort vials of Player;
	if scenario is not "Researcher" and nanitemeter is 0:
		say "You don't possess anything of that nature.";
		continue the action;
	if the number of entries in vials of Player is 0:
		say "Your collection of infection vials is empty.";
	if the number of entries in vials of Player > 0:
		say "Type [bold type]vial <name>[roman type] to [bold type][bracket]U[close bracket][roman type]se a vial, [bold type]vialdrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy a vial, [bold type]vialalldrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy [bracket]A[close bracket]ll of a vial, [bold type]vialeverythingdrop[roman type] to [link][bracket][bold type]C[roman type][close bracket][as]vialeverythingdrop[end link][roman type]lean out every last vial you have";
		if ( scenario is "Researcher" or nanitemeter > 0) and Larissa is visible:
			say " or [bold type]vialsell[roman type] to [bold type][bracket]S[close bracket][roman type]ell a vial";
		say ".";
		say "Your infection vial collection consists of:[line break]";
		let norepeat be a list of text;
		repeat with x running through vials of Player:
			if x is listed in norepeat, next;
			add x to norepeat;
			let count be 0;
			repeat with z running through vials of Player:
				if z is x, increase count by 1;
			say "[link][bracket][bold type]U[roman type][close bracket][as]vial [x][end link] ";
			say "[link][bracket][bold type]D[roman type][close bracket][as]vialdrop [x][end link] ";
			say "[link][bracket][bold type]DA[roman type][close bracket][as]vialalldrop [x][end link] ";
			if ( scenario is "Researcher" or nanitemeter > 0) and Larissa is visible:
				say "[link][bracket][bold type]S[roman type][close bracket][as]vialsell [x][end link] ";
			say "[X] x [count][line break]";

Part 3 - Vial Commands

understand "vial [text]" as vialing.

Vialing is an action applying to one topic.

Researchbypass is a number that varies. Researchbypass is normally 0.

carry out vialing:
	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 1;
	let q be a topic;
	repeat with x running through vials of Player:
		[now q is x;]
		if t in lower case is x in lower case:
			now target is x;
			now found is 1;
			break;
		increase z by 1;
	if found is 0:
		say "You don't seem to have any such vial.";
		continue the action;
	say "What harm could a terribly infectious bio-nanite be? Down the hatch!";
	now MonsterID is 0;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry exactly matches the text target, case insensitively:
			now MonsterID is y;
			break;
	if MonsterID is 0:
		say "ERROR: That creature infection ([target]) could not be found.";
		now MonsterID is 1;
	else:
		choose row MonsterID from the Table of Random Critters;
		now researchbypass is 1;
		if non-infectious entry is true:
			now non-infectious entry is false;
			infect target;
			now non-infectious entry is true;
		else:
			infect target;
		now researchbypass is 0;
		remove entry z from vials of Player;

to deletevial (x - text):	[removes 1 vial of a given type from the player's inventory]
	let found be 0;
	let z be 0;
	repeat with y running through vials of Player:
		increase z by 1;
		if x in lower case is y in lower case:
			now found is 1;
			break;
	if found is 0:
		say "Error - [x] - Expected vial not found.";
		stop the action;
	else:
		remove entry z from vials of Player;

understand "vialdrop [text]" as vialdropping.

Vialdropping is an action applying to one topic.

Carry out vialdropping:
	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 1;
	let q be a topic;
	repeat with x running through vials of Player:
		[now q is x;]
		if t in lower case is x in lower case:
			now target is x;
			now found is 1;
			break;
		increase z by 1;
	if found is 0:
		say "You don't seem to have any such vial.";
		continue the action;
	say "You chuck the [target] vial away.";
	remove entry z from vials of Player;

understand "vialalldrop [text]" as vialalldropping.

Vialalldropping is an action applying to one topic.

Carry out vialalldropping:
	let t be the topic understood;
	let target be text;
	let found be 0;
	repeat with x running through vials of Player:
		if t in lower case is x in lower case:
			now target is x;
			remove x from vials of Player;
			now found is 1;
	if found is 0:
		say "You don't seem to have any such vial.";
	else:
		say "You chuck all your [target] vials away.";

understand "vialeverythingdrop" as VialEverythingDropping.

VialEverythingDropping is an action applying to nothing.

Check VialEverythingDropping:
	if Vials of Player is empty, say "     You don't even have any vials!" instead;

Carry out VialEverythingDropping:
	say "     [bold type]Do you really want to destroy all vials you have?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, out with this junk!";
	say "     ([link]N[as]n[end link]) - Err, on second thought...";
	if Player consents:
		LineBreak;
		truncate Vials of Player to 0 entries; [cleaning out everything]


Infection Vials ends here.
