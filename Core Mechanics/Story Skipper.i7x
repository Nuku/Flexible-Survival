Version 224 of Story Skipper by Core Mechanics begins here.
[ New compressed method - 5/17/2015 - Stripes ]
[ Version 223.1 - Updated w/Enhanced Chimera material ]
[ Version 224 - Completely rewritten - Wahn]

The File of EventSave (owned by another project) is called "FSEventSave".
The File of RoomSave (owned by another project) is called "FSRoomSave".
The File of RoomInventorySave (owned by another project) is called "FSRoomInventorySave".
The File of PossessionSave (owned by another project) is called "FSPossessionSave".
The File of CharacterSave (owned by another project) is called "FSCharacterSave".
The File of TraitSave (owned by another project) is called "FSTraitSave".
The File of PlayerSave (owned by another project) is called "FSPlayerSave".
The File of PlayerListsSave (owned by another project) is called "FSPlayerListsSave".
The File of BeastSave (owned by another project) is called "FSBeastSave".

PetList is a list of text that varies.[@Tag:NotSaved] [for stashing the pet objects in the Character Nexus]
PetList is { "Nullpet", "Latex Vixen", "strange doll", "pink raccoon", "demon brute", "wukong", "human dog", "Retriever Girl", "rubber tigress", "frost giantess", "Little fox", "skunk kit", "equinoid warrior", "Felinoid Companion", "Cute Crab", "house cat", "Exotic Bird", "helper dog", "Gryphoness", "bee girl", "gshep", "mouse girl", "royal tiger" };

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
		now name entry is printed name of x;
		if x is resolved:
			now ResolveState entry is "Resolved";
		else:
			now ResolveState entry is "Unresolved";
		if x is active:
			now ActiveState entry is "Active";
		else:
			now ActiveState entry is "Inactive";
		now Resolution entry is Resolution of x;
	write File of EventSave from the Table of GameEvents; [freshly made table gets saved to file]
	if debugactive is 1:
		say "DEBUG -> File of EventSave written.[line break]";

to EventRestore:
	if the File of EventSave exists:
		say "Restoring Events...";
		read File of EventSave into the Table of GameEvents;
		repeat with x running from 1 to the number of filled rows in the Table of GameEvents:
			choose row x in the Table of GameEvents;
			let EventIdName be name entry;
			if there is a name of EventIdName in the Table of GameEventIDs:
				let EventObject be the object corresponding to a name of EventIdName in the Table of GameEventIDs;
				if ResolveState entry is "Resolved":
					now EventObject is resolved;
				else:
					now EventObject is unresolved;
				if ActiveState entry is "Active":
					now EventObject is active;
				else:
					now EventObject is inactive;
				now Resolution of EventObject is Resolution entry;
				if debugactive is 1:
					say "DEBUG -> [x]: EventIdName: [EventIdName] found and set to: [ResolveState entry], [ActiveState entry], Resolution: [Resolution entry]";
			else:
				if debugactive is 1:
					say "DEBUG -> [x]: EventIdName: [EventIdName] not found in Table of GameEventIDs!";
	else:
		say "No Event Save File Found!";

to RoomSave:
	say "Saving Rooms...";
	blank out the whole of Table of GameRooms; [empty out all old data]
	if number of rooms > number of rows in the table of GameRooms: [making sure we got enough room for all situations]
		say "Error! Not enough rows to save all rooms in the table of GameRooms. Please report this on the FS Discord.";
	repeat with x running through rooms: [rebuilds the table of GameRooms with current data]
		choose a blank row in the table of GameRooms;
		now name entry is printed name of x;
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
				now RoomName entry is printed name of x;
				now ItemName entry is entry y in Invent of x;
	write File of RoomSave from the Table of GameRooms; [freshly made table gets saved to file]
	write File of RoomInventorySave from the Table of GameRoomInventories; [freshly made table gets saved to file]
	if debugactive is 1:
		say "DEBUG -> File of RoomSave written.[line break]";

to RoomRestore:
	if the File of RoomSave exists:
		say "Restoring Rooms...";
		read File of RoomSave into the Table of GameRooms;
		repeat with x running from 1 to the number of filled rows in the Table of GameRooms:
			choose row x in the Table of GameRooms;
			let RoomIdName be name entry;
			if there is a name of RoomIdName in the Table of GameRoomIDs:
				let RoomObject be the object corresponding to a name of RoomIdName in the Table of GameRoomIDs;
				if Reachability entry is "Private":
					now RoomObject is private;
				else:
					now RoomObject is not private;
				if ExplorationStatus entry is "Known":
					now RoomObject is known;
				else:
					now RoomObject is not known;
				if RestSafety entry is "Safe":
					now RoomObject is sleepsafe;
				else:
					now RoomObject is not sleepsafe;
				if debugactive is 1:
					say "DEBUG -> [x]: RoomIdName: [RoomIdName] found and set to: [Reachability entry]; [ExplorationStatus entry]; [RestSafety entry]";
			else:
				if debugactive is 1:
					say "DEBUG -> [x]: RoomIdName: [RoomIdName] not found in Table of GameRoomIDs!";
	if the File of RoomInventorySave exists:
		repeat with x running through rooms:
			truncate Invent of x to 0 entries; [cleaning out the old data]
		say "Restoring RoomInventories...";
		read File of RoomInventorySave into the Table of GameRoomInventories;
		repeat with x running from 1 to the number of filled rows in the Table of GameRoomInventories:
			choose row x in the Table of GameRoomInventories;
			let RoomIdName be RoomName entry;
			if there is a name of RoomIdName in the Table of GameRoomIDs:
				let RoomObject be the object corresponding to a name of RoomIdName in the Table of GameRoomIDs;
				add ItemName entry to Invent of RoomObject;
			else:
				if debugactive is 1:
					say "DEBUG -> [x]: RoomIdName: [RoomIdName] not found in Table of GameRoomIDs!";
	else:
		say "No Room Save File Found!";

to PossessionSave:
	say "Saving Possessions...";
	blank out the whole of Table of GamePossessions; [empty out all old data]
	repeat with x running from 1 to the number of rows in the Table of Game Objects: [rebuilds the table of GamePossessions with current data]
		choose row x in the Table of Game Objects;
		let PossessionName be name entry;
		let PossessionCarriedNumber be 0;
		let PossessionStoredNumber be 0;
		let PossessionEquipped be false;
		if object entry is owned:
			now PossessionCarriedNumber is carried of object entry;
		if object entry is stored:
			now PossessionStoredNumber is stashed of object entry;
		if object entry is Equipment:
			if object entry is equipped:
				now PossessionEquipped is true;
		if PossessionCarriedNumber > 0 or PossessionStoredNumber > 0: [if the object is indeed in the players possession, it gets written down]
			choose a blank row in the table of GamePossessions;
			now name entry is PossessionName;
			now CarriedNumber entry is PossessionCarriedNumber;
			now StoredNumber entry is PossessionStoredNumber;
			now EquippedStatus entry is PossessionEquipped;
	write File of PossessionSave from the Table of GamePossessions; [freshly made table gets saved to file]
	if debugactive is 1:
		say "DEBUG -> File of PossessionSave written.[line break]";

to PossessionRestore:
	if the File of PossessionSave exists:
		say "Restoring Possessions...";
		read File of PossessionSave into the Table of GamePossessions;
		repeat with x running from 1 to the number of filled rows in the Table of GamePossessions:
			choose row x in the Table of GamePossessions;
			let PossessionIdName be name entry;
			if there is a name of PossessionIdName in the Table of Game Objects:
				let PossessionObject be the object corresponding to a name of PossessionIdName in the Table of Game Objects;
				now carried of PossessionObject is CarriedNumber entry;
				now stashed of PossessionObject is StoredNumber entry;
				if PossessionObject is Equipment:
					if EquippedStatus entry is true:
						now PossessionObject is equipped;
					else:
						now PossessionObject is not equipped;
				if debugactive is 1:
					say "DEBUG -> [x]: PossessionIdName: [PossessionIdName] found and set to: [carried of PossessionObject] carried and [stashed of PossessionObject] stored.";
			else:
				if debugactive is 1:
					say "DEBUG -> [x]: PossessionIdName: [PossessionIdName] not found in Table of Game Objects!";
	else:
		say "No Possession Save File Found!";

to CharacterSave:
	say "Saving Characters...";
	blank out the whole of Table of GameCharacters; [empty out all old data]
	blank out the whole of Table of GameTraits; [empty out all old data]
	if number of persons > number of rows in the table of GameCharacters: [making sure we got enough room for all situations]
		say "Error! Not enough rows to save all Characters in the table of GameCharacters. Please report this on the FS Discord.";
	repeat with x running through persons: [rebuilds the table of GameCharacters with current data]
		choose a blank row in the Table of GameCharacters;
		if there is a object of X in the Table of GameCharacterIDs:
			let CharacterName be the name corresponding to a object of X in the Table of GameCharacterIDs;
			now name entry is CharacterName;
			let LocationDesignation be "NPC Nexus"; [standard value = stash room]
			if location of x is not nothing:
				let LocationDesignation be printed name of location of x;
			now LocationName entry is LocationDesignation;
			now Energy entry is Energy of x;
			now HP entry is HP of x;
			now MaxHP entry is MaxHP of x;
			now XP entry is XP of x;
			now Level entry is Level of x;
			now Armor entry is Armor of x;
			now Weapon Damage entry is Weapon Damage of x;
			now Capacity entry is Capacity of x;
			now ScaleValue entry is ScaleValue of x;
			now Strength entry is Strength of x;
			now Dexterity entry is Dexterity of x;
			now Stamina entry is Stamina of x;
			now Charisma entry is Charisma of x;
			now Intelligence entry is Intelligence of x;
			now Perception entry is Perception of x;
			now Hunger entry is Hunger of x;
			now Thirst entry is Thirst of x;
			now SleepRhythm entry is SleepRhythm of x;
			now Morale entry is Morale of x;
			now Lust entry is Lust of x;
			now Libido entry is Libido of x;
			now Loyalty entry is Loyalty of x;
			now Humanity entry is Humanity of x;
			now Cocks entry is Cocks of x;
			now Cock Length entry is Cock Length of x;
			now Cock Width entry is Cock Width of x;
			now Testes entry is Testes of x;
			now Cunts entry is Cunts of x;
			now Cunt Length entry is Cunt Length of x;
			now Cunt Width entry is Cunt Width of x;
			now Breasts entry is Breasts of x;
			now Breast Size entry is Breast Size of x;
			now PlayerMet entry is PlayerMet of x;
			now PlayerRomanced entry is PlayerRomanced of x;
			now PlayerFucked entry is PlayerFucked of x;
			now OralVirgin entry is OralVirgin of x;
			now Virgin entry is Virgin of x;
			now AnalVirgin entry is AnalVirgin of x;
			if the number of entries in Traits of x is not 0:
				repeat with y running from 1 to the number of entries in Traits of x: [rebuilds the table of GameTraits with current data]
					choose a blank row in the table of GameTraits;
					now OwnerName entry is CharacterName;
					now TraitText entry is entry y of Traits of x;
		else:
			say "Error! The character [x] is not listed in the Table of GameCharacterIDs and cannot be saved. Please report this on the FS Discord.";
	write File of CharacterSave from the Table of GameCharacters; [freshly made table gets saved to file]
	write File of TraitSave from the Table of GameTraits; [freshly made table gets saved to file]
	if debugactive is 1:
		say "DEBUG -> File of CharacterSave written.[line break]";
		say "DEBUG -> File of TraitSave written.[line break]";

to CharacterRestore:
	if the File of CharacterSave exists:
		say "Restoring Characters...";
		read File of CharacterSave into the Table of GameCharacters;
		repeat with x running from 1 to the number of filled rows in the Table of GameCharacters:
			choose row x in the Table of GameCharacters;
			let CharacterIdName be name entry;
			if there is a name of CharacterIdName in the Table of GameCharacterIDs:
				let CharacterObject be the object corresponding to a name of CharacterIdName in the Table of GameCharacterIDs;
				if CharacterIdName is listed in PetList:
					if debugactive is 1:
						say "DEBUG -> Pets are part of the player, thus they don't get moved.[line break]";
				else if CharacterIdName is "yourself":
					if debugactive is 1:
						say "DEBUG -> The player doesn't get moved.[line break]";
				else if there is a name of LocationName entry in the Table of GameRoomIDs:
					let TargetRoom be the object corresponding to a name of LocationName entry in the Table of GameRoomIDs;
					move CharacterObject to TargetRoom;
				else:
					if debugactive is 1:
						say "DEBUG -> Room [LocationName entry] does not exist. Character moved to NPC Nexus.[line break]";
					move CharacterObject to NPC Nexus;
				now Energy of CharacterObject is Energy entry;
				now HP of CharacterObject is HP entry;
				now MaxHP of CharacterObject is MaxHP entry;
				now XP of CharacterObject is XP entry;
				now Level of CharacterObject is Level entry;
				now Armor of CharacterObject is Armor entry;
				now Weapon Damage of CharacterObject is Weapon Damage entry;
				now Capacity of CharacterObject is Capacity entry;
				now ScaleValue of CharacterObject is ScaleValue entry;
				now Strength of CharacterObject is Strength entry;
				now Dexterity of CharacterObject is Dexterity entry;
				now Stamina of CharacterObject is Stamina entry;
				now Charisma of CharacterObject is Charisma entry;
				now Intelligence of CharacterObject is Intelligence entry;
				now Perception of CharacterObject is Perception entry;
				now Hunger of CharacterObject is Hunger entry;
				now Thirst of CharacterObject is Thirst entry;
				now SleepRhythm of CharacterObject is SleepRhythm entry;
				now Morale of CharacterObject is Morale entry;
				now Lust of CharacterObject is Lust entry;
				now Libido of CharacterObject is Libido entry;
				now Loyalty of CharacterObject is Loyalty entry;
				now Humanity of CharacterObject is Humanity entry;
				now Cocks of CharacterObject is Cocks entry;
				now Cock Length of CharacterObject is Cock Length entry;
				now Cock Width of CharacterObject is Cock Width entry;
				now Testes of CharacterObject is Testes entry;
				now Cunts of CharacterObject is Cunts entry;
				now Cunt Length of CharacterObject is Cunt Length entry;
				now Cunt Width of CharacterObject is Cunt Width entry;
				now Breasts of CharacterObject is Breasts entry;
				now Breast Size of CharacterObject is Breast Size entry;
				now PlayerMet of CharacterObject is PlayerMet entry;
				now PlayerRomanced of CharacterObject is PlayerRomanced entry;
				now PlayerFucked of CharacterObject is PlayerFucked entry;
				now OralVirgin of CharacterObject is OralVirgin entry;
				now Virgin of CharacterObject is Virgin entry;
				now AnalVirgin of CharacterObject is AnalVirgin entry;
				if debugactive is 1:
					say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] found and values restored.";
			else:
				if debugactive is 1:
					say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] not found in Table of GameCharacterIDs!";
	else:
		say "No Character Save File Found!";

to TraitRestore:
	if the File of TraitSave exists:
		say "Restoring Traits...";
		read File of TraitSave into the Table of GameTraits;
		repeat with x running from 1 to the number of filled rows in the Table of GameTraits:
			choose row x in the Table of GameTraits;
			let TraitOwner be OwnerName entry;
			if there is a name of TraitOwner in the Table of GameCharacterIDs:
				let CharacterObject be the object corresponding to a name of TraitOwner in the Table of GameCharacterIDs;
				if TraitText entry is not listed in Traits of CharacterObject:
					add TraitText entry to Traits of CharacterObject;
					if TraitText entry is "Tamed": [pets]
						now CharacterObject is tamed;
					if debugactive is 1:
						say "DEBUG -> [x]: Added Trait: '[TraitText entry]' to [TraitOwner].";
	else:
		say "No Trait Save File Found!";

to PlayerSave:
	say "Saving Player Data...";
	blank out the whole of Table of PlayerData; [empty out all old data]
	blank out the whole of Table of PlayerLists; [empty out all old data]
	choose a blank row in the table of PlayerData;
	now skin entry is skin of player;
	now skinname entry is skinname of player;
	now cock entry is cock of player;
	now cockname entry is cockname of player;
	now face entry is face of player;
	now facename entry is facename of player;
	now tail entry is tail of player;
	now tailname entry is tailname of player;
	now body entry is body of player;
	now bodyname entry is bodyname of player;
	now scent entry is scent of player;
	now Cock Size Desc entry is Cock Size Desc of player;
	now Cunt Size Desc entry is Cunt Size Desc of player;
	now Breast Size Desc entry is Breast Size Desc of player;
	now Short Breast Size Desc entry is Short Breast Size Desc of player;
	now bodydesc entry is bodydesc of player;
	now bodytype entry is bodytype of player;
	if the number of entries in Vials of player is not 0:
		repeat with y running from 1 to the number of entries in Vials of player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "Vial";
			now EntryText entry is entry y of vials of player;
	if the number of entries in Tapes of player is not 0:
		repeat with y running from 1 to the number of entries in Tapes of player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "Tape";
			now EntryText entry is entry y of Tapes of player;
	if the number of entries in Feats of player is not 0:
		repeat with y running from 1 to the number of entries in Feats of player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "Feat";
			now EntryText entry is entry y of Feats of player;
	if the number of entries in OpenQuests of player is not 0:
		repeat with y running from 1 to the number of entries in OpenQuests of player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "OpenQuest";
			now EntryText entry is entry y of OpenQuests of player;
	if the number of entries in CompletedQuests of player is not 0:
		repeat with y running from 1 to the number of entries in CompletedQuests of player: [rebuilds the table of GameTraits with current data]
			choose a blank row in the table of PlayerLists;
			now ListName entry is "CompletedQuest";
			now EntryText entry is entry y of CompletedQuests of player;
	if the number of entries in EncounteredEnemies of player is not 0:
		repeat with y running from 1 to the number of entries in EncounteredEnemies of player: [rebuilds the table of GameTraits with current data]
			choose a blank row in the table of PlayerLists;
			now ListName entry is "EncounteredEnemy";
			now EntryText entry is entry y of EncounteredEnemies of player;
	if the number of entries in BlockList of player is not 0:
		repeat with y running from 1 to the number of entries in BlockList of player: [rebuilds the table of GameTraits with current data]
			choose a blank row in the table of PlayerLists;
			now ListName entry is "BlockList";
			now EntryText entry is entry y of BlockList of player;
	write File of PlayerSave from the Table of PlayerData; [freshly made table gets saved to file]
	write File of PlayerListsSave from the Table of PlayerLists; [freshly made table gets saved to file]
	if debugactive is 1:
		say "DEBUG -> File of PlayerSave written.[line break]";

to PlayerRestore:
	if the File of PlayerSave exists:
		say "Restoring Player Data...";
		read File of PlayerSave into the Table of PlayerData;
		choose row 1 in the Table of PlayerData;
		now skin of player is skin entry;
		now skinname of player is skinname entry;
		now cock of player is cock entry;
		now cockname of player is cockname entry;
		now face of player is face entry;
		now facename of player is facename entry;
		now tail of player is tail entry;
		now tailname of player is tailname entry;
		now body of player is body entry;
		now bodyname of player is bodyname entry;
		now scent of player is scent entry;
		now Cock Size Desc of player is Cock Size Desc entry;
		now Cunt Size Desc of player is Cunt Size Desc entry;
		now Breast Size Desc of player is Breast Size Desc entry;
		now Short Breast Size Desc of player is Short Breast Size Desc entry;
		now bodydesc of player is bodydesc entry;
		now bodytype of player is bodytype entry;
		if debugactive is 1:
			say "DEBUG -> Player Data restored.";
	else:
		say "No Player Save File Found!";
	if the File of PlayerListsSave exists:
		say "Restoring Player Lists...";
		read File of PlayerListsSave into the Table of PlayerLists;
		repeat with y running from 1 to the number of filled rows in the Table of PlayerLists:
			choose row y in the Table of PlayerLists;
			if ListName entry is:
				-- "Vial":
					add EntryText entry to Vials of player;
				-- "Tape":
					if EntryText entry is not listed in Tapes of player:
						add EntryText entry to Tapes of player;
				-- "Feat":
					if EntryText entry is not listed in Feats of player:
						add EntryText entry to Feats of player;
				-- "OpenQuest":
					if EntryText entry is not listed in OpenQuests of player:
						add EntryText entry to OpenQuests of player;
				-- "CompletedQuest":
					if EntryText entry is not listed in CompletedQuests of player:
						add EntryText entry to CompletedQuests of player;
				-- "EncounteredEnemy":
					if EntryText entry is not listed in EncounteredEnemies of player:
						add EntryText entry to EncounteredEnemies of player;
				-- "BlockList":
					if EntryText entry is not listed in BlockList of player:
						add EntryText entry to BlockList of player;

to BeastSave:
	say "Saving Beasts...";
	blank out the whole of Table of GameBeasts; [empty out all old data]
	if number of rows in Table of Random Critters > number of rows in the Table of GameBeasts: [making sure we got enough room for all situations]
		say "Error! Not enough rows to save all Beasts in the Table of GameBeasts. Please report this on the FS Discord.";
	repeat with x running from 1 to the number of filled rows in the Table of Random Critters: [rebuilds the table of GameBeasts with current data]
		choose row x in the Table of Random Critters;
		let BeastName be Name entry;
		let BeastArea be Area entry;
		let BeastNonInfect be non-infectious entry;
		let BeastSex be sex entry;
		choose a blank row in the table of GameBeasts;
		now Name entry is BeastName;
		now Area entry is BeastArea;
		now non-infectious entry is BeastNonInfect;
		now sex entry is BeastSex;
	write File of BeastSave from the Table of GameBeasts; [freshly made table gets saved to file]
	if debugactive is 1:
		say "DEBUG -> File of BeastSave written.[line break]";

to BeastRestore:
	if the File of BeastSave exists:
		read File of BeastSave into the Table of GameBeasts;
		repeat with x running from 1 to the number of filled rows in the Table of GameBeasts:
			choose row x in the Table of GameBeasts;
			let BeastName be Name entry;
			let BeastArea be Area entry;
			let BeastNonInfect be non-infectious entry;
			let BeastSex be sex entry;
			if there is a Name of BeastName in the Table of Random Critters:
				choose row with Name of BeastName in Table of Random Critters;
				now Area entry is BeastArea;
				now non-infectious entry is BeastNonInfect;
				now sex entry is BeastSex;
				if debugactive is 1:
					say "DEBUG -> [x]: BeastName: [BeastName] Area entry set to [BeastArea]!";
			else:
				if debugactive is 1:
					say "DEBUG -> BeastName: [BeastName] not found in Table of Random Critters!";
	else:
		say "No Beast Save File Found!";

Section 2 - Trixie

understand "export progress" as ProgressExport.
ProgressExport is an action applying to nothing.

Check ProgressExport:
	if Trixie is not visible, say "You should go to Trixie in the Grey Abbey Library if you want to do this." instead;

Carry out ProgressExport:
	say "[TrixieExport]";

To say TrixieExport:
	if wrcursestatus is 5:
		wrcurserecede; [puts player back to normal form and restores proper stats for saving]
	LineBreak;
	say "     Trixie waggles her fingers and smiles at you. 'An image of your reality now has been stored in some otherworldly storage caches called [']Files[']. Don't ask me to explain what those are. It's magic, you know! Just be sure to come here to [bold type]Import Progress[roman type] to restore your most recent magic files. Oh, and coming to me again to [bold type]Export Progress[roman type] will replace those things with new ones, so be careful not to overwrite any magic files you might want to keep.'";
	SaveEverything;
	if wrcursestatus is 5:
		say "[line break]     Trixie waves her magic wand around and you flash between your normal form and your wereraptor form a few times so she can examine it before leaving you fully as a wereraptor once again.";
		wrcursesave; [puts player back to complete wereraptor form]

To SaveEverything:
	EventSave;
	RoomSave;
	PossessionSave;
	CharacterSave;
	PlayerSave;
	BeastSave;
	VariableSave;

understand "Import Progress" as ProgressImport.
ProgressImport is an action applying to nothing.

Check ProgressImport:
	if Trixie is not visible, say "You should go to Trixie in the Grey Abbey Library if you want to do this." instead;

Carry out ProgressImport:
	say "     Trixie smiles at you and nods. 'Okay then, let's see of we have some magic files floating in the ether.' She pulls a wand and swishes it through the air, then points right at you.";
	say "[TrixieImport]";

To say TrixieImport:
	RestoreEverything;

to RestoreEverything:
	EventRestore;
	RoomRestore;
	PossessionRestore;
	CharacterRestore;
	TraitRestore;
	PlayerRestore;
	BeastRestore;
	VariableLoad;

Table of GameCharacterIDs (continued)
object	name
Trixie	"Trixie"

Trixie is a person. Trixie is in Grey Abbey Library.

The scent of Trixie is "Trixie smells of broken universes and rewritten fate. How anything can smell like that or how you can even know that smell disturbs you to your very core.".

The description of Trixie is "[Trixiedesc]".

to say Trixiedesc:
	say "     Look, it's Trixie, the story fairy! She's about three inches tall, large for her particular breed. She has bright reddish-purple hair and smooth brown skin. Wielded in her right hand is a relatively large wand of old world oak with a great fancy bauble at the end that looks like a cutely renditioned skunk girl head, grinning at you no matter what angle you view it from. Trixie is well shaped, with, relative to the rest of her mass, B cup breasts and wide hips. Her feet are covered in shimmering gold sandals of sorts. Her chest is covered in a t-shirt that reads 'Support us at: https://www.patreon.com/FS'[line break]";
	say "     Trixie's got a button on her t-shirt that says 'Cheaters type [link]iwannacheat[end link]' on it, and a second one that says 'Check out the [link]artwork credits[end link]'. Hmmm.";
	say "     She's also found a ballcap on that says 'Using [link]Export Progress[end link] will save your progress for transfer to a new game version. [link]Import Progress[end link] should restore everything in the new version.' That's a lot to put on a ballcap that small, but for some reason you're able to read it all easily.";

The conversation of Trixie is { "Hello. I will teach you a magic word. To use it, just stand in front of me after [bold type]starting a new game[roman type] and [link]Import Progress[end link]. This will let you bend time and probability, returning you to the condition you were in when made the magic word... mostly. I will do my best, but my powers are not infinite. Also, I'm 'Out of Character', so you really don't see me. Confused yet? Good!" }.

Story Skipper ends here.
