Version 1 of Tape Inventory by Core Mechanics begins here.

"Adds the Tape Inventory to the Flexible Survival game"

TapeInventorying is an action applying to nothing.

understand "tint" as TapeInventorying.
understand "tinv" as TapeInventorying.
understand "tape inventory" as TapeInventorying.
understand "tape inv" as TapeInventorying.

carry out TapeInventorying:
	sort tapes of player;
	if the number of entries in tapes of player is 0:
		say "Your collection of video tapes is empty.";
	if the number of entries in tapes of player > 0:
		say "Type [bold type]tape <name>[roman type] to [bold type][bracket]U[close bracket][roman type]se a tape, [bold type]tapedrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy a tape.";
		say "Your video tape collection consists of:[line break]";
		let norepeat be a list of text;
		repeat with x running through tapes of player:
			say "[link][bracket][bold type]U[roman type][close bracket][as]tape [x][end link] ";
			say "[link][bracket][bold type]D[roman type][close bracket][as]tapedrop [x][end link] ";
			say "[X][line break]";

understand "tape [text]" as tapeing.

Tapeing is an action applying to one topic.

carry out tapeing:
	sort tapes of player;
	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 0;
	let q be a topic;
	repeat with x running through tapes of player:
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
	if entry z of tapes of player is:
		-- "Wayne's Tape 1":
			say "[FamilyFunTape1]"; [Source: Wahn/Recordings.i7x]
		-- "Wayne's Tape 2":
			say "[FamilyFunTape2]"; [Source: Wahn/Recordings.i7x]
		-- "Rat Twin Tape":
			say "[ErinConsolesViolet]"; [Source: Kernog/Rat Twins.i7x]
		-- "Grocery Store Tape":
			say "[RomanTransformationFootage]"; [Source: Kernog/Roman.i7x]
		-- "Gorilla Locker-room Tape 1":
			say "[FootballTeamSlice1]"; [Source: Kernog/Astroslide Field Locker-room.i7x]
		-- "Carter's Tape":
			say "[CartersRecording]"; [Source: Luneth/Origins.i7x]
		-- "Francis Koenig Observation Video":
			say "[HikingObservationVid]"; [Source: Wahn/Recordings.i7x]
		-- "Bodycam Tape - L. Nielson":
			say "[BodycamTape_Nielson]"; [Source: Wahn/Recordings.i7x]
		-- "Pizza Delivery Dash Cam Vid":
			say "[PizzaCarDashcamVid]";
		-- "Dressing Room Spycam Vid":
			say "[DressingRoomSpycamVid]";
		-- "Darius's Home Vid 1":
			say "[DariusHannahVid1]";
		-- "Darius's Home Vid 2":
			say "[DariusHannahVid2]";
		-- "Traffic Drone #006 Footage":
			say "[TrafficDrone#006Vid]";
		-- "Urban Explorer Helmet Cam Vid #1": [Source: Wahn/Recordings.i7x]
			say "[UrbanExplorerVid1]";
		-- "Fitness Studio Security Vid Vid":
			say "[FitnessStudioVid]";
[ Template to fill for new tapes ]
[
		-- "TAPE NAME":
			say "[TAPE SCENE]";
]

to deletetape (x - text):	[removes 1 tape of a given type from the player's inventory]
	let found be 0;
	let z be 0;
	repeat with y running through tapes of player:
		increase z by 1;
		if x in lower case is y in lower case:
			now found is 1;
			break;
	if found is 0:
		say "Error - [x] - Expected tape not found.";
		stop the action;
	else:
		say "     You dig out the tape [entry z of tapes of player] from your backpack and throw it away.";
		remove entry z from tapes of player;

understand "tapedrop [text]" as tapedropping.

Tapedropping is an action applying to one topic.

Carry out tapedropping:
	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 0;
	let q be a topic;
	repeat with x running through tapes of player:
		increase z by 1;
		if t in lower case is x in lower case:
			now target is x;
			now found is 1;
			break;
	if found is 0:
		say "     You don't seem to have any such tape.";
		continue the action;
	say "     You dig out the tape [entry z of tapes of player] from your backpack and throw it away.";
	remove entry z from tapes of player;

Tape Inventory ends here.
