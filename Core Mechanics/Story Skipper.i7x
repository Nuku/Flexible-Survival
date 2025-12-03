Version 224 of Story Skipper by Core Mechanics begins here.
[ New compressed method - 5/17/2015 - Stripes ]
[ Version 223.1 - Updated w/Enhanced Chimera material ]
[ Version 224 - Completely rewritten - Wahn]

Part 0 - Variables

postimport rules is a rulebook.

Chapter 1 - Save Files

The File of EventSave (owned by another project) is called "FSEventSave".
The File of RoomSave (owned by another project) is called "FSRoomSave".
The File of RoomInventorySave (owned by another project) is called "FSRoomInventorySave".
The File of PossessionSave (owned by another project) is called "FSPossessionSave".
The File of CharacterSave (owned by another project) is called "FSCharacterSave".
The File of CharacterVariableSave (owned by another project) is called "FSCharacterVariableSave".
The File of CharacterVariable2Save (owned by another project) is called "FSCharacterVariable2Save".
The File of CharacterVariable3Save (owned by another project) is called "FSCharacterVariable3Save".
The File of CharacterVariable4Save (owned by another project) is called "FSCharacterVariable4Save".
The File of SexStats (owned by another project) is called "SexStats".
The File of UnbornChildSave (owned by another project) is called "FSUnbornChildSave".
The File of ChildrenSave (owned by another project) is called "FSChildrenSave".
The File of ChildrenBunkerSave (owned by another project) is called "FSChildrenBunkerSave".
The File of ChildrenRoamingSave (owned by another project) is called "FSChildrenRoamingSave".
The File of TraitSave (owned by another project) is called "FSTraitSave".
The File of PlayerSave (owned by another project) is called "FSPlayerSave".
The File of NewPlayerSave (owned by another project) is called "FSNewPlayerSave".
The File of PlayerListsSave (owned by another project) is called "FSPlayerListsSave".
The File of BeastSave (owned by another project) is called "FSBeastSave".
The File of BeastVariableSave (owned by another project) is called "FSBeastVariableSave".
The File of NoteSave (owned by another project) is called "FSNoteSave".
The File of StorageSave (owned by another project) is called "FSStorageSave".
The File of VialData (owned by another project) is called "FSVialDataSave".

PetList is a list of text that varies.[@Tag:NotSaved] [for stashing the pet objects in the Character Nexus]
PetList is { "Nullpet", "Latex Vixen", "strange doll", "pink raccoon", "demon brute", "wukong", "human dog", "Retriever Girl", "Rubber Tigress companion", "frost giantess", "Little fox", "skunk kit", "equinoid warrior", "Felinoid Companion", "Cute Crab", "house cat", "Exotic Bird", "helper dog", "Gryphoness", "bee girl", "gshep", "mouse girl", "royal tiger companion", "doberman companion", "demonologist", "Carnivorous Plant", "orc supersized breeder", "Best Wolf", "submissive demonic prince", "White Wolf Zero", "White Wolf One", "White Wolf Two", "White Wolf Three", "White Wolf Four", "White Wolf Five", "White Wolf Six", "White Wolf Seven", "White Wolf Eight", "White Wolf Nine", "White Wolf Ten"};

an everyturn rule:
	if Player is in NPC Nexus:
		say "     Trixie the fairy flutters into existence right next to you and looks at you with a puzzled expression. 'Now now, you really should be somewhere else. How in the world did you end up here? If you do remember the room where you're supposed to be, please report that on the FS Discord channel as a bug. But for now, let's get you back in the city at least.'";
		move Player to Bunker;

a postimport rule:
	if BodySpeciesName of Player is "":
		now BodySpeciesName of Player is BodyName of Player;
	if faceSpeciesName of Player is "":
		now faceSpeciesName of Player is FaceName of Player;
	if skinSpeciesName of Player is "":
		now skinSpeciesName of Player is SkinName of Player;
	if cockSpeciesName of Player is "":
		now cockSpeciesName of Player is CockName of Player;
	if CuntSpeciesName of Player is "":
		now CuntSpeciesName of Player is CockName of Player;
	if tailSpeciesName of Player is "":
		now tailSpeciesName of Player is TailName of Player;
	[bugfix for replaced skunk infection]
	if BodyName of Player is "Skunk":
		now BodyName of Player is "Skunk Female";
	if FaceName of Player is "Skunk":
		now FaceName of Player is "Skunk Female";
	if SkinName of Player is "Skunk":
		now SkinName of Player is "Skunk Female";
	if CockName of Player is "Skunk":
		now CockName of Player is "Skunk Female";
	if TailName of Player is "Skunk":
		now TailName of Player is "Skunk Female";
	[re-equip weapon wielded during possession import to correct player stats]
	if weapon object of Player is not journal:
		repeat with x running through owned armaments:
			if x is wielded:
				unwield x silently;
				wield x silently;
				break;
	[just in case, make extra sure these don't end up in player lists]
	remove "Imported" from WardList of Player, if present;
	remove "Imported" from BanList of Player, if present;

[----------------------------------------------------------------------------------]
[ Testing Commands for partial Saving                                              ]
[----------------------------------------------------------------------------------]

StashEvent is an action applying to nothing.

understand "StashEvent" as StashEvent.

carry out StashEvent:
	EventSave;

StashRoom is an action applying to nothing.

understand "StashRoom" as StashRoom.

carry out StashRoom:
	RoomSave;

StashPossession is an action applying to nothing.

understand "StashPossession" as StashPossession.

carry out StashPossession:
	PossessionSave;

StashCharacter is an action applying to nothing.

understand "StashCharacter" as StashCharacter.

carry out StashCharacter:
	CharacterSave;

StashPlayer is an action applying to nothing.

understand "StashPlayer" as StashPlayer.

carry out StashPlayer:
	PlayerSave;

StashBeast is an action applying to nothing.

understand "StashBeast" as StashBeast.

carry out StashBeast:
	BeastSave;

[----------------------------------------------------------------------------------]

EventRestoration is an action applying to nothing.

understand "EventLoad" as EventRestoration.

carry out EventRestoration:
	EventRestore;

RoomRestoration is an action applying to nothing.

understand "RoomLoad" as RoomRestoration.

carry out RoomRestoration:
	RoomRestore;

PossessionRestoration is an action applying to nothing.

understand "PossessionLoad" as PossessionRestoration.

carry out PossessionRestoration:
	PossessionRestore;

CharacterRestoration is an action applying to nothing.

understand "CharacterLoad" as CharacterRestoration.

carry out CharacterRestoration:
	CharacterRestore;

PlayerRestoration is an action applying to nothing.

understand "PlayerRestoration" as PlayerRestoration.

carry out PlayerRestoration:
	PlayerRestore;

BeastRestoration is an action applying to nothing.

understand "BeastRestoration" as BeastRestoration.

carry out BeastRestoration:
	BeastRestore;

TraitRestoration is an action applying to nothing.

understand "TraitRestoration" as TraitRestoration.

carry out TraitRestoration:
	TraitRestore;

Section 1 - Functions

to EventSave:
	say "Saving Events...";
	blank out the whole of Table of GameEvents; [empty out all old data]
	if number of situations > number of rows in the table of GameEvents: [making sure we got enough room for all situations]
		say "Error! Not enough rows to save all events in the table of GameEvents. Please report this on the FS Discord.";
	repeat with x running through situations: [rebuilds the table of GameEvents with current data]
		choose a blank row in the table of GameEvents;
		now Name entry is printed name of x;
		if x is resolved:
			now ResolveState entry is "Resolved";
		else:
			now ResolveState entry is "Unresolved";
		if x is active:
			now ActiveState entry is "Active";
		else:
			now ActiveState entry is "Inactive";
		now Resolution entry is Resolution of x;
		now SituationArea entry is sarea of x;
	write File of EventSave from the Table of GameEvents; [freshly made table gets saved to file]
	blank out the whole of Table of GameEvents; [empty it after saving]
	if debug is at level 10:
		say "DEBUG -> File of EventSave written.[line break]";

to EventRestore:
	if the File of EventSave exists:
		say "Restoring Events...";
		read File of EventSave into the Table of GameEvents;
		repeat with x running from 1 to the number of filled rows in the Table of GameEvents:
			choose row x in the Table of GameEvents;
			let EventIdName be Name entry;
			[bugfixes for renamed events]
			if EventIdName is "unused tool":
				now EventIdName is "Unused Tool";
			if EventIdName is "Destroyed Records":
				now EventIdName is "Burned Secrets";
			if EventIdName is "Meeting Orthas":
				now EventIdName is "Orthas_Meeting";
			if there is a name of EventIdName in the Table of GameEventIDs:
				let EventObject be the object corresponding to a name of EventIdName in the Table of GameEventIDs;
				if ResolveState entry is "Resolved":
					if EventObject is unresolved, now EventObject is resolved;
				else:
					if EventObject is resolved, now EventObject is unresolved;
				if ActiveState entry is "Active":
					if EventObject is inactive, now EventObject is active;
				else:
					if EventObject is active, now EventObject is inactive;
				if Resolution of EventObject is not Resolution entry, now Resolution of EventObject is Resolution entry;
				if sarea of EventObject is not SituationArea entry, now sarea of EventObject is SituationArea entry;
				[bugfix code after re-naming Midway to Fair]
				if sarea of EventObject is "Midway":
					now sarea of EventObject is "Fair";
				[bugfix code for people wrongly assigning "Dry Plains" instead of "Plains"]
				if sarea of EventObject is "Dry Plains":
					now sarea of EventObject is "Plains";
				[bugfix code for people wrongly assigning "Urban Forest" instead of "Forest"]
				if sarea of EventObject is "Urban Forest":
					now sarea of EventObject is "Forest";
				[
				if debug is at level 10:
					say "DEBUG -> [x]: EventIdName: [EventIdName] found and set to: [ResolveState entry], [ActiveState entry], Resolution: [Resolution entry]";
				]
			else:
				if EventIDName is not "Let's Party" and EventIDName is not "Captive Rat" and EventIDName is not "Locked Utility Room": [override for deleted event]
					say "DEBUG -> [x]: EventIdName: [EventIdName] not found in Table of GameEventIDs! Please report this message on the FS Discord!";
	else:
		say "No Event Save File Found!";
	blank out the whole of Table of GameEvents; [empty it after restoring]

to RoomSave:
	say "Saving Rooms...";
	blank out the whole of Table of GameRooms; [empty out all old data]
	blank out the whole of Table of GameRoomInventories; [empty out all old data]
	if number of rooms > number of rows in the table of GameRooms: [making sure we got enough room for all situations]
		say "Error! Not enough rows to save all rooms in the table of GameRooms. Please report this on the FS Discord.";
	repeat with x running through rooms: [rebuilds the table of GameRooms with current data]
		choose a blank row in the table of GameRooms;
		if RoomID of x is "Room": [no specific differing RoomID set -> default to printed name]
			now Name entry is printed name of x;
		else: [room has a specific unique ID set]
			now Name entry is RoomID of x;
		if x is private:
			now Reachability entry is "Private";
		else:
			now Reachability entry is "Public";
		if x is known:
			now ExplorationStatus entry is "Known";
		else:
			now ExplorationStatus entry is "Unknown";
		if x is Sleepsafe:
			now RestSafety entry is "Safe";
		else:
			now RestSafety entry is "Unsafe";
		if the number of entries in Invent of x is not 0:
			repeat with y running from 1 to the number of entries in Invent of x: [rebuilds the table of RoomInventory with current data]
				choose a blank row in the table of GameRoomInventories;
				if RoomID of x is "Room": [no specific differing RoomID set -> default to printed name]
					now RoomName entry is printed name of x;
				else: [room has a specific unique ID set]
					now RoomName entry is RoomID of x;
				now ItemName entry is entry y in Invent of x;
	write File of RoomSave from the Table of GameRooms; [freshly made table gets saved to file]
	write File of RoomInventorySave from the Table of GameRoomInventories; [freshly made table gets saved to file]
	blank out the whole of Table of GameRooms; [empty after saving]
	blank out the whole of Table of GameRoomInventories; [empty after saving]
	if debug is at level 10:
		say "DEBUG -> File of RoomSave written.[line break]";

to RoomRestore:
	if the File of RoomSave exists:
		say "Restoring Rooms...";
		read File of RoomSave into the Table of GameRooms;
		repeat with x running from 1 to the number of filled rows in the Table of GameRooms:
			choose row x in the Table of GameRooms;
			let RoomIdName be Name entry;
			if there is a name of RoomIdName in the Table of GameRoomIDs:
				let RoomObject be the object corresponding to a name of RoomIdName in the Table of GameRoomIDs;
				if Reachability entry is "Private":
					if RoomObject is not private, now RoomObject is private;
				else:
					if RoomObject is private, now RoomObject is not private;
				if ExplorationStatus entry is "Known":
					if RoomObject is unknown, now RoomObject is known;
				else:
					if RoomObject is known, now RoomObject is unknown;
				if RestSafety entry is "Safe":
					if RoomObject is not sleepsafe, now RoomObject is sleepsafe;
				else:
					if RoomObject is sleepsafe, now RoomObject is not sleepsafe;
				[
				if debug is at level 10:
					say "DEBUG -> [x]: RoomIdName: [RoomIdName] found and set to: [Reachability entry]; [ExplorationStatus entry]; [RestSafety entry]";
				]
			else:
				if RoomIdName is not "Lost in the Woods" and RoomIdName is not "Museum interior" and RoomIdName is not "of PAN Frat Second Floor":
					say "DEBUG -> [x]: RoomIdName: [RoomIdName] not found in Table of GameRoomIDs! Please this message on the FS Discord!";
	if the File of RoomInventorySave exists:
		repeat with x running through rooms:
			if Invent of x is not empty, truncate Invent of x to 0 entries; [cleaning out the old data]
		say "Restoring RoomInventories...";
		read File of RoomInventorySave into the Table of GameRoomInventories;
		repeat with x running from 1 to the number of filled rows in the Table of GameRoomInventories:
			choose row x in the Table of GameRoomInventories;
			if ItemName entry is "Sundered Codex", next; [automatically given on import now, so don't restore it]
			let RoomIdName be RoomName entry;
			if there is a name of RoomIdName in the Table of GameRoomIDs: [room exists]
				let RoomObject be the object corresponding to a name of RoomIdName in the Table of GameRoomIDs;
				if there is a name of ItemName entry in the Table of Game Objects: [item exists]
					add ItemName entry to Invent of RoomObject;
			else:
				if RoomIdName is not "Lost in the Woods" and RoomIdName is not "Museum interior" and RoomIdName is not "of PAN Frat Second Floor":
					say "DEBUG -> [x]: RoomIdName: [RoomIdName] not found in Table of GameRoomIDs! Please this message on the FS Discord!";
	else:
		say "No Room Save File Found!";
	blank out the whole of Table of GameRooms; [empty out all old data]
	blank out the whole of Table of GameRoomInventories; [empty out all old data]

to PossessionSave:
	say "Saving Possessions...";
	blank out the whole of Table of GamePossessions; [empty out all old data]
	repeat with x running from 1 to the number of rows in the Table of Game Objects: [rebuilds the table of GamePossessions with current data]
		choose row x in the Table of Game Objects;
		let PossessionName be Name entry;
		let PossessionCarriedNumber be 0;
		let PossessionStoredNumber be 0;
		let PossessionEquipped be false;
		let PossesssionCursed be false;
		if object entry is owned:
			now PossessionCarriedNumber is carried of object entry;
		if object entry is stored:
			now PossessionStoredNumber is stashed of object entry;
		if object entry is Equipment:
			if object entry is equipped:
				now PossessionEquipped is true;
			if object entry is cursed:
				now PossesssionCursed is true;
		else if object entry is Armament:
			if object entry is wielded:
				now PossessionEquipped is true;
		if PossessionCarriedNumber > 0 or PossessionStoredNumber > 0: [if the object is indeed in the players possession, it gets written down]
			choose a blank row in the table of GamePossessions;
			now Name entry is PossessionName;
			now CarriedNumber entry is PossessionCarriedNumber;
			now StoredNumber entry is PossessionStoredNumber;
			now EquippedStatus entry is PossessionEquipped;
			now CurseStatus entry is PossesssionCursed;
	write File of PossessionSave from the Table of GamePossessions; [freshly made table gets saved to file]
	write File of VialData from the Table of OwnedVials;
	blank out the whole of Table of GamePossessions; [empty after saving to file]
	if debug is at level 10:
		say "DEBUG -> File of PossessionSave written.[line break]";

to PossessionRestore:
	if the File of PossessionSave exists:
		say "Restoring Possessions...";
		read File of PossessionSave into the Table of GamePossessions;
		[resetting player weapon stats]
		now weapon object of Player is pocketknife;
		unwield pocketknife silently;
		[wiping out all items from before the import]
		repeat with x running from 1 to number of filled rows in table of game objects:
			choose row x from the table of game objects;
			if object entry is Equipment:
				if object entry is equipped, now object entry is not equipped;
			if carried of object entry > 0, now carried of object entry is 0;
			if stashed of object entry > 0, now stashed of object entry is 0;
		[applying the imported items]
		repeat with x running from 1 to the number of filled rows in the Table of GamePossessions:
			choose row x in the Table of GamePossessions;
			let PossessionIdName be Name entry;
			[some small bugfixes due to items that got renamed]
			[if PossessionIdName is "earthen seed", now PossessionIdName is "sierrasaur cum";] [never actually renamed]
			if PossessionIdName is "sturdy jeans", now PossessionIdName is "dark-blue jeans";
			if PossessionIdName is "tenvale gorillas football helmet", now PossessionIdName is "tenvale silverbacks football helmet";
			if PossessionIdName is "tenvale gorillas baseball cap", now PossessionIdName is "tenvale silverbacks baseball cap";
			if there is a name of PossessionIdName in the Table of Game Objects:
				let PossessionObject be the object corresponding to a name of PossessionIdName in the Table of Game Objects;
				now carried of PossessionObject is CarriedNumber entry;
				now stashed of PossessionObject is StoredNumber entry;
				if PossessionObject is Equipment:
					if EquippedStatus entry is true:
						now PossessionObject is equipped;
					else:
						now PossessionObject is not equipped;
					if CurseStatus entry is true:
						now PossessionObject is cursed;
					else:
						now PossessionObject is not cursed;
				else if PossessionObject is Armament:
					if EquippedStatus entry is true:
						now weapon object of Player is PossessionObject;
				[
				if debug is at level 10:
					say "DEBUG -> [x]: PossessionIdName: [PossessionIdName] found and set to: [carried of PossessionObject] carried and [stashed of PossessionObject] stored.";
				]
			else:
				say "DEBUG -> [x]: PossessionIdName: [PossessionIdName] not found in Table of Game Objects! Please report this message on the FS Discord!";
	else:
		say "No Possession Save File Found!";
	if the File of VialData exists:
		blank out the whole of Table of OwnedVials; [cleaning out everything]
		read File of VialData into the Table of OwnedVials;
	blank out the whole of Table of GamePossessions; [empty out all old data]

to CharacterSave:
	say "Saving Characters...";
	blank out the whole of Table of GameCharacters; [empty out all old data]
	blank out the whole of Table of GameCharacterVariables; [empty out all old data]
	blank out the whole of Table of GameCharacterVariable2; [empty out all old data]
	blank out the whole of Table of GameCharacterVariable3; [empty out all old data]
	blank out the whole of Table of GameCharacterVariable4; [empty out all old data]
	blank out the whole of Table of GameTraits; [empty out all old data]
	if number of persons > number of rows in the table of GameCharacterVariable4: [making sure we got enough room for all situations]
		say "Error! Not enough rows to save all Characters in the table of GameCharacterVariable4. Please report this on the FS Discord.";
	repeat with x running through persons: [rebuilds the table of GameCharacterVariable4 with current data]
		choose a blank row in the Table of GameCharacterVariable4;
		if there is a object of X in the Table of GameCharacterIDs:
			let CharacterName be the name corresponding to a object of X in the Table of GameCharacterIDs;
			now Name entry is CharacterName;
			let LocationDesignation be "NPC Nexus"; [standard value = stash room]
			if location of x is not nothing:
				let LocationRoomObject be location of x;
				if RoomID of LocationRoomObject is "Room": [no specific differing RoomID set -> default to printed name]
					now LocationDesignation is printed name of LocationRoomObject;
				else: [room has a specific unique ID set]
					now LocationDesignation is RoomID of LocationRoomObject;
			now LocationName entry is LocationDesignation;
			[Numbers]
			now Energy entry is Energy of x;
			now HP entry is HP of x;
			now MaxHP entry is MaxHP of x;
			now XP entry is XP of x;
			now Level entry is Level of x;
			now Armor entry is Armor of x;
			now Weapon Damage entry is Weapon Damage of x;
			now Strength entry is Strength of x;
			now Dexterity entry is Dexterity of x;
			now Stamina entry is Stamina of x;
			now Charisma entry is Charisma of x;
			now Intelligence entry is Intelligence of x;
			now Perception entry is Perception of x;
			now Hunger entry is Hunger of x;
			now Thirst entry is Thirst of x;
			now Morale entry is Morale of x;
			now Lust entry is Lust of x;
			now libido entry is Libido of x;
			now Loyalty entry is Loyalty of x;
			now Humanity entry is Humanity of x;
			now Affection entry is Affection of x;
			now Depravity entry is Depravity of x;
			now SubVsDom entry is SubVsDom of x;
			now Body Weight entry is Body Weight of x;
			now Body Definition entry is Body Definition of x;
			now Androginity entry is Androginity of x;
			now Mouth Length entry is Mouth Length of x;
			now Mouth Circumference entry is Mouth Circumference of x;
			now Tongue Length entry is Tongue Length of x;
			now Breast Size entry is Breast Size of x;
			now Nipple Count entry is Nipple Count of x;
			now Asshole Depth entry is Asshole Depth of x;
			now Asshole Tightness entry is Asshole Tightness of x;
			now Cock Count entry is Cock Count of x;
			now Cock Girth entry is Cock Girth of x;
			now Cock Length entry is Cock Length of x;
			now Ball Count entry is Ball Count of x;
			now Ball Size entry is Ball Size of x;
			now Cunt Count entry is Cunt Count of x;
			now Cunt Depth entry is Cunt Depth of x;
			now Cunt Tightness entry is Cunt Tightness of x;
			now Clit Size entry is Clit Size of x;
			now Capacity entry is Capacity of x;
			now SleepRhythm entry is SleepRhythm of x;
			now scalevalue entry is The scalevalue of x;
			now PlayerLastSize entry is PlayerLastSize of x;
			now ImpregTimer entry is ImpregTimer of x;
			now OffspringCount entry is OffspringCount of x;
			[Texts]
			now MainInfection entry is MainInfection of x;
			now FirstAnalPartner entry is FirstAnalPartner of x;
			now FirstVaginalPartner entry is FirstVaginalPartner of x;
			now FirstOralPartner entry is FirstOralPartner of x;
			now FirstPenilePartner entry is FirstPenilePartner of x;
			now Cock Size Desc entry is Cock Size Desc of x;
			now Cunt Size Desc entry is Cunt Size Desc of x;
			now Breast Size Desc entry is Breast Size Desc of x;
			now Short Breast Size Desc entry is Short Breast Size Desc of x;
			now Originalgender entry is Originalgender of x;
			now PlayerOriginalgender entry is PlayerOriginalGender of x;
			now PlayerLastGender entry is PlayerLastGender of x;
			now PlayerLastBodytype entry is PlayerLastBodytype of x;
			[Truth States]
			now PlayerMet entry is PlayerMet of x;
			now PlayerRomanced entry is PlayerRomanced of x;
			now PlayerFriended entry is PlayerFriended of x;
			now PlayerControlled entry is PlayerControlled of x;
			now PlayerFucked entry is PlayerFucked of x;
			now OralVirgin entry is OralVirgin of x;
			now Virgin entry is Virgin of x;
			now AnalVirgin entry is AnalVirgin of x;
			now PenileVirgin entry is PenileVirgin of x;
			now SexuallyExperienced entry is SexuallyExperienced of x;
			now TwistedCapacity entry is TwistedCapacity of x;
			now Sterile entry is Sterile of x;
			if the number of entries in Traits of x is not 0:
				repeat with y running from 1 to the number of entries in Traits of x: [rebuilds the table of GameTraits with current data]
					choose a blank row in the table of GameTraits;
					now OwnerName entry is CharacterName;
					now TraitText entry is entry y of Traits of x;
		else:
			say "Error! The character [x] is not listed in the Table of GameCharacterIDs and cannot be saved. Please report this on the FS Discord.";
	write File of CharacterVariable4Save from the Table of GameCharacterVariable4; [freshly made table gets saved to file]
	write File of TraitSave from the Table of GameTraits; [freshly made table gets saved to file]
	blank out the whole of Table of GameCharacters; [empty after saving]
	blank out the whole of Table of GameCharacterVariables; [empty after saving]
	blank out the whole of Table of GameCharacterVariable2; [empty after saving]
	blank out the whole of Table of GameCharacterVariable3; [empty after saving]
	blank out the whole of Table of GameCharacterVariable4; [empty after saving]
	blank out the whole of Table of GameTraits; [empty after saving]
	if debug is at level 10:
		say "DEBUG -> File of CharacterVariable4Save written.[line break]";
		say "DEBUG -> File of TraitSave written.[line break]";

to CharacterRestore:
	blank out the whole of Table of GameCharacters; [empty out to have a clean slate]
	blank out the whole of Table of GameCharacterVariables; [empty out to have a clean slate]
	blank out the whole of Table of GameCharacterVariable2; [empty out to have a clean slate]
	blank out the whole of Table of GameCharacterVariable3; [empty out to have a clean slate]
	blank out the whole of Table of GameCharacterVariable4; [empty out to have a clean slate]
	blank out the whole of Table of GameTraits; [empty out to have a clean slate]
	if the File of CharacterVariable4Save exists: [new, expanded character variable file]
		say "Restoring Characters...";
		read File of CharacterVariable4Save into the Table of GameCharacterVariable4;
		repeat with x running from 1 to the number of filled rows in the Table of GameCharacterVariable4:
			choose row x in the Table of GameCharacterVariable4;
			let CharacterIdName be Name entry;
			if there is a name of CharacterIdName in the Table of GameCharacterIDs:
				let CharacterObject be the object corresponding to a name of CharacterIdName in the Table of GameCharacterIDs;
				let MainInfection_Restore be MainInfection entry;
				if there is a name of LocationName entry in the Table of GameRoomIDs:
					let TargetRoom be the object corresponding to a name of LocationName entry in the Table of GameRoomIDs;
					if CharacterObject is not in TargetRoom, move CharacterObject to TargetRoom, without printing a room description;
				else:
					say "DEBUG -> Room [LocationName entry] does not exist. '[CharacterIdName]' moved to NPC Nexus. Please report this error on the FS Discord Bug Report Channel![line break]";
					move CharacterObject to NPC Nexus;
				[Numbers]
				if Energy of CharacterObject is not Energy entry, now Energy of CharacterObject is Energy entry;
				if HP of CharacterObject is not HP entry, now HP of CharacterObject is HP entry;
				if MaxHP of CharacterObject is not MaxHP entry, now MaxHP of CharacterObject is MaxHP entry;
				if XP of CharacterObject is not XP entry, now XP of CharacterObject is XP entry;
				if Level of CharacterObject is not Level entry, now Level of CharacterObject is Level entry;
				if Armor of CharacterObject is not Armor entry, now Armor of CharacterObject is Armor entry;
				if Weapon Damage of CharacterObject is not Weapon Damage entry, now Weapon Damage of CharacterObject is Weapon Damage entry;
				if Strength of CharacterObject is not Strength entry, now Strength of CharacterObject is Strength entry;
				if Dexterity of CharacterObject is not Dexterity entry, now Dexterity of CharacterObject is Dexterity entry;
				if Stamina of CharacterObject is not Stamina entry, now Stamina of CharacterObject is Stamina entry;
				if Charisma of CharacterObject is not Charisma entry, now Charisma of CharacterObject is Charisma entry;
				if Intelligence of CharacterObject is not Intelligence entry, now Intelligence of CharacterObject is Intelligence entry;
				if Perception of CharacterObject is not Perception entry, now Perception of CharacterObject is Perception entry;
				if Hunger of CharacterObject is not Hunger entry, now Hunger of CharacterObject is Hunger entry;
				if Thirst of CharacterObject is not Thirst entry, now Thirst of CharacterObject is Thirst entry;
				if Morale of CharacterObject is not Morale entry, now Morale of CharacterObject is Morale entry;
				if Lust of CharacterObject is not Lust entry, now Lust of CharacterObject is Lust entry;
				if Libido of CharacterObject is not Libido entry, now Libido of CharacterObject is Libido entry;
				if Loyalty of CharacterObject is not Loyalty entry, now Loyalty of CharacterObject is Loyalty entry;
				if Humanity of CharacterObject is not Humanity entry, now Humanity of CharacterObject is Humanity entry;
				if Affection of CharacterObject is not Affection entry, now Affection of CharacterObject is Affection entry;
				if Depravity of CharacterObject is not Depravity entry, now Depravity of CharacterObject is Depravity entry;
				if SubVsDom of CharacterObject is not SubVsDom entry, now SubVsDom of CharacterObject is SubVsDom entry;
				if Body Weight of CharacterObject is not Body Weight entry, now Body Weight of CharacterObject is Body Weight entry;
				if Body Definition of CharacterObject is not Body Definition entry, now Body Definition of CharacterObject is Body Definition entry;
				if Androginity of CharacterObject is not Androginity entry, now Androginity of CharacterObject is Androginity entry;
				if Mouth Length of CharacterObject is not Mouth Length entry, now Mouth Length of CharacterObject is Mouth Length entry;
				if Mouth Circumference of CharacterObject is not Mouth Circumference entry, now Mouth Circumference of CharacterObject is Mouth Circumference entry;
				if Tongue Length of CharacterObject is not Tongue Length entry, now Tongue Length of CharacterObject is Tongue Length entry;
				if Breast Size of CharacterObject is not Breast Size entry, now Breast Size of CharacterObject is Breast Size entry;
				if Nipple Count of CharacterObject is not Nipple Count entry, now Nipple Count of CharacterObject is Nipple Count entry;
				if Asshole Depth of CharacterObject is not Asshole Depth entry, now Asshole Depth of CharacterObject is Asshole Depth entry;
				if Asshole Tightness of CharacterObject is not Asshole Tightness entry, now Asshole Tightness of CharacterObject is Asshole Tightness entry;
				if Cock Count of CharacterObject is not Cock Count entry, now Cock Count of CharacterObject is Cock Count entry;
				if Cock Girth of CharacterObject is not Cock Girth entry, now Cock Girth of CharacterObject is Cock Girth entry;
				if Cock Length of CharacterObject is not Cock Length entry, now Cock Length of CharacterObject is Cock Length entry;
				if Ball Count of CharacterObject is not Ball Count entry, now Ball Count of CharacterObject is Ball Count entry;
				if Ball Size of CharacterObject is not Ball Size entry, now Ball Size of CharacterObject is Ball Size entry;
				if Cunt Count of CharacterObject is not Cunt Count entry, now Cunt Count of CharacterObject is Cunt Count entry;
				if Cunt Depth of CharacterObject is not Cunt Depth entry, now Cunt Depth of CharacterObject is Cunt Depth entry;
				if Cunt Tightness of CharacterObject is not Cunt Tightness entry, now Cunt Tightness of CharacterObject is Cunt Tightness entry;
				if Clit Size of CharacterObject is not Clit Size entry, now Clit Size of CharacterObject is Clit Size entry;
				if Armor of CharacterObject is not Armor entry, now Armor of CharacterObject is Armor entry;
				if Capacity of CharacterObject is not Capacity entry, now Capacity of CharacterObject is Capacity entry;
				if SleepRhythm of CharacterObject is not SleepRhythm entry, now SleepRhythm of CharacterObject is SleepRhythm entry;
				if scalevalue of CharacterObject is not scalevalue entry, now scalevalue of CharacterObject is scalevalue entry;
				if PlayerLastSize of CharacterObject is not PlayerLastSize entry, now PlayerLastSize of CharacterObject is PlayerLastSize entry;
				if ImpregTimer of CharacterObject is not ImpregTimer entry, now ImpregTimer of CharacterObject is ImpregTimer entry;
				if OffspringCount of CharacterObject is not OffspringCount entry, now OffspringCount of CharacterObject is OffspringCount entry;
				[Texts]
				if there is a name of MainInfection_Restore in the Table of Random Critters:
					if MainInfection of CharacterObject is not MainInfection entry, now MainInfection of CharacterObject is MainInfection entry;
				if FirstAnalPartner of CharacterObject is not FirstAnalPartner entry, now FirstAnalPartner of CharacterObject is FirstAnalPartner entry;
				if FirstVaginalPartner of CharacterObject is not FirstVaginalPartner entry, now FirstVaginalPartner of CharacterObject is FirstVaginalPartner entry;
				if FirstOralPartner of CharacterObject is not FirstOralPartner entry, now FirstOralPartner of CharacterObject is FirstOralPartner entry;
				if FirstPenilePartner of CharacterObject is not FirstPenilePartner entry, now FirstPenilePartner of CharacterObject is FirstPenilePartner entry;
				if Cock Size Desc of CharacterObject is not Cock Size Desc entry, now Cock Size Desc of CharacterObject is Cock Size Desc entry;
				if Cunt Size Desc of CharacterObject is not Cunt Size Desc entry, now Cunt Size Desc of CharacterObject is Cunt Size Desc entry;
				if Breast Size Desc of CharacterObject is not Breast Size Desc entry, now Breast Size Desc of CharacterObject is Breast Size Desc entry;
				if Short Breast Size Desc of CharacterObject is not Short Breast Size Desc entry, now Short Breast Size Desc of CharacterObject is Short Breast Size Desc entry;
				if Originalgender of CharacterObject is not Originalgender entry, now Originalgender of CharacterObject is Originalgender entry;
				if PlayerOriginalGender of CharacterObject is not PlayerOriginalGender entry, now PlayerOriginalGender of CharacterObject is PlayerOriginalGender entry;
				if PlayerLastGender of CharacterObject is not PlayerLastGender entry, now PlayerLastGender of CharacterObject is PlayerLastGender entry;
				if PlayerLastBodytype of CharacterObject is not PlayerLastBodytype entry, now PlayerLastBodytype of CharacterObject is PlayerLastBodytype entry;
				[Truth States]
				if PlayerMet of CharacterObject is not PlayerMet entry, now PlayerMet of CharacterObject is PlayerMet entry;
				if PlayerRomanced of CharacterObject is not PlayerRomanced entry, now PlayerRomanced of CharacterObject is PlayerRomanced entry;
				if PlayerFriended of CharacterObject is not PlayerFriended entry, now PlayerFriended of CharacterObject is PlayerFriended entry;
				if PlayerControlled of CharacterObject is not PlayerControlled entry, now PlayerControlled of CharacterObject is PlayerControlled entry;
				if PlayerFucked of CharacterObject is not PlayerFucked entry, now PlayerFucked of CharacterObject is PlayerFucked entry;
				if OralVirgin of CharacterObject is not OralVirgin entry, now OralVirgin of CharacterObject is OralVirgin entry;
				if Virgin of CharacterObject is not Virgin entry, now Virgin of CharacterObject is Virgin entry;
				if AnalVirgin of CharacterObject is not AnalVirgin entry, now AnalVirgin of CharacterObject is AnalVirgin entry;
				if PenileVirgin of CharacterObject is not PenileVirgin entry, now PenileVirgin of CharacterObject is PenileVirgin entry;
				if SexuallyExperienced of CharacterObject is not SexuallyExperienced entry, now SexuallyExperienced of CharacterObject is SexuallyExperienced entry;
				if TwistedCapacity of CharacterObject is not TwistedCapacity entry, now TwistedCapacity of CharacterObject is TwistedCapacity entry;
				if Sterile of CharacterObject is not Sterile entry, now Sterile of CharacterObject is Sterile entry;
				[
				if debug is at level 10:
					say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] found and values restored.";
				]
			else:
				say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] not found in Table of GameCharacterIDs! Please report this message on the FS Discord!";
	else if the File of CharacterVariable3Save exists: [old file for backwards compatibility, only used if the new file does not exist]
		say "Restoring Characters...";
		read File of CharacterVariable3Save into the Table of GameCharacterVariable3;
		repeat with x running from 1 to the number of filled rows in the Table of GameCharacterVariable3:
			choose row x in the Table of GameCharacterVariable3;
			let CharacterIdName be Name entry;
			if there is a name of CharacterIdName in the Table of GameCharacterIDs:
				let CharacterObject be the object corresponding to a name of CharacterIdName in the Table of GameCharacterIDs;
				if there is a name of LocationName entry in the Table of GameRoomIDs:
					let TargetRoom be the object corresponding to a name of LocationName entry in the Table of GameRoomIDs;
					if CharacterObject is not in TargetRoom, move CharacterObject to TargetRoom, without printing a room description;
				else:
					say "DEBUG -> Room [LocationName entry] does not exist. '[CharacterIdName]' moved to NPC Nexus. Please report this error on the FS Discord Bug Report Channel![line break]";
					move CharacterObject to NPC Nexus;
				[Numbers]
				if Energy of CharacterObject is not Energy entry, now Energy of CharacterObject is Energy entry;
				if HP of CharacterObject is not HP entry, now HP of CharacterObject is HP entry;
				if MaxHP of CharacterObject is not MaxHP entry, now MaxHP of CharacterObject is MaxHP entry;
				if XP of CharacterObject is not XP entry, now XP of CharacterObject is XP entry;
				if Level of CharacterObject is not Level entry, now Level of CharacterObject is Level entry;
				if Armor of CharacterObject is not Armor entry, now Armor of CharacterObject is Armor entry;
				if Weapon Damage of CharacterObject is not Weapon Damage entry, now Weapon Damage of CharacterObject is Weapon Damage entry;
				if Strength of CharacterObject is not Strength entry, now Strength of CharacterObject is Strength entry;
				if Dexterity of CharacterObject is not Dexterity entry, now Dexterity of CharacterObject is Dexterity entry;
				if Stamina of CharacterObject is not Stamina entry, now Stamina of CharacterObject is Stamina entry;
				if Charisma of CharacterObject is not Charisma entry, now Charisma of CharacterObject is Charisma entry;
				if Intelligence of CharacterObject is not Intelligence entry, now Intelligence of CharacterObject is Intelligence entry;
				if Perception of CharacterObject is not Perception entry, now Perception of CharacterObject is Perception entry;
				if Hunger of CharacterObject is not Hunger entry, now Hunger of CharacterObject is Hunger entry;
				if Thirst of CharacterObject is not Thirst entry, now Thirst of CharacterObject is Thirst entry;
				if Morale of CharacterObject is not Morale entry, now Morale of CharacterObject is Morale entry;
				if Lust of CharacterObject is not Lust entry, now Lust of CharacterObject is Lust entry;
				if Libido of CharacterObject is not Libido entry, now Libido of CharacterObject is Libido entry;
				if Loyalty of CharacterObject is not Loyalty entry, now Loyalty of CharacterObject is Loyalty entry;
				if Humanity of CharacterObject is not Humanity entry, now Humanity of CharacterObject is Humanity entry;
				if Affection of CharacterObject is not Affection entry, now Affection of CharacterObject is Affection entry;
				if Depravity of CharacterObject is not Depravity entry, now Depravity of CharacterObject is Depravity entry;
				if SubVsDom of CharacterObject is not SubVsDom entry, now SubVsDom of CharacterObject is SubVsDom entry;
				if Body Weight of CharacterObject is not Body Weight entry, now Body Weight of CharacterObject is Body Weight entry;
				if Body Definition of CharacterObject is not Body Definition entry, now Body Definition of CharacterObject is Body Definition entry;
				if Androginity of CharacterObject is not Androginity entry, now Androginity of CharacterObject is Androginity entry;
				if Mouth Length of CharacterObject is not Mouth Length entry, now Mouth Length of CharacterObject is Mouth Length entry;
				if Mouth Circumference of CharacterObject is not Mouth Circumference entry, now Mouth Circumference of CharacterObject is Mouth Circumference entry;
				if Tongue Length of CharacterObject is not Tongue Length entry, now Tongue Length of CharacterObject is Tongue Length entry;
				if Breast Size of CharacterObject is not Breast Size entry, now Breast Size of CharacterObject is Breast Size entry;
				if Nipple Count of CharacterObject is not Nipple Count entry, now Nipple Count of CharacterObject is Nipple Count entry;
				if Asshole Depth of CharacterObject is not Asshole Depth entry, now Asshole Depth of CharacterObject is Asshole Depth entry;
				if Asshole Tightness of CharacterObject is not Asshole Tightness entry, now Asshole Tightness of CharacterObject is Asshole Tightness entry;
				if Cock Count of CharacterObject is not Cock Count entry, now Cock Count of CharacterObject is Cock Count entry;
				if Cock Girth of CharacterObject is not Cock Girth entry, now Cock Girth of CharacterObject is Cock Girth entry;
				if Cock Length of CharacterObject is not Cock Length entry, now Cock Length of CharacterObject is Cock Length entry;
				if Ball Count of CharacterObject is not Ball Count entry, now Ball Count of CharacterObject is Ball Count entry;
				if Ball Size of CharacterObject is not Ball Size entry, now Ball Size of CharacterObject is Ball Size entry;
				if Cunt Count of CharacterObject is not Cunt Count entry, now Cunt Count of CharacterObject is Cunt Count entry;
				if Cunt Depth of CharacterObject is not Cunt Depth entry, now Cunt Depth of CharacterObject is Cunt Depth entry;
				if Cunt Tightness of CharacterObject is not Cunt Tightness entry, now Cunt Tightness of CharacterObject is Cunt Tightness entry;
				if Clit Size of CharacterObject is not Clit Size entry, now Clit Size of CharacterObject is Clit Size entry;
				if Armor of CharacterObject is not Armor entry, now Armor of CharacterObject is Armor entry;
				if Capacity of CharacterObject is not Capacity entry, now Capacity of CharacterObject is Capacity entry;
				if SleepRhythm of CharacterObject is not SleepRhythm entry, now SleepRhythm of CharacterObject is SleepRhythm entry;
				if scalevalue of CharacterObject is not scalevalue entry, now scalevalue of CharacterObject is scalevalue entry;
				if PlayerLastSize of CharacterObject is not PlayerLastSize entry, now PlayerLastSize of CharacterObject is PlayerLastSize entry;
				[Texts]
				if MainInfection of CharacterObject is not MainInfection entry, now MainInfection of CharacterObject is MainInfection entry;
				if FirstAnalPartner of CharacterObject is not FirstAnalPartner entry, now FirstAnalPartner of CharacterObject is FirstAnalPartner entry;
				if FirstVaginalPartner of CharacterObject is not FirstVaginalPartner entry, now FirstVaginalPartner of CharacterObject is FirstVaginalPartner entry;
				if FirstOralPartner of CharacterObject is not FirstOralPartner entry, now FirstOralPartner of CharacterObject is FirstOralPartner entry;
				if FirstPenilePartner of CharacterObject is not FirstPenilePartner entry, now FirstPenilePartner of CharacterObject is FirstPenilePartner entry;
				if Cock Size Desc of CharacterObject is not Cock Size Desc entry, now Cock Size Desc of CharacterObject is Cock Size Desc entry;
				if Cunt Size Desc of CharacterObject is not Cunt Size Desc entry, now Cunt Size Desc of CharacterObject is Cunt Size Desc entry;
				if Breast Size Desc of CharacterObject is not Breast Size Desc entry, now Breast Size Desc of CharacterObject is Breast Size Desc entry;
				if Short Breast Size Desc of CharacterObject is not Short Breast Size Desc entry, now Short Breast Size Desc of CharacterObject is Short Breast Size Desc entry;
				if Originalgender of CharacterObject is not Originalgender entry, now Originalgender of CharacterObject is Originalgender entry;
				if PlayerOriginalGender of CharacterObject is not PlayerOriginalGender entry, now PlayerOriginalGender of CharacterObject is PlayerOriginalGender entry;
				if PlayerLastGender of CharacterObject is not PlayerLastGender entry, now PlayerLastGender of CharacterObject is PlayerLastGender entry;
				if PlayerLastBodytype of CharacterObject is not PlayerLastBodytype entry, now PlayerLastBodytype of CharacterObject is PlayerLastBodytype entry;
				[Truth States]
				if PlayerMet of CharacterObject is not PlayerMet entry, now PlayerMet of CharacterObject is PlayerMet entry;
				if PlayerRomanced of CharacterObject is not PlayerRomanced entry, now PlayerRomanced of CharacterObject is PlayerRomanced entry;
				if PlayerFriended of CharacterObject is not PlayerFriended entry, now PlayerFriended of CharacterObject is PlayerFriended entry;
				if PlayerControlled of CharacterObject is not PlayerControlled entry, now PlayerControlled of CharacterObject is PlayerControlled entry;
				if PlayerFucked of CharacterObject is not PlayerFucked entry, now PlayerFucked of CharacterObject is PlayerFucked entry;
				if OralVirgin of CharacterObject is not OralVirgin entry, now OralVirgin of CharacterObject is OralVirgin entry;
				if Virgin of CharacterObject is not Virgin entry, now Virgin of CharacterObject is Virgin entry;
				if AnalVirgin of CharacterObject is not AnalVirgin entry, now AnalVirgin of CharacterObject is AnalVirgin entry;
				if PenileVirgin of CharacterObject is not PenileVirgin entry, now PenileVirgin of CharacterObject is PenileVirgin entry;
				if SexuallyExperienced of CharacterObject is not SexuallyExperienced entry, now SexuallyExperienced of CharacterObject is SexuallyExperienced entry;
				if TwistedCapacity of CharacterObject is not TwistedCapacity entry, now TwistedCapacity of CharacterObject is TwistedCapacity entry;
				if Sterile of CharacterObject is not Sterile entry, now Sterile of CharacterObject is Sterile entry;
				[
				if debug is at level 10:
					say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] found and values restored.";
				]
			else:
				say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] not found in Table of GameCharacterIDs! Please report this message on the FS Discord!";
	else if the File of CharacterVariable2Save exists: [old file for backwards compatibility, only used if the new file does not exist]
		say "Restoring Characters...";
		read File of CharacterVariable2Save into the Table of GameCharacterVariable2;
		repeat with x running from 1 to the number of filled rows in the Table of GameCharacterVariable2:
			choose row x in the Table of GameCharacterVariable2;
			let CharacterIdName be Name entry;
			if there is a name of CharacterIdName in the Table of GameCharacterIDs:
				let CharacterObject be the object corresponding to a name of CharacterIdName in the Table of GameCharacterIDs;
				if there is a name of LocationName entry in the Table of GameRoomIDs:
					let TargetRoom be the object corresponding to a name of LocationName entry in the Table of GameRoomIDs;
					if CharacterObject is not in TargetRoom, move CharacterObject to TargetRoom, without printing a room description;
				else:
					say "DEBUG -> Room [LocationName entry] does not exist. '[CharacterIdName]' moved to NPC Nexus. Please report this error on the FS Discord Bug Report Channel![line break]";
					move CharacterObject to NPC Nexus;
				[Numbers]
				if Energy of CharacterObject is not Energy entry, now Energy of CharacterObject is Energy entry;
				if HP of CharacterObject is not HP entry, now HP of CharacterObject is HP entry;
				if MaxHP of CharacterObject is not MaxHP entry, now MaxHP of CharacterObject is MaxHP entry;
				if XP of CharacterObject is not XP entry, now XP of CharacterObject is XP entry;
				if Level of CharacterObject is not Level entry, now Level of CharacterObject is Level entry;
				if Armor of CharacterObject is not Armor entry, now Armor of CharacterObject is Armor entry;
				if Weapon Damage of CharacterObject is not Weapon Damage entry, now Weapon Damage of CharacterObject is Weapon Damage entry;
				if Strength of CharacterObject is not Strength entry, now Strength of CharacterObject is Strength entry;
				if Dexterity of CharacterObject is not Dexterity entry, now Dexterity of CharacterObject is Dexterity entry;
				if Stamina of CharacterObject is not Stamina entry, now Stamina of CharacterObject is Stamina entry;
				if Charisma of CharacterObject is not Charisma entry, now Charisma of CharacterObject is Charisma entry;
				if Intelligence of CharacterObject is not Intelligence entry, now Intelligence of CharacterObject is Intelligence entry;
				if Perception of CharacterObject is not Perception entry, now Perception of CharacterObject is Perception entry;
				if Hunger of CharacterObject is not Hunger entry, now Hunger of CharacterObject is Hunger entry;
				if Thirst of CharacterObject is not Thirst entry, now Thirst of CharacterObject is Thirst entry;
				if Morale of CharacterObject is not Morale entry, now Morale of CharacterObject is Morale entry;
				if Lust of CharacterObject is not Lust entry, now Lust of CharacterObject is Lust entry;
				if Libido of CharacterObject is not Libido entry, now Libido of CharacterObject is Libido entry;
				if Loyalty of CharacterObject is not Loyalty entry, now Loyalty of CharacterObject is Loyalty entry;
				if Humanity of CharacterObject is not Humanity entry, now Humanity of CharacterObject is Humanity entry;
				if Body Weight of CharacterObject is not Body Weight entry, now Body Weight of CharacterObject is Body Weight entry;
				if Body Definition of CharacterObject is not Body Definition entry, now Body Definition of CharacterObject is Body Definition entry;
				if Androginity of CharacterObject is not Androginity entry, now Androginity of CharacterObject is Androginity entry;
				if Mouth Length of CharacterObject is not Mouth Length entry, now Mouth Length of CharacterObject is Mouth Length entry;
				if Mouth Circumference of CharacterObject is not Mouth Circumference entry, now Mouth Circumference of CharacterObject is Mouth Circumference entry;
				if Tongue Length of CharacterObject is not Tongue Length entry, now Tongue Length of CharacterObject is Tongue Length entry;
				if Breast Size of CharacterObject is not Breast Size entry, now Breast Size of CharacterObject is Breast Size entry;
				if Nipple Count of CharacterObject is not Nipple Count entry, now Nipple Count of CharacterObject is Nipple Count entry;
				if Asshole Depth of CharacterObject is not Asshole Depth entry, now Asshole Depth of CharacterObject is Asshole Depth entry;
				if Asshole Tightness of CharacterObject is not Asshole Tightness entry, now Asshole Tightness of CharacterObject is Asshole Tightness entry;
				if Cock Count of CharacterObject is not Cock Count entry, now Cock Count of CharacterObject is Cock Count entry;
				if Cock Girth of CharacterObject is not Cock Girth entry, now Cock Girth of CharacterObject is Cock Girth entry;
				if Cock Length of CharacterObject is not Cock Length entry, now Cock Length of CharacterObject is Cock Length entry;
				if Ball Count of CharacterObject is not Ball Count entry, now Ball Count of CharacterObject is Ball Count entry;
				if Ball Size of CharacterObject is not Ball Size entry, now Ball Size of CharacterObject is Ball Size entry;
				if Cunt Count of CharacterObject is not Cunt Count entry, now Cunt Count of CharacterObject is Cunt Count entry;
				if Cunt Depth of CharacterObject is not Cunt Depth entry, now Cunt Depth of CharacterObject is Cunt Depth entry;
				if Cunt Tightness of CharacterObject is not Cunt Tightness entry, now Cunt Tightness of CharacterObject is Cunt Tightness entry;
				if Clit Size of CharacterObject is not Clit Size entry, now Clit Size of CharacterObject is Clit Size entry;
				if Armor of CharacterObject is not Armor entry, now Armor of CharacterObject is Armor entry;
				if Capacity of CharacterObject is not Capacity entry, now Capacity of CharacterObject is Capacity entry;
				if SleepRhythm of CharacterObject is not SleepRhythm entry, now SleepRhythm of CharacterObject is SleepRhythm entry;
				if scalevalue of CharacterObject is not scalevalue entry, now scalevalue of CharacterObject is scalevalue entry;
				if PlayerLastSize of CharacterObject is not PlayerLastSize entry, now PlayerLastSize of CharacterObject is PlayerLastSize entry;
				[Texts]
				[now MainInfection of CharacterObject is MainInfection entry;]
				if FirstAnalPartner of CharacterObject is not FirstAnalPartner entry, now FirstAnalPartner of CharacterObject is FirstAnalPartner entry;
				if FirstVaginalPartner of CharacterObject is not FirstVaginalPartner entry, now FirstVaginalPartner of CharacterObject is FirstVaginalPartner entry;
				if FirstOralPartner of CharacterObject is not FirstOralPartner entry, now FirstOralPartner of CharacterObject is FirstOralPartner entry;
				if FirstPenilePartner of CharacterObject is not FirstPenilePartner entry, now FirstPenilePartner of CharacterObject is FirstPenilePartner entry;
				if Cock Size Desc of CharacterObject is not Cock Size Desc entry, now Cock Size Desc of CharacterObject is Cock Size Desc entry;
				if Cunt Size Desc of CharacterObject is not Cunt Size Desc entry, now Cunt Size Desc of CharacterObject is Cunt Size Desc entry;
				if Breast Size Desc of CharacterObject is not Breast Size Desc entry, now Breast Size Desc of CharacterObject is Breast Size Desc entry;
				if Short Breast Size Desc of CharacterObject is not Short Breast Size Desc entry, now Short Breast Size Desc of CharacterObject is Short Breast Size Desc entry;
				if Originalgender of CharacterObject is not Originalgender entry, now Originalgender of CharacterObject is Originalgender entry;
				if PlayerOriginalGender of CharacterObject is not PlayerOriginalGender entry, now PlayerOriginalGender of CharacterObject is PlayerOriginalGender entry;
				if PlayerLastGender of CharacterObject is not PlayerLastGender entry, now PlayerLastGender of CharacterObject is PlayerLastGender entry;
				if PlayerLastBodytype of CharacterObject is not PlayerLastBodytype entry, now PlayerLastBodytype of CharacterObject is PlayerLastBodytype entry;
				[Truth States]
				if PlayerMet of CharacterObject is not PlayerMet entry, now PlayerMet of CharacterObject is PlayerMet entry;
				if PlayerRomanced of CharacterObject is not PlayerRomanced entry, now PlayerRomanced of CharacterObject is PlayerRomanced entry;
				if PlayerFriended of CharacterObject is not PlayerFriended entry, now PlayerFriended of CharacterObject is PlayerFriended entry;
				if PlayerControlled of CharacterObject is not PlayerControlled entry, now PlayerControlled of CharacterObject is PlayerControlled entry;
				if PlayerFucked of CharacterObject is not PlayerFucked entry, now PlayerFucked of CharacterObject is PlayerFucked entry;
				if OralVirgin of CharacterObject is not OralVirgin entry, now OralVirgin of CharacterObject is OralVirgin entry;
				if Virgin of CharacterObject is not Virgin entry, now Virgin of CharacterObject is Virgin entry;
				if AnalVirgin of CharacterObject is not AnalVirgin entry, now AnalVirgin of CharacterObject is AnalVirgin entry;
				if PenileVirgin of CharacterObject is not PenileVirgin entry, now PenileVirgin of CharacterObject is PenileVirgin entry;
				if SexuallyExperienced of CharacterObject is not SexuallyExperienced entry, now SexuallyExperienced of CharacterObject is SexuallyExperienced entry;
				if TwistedCapacity of CharacterObject is not TwistedCapacity entry, now TwistedCapacity of CharacterObject is TwistedCapacity entry;
				if Sterile of CharacterObject is not Sterile entry, now Sterile of CharacterObject is Sterile entry;
				[
				if debug is at level 10:
					say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] found and values restored.";
				]
			else:
				say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] not found in Table of GameCharacterIDs! Please report this message on the FS Discord!";
	else if the File of CharacterVariableSave exists: [old file for backwards compatibility, only used if the new file does not exist]
		say "Restoring Characters...";
		read File of CharacterVariableSave into the Table of GameCharacterVariables;
		repeat with x running from 1 to the number of filled rows in the Table of GameCharacterVariables:
			choose row x in the Table of GameCharacterVariables;
			let CharacterIdName be Name entry;
			if there is a name of CharacterIdName in the Table of GameCharacterIDs:
				let CharacterObject be the object corresponding to a name of CharacterIdName in the Table of GameCharacterIDs;
				if there is a name of LocationName entry in the Table of GameRoomIDs:
					let TargetRoom be the object corresponding to a name of LocationName entry in the Table of GameRoomIDs;
					if CharacterObject is not in TargetRoom, move CharacterObject to TargetRoom, without printing a room description;
				else:
					say "DEBUG -> Room [LocationName entry] does not exist. '[CharacterIdName]' moved to NPC Nexus. Please report this error on the FS Discord Bug Report Channel![line break]";
					move CharacterObject to NPC Nexus;
				[Numbers]
				if Energy of CharacterObject is not Energy entry, now Energy of CharacterObject is Energy entry;
				if HP of CharacterObject is not HP entry, now HP of CharacterObject is HP entry;
				if MaxHP of CharacterObject is not MaxHP entry, now MaxHP of CharacterObject is MaxHP entry;
				if XP of CharacterObject is not XP entry, now XP of CharacterObject is XP entry;
				if Level of CharacterObject is not Level entry, now Level of CharacterObject is Level entry;
				if Armor of CharacterObject is not Armor entry, now Armor of CharacterObject is Armor entry;
				if Strength of CharacterObject is not Strength entry, now Strength of CharacterObject is Strength entry;
				if Dexterity of CharacterObject is not Dexterity entry, now Dexterity of CharacterObject is Dexterity entry;
				if Stamina of CharacterObject is not Stamina entry, now Stamina of CharacterObject is Stamina entry;
				if Charisma of CharacterObject is not Charisma entry, now Charisma of CharacterObject is Charisma entry;
				if Intelligence of CharacterObject is not Intelligence entry, now Intelligence of CharacterObject is Intelligence entry;
				if Perception of CharacterObject is not Perception entry, now Perception of CharacterObject is Perception entry;
				if Hunger of CharacterObject is not Hunger entry, now Hunger of CharacterObject is Hunger entry;
				if Thirst of CharacterObject is not Thirst entry, now Thirst of CharacterObject is Thirst entry;
				if Morale of CharacterObject is not Morale entry, now Morale of CharacterObject is Morale entry;
				if Lust of CharacterObject is not Lust entry, now Lust of CharacterObject is Lust entry;
				if Libido of CharacterObject is not Libido entry, now Libido of CharacterObject is Libido entry;
				if Loyalty of CharacterObject is not Loyalty entry, now Loyalty of CharacterObject is Loyalty entry;
				if Humanity of CharacterObject is not Humanity entry, now Humanity of CharacterObject is Humanity entry;
				if Body Weight of CharacterObject is not Body Weight entry, now Body Weight of CharacterObject is Body Weight entry;
				if Body Definition of CharacterObject is not Body Definition entry, now Body Definition of CharacterObject is Body Definition entry;
				if Androginity of CharacterObject is not Androginity entry, now Androginity of CharacterObject is Androginity entry;
				if Mouth Length of CharacterObject is not Mouth Length entry, now Mouth Length of CharacterObject is Mouth Length entry;
				if Mouth Circumference of CharacterObject is not Mouth Circumference entry, now Mouth Circumference of CharacterObject is Mouth Circumference entry;
				if Tongue Length of CharacterObject is not Tongue Length entry, now Tongue Length of CharacterObject is Tongue Length entry;
				if Breast Size of CharacterObject is not Breast Size entry, now Breast Size of CharacterObject is Breast Size entry;
				if Nipple Count of CharacterObject is not Nipple Count entry, now Nipple Count of CharacterObject is Nipple Count entry;
				if Asshole Depth of CharacterObject is not Asshole Depth entry, now Asshole Depth of CharacterObject is Asshole Depth entry;
				if Asshole Tightness of CharacterObject is not Asshole Tightness entry, now Asshole Tightness of CharacterObject is Asshole Tightness entry;
				if Cock Count of CharacterObject is not Cock Count entry, now Cock Count of CharacterObject is Cock Count entry;
				if Cock Girth of CharacterObject is not Cock Girth entry, now Cock Girth of CharacterObject is Cock Girth entry;
				if Cock Length of CharacterObject is not Cock Length entry, now Cock Length of CharacterObject is Cock Length entry;
				if Ball Count of CharacterObject is not Ball Count entry, now Ball Count of CharacterObject is Ball Count entry;
				if Ball Size of CharacterObject is not Ball Size entry, now Ball Size of CharacterObject is Ball Size entry;
				if Cunt Count of CharacterObject is not Cunt Count entry, now Cunt Count of CharacterObject is Cunt Count entry;
				if Cunt Depth of CharacterObject is not Cunt Depth entry, now Cunt Depth of CharacterObject is Cunt Depth entry;
				if Cunt Tightness of CharacterObject is not Cunt Tightness entry, now Cunt Tightness of CharacterObject is Cunt Tightness entry;
				if Clit Size of CharacterObject is not Clit Size entry, now Clit Size of CharacterObject is Clit Size entry;
				if Armor of CharacterObject is not Armor entry, now Armor of CharacterObject is Armor entry;
				if Capacity of CharacterObject is not Capacity entry, now Capacity of CharacterObject is Capacity entry;
				if SleepRhythm of CharacterObject is not SleepRhythm entry, now SleepRhythm of CharacterObject is SleepRhythm entry;
				if scalevalue of CharacterObject is not scalevalue entry, now scalevalue of CharacterObject is scalevalue entry;
				if PlayerLastSize of CharacterObject is not PlayerLastSize entry, now PlayerLastSize of CharacterObject is PlayerLastSize entry;
				[Texts]
				[now MainInfection of CharacterObject is MainInfection entry;]
				if FirstAnalPartner of CharacterObject is not FirstAnalPartner entry, now FirstAnalPartner of CharacterObject is FirstAnalPartner entry;
				if FirstVaginalPartner of CharacterObject is not FirstVaginalPartner entry, now FirstVaginalPartner of CharacterObject is FirstVaginalPartner entry;
				if FirstOralPartner of CharacterObject is not FirstOralPartner entry, now FirstOralPartner of CharacterObject is FirstOralPartner entry;
				if FirstPenilePartner of CharacterObject is not FirstPenilePartner entry, now FirstPenilePartner of CharacterObject is FirstPenilePartner entry;
				if Cock Size Desc of CharacterObject is not Cock Size Desc entry, now Cock Size Desc of CharacterObject is Cock Size Desc entry;
				if Cunt Size Desc of CharacterObject is not Cunt Size Desc entry, now Cunt Size Desc of CharacterObject is Cunt Size Desc entry;
				if Breast Size Desc of CharacterObject is not Breast Size Desc entry, now Breast Size Desc of CharacterObject is Breast Size Desc entry;
				if Short Breast Size Desc of CharacterObject is not Short Breast Size Desc entry, now Short Breast Size Desc of CharacterObject is Short Breast Size Desc entry;
				if Originalgender of CharacterObject is not Originalgender entry, now Originalgender of CharacterObject is Originalgender entry;
				if PlayerOriginalGender of CharacterObject is not PlayerOriginalGender entry, now PlayerOriginalGender of CharacterObject is PlayerOriginalGender entry;
				if PlayerLastGender of CharacterObject is not PlayerLastGender entry, now PlayerLastGender of CharacterObject is PlayerLastGender entry;
				if PlayerLastBodytype of CharacterObject is not PlayerLastBodytype entry, now PlayerLastBodytype of CharacterObject is PlayerLastBodytype entry;
				[Truth States]
				if PlayerMet of CharacterObject is not PlayerMet entry, now PlayerMet of CharacterObject is PlayerMet entry;
				if PlayerRomanced of CharacterObject is not PlayerRomanced entry, now PlayerRomanced of CharacterObject is PlayerRomanced entry;
				if PlayerFriended of CharacterObject is not PlayerFriended entry, now PlayerFriended of CharacterObject is PlayerFriended entry;
				if PlayerControlled of CharacterObject is not PlayerControlled entry, now PlayerControlled of CharacterObject is PlayerControlled entry;
				if PlayerFucked of CharacterObject is not PlayerFucked entry, now PlayerFucked of CharacterObject is PlayerFucked entry;
				if OralVirgin of CharacterObject is not OralVirgin entry, now OralVirgin of CharacterObject is OralVirgin entry;
				if Virgin of CharacterObject is not Virgin entry, now Virgin of CharacterObject is Virgin entry;
				if AnalVirgin of CharacterObject is not AnalVirgin entry, now AnalVirgin of CharacterObject is AnalVirgin entry;
				if PenileVirgin of CharacterObject is not PenileVirgin entry, now PenileVirgin of CharacterObject is PenileVirgin entry;
				if SexuallyExperienced of CharacterObject is not SexuallyExperienced entry, now SexuallyExperienced of CharacterObject is SexuallyExperienced entry;
				if TwistedCapacity of CharacterObject is not TwistedCapacity entry, now TwistedCapacity of CharacterObject is TwistedCapacity entry;
				if Sterile of CharacterObject is not Sterile entry, now Sterile of CharacterObject is Sterile entry;
				[
				if debug is at level 10:
					say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] found and values restored.";
				]
			else:
				say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] not found in Table of GameCharacterIDs! Please report this message on the FS Discord!";
	else if the File of CharacterSave exists: [old file for backwards compatibility, only used if the new file does not exist]
		say "Restoring Characters...";
		read File of CharacterSave into the Table of GameCharacters;
		repeat with x running from 1 to the number of filled rows in the Table of GameCharacters:
			choose row x in the Table of GameCharacters;
			let CharacterIdName be Name entry;
			if there is a name of CharacterIdName in the Table of GameCharacterIDs:
				let CharacterObject be the object corresponding to a name of CharacterIdName in the Table of GameCharacterIDs;
				if there is a name of LocationName entry in the Table of GameRoomIDs:
					let TargetRoom be the object corresponding to a name of LocationName entry in the Table of GameRoomIDs;
					if CharacterObject is not in TargetRoom, move CharacterObject to TargetRoom, without printing a room description;
				else:
					say "DEBUG -> Room [LocationName entry] does not exist. '[CharacterIdName]' moved to NPC Nexus. Please report this error on the FS Discord Bug Report Channel![line break]";
					move CharacterObject to NPC Nexus;
				if Energy of CharacterObject is not Energy entry, now Energy of CharacterObject is Energy entry;
				if HP of CharacterObject is not HP entry, now HP of CharacterObject is HP entry;
				if MaxHP of CharacterObject is not MaxHP entry, now MaxHP of CharacterObject is MaxHP entry;
				if XP of CharacterObject is not XP entry, now XP of CharacterObject is XP entry;
				if Level of CharacterObject is not Level entry, now Level of CharacterObject is Level entry;
				if Armor of CharacterObject is not Armor entry, now Armor of CharacterObject is Armor entry;
				if Weapon Damage of CharacterObject is not Weapon Damage entry, now Weapon Damage of CharacterObject is Weapon Damage entry;
				if Capacity of CharacterObject is not Capacity entry, now Capacity of CharacterObject is Capacity entry;
				if ScaleValue of CharacterObject is not ScaleValue entry, now ScaleValue of CharacterObject is ScaleValue entry;
				if Strength of CharacterObject is not Strength entry, now Strength of CharacterObject is Strength entry;
				if Dexterity of CharacterObject is not Dexterity entry, now Dexterity of CharacterObject is Dexterity entry;
				if Stamina of CharacterObject is not Stamina entry, now Stamina of CharacterObject is Stamina entry;
				if Charisma of CharacterObject is not Charisma entry, now Charisma of CharacterObject is Charisma entry;
				if Intelligence of CharacterObject is not Intelligence entry, now Intelligence of CharacterObject is Intelligence entry;
				if Perception of CharacterObject is not Perception entry, now Perception of CharacterObject is Perception entry;
				if Hunger of CharacterObject is not Hunger entry, now Hunger of CharacterObject is Hunger entry;
				if Thirst of CharacterObject is not Thirst entry, now Thirst of CharacterObject is Thirst entry;
				if SleepRhythm of CharacterObject is not SleepRhythm entry, now SleepRhythm of CharacterObject is SleepRhythm entry;
				if Morale of CharacterObject is not Morale entry, now Morale of CharacterObject is Morale entry;
				if Lust of CharacterObject is not Lust entry, now Lust of CharacterObject is Lust entry;
				if Libido of CharacterObject is not Libido entry, now Libido of CharacterObject is Libido entry;
				if Loyalty of CharacterObject is not Loyalty entry, now Loyalty of CharacterObject is Loyalty entry;
				if Humanity of CharacterObject is not Humanity entry, now Humanity of CharacterObject is Humanity entry;
				if Cock Count of CharacterObject is not Cocks entry, now Cock Count of CharacterObject is Cocks entry;
				if Cock Length of CharacterObject is not Cock Length entry, now Cock Length of CharacterObject is Cock Length entry;
				if Ball Size of CharacterObject is not Cock Width entry, now Ball Size of CharacterObject is Cock Width entry;
				if Ball Count of CharacterObject is not Testes entry, now Ball Count of CharacterObject is Testes entry;
				if Cunt Count of CharacterObject is not Cunts entry, now Cunt Count of CharacterObject is Cunts entry;
				if Cunt Depth of CharacterObject is not Cunt Depth entry, now Cunt Depth of CharacterObject is Cunt Depth entry;
				if Cunt Tightness of CharacterObject is not Cunt Width entry, now Cunt Tightness of CharacterObject is Cunt Width entry;
				if Nipple Count of CharacterObject is not Breasts entry, now Nipple Count of CharacterObject is Breasts entry;
				if Breast Size of CharacterObject is not Breast Size entry, now Breast Size of CharacterObject is Breast Size entry;
				if PlayerMet of CharacterObject is not PlayerMet entry, now PlayerMet of CharacterObject is PlayerMet entry;
				if PlayerRomanced of CharacterObject is not PlayerRomanced entry, now PlayerRomanced of CharacterObject is PlayerRomanced entry;
				if PlayerFucked of CharacterObject is not PlayerFucked entry, now PlayerFucked of CharacterObject is PlayerFucked entry;
				if OralVirgin of CharacterObject is not OralVirgin entry, now OralVirgin of CharacterObject is OralVirgin entry;
				if Virgin of CharacterObject is not Virgin entry, now Virgin of CharacterObject is Virgin entry;
				if AnalVirgin of CharacterObject is not AnalVirgin entry, now AnalVirgin of CharacterObject is AnalVirgin entry;
				[
				if debug is at level 10:
					say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] found and values restored.";
				]
			else:
				say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] not found in Table of GameCharacterIDs! Please report this message on the FS Discord!";
	else:
		say "No Character Save File Found!";
	blank out the whole of Table of GameCharacters; [empty out to have a clean slate]
	blank out the whole of Table of GameCharacterVariables; [empty out to have a clean slate]
	blank out the whole of Table of GameCharacterVariable2; [empty out to have a clean slate]
	blank out the whole of Table of GameCharacterVariable3; [empty out to have a clean slate]
	blank out the whole of Table of GameTraits; [empty out to have a clean slate]

to TraitRestore:
	blank out the whole of Table of GameTraits; [empty out to have a clean slate]
	if the File of TraitSave exists:
		say "Restoring Traits...";
		read File of TraitSave into the Table of GameTraits;
		[truncate Feats of Player to 0 entries;]
		if companionList of Player is not empty, truncate companionList of Player to 0 entries;
		repeat with y running through persons:[cleaning out the old data]
			if Traits of y is not empty, truncate Traits of y to 0 entries;
		repeat with x running from 1 to the number of filled rows in the Table of GameTraits:
			choose row x in the Table of GameTraits;
			let TraitOwner be OwnerName entry;
			if there is a name of TraitOwner in the Table of GameCharacterIDs:
				let CharacterObject be the object corresponding to a name of TraitOwner in the Table of GameCharacterIDs;
				if TraitText entry is not listed in Traits of CharacterObject:
					if TraitText entry is "tamed": [bugfix for the lower case typo]
						now TraitText entry is "Tamed";
					add TraitText entry to Traits of CharacterObject;
					if TraitText entry is "Tamed": [pets]
						if CharacterObject is not tamed, now CharacterObject is tamed;
					if TraitText entry is "currentCompanion":
						if CharacterObject is not listed in companionList of Player, add CharacterObject to companionList of Player;
					[
					if debug is at level 10:
						say "DEBUG -> [x]: Added Trait: '[TraitText entry]' to [TraitOwner].";
					]
	else:
		say "No Trait Save File Found!";
	blank out the whole of Table of GameTraits; [empty out to have a clean slate]

to PlayerSave:
	say "Saving Player Data...";
	blank out the whole of Table of PlayerData; [empty out all old data]
	blank out the whole of Table of PlayerLists; [empty out all old data]
	choose a blank row in the table of PlayerData;
	now skin entry is Skin of Player;
	now SkinName entry is SkinName of Player;
	now cock entry is Cock of Player;
	now CockName entry is CockName of Player;
	now face entry is Face of Player;
	now FaceName entry is FaceName of Player;
	now tail entry is tail of Player;
	now TailName entry is TailName of Player;
	now body entry is Body of Player;
	now BodyName entry is BodyName of Player;
	now scent entry is scent of Player;
	now Cock Size Desc entry is Cock Size Desc of Player;
	now Cunt Size Desc entry is Cunt Size Desc of Player;
	now Breast Size Desc entry is Breast Size Desc of Player;
	now Short Breast Size Desc entry is Short Breast Size Desc of Player;
	now bodydesc entry is bodydesc of Player;
	now bodytype entry is bodytype of Player;
	if the number of entries in Tapes of Player is not 0:
		repeat with y running from 1 to the number of entries in Tapes of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "Tape";
			now EntryText entry is entry y of Tapes of Player;
	if the number of entries in Feats of Player is not 0:
		repeat with y running from 1 to the number of entries in Feats of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "Feat";
			now EntryText entry is entry y of Feats of Player;
	if the number of entries in OpenQuests of Player is not 0:
		repeat with y running from 1 to the number of entries in OpenQuests of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "OpenQuest";
			now EntryText entry is entry y of OpenQuests of Player;
	if the number of entries in CompletedQuests of Player is not 0:
		repeat with y running from 1 to the number of entries in CompletedQuests of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "CompletedQuest";
			now EntryText entry is entry y of CompletedQuests of Player;
	if the number of entries in EncounteredEnemies of Player is not 0:
		repeat with y running from 1 to the number of entries in EncounteredEnemies of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "EncounteredEnemy";
			now EntryText entry is entry y of EncounteredEnemies of Player;
	if the number of entries in VirginitiesTaken of Player is not 0:
		repeat with y running from 1 to the number of entries in VirginitiesTaken of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "VirginitiesTaken";
			now EntryText entry is entry y of VirginitiesTaken of Player;
	if the number of entries in AnalVirginitiesTaken of Player is not 0:
		repeat with y running from 1 to the number of entries in AnalVirginitiesTaken of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "AnalVirginitiesTaken";
			now EntryText entry is entry y of AnalVirginitiesTaken of Player;
	if the number of entries in OralVirginitiesTaken of Player is not 0:
		repeat with y running from 1 to the number of entries in OralVirginitiesTaken of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "OralVirginitiesTaken";
			now EntryText entry is entry y of OralVirginitiesTaken of Player;
	if the number of entries in PenileVirginitiesTaken of Player is not 0:
		repeat with y running from 1 to the number of entries in PenileVirginitiesTaken of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "PenileVirginitiesTaken";
			now EntryText entry is entry y of PenileVirginitiesTaken of Player;
	if the number of entries in BlockList of Player is not 0:
		repeat with y running from 1 to the number of entries in BlockList of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "BlockList";
			now EntryText entry is entry y of BlockList of Player;
	if the number of entries in WardList of Player is not 0:
		repeat with y running from 1 to the number of entries in WardList of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "WardList";
			now EntryText entry is entry y of WardList of Player;
	if the number of entries in BanList of Player is not 0:
		repeat with y running from 1 to the number of entries in BanList of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "BanList";
			now EntryText entry is entry y of BanList of Player;
	[add item to ward and ban lists so importer knows the information comes from export]
	choose a blank row in the table of PlayerLists;
	now ListName entry is "WardList";
	now EntryText entry is "Imported";
	choose a blank row in the table of PlayerLists;
	now ListName entry is "BanList";
	now EntryText entry is "Imported";
	write File of PlayerSave from the Table of PlayerData; [freshly made table gets saved to file]
	if debug is at level 10:
		say "DEBUG -> File of PlayerSave written.[line break]";
	write File of PlayerListsSave from the Table of PlayerLists; [freshly made table gets saved to file]
	if debug is at level 10:
		say "DEBUG -> File of PlayerListsSave written.[line break]";
	blank out the whole of Table of PlayerData; [empty after saving]
	blank out the whole of Table of PlayerLists; [empty after saving]
	say "Saving Additional Player Data...";
	blank out the whole of Table of NewPlayerData; [empty out all old data]
	choose a blank row in the table of NewPlayerData;
	now bodySpeciesName entry is BodySpeciesName of Player;
	now faceSpeciesName entry is FaceSpeciesName of Player;
	now skinSpeciesName entry is SkinSpeciesName of Player;
	now HeadName entry is HeadName of Player;
	now HeadSpeciesName entry is HeadSpeciesName of Player;
	now Head Description entry is Head Description of Player;
	now Head Adjective entry is Head Adjective of Player;
	now Head Skin Adjective entry is Head Skin Adjective of Player;
	now Head Color entry is Head Color of Player;
	now Head Adornments entry is Head Adornments of Player;
	now Hair Length entry is Hair Length of Player;
	now Body Hair Length entry is Body Hair Length of Player;
	now Hair Shape entry is Hair Shape of Player;
	now Hair Color entry is Hair Color of Player;
	now Hair Style entry is Hair Style of Player;
	now Beard Style entry is Beard Style of Player;
	now Eye Color entry is Eye Color of Player;
	now Eye Adjective entry is Eye Adjective of Player;
	now Tongue Adjective entry is Tongue Adjective of Player;
	now Tongue Color entry is Tongue Color of Player;
	now TorsoName entry is TorsoName of Player;
	now TorsoSpeciesName entry is TorsoSpeciesName of Player;
	now Torso Description entry is Torso Description of Player;
	now Torso Adjective entry is Torso Adjective of Player;
	now Torso Skin Adjective entry is Torso Skin Adjective of Player;
	now Torso Color entry is Torso Color of Player;
	now Torso Pattern entry is Torso Pattern of Player;
	now Breast Adjective entry is Breast Adjective of Player;
	now Torso Adornments entry is Torso Adornments of Player;
	now Nipple Color entry is Nipple Color of Player;
	now Nipple Shape entry is Nipple Shape of Player;
	now BackName entry is BackName of Player;
	now BackSpeciesName entry is BackSpeciesName of Player;
	now Back Adornments entry is Back Adornments of Player;
	now Back Skin Adjective entry is Back Skin Adjective of Player;
	now Back Color entry is Back Color of Player;
	now ArmsName entry is ArmsName of Player;
	now ArmsSpeciesName entry is ArmsSpeciesName of Player;
	now Arms Description entry is Arms Description of Player;
	now Arms Skin Adjective entry is Arms Skin Adjective of Player;
	now Arms Color entry is Arms Color of Player;
	now Locomotion entry is Locomotion of Player;
	now LegsName entry is LegsName of Player;
	now LegsSpeciesName entry is LegsSpeciesName of Player;
	now Legs Description entry is Legs Description of Player;
	now Legs Skin Adjective entry is Legs Skin Adjective of Player;
	now Legs Color entry is Legs Color of Player;
	now AssName entry is AssName of Player;
	now AssSpeciesName entry is AssSpeciesName of Player;
	now Ass Description entry is Ass Description of Player;
	now Ass Skin Adjective entry is Ass Skin Adjective of Player;
	now Ass Color entry is Ass Color of Player;
	now Ass Width entry is Ass Width of Player;
	now TailName entry is TailName of Player;
	now TailSpeciesName entry is TailSpeciesName of Player;
	now Tail Description entry is Tail Description of Player;
	now Tail Skin Adjective entry is Tail Skin Adjective of Player;
	now Tail Color entry is Tail Color of Player;
	now Asshole Color entry is Asshole Color of Player;
	now CockName entry is CockName of Player;
	now CockSpeciesName entry is CockSpeciesName of Player;
	now Cock Description entry is Cock Description of Player;
	now Cock Adjective entry is Cock Adjective of Player;
	now Cock Color entry is Cock Color of Player;
	now Ball Description entry is Ball Description of Player;
	now CuntName entry is CuntName of Player;
	now CuntSpeciesName entry is CuntSpeciesName of Player;
	now Cunt Description entry is Cunt Description of Player;
	now Cunt Adjective entry is Cunt Adjective of Player;
	now Cunt Color entry is Cunt Color of Player;
	now MaleInterest entry is MaleInterest of Player;
	now TransMaleInterest entry is TransMaleInterest of Player;
	now FemaleInterest entry is FemaleInterest of Player;
	now TransFemaleInterest entry is TransFemaleInterest of Player;
	[TODO: Incorporate these into the export when they are actually used]
	[
	now MaleHermInterest entry is MaleHermInterest of Player;
	now FemaleHermInterest entry is FemaleHermInterest of Player;
	] [but for now, just rig it using the existing unused table entry that we changed to hold a number]
	let PlayerHermInterest be 0;
	if MaleHermInterest of Player is false:
		increase PlayerHermInterest by 1;
	if FemaleHermInterest of Player is false:
		increase PlayerHermInterest by 2;
	now HermInterest entry is PlayerHermInterest; [0 = both; 1 = not male; 2 = not female; 3 = neither]
	write File of NewPlayerSave from the Table of NewPlayerData; [freshly made table gets saved to file]
	blank out the whole of Table of NewPlayerData; [empty after saving]
	if debug is at level 10:
		say "DEBUG -> File of NewPlayerSave written.[line break]";
	PlayerSexStatsSave;

to PlayerSexStatsSave:
	blank out the whole of Table of SexStats; [empty out all old data]
	choose a blank row in the table of SexStats;
	now OralPussyGiven entry is OralPussyGiven of Player;
	now OralPussyTaken entry is OralPussyTaken of Player;
	now OralCockGiven entry is OralCockGiven of Player;
	now OralCockTaken entry is OralCockTaken of Player;
	now AssFuckGiven entry is AssFuckGiven of Player;
	now AssFuckTaken entry is AssFuckTaken of Player;
	now PussyFuckGiven entry is PussyFuckGiven of Player;
	now PussyFuckTaken entry is PussyFuckTaken of Player;
	write File of SexStats from the Table of SexStats; [freshly made table gets saved to file]
	blank out the whole of Table of SexStats; [empty out all old data]
	if debug is at level 10:
		say "DEBUG -> File of SexStats written.[line break]";

to PlayerSexStatsRestore:
	if the File of SexStats exists:
		read File of SexStats into the Table of SexStats;
		choose row 1 in the Table of SexStats;
		now OralPussyGiven of Player is OralPussyGiven entry;
		now OralPussyTaken of Player is OralPussyTaken entry;
		now OralCockGiven of Player is OralCockGiven entry;
		now OralCockTaken of Player is OralCockTaken entry;
		now AssFuckGiven of Player is AssFuckGiven entry;
		now AssFuckTaken of Player is AssFuckTaken entry;
		now PussyFuckGiven of Player is PussyFuckGiven entry;
		now PussyFuckTaken of Player is PussyFuckTaken entry;
	blank out the whole of Table of SexStats; [empty out all old data]

to PlayerRestore:
	if the File of PlayerSave exists:
		say "Restoring Player Data...";
		read File of PlayerSave into the Table of PlayerData;
		choose row 1 in the Table of PlayerData;
		now Skin of Player is skin entry;
		now SkinName of Player is SkinName entry;
		now SkinSpeciesName of Player is GetSpeciesName from SkinName entry;
		now Cock of Player is cock entry;
		now CockName of Player is CockName entry;
		now CockSpeciesName of Player is GetSpeciesName from CockName entry;
		now Face of Player is face entry;
		now FaceName of Player is FaceName entry;
		now FaceSpeciesName of Player is GetSpeciesName from FaceName entry;
		now tail of Player is tail entry;
		now TailName of Player is TailName entry;
		now TailSpeciesName of Player is GetSpeciesName from TailName entry;
		now Body of Player is body entry;
		now BodyName of Player is BodyName entry;
		now BodySpeciesName of Player is GetSpeciesName from BodyName entry;
		now scent of Player is scent entry;
		now Cock Size Desc of Player is Cock Size Desc entry;
		now Cunt Size Desc of Player is Cunt Size Desc entry;
		now Breast Size Desc of Player is Breast Size Desc entry;
		now Short Breast Size Desc of Player is Short Breast Size Desc entry;
		now bodydesc of Player is bodydesc entry;
		now bodytype of Player is bodytype entry;
		if debug is at level 10:
			say "DEBUG -> Player Data restored.";
	else:
		say "No Player Save File Found!";
	blank out the whole of Table of PlayerData; [empty out all old data]
	if the File of PlayerListsSave exists:
		[cleaning out the old data]
		[truncate Vials of Player to 0 entries;]
		if Feats of Player is not empty, truncate Feats of Player to 0 entries;
		if Tapes of Player is not empty, truncate Tapes of Player to 0 entries;
		if OpenQuests of Player is not empty, truncate OpenQuests of Player to 0 entries;
		if CompletedQuests of Player is not empty, truncate CompletedQuests of Player to 0 entries;
		if EncounteredEnemies of Player is not empty, truncate EncounteredEnemies of Player to 0 entries;
		if VirginitiesTaken of Player is not empty, truncate VirginitiesTaken of Player to 0 entries;
		if AnalVirginitiesTaken of Player is not empty, truncate AnalVirginitiesTaken of Player to 0 entries;
		if OralVirginitiesTaken of Player is not empty, truncate OralVirginitiesTaken of Player to 0 entries;
		if PenileVirginitiesTaken of Player is not empty, truncate PenileVirginitiesTaken of Player to 0 entries;
		if BlockList of Player is not empty, truncate BlockList of Player to 0 entries;
		if WardList of Player is not empty, truncate WardList of Player to 0 entries;
		if BanList of Player is not empty, truncate BanList of Player to 0 entries;
		[clear out warded and banned flags/tags]
		repeat with x running through flags:
			if x is warded, now x is not warded;
			if x is banned, now x is not banned;
		repeat with x running through tags:
			if x is warded, now x is not warded;
			if x is banned, now x is not banned;
		say "Restoring Player Lists...";
		read File of PlayerListsSave into the Table of PlayerLists;
		repeat with y running from 1 to the number of filled rows in the Table of PlayerLists:
			choose row y in the Table of PlayerLists;
			if ListName entry is:
				-- "Vial":
					VialGain EntryText entry by 1 silently;
				-- "Tape":
					if EntryText entry is not listed in Tapes of Player:
						add EntryText entry to Tapes of Player;
				-- "Feat":
					if EntryText entry is not listed in Feats of Player:
						add EntryText entry to Feats of Player;
				-- "OpenQuest":
					if EntryText entry is not listed in OpenQuests of Player:
						add EntryText entry to OpenQuests of Player;
				-- "CompletedQuest":
					if EntryText entry is not listed in CompletedQuests of Player:
						add EntryText entry to CompletedQuests of Player;
				-- "EncounteredEnemy":
					if EntryText entry is not listed in EncounteredEnemies of Player:
						add EntryText entry to EncounteredEnemies of Player;
				-- "VirginitiesTaken":
					if EntryText entry is not listed in VirginitiesTaken of Player:
						add EntryText entry to VirginitiesTaken of Player;
				-- "AnalVirginitiesTaken":
					if EntryText entry is not listed in AnalVirginitiesTaken of Player:
						add EntryText entry to AnalVirginitiesTaken of Player;
				-- "OralVirginitiesTaken":
					if EntryText entry is not listed in OralVirginitiesTaken of Player:
						add EntryText entry to OralVirginitiesTaken of Player;
				-- "PenileVirginitiesTaken":
					if EntryText entry is not listed in PenileVirginitiesTaken of Player:
						add EntryText entry to PenileVirginitiesTaken of Player;
				-- "BlockList":
					if EntryText entry is not listed in BlockList of Player:
						add EntryText entry to BlockList of Player;
				-- "WardList":
					if EntryText entry is not listed in WardList of Player:
						add EntryText entry to WardList of Player;
				-- "BanList":
					if EntryText entry is not listed in BanList of Player:
						add EntryText entry to BanList of Player;
	blank out the whole of Table of PlayerLists; [empty out all old data]
	if the File of NewPlayerSave exists:
		say "Restoring Additional Player Data...";
		read File of NewPlayerSave into the Table of NewPlayerData;
		choose row 1 in the Table of NewPlayerData;
		now bodySpeciesName of Player is BodySpeciesName entry;
		now faceSpeciesName of Player is FaceSpeciesName entry;
		now skinSpeciesName of Player is SkinSpeciesName entry;
		now HeadName of Player is HeadName entry;
		now HeadSpeciesName of Player is HeadSpeciesName entry;
		now Head Description of Player is Head Description entry;
		now Head Adjective of Player is Head Adjective entry;
		now Head Skin Adjective of Player is Head Skin Adjective entry;
		now Head Color of Player is Head Color entry;
		now Head Adornments of Player is Head Adornments entry;
		now Hair Length of Player is Hair Length entry;
		now Body Hair Length of Player is Body Hair Length entry;
		now Hair Shape of Player is Hair Shape entry;
		now Hair Color of Player is Hair Color entry;
		now Hair Style of Player is Hair Style entry;
		now Beard Style of Player is Beard Style entry;
		now Eye Color of Player is Eye Color entry;
		now Eye Adjective of Player is Eye Adjective entry;
		now Tongue Adjective of Player is Tongue Adjective entry;
		now Tongue Color of Player is Tongue Color entry;
		now TorsoName of Player is TorsoName entry;
		now TorsoSpeciesName of Player is TorsoSpeciesName entry;
		now Torso Description of Player is Torso Description entry;
		now Torso Adjective of Player is Torso Adjective entry;
		now Torso Skin Adjective of Player is Torso Skin Adjective entry;
		now Torso Color of Player is Torso Color entry;
		now Torso Pattern of Player is Torso Pattern entry;
		now Breast Adjective of Player is Breast Adjective entry;
		now Torso Adornments of Player is Torso Adornments entry;
		now Nipple Color of Player is Nipple Color entry;
		now Nipple Shape of Player is Nipple Shape entry;
		now BackName of Player is BackName entry;
		now BackSpeciesName of Player is BackSpeciesName entry;
		now Back Adornments of Player is Back Adornments entry;
		now Back Skin Adjective of Player is Back Skin Adjective entry;
		now Back Color of Player is Back Color entry;
		now ArmsName of Player is ArmsName entry;
		now ArmsSpeciesName of Player is ArmsSpeciesName entry;
		now Arms Description of Player is Arms Description entry;
		now Arms Skin Adjective of Player is Arms Skin Adjective entry;
		now Arms Color of Player is Arms Color entry;
		now Locomotion of Player is Locomotion entry;
		now LegsName of Player is LegsName entry;
		now LegsSpeciesName of Player is LegsSpeciesName entry;
		now Legs Description of Player is Legs Description entry;
		now Legs Skin Adjective of Player is Legs Skin Adjective entry;
		now Legs Color of Player is Legs Color entry;
		now AssName of Player is AssName entry;
		now AssSpeciesName of Player is AssSpeciesName entry;
		now Ass Description of Player is Ass Description entry;
		now Ass Skin Adjective of Player is Ass Skin Adjective entry;
		now Ass Color of Player is Ass Color entry;
		now Ass Width of Player is Ass Width entry;
		now TailName of Player is TailName entry;
		now TailSpeciesName of Player is TailSpeciesName entry;
		now Tail Description of Player is Tail Description entry;
		now Tail Skin Adjective of Player is Tail Skin Adjective entry;
		now Tail Color of Player is Tail Color entry;
		now Asshole Color of Player is Asshole Color entry;
		now CockName of Player is CockName entry;
		now CockSpeciesName of Player is CockSpeciesName entry;
		now Cock Description of Player is Cock Description entry;
		now Cock Adjective of Player is Cock Adjective entry;
		now Cock Color of Player is Cock Color entry;
		now Ball Description of Player is Ball Description entry;
		now CuntName of Player is CuntName entry;
		now CuntSpeciesName of Player is CuntSpeciesName entry;
		now Cunt Description of Player is Cunt Description entry;
		now Cunt Adjective of Player is Cunt Adjective entry;
		now Cunt Color of Player is Cunt Color entry;
		now MaleInterest of Player is MaleInterest entry;
		now TransMaleInterest of Player is TransMaleInterest entry;
		now FemaleInterest of Player is FemaleInterest entry;
		now TransFemaleInterest of Player is TransFemaleInterest entry;
		[TODO: Incorporate these into the export when they are actually used]
		[
		now MaleHermInterest of Player is MaleHermInterest entry;
		now FemaleHermInterest of Player is FemaleHermInterest entry;
		] [but for now, just use the existing unused table entry that we rigged earlier]
		now MaleHermInterest of Player is true;
		now FemaleHermInterest of Player is true;
		if there is a HermInterest entry:
			if HermInterest entry is odd: [1 = not male; 3 = not male or female]
				now MaleHermInterest of Player is false;
			if HermInterest entry > 1: [2 = not female; 3 = not male or female]
				now FemaleHermInterest of Player is false;
		if debug is at level 10:
			say "DEBUG -> New Player Data restored.";
	else if NewTypeInfectionActive is true:
		say "No Additional Player Data Save File Found!";
	blank out the whole of Table of NewPlayerData; [empty out all old data]
	PlayerSexStatsRestore;

to ChildrenSave:
	say "Saving unborn children...";
	blank out the whole of Table of ChildData; [empty out all old data]
	choose a blank row in the table of ChildData;
	now Gestation entry is Gestation of Child;
	now bodySpeciesName entry is bodySpeciesName of Child;
	now faceSpeciesName entry is faceSpeciesName of Child;
	now skinSpeciesName entry is skinSpeciesName of Child;
	now cockSpeciesName entry is cockSpeciesName of Child;
	now HeadName entry is HeadName of Child;
	now TorsoName entry is TorsoName of Child;
	now BackName entry is BackName of Child;
	now ArmsName entry is ArmsName of Child;
	now LegsName entry is LegsName of Child;
	now AssName entry is AssName of Child;
	now TailName entry is TailName of Child;
	now HeadSpeciesName entry is HeadSpeciesName of Child;
	now TorsoSpeciesName entry is TorsoSpeciesName of Child;
	now BackSpeciesName entry is BackSpeciesName of Child;
	now ArmsSpeciesName entry is ArmsSpeciesName of Child;
	now LegsSpeciesName entry is LegsSpeciesName of Child;
	now AssSpeciesName entry is AssSpeciesName of Child;
	now TailSpeciesName entry is TailSpeciesName of Child;
	write File of UnbornChildSave from the Table of ChildData;
	if debug is at level 10:
		say "DEBUG -> File of UnbornChildrenSave written.[line break]";
	say "Saving born children...";
	write File of ChildrenSave from the Table of PlayerChildren;
	write File of ChildrenBunkerSave from the Table of PlayerBunkerChildren;
	write File of ChildrenRoamingSave from the Table of PlayerRoamingChildren;
	if debug is at level 10:
		say "DEBUG -> File of ChildrenSave written.[line break]";
		say "DEBUG -> File of ChildrenBunkerSave written.[line break]";
		say "DEBUG -> File of ChildrenRoamingSave written.[line break]";

to ChildrenRestore:
	if the File of UnbornChildSave exists:
		say "Restoring unborn children...";
		read File of UnbornChildSave into the Table of ChildData;
		if debug is at level 10:
			say "DEBUG -> Unborn children restored from FSUnbornChildSave.[line break]";
		choose row 1 in the Table of ChildData;
		now Gestation of Child is Gestation entry;
		now bodySpeciesName of Child is bodySpeciesName entry;
		now faceSpeciesName of Child is faceSpeciesName entry;
		now skinSpeciesName of Child is skinSpeciesName entry;
		now cockSpeciesName of Child is cockSpeciesName entry;
		now HeadName of Child is HeadName entry;
		now TorsoName of Child is TorsoName entry;
		now BackName of Child is BackName entry;
		now ArmsName of Child is ArmsName entry;
		now LegsName of Child is LegsName entry;
		now AssName of Child is AssName entry;
		now TailName of Child is TailName entry;
		now HeadSpeciesName of Child is HeadSpeciesName entry;
		now TorsoSpeciesName of Child is TorsoSpeciesName entry;
		now BackSpeciesName of Child is BackSpeciesName entry;
		now ArmsSpeciesName of Child is ArmsSpeciesName entry;
		now LegsSpeciesName of Child is LegsSpeciesName entry;
		now AssSpeciesName of Child is AssSpeciesName entry;
		now TailSpeciesName of Child is TailSpeciesName entry;
		blank out the whole of Table of ChildData; [empty out all old data]
	else:
		say "No Unborn Children Save File Found!";
	if the File of ChildrenSave exists:
		say "Restoring born children...";
		read File of ChildrenSave into the Table of PlayerChildren;
		if debug is at level 10:
			say "DEBUG -> Children restored from FSPlayerChildrenSave.[line break]";
	else:
		say "No Children Save File Found!";
	if the File of ChildrenBunkerSave exists:
		say "Restoring Children (Bunker)...";
		read File of ChildrenBunkerSave into the Table of PlayerBunkerChildren;
		if debug is at level 10:
			say "DEBUG -> Children restored from FSPlayerChildrenBunkerSave.[line break]";
	else:
		say "No Children (Bunker) Save File Found!";
	if the File of ChildrenRoamingSave exists:
		say "Restoring Children (Roaming)...";
		read File of ChildrenRoamingSave into the Table of PlayerRoamingChildren;
		if debug is at level 10:
			say "DEBUG -> Children restored from FSPlayerChildrenRoamingSave.[line break]";
	else:
		say "No Children (Roaming) Save File Found!";

to BeastSave:
	say "Saving Beasts...";
	blank out the whole of Table of GameBeastVariables; [empty out all old data]
	if number of rows in Table of Random Critters > number of rows in the Table of GameBeastVariables: [making sure we got enough room for all situations]
		say "Error! Not enough rows to save all Beasts in the Table of GameBeastVariables. Please report this on the FS Discord.";
	repeat with x running from 1 to the number of filled rows in the Table of Random Critters: [rebuilds the table of GameBeastVariables with current data]
		choose row x in the Table of Random Critters;
		let BeastName be Name entry;
		let BeastArea be Area entry;
		let BeastNonInfect be non-infectious entry;
		let BeastSex be sex entry;
		let BeastType be enemy type entry;
		choose a blank row in the table of GameBeastVariables;
		now Name entry is BeastName;
		now Area entry is BeastArea;
		now non-infectious entry is BeastNonInfect;
		now sex entry is BeastSex;
		now enemy type entry is BeastType;
	write File of BeastVariableSave from the Table of GameBeastVariables; [freshly made table gets saved to file]
	blank out the whole of Table of GameBeastVariables; [empty after saving]
	if debug is at level 10:
		say "DEBUG -> File of BeastVariableSave written.[line break]";

to BeastRestore:
	say "Restoring Beasts...";
	blank out the whole of Table of GameBeastVariables; [empty out all old data]
	blank out the whole of Table of GameBeasts; [empty out all old data]
	if the File of BeastVariableSave exists:
		read File of BeastVariableSave into the Table of GameBeastVariables;
		repeat with x running from 1 to the number of filled rows in the Table of GameBeastVariables:
			choose row x in the Table of GameBeastVariables;
			let BeastName be Name entry;
			let BeastArea be Area entry;
			let BeastNonInfect be non-infectious entry;
			let BeastSex be sex entry;
			let BeastType be enemy type entry;
			[some small bugfixes due to renamed creatures]
			if Beastname is "dullahan", now Beastname is "Dullahan";
			if Beastname is "Ogre", now Beastname is "Ogre Male";
			if Beastname is "Elven Hunter", now Beastname is "Elven Male";
			if Beastname is "rubber tigress", now Beastname is "Rubber Tigress";
			[if Beastname is "Rubber Tigress", now Beastname is "Rubber Tigress";]
			if Beastname is "Football Gorilla", now Beastname is "Football Gorilla Male";
			if Beastname is "Feral Wolf", now Beastname is "Feral Wolf Male";
			if Beastname is "Skunk", now Beastname is "Skunk Female";
			if there is a Name of BeastName in the Table of Random Critters:
				choose row with Name of BeastName in Table of Random Critters;
				if Area entry is not BeastArea, now Area entry is BeastArea;
				[bugfix code after re-naming Midway to Fair]
				if Area entry is "Midway":
					now Area entry is "Fair";
				if Area entry is "High Rise": [furbolg content bugfix]
					now Area entry is "High";
				if non-infectious entry is not BeastNonInfect, now non-infectious entry is BeastNonInfect;
				if sex entry is not BeastSex, now sex entry is BeastSex;
				if enemy type entry is not BeastType, now enemy type entry is BeastType;
				if BannedStatus entry is true, now BannedStatus entry is false; [content bans will be refreshed after import, so don't carry any over]
				[
				if debug is at level 10:
					say "DEBUG -> [x]: BeastName: [BeastName] Area entry set to [BeastArea]!";
				]
			else:
				if Beastname is not "Lernean Hydra" and Beastname is not "Skunk" and Beastname is not "Blob": [error message disabled for bugged name]
					say "DEBUG -> BeastName: [BeastName] not found in Table of Random Critters! Please report this message on the FS Discord!";
	else if the File of BeastSave exists:
		read File of BeastSave into the Table of GameBeasts;
		repeat with x running from 1 to the number of filled rows in the Table of GameBeasts:
			choose row x in the Table of GameBeasts;
			let BeastName be Name entry;
			let BeastArea be Area entry;
			let BeastNonInfect be non-infectious entry;
			let BeastSex be sex entry;
			if there is a Name of BeastName in the Table of Random Critters:
				choose row with Name of BeastName in Table of Random Critters;
				if Area entry is not BeastArea, now Area entry is BeastArea;
				[bugfix code after re-naming Midway to Fair]
				if Area entry is "Midway":
					now Area entry is "Fair";
				if non-infectious entry is not BeastNonInfect, now non-infectious entry is BeastNonInfect;
				if sex entry is not BeastSex, now sex entry is BeastSex;
				[
				if debug is at level 10:
					say "DEBUG -> [x]: BeastName: [BeastName] Area entry set to [BeastArea]!";
				]
			else:
				say "DEBUG -> BeastName: [BeastName] not found in Table of Random Critters! Please report this message on the FS Discord!";
	else:
		say "No Beast Save File Found!";
	blank out the whole of Table of GameBeastVariables; [empty out all old data]
	blank out the whole of Table of GameBeasts; [empty out all old data]

to NoteSave:
	say "Saving Notes...";
	write File of NoteSave from the Table of JournalNotes;
	if debug is at level 10:
		say "DEBUG -> File of NoteSave written.[line break]";

to NoteRestore:
	if the File of NoteSave exists:
		say "Restoring Notes...";
		read File of NoteSave into the Table of JournalNotes;
		if debug is at level 10:
			say "DEBUG -> Notes restored from FSNoteSave.[line break]";
	else:
		say "No Note Save File Found!";

to StorageSave:
	say "Saving Stored Person Data...";
	write File of StorageSave from the Table of StoredSluts;
	if debug is at level 10:
		say "DEBUG -> File of StorageSave written.[line break]";

to StorageRestore:
	if the File of StorageSave exists:
		say "Restoring Stored People...";
		read File of StorageSave into the Table of StoredSluts;
		if debug is at level 10:
			say "DEBUG -> Stored People restored from StorageSave.[line break]";
	else:
		say "No Storage Save File Found!";

to BanListRestore:
	say "Restoring Ban Lists...";
	if clearnomore is 0, clear the screen;
	if "Imported" is not listed in WardList of Player or "Imported" is not listed in BanList of Player: [exported from older version]
		LineBreak;
		say "     Content banning and warding information wasn't found in the imported data. You can choose to pick new restrictions to remove enemies and events from the game. [bold type]Note that previously banned events have remained banned after import and will be cumulative with any bans you choose now.[roman type][line break]";
		say "     [bold type]Pick content restrictions?[roman type][line break]";
		if Player consents:
			if clearnomore is 0, clear the screen;
			new ban menu;
	else: [exported from current or later version]
		remove "Imported" from WardList of Player;
		remove "Imported" from BanList of Player;
		if number of entries in WardList of Player > 0:
			repeat with x running from 1 to number of entries in WardList of Player:
				oldflagward entry x of WardList of Player; [ward flags/tags that player chose before export]
		if number of entries in BanList of Player > 0:
			repeat with x running from 1 to number of entries in BanList of Player:
				oldflagban entry x of BanList of Player; [ban flags/tags that player chose before export]
	if number of warded flags > 0 or number of banned flags > 0 or number of warded tags > 0 or number of banned tags > 0:
		startcreatureban; [re-run the ban action to disable blocked creatures/situations]


to RunPostImportRules:
	say "Running Post Import Rules...";
	sort Table of Random Critters in lev order;
	if clearnomore is 0, clear the screen;
	follow the postimport rules;

Section 2 - Trixie

understand "export progress" as ProgressExport.
ProgressExport is an action applying to nothing.

Carry out ProgressExport:
	say "[ProgressionExport]";

To say ProgressionExport:
	say "     [bold type]Do you really want to start the export process?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, I'll wait a minute (or five) to write files containing my progress!";
	say "     ([link]N[as]n[end link]) - Erh, not right now.";
	if Player consents:
		LineBreak;
		if wrcursestatus is 5:
			wrcurserecede; [puts player back to normal form and restores proper stats for saving]
			LineBreak;
		say "Writing save files.";
		SaveEverything;
		if wrcursestatus is 5:
			wrcursesave; [puts player back to complete wereraptor form]

To SaveEverything:
	EventSave;
	RoomSave;
	PossessionSave;
	CharacterSave;
	ChildrenSave;
	PlayerSave;
	BeastSave;
	NoteSave;
	StorageSave;
	VariableSave;

understand "Import Progress" as ProgressImport.
ProgressImport is an action applying to nothing.

Carry out ProgressImport:
	say "     [bold type]Do you really want to start the import process?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, I'll wait a minute (or ten) to reclaim my progress!";
	say "     ([link]N[as]n[end link]) - Erh, not right now.";
	if Player consents:
		LineBreak;
		say "     <Press any key to start import> [run paragraph on]";
		wait for any key;
		say "[ProgressionImport]";

to say ProgressionImport:
	EventRestore;
	RoomRestore;
	PossessionRestore;
	CharacterRestore;
	ChildrenRestore;
	TraitRestore;
	PlayerRestore;
	BeastRestore;
	NoteRestore;
	StorageRestore;
	VariableLoad;
	BanListRestore;
	RunPostImportRules;
	try looking; [start the player off in their new playthrough]

Table of GameCharacterIDs (continued)
object	name
Trixie	"Trixie"

Trixie is a person. Trixie is in Grey Abbey Library.

The scent of Trixie is "     Trixie smells of broken universes and rewritten fate. How anything can smell like that or how you can even know that smell disturbs you to your very core.".

Description of Trixie is "[Trixiedesc]".

to say Trixiedesc:
	say "     Look, it's Trixie, the story fairy! She's about three inches tall, large for her particular breed. She has bright reddish-purple hair and smooth brown skin. Wielded in her right hand is a relatively large wand of old world oak with a great fancy bauble at the end that looks like a cutely renditioned skunk girl head, grinning at you no matter what angle you view it from. Trixie is well shaped, with, relative to the rest of her mass, B cup breasts and wide hips. Her feet are covered in shimmering gold sandals of sorts. Her chest is covered in a t-shirt that reads 'Support us at: https://patreon.com/FS'[line break]";
	say "     Trixie's got a button on her t-shirt that says 'Cheaters type [link]iwannacheat[end link]' on it, and a second one that says 'Check out the [link]artwork credits[end link]'. Hmmm.";
	say "     She's also got a ballcap on that says 'Using [link]Export Progress[end link] will save your progress for transfer to a new game version. [link]Import Progress[end link] should restore everything in the new version.' That's a lot to put on a ballcap that small, but for some reason you're able to read it all easily.";

Conversation of Trixie is { "Hello. I will teach you a magic word. To use it, just stand in front of me after [bold type]starting a new game[roman type] and [link]Import Progress[end link]. This will let you bend time and probability, returning you to the condition you were in when made the magic word... mostly. I will do my best, but my powers are not infinite. Also, I'm [']Out of Character['], so you really don't see me. Confused yet? Good!" }.

Story Skipper ends here.
