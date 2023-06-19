Version 1 of Tape Inventory by MinimalBuild begins here.

"Adds the Tape Inventory to the Flexible Survival game"

TapeInventorying is an action applying to nothing.

understand "tint" as TapeInventorying.
understand "tinv" as TapeInventorying.
understand "tape inventory" as TapeInventorying.
understand "tape inv" as TapeInventorying.

carry out TapeInventorying:
	sort tapes of Player;
	if the number of entries in tapes of Player is 0:
		say "Your collection of video tapes is empty.";
	if the number of entries in tapes of Player > 0:
		say "Type [bold type]tape <name>[roman type] to [bold type][bracket]U[close bracket][roman type]se a tape, [bold type]tapedrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy a tape.";
		say "Your video tape collection consists of:[line break]";
		let norepeat be a list of text;
		repeat with x running through tapes of Player:
			say "[link][bracket][bold type]U[roman type][close bracket][as]tape [x][end link] ";
			say "[link][bracket][bold type]D[roman type][close bracket][as]tapedrop [x][end link] ";
			say "[X][line break]";

understand "tape [text]" as tapeing.

Tapeing is an action applying to one topic.

carry out tapeing:
	sort tapes of Player;
	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 0;
	let q be a topic;
	repeat with x running through tapes of Player:
		increase z by 1;
		if t in lower case is x in lower case:
			now target is x;
			now found is 1;
			break;
	if found is 0:
		say "     You don't seem to have any such tape.";
		continue the action;
	if carried of video camera < 1:
		say "     You do not have a camera with you that you could watch the tape on.";
		if Lost Camera is resolved: [camera was found already]
			say "     Thinking back to the lost camera you found, you wonder where you put it last...";
		stop the action;
	say "     You dig out the tape from your backpack and get your camera ready, opening up its tape slot.";
	if entry z of tapes of Player is:
		-- "Example":
			say "..."; [Source: Wahn/Recordings.i7x]

[ Template to fill for new tapes ]
[
		-- "TAPE NAME":
			say "[TAPE SCENE]";
]

to deletetape (x - text):	[removes 1 tape of a given type from the player's inventory]
	let found be 0;
	let z be 0;
	repeat with y running through tapes of Player:
		increase z by 1;
		if x in lower case is y in lower case:
			now found is 1;
			break;
	if found is 0:
		say "Error - [x] - Expected tape not found.";
		stop the action;
	else:
		say "     You dig out the tape [entry z of tapes of Player] from your backpack and throw it away.";
		remove entry z from tapes of Player;

understand "tapedrop [text]" as tapedropping.

Tapedropping is an action applying to one topic.

Carry out tapedropping:
	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 0;
	let q be a topic;
	repeat with x running through tapes of Player:
		increase z by 1;
		if t in lower case is x in lower case:
			now target is x;
			now found is 1;
			break;
	if found is 0:
		say "     You don't seem to have any such tape.";
		continue the action;
	say "     You dig out the tape [entry z of tapes of Player] from your backpack and throw it away.";
	remove entry z from tapes of Player;

Tape Inventory ends here.
