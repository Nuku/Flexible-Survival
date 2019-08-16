Version 224 of Story Skipper by Core Mechanics begins here.
[ New compressed method - 5/17/2015 - Stripes ]
[ Version 223.1 - Updated w/Enhanced Chimera material ]
[ Version 224 - Completely rewritten - Wahn]

The File of EventSave (owned by another project) is called "FSEventSave".
The File of RoomSave (owned by another project) is called "FSRoomSave".
The File of RoomInventorySave (owned by another project) is called "FSRoomInventorySave".
The File of PossessionSave (owned by another project) is called "FSPossessionSave".
The File of CharacterSave (owned by another project) is called "FSCharacterSave".
The File of CharacterVariableSave (owned by another project) is called "FSCharacterVariableSave".
The File of UnbornChildSave (owned by another project) is called "FSUnbornChildSave".
The File of ChildrenSave (owned by another project) is called "FSChildrenSave".
The File of ChildrenBunkerSave (owned by another project) is called "FSChildrenBunkerSave".
The File of ChildrenRoamingSave (owned by another project) is called "FSChildrenRoamingSave".
The File of TraitSave (owned by another project) is called "FSTraitSave".
The File of PlayerSave (owned by another project) is called "FSPlayerSave".
The File of NewPlayerSave (owned by another project) is called "FSNewPlayerSave".
The File of PlayerListsSave (owned by another project) is called "FSPlayerListsSave".
The File of BeastSave (owned by another project) is called "FSBeastSave".
The File of NoteSave (owned by another project) is called "FSNoteSave".

PetList is a list of text that varies.[@Tag:NotSaved] [for stashing the pet objects in the Character Nexus]
PetList is { "Nullpet", "Latex Vixen", "strange doll", "pink raccoon", "demon brute", "wukong", "human dog", "Retriever Girl", "rubber tigress", "frost giantess", "Little fox", "skunk kit", "equinoid warrior", "Felinoid Companion", "Cute Crab", "house cat", "Exotic Bird", "helper dog", "Gryphoness", "bee girl", "gshep", "mouse girl", "royal tiger", "doberman companion", "demonologist" };

an everyturn rule:
	if Player is in NPC Nexus:
		say "     Trixie the fairy flutters into existence right next to you and looks at you with a puzzled expression. 'Now now, you really should be somewhere else. How in the world did you end up here? If you do remember the room where you're supposed to be, please report that on the FS Discord channel as a bug. But for now, let's get you back in the city at least.'";
		move Player to Bunker;

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
	if debugactive is 1:
		say "DEBUG -> File of EventSave written.[line break]";

to EventRestore:
	if the File of EventSave exists:
		say "Restoring Events...";
		read File of EventSave into the Table of GameEvents;
		repeat with x running from 1 to the number of filled rows in the Table of GameEvents:
			choose row x in the Table of GameEvents;
			let EventIdName be Name entry;
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
				now sarea of EventObject is SituationArea entry;
				[bugfix code after re-naming Midway to Fair]
				if sarea of EventObject is "Midway":
					now sarea of EventObject is "Fair";
				if debugactive is 1:
					say "DEBUG -> [x]: EventIdName: [EventIdName] found and set to: [ResolveState entry], [ActiveState entry], Resolution: [Resolution entry]";
			else:
				if debugactive is 1:
					say "DEBUG -> [x]: EventIdName: [EventIdName] not found in Table of GameEventIDs!";
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
		now Name entry is printed name of x;
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
	blank out the whole of Table of GameRooms; [empty after saving]
	blank out the whole of Table of GameRoomInventories; [empty after saving]
	if debugactive is 1:
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
		if PossessionCarriedNumber > 0 or PossessionStoredNumber > 0: [if the object is indeed in the players possession, it gets written down]
			choose a blank row in the table of GamePossessions;
			now Name entry is PossessionName;
			now CarriedNumber entry is PossessionCarriedNumber;
			now StoredNumber entry is PossessionStoredNumber;
			now EquippedStatus entry is PossessionEquipped;
			now CurseStatus entry is PossesssionCursed;
	write File of PossessionSave from the Table of GamePossessions; [freshly made table gets saved to file]
	blank out the whole of Table of GamePossessions; [empty after saving to file]
	if debugactive is 1:
		say "DEBUG -> File of PossessionSave written.[line break]";

to PossessionRestore:
	if the File of PossessionSave exists:
		say "Restoring Possessions...";
		read File of PossessionSave into the Table of GamePossessions;
		repeat with x running from 1 to the number of filled rows in the Table of GamePossessions:
			choose row x in the Table of GamePossessions;
			let PossessionIdName be Name entry;
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
				if debugactive is 1:
					say "DEBUG -> [x]: PossessionIdName: [PossessionIdName] found and set to: [carried of PossessionObject] carried and [stashed of PossessionObject] stored.";
			else:
				if debugactive is 1:
					say "DEBUG -> [x]: PossessionIdName: [PossessionIdName] not found in Table of Game Objects!";
	else:
		say "No Possession Save File Found!";
	blank out the whole of Table of GamePossessions; [empty out all old data]

to CharacterSave:
	say "Saving Characters...";
	blank out the whole of Table of GameCharacters; [empty out all old data]
	blank out the whole of Table of GameCharacterVariables; [empty out all old data]
	blank out the whole of Table of GameTraits; [empty out all old data]
	if number of persons > number of rows in the table of GameCharacterVariables: [making sure we got enough room for all situations]
		say "Error! Not enough rows to save all Characters in the table of GameCharacterVariables. Please report this on the FS Discord.";
	repeat with x running through persons: [rebuilds the table of GameCharacters with current data]
		choose a blank row in the Table of GameCharacterVariables;
		if there is a object of X in the Table of GameCharacterIDs:
			let CharacterName be the name corresponding to a object of X in the Table of GameCharacterIDs;
			now Name entry is CharacterName;
			let LocationDesignation be "NPC Nexus"; [standard value = stash room]
			if location of x is not nothing:
				let LocationDesignation be printed name of location of x;
			now LocationName entry is LocationDesignation;
			[Numbers]
			now Energy entry is Energy of x;
			now HP entry is HP of x;
			now MaxHP entry is MaxHP of x;
			now XP entry is XP of x;
			now Level entry is Level of x;
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
			now Libido entry is Libido of x;
			now Loyalty entry is Loyalty of x;
			now Humanity entry is Humanity of x;
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
			now Armor entry is Armor of x;
			now Capacity entry is Capacity of x;
			now SleepRhythm entry is SleepRhythm of x;
			now scalevalue entry is The scalevalue of x;
			now PlayerLastSize entry is PlayerLastSize of x;
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
	write File of CharacterVariableSave from the Table of GameCharacterVariables; [freshly made table gets saved to file]
	write File of TraitSave from the Table of GameTraits; [freshly made table gets saved to file]
	blank out the whole of Table of GameCharacters; [empty after saving]
	blank out the whole of Table of GameCharacterVariables; [empty after saving]
	blank out the whole of Table of GameTraits; [empty after saving]
	if debugactive is 1:
		say "DEBUG -> File of CharacterVariableSave written.[line break]";
		say "DEBUG -> File of TraitSave written.[line break]";

to CharacterRestore:
	if the File of CharacterVariableSave exists:
		say "Restoring Characters...";
		read File of CharacterVariableSave into the Table of GameCharacterVariables;
		repeat with x running from 1 to the number of filled rows in the Table of GameCharacterVariables:
			choose row x in the Table of GameCharacterVariables;
			let CharacterIdName be Name entry;
			if there is a name of CharacterIdName in the Table of GameCharacterIDs:
				let CharacterObject be the object corresponding to a name of CharacterIdName in the Table of GameCharacterIDs;
				if CharacterIdName is listed in PetList:
					if debugactive is 1:
						say "DEBUG -> Pets are part of the player, thus they don't get moved.[line break]";
				[
				else if CharacterIdName is "yourself":
					if debugactive is 1:
						say "DEBUG -> The player doesn't get moved.[line break]";
				]
				else if there is a name of LocationName entry in the Table of GameRoomIDs:
					let TargetRoom be the object corresponding to a name of LocationName entry in the Table of GameRoomIDs;
					move CharacterObject to TargetRoom;
				else:
					say "DEBUG -> Room [LocationName entry] does not exist. '[CharacterIdName]' moved to NPC Nexus. Please report this error on the FS Discord Bug Report Channel![line break]";
					move CharacterObject to NPC Nexus;
				[Numbers]
				now Energy of CharacterObject is Energy entry;
				now HP of CharacterObject is HP entry;
				now MaxHP of CharacterObject is MaxHP entry;
				now XP of CharacterObject is XP entry;
				now Level of CharacterObject is Level entry;
				now Strength of CharacterObject is Strength entry;
				now Dexterity of CharacterObject is Dexterity entry;
				now Stamina of CharacterObject is Stamina entry;
				now Charisma of CharacterObject is Charisma entry;
				now Intelligence of CharacterObject is Intelligence entry;
				now Perception of CharacterObject is Perception entry;
				now Hunger of CharacterObject is Hunger entry;
				now Thirst of CharacterObject is Thirst entry;
				now Morale of CharacterObject is Morale entry;
				now Lust of CharacterObject is Lust entry;
				now Libido of CharacterObject is Libido entry;
				now Loyalty of CharacterObject is Loyalty entry;
				now Humanity of CharacterObject is Humanity entry;
				now Body Weight of CharacterObject is Body Weight entry;
				now Body Definition of CharacterObject is Body Definition entry;
				now Androginity of CharacterObject is Androginity entry;
				now Mouth Length of CharacterObject is Mouth Length entry;
				now Mouth Circumference of CharacterObject is Mouth Circumference entry;
				now Tongue Length of CharacterObject is Tongue Length entry;
				now Breast Size of CharacterObject is Breast Size entry;
				now Nipple Count of CharacterObject is Nipple Count entry;
				now Asshole Depth of CharacterObject is Asshole Depth entry;
				now Asshole Tightness of CharacterObject is Asshole Tightness entry;
				now Cock Count of CharacterObject is Cock Count entry;
				now Cock Girth of CharacterObject is Cock Girth entry;
				now Cock Length of CharacterObject is Cock Length entry;
				now Ball Count of CharacterObject is Ball Count entry;
				now Ball Size of CharacterObject is Ball Size entry;
				now Cunt Count of CharacterObject is Cunt Count entry;
				now Cunt Depth of CharacterObject is Cunt Depth entry;
				now Cunt Tightness of CharacterObject is Cunt Tightness entry;
				now Clit Size of CharacterObject is Clit Size entry;
				now Armor of CharacterObject is Armor entry;
				now Capacity of CharacterObject is Capacity entry;
				now SleepRhythm of CharacterObject is SleepRhythm entry;
				now scalevalue of CharacterObject is The scalevalue entry;
				now PlayerLastSize of CharacterObject is PlayerLastSize entry;
				[Texts]
				now MainInfection of CharacterObject is MainInfection entry;
				now FirstAnalPartner of CharacterObject is FirstAnalPartner entry;
				now FirstVaginalPartner of CharacterObject is FirstVaginalPartner entry;
				now FirstOralPartner of CharacterObject is FirstOralPartner entry;
				now FirstPenilePartner of CharacterObject is FirstPenilePartner entry;
				now Cock Size Desc of CharacterObject is Cock Size Desc entry;
				now Cunt Size Desc of CharacterObject is Cunt Size Desc entry;
				now Breast Size Desc of CharacterObject is Breast Size Desc entry;
				now Short Breast Size Desc of CharacterObject is Short Breast Size Desc entry;
				now Originalgender of CharacterObject is Originalgender entry;
				now PlayerOriginalgender of CharacterObject is PlayerOriginalGender entry;
				now PlayerLastGender of CharacterObject is PlayerLastGender entry;
				now PlayerLastBodytype of CharacterObject is PlayerLastBodytype entry;
				[Truth States]
				now PlayerMet of CharacterObject is PlayerMet entry;
				now PlayerRomanced of CharacterObject is PlayerRomanced entry;
				now PlayerFriended of CharacterObject is PlayerFriended entry;
				now PlayerControlled of CharacterObject is PlayerControlled entry;
				now PlayerFucked of CharacterObject is PlayerFucked entry;
				now OralVirgin of CharacterObject is OralVirgin entry;
				now Virgin of CharacterObject is Virgin entry;
				now AnalVirgin of CharacterObject is AnalVirgin entry;
				now PenileVirgin of CharacterObject is PenileVirgin entry;
				now SexuallyExperienced of CharacterObject is SexuallyExperienced entry;
				now TwistedCapacity of CharacterObject is TwistedCapacity entry;
				now Sterile of CharacterObject is Sterile entry;
				if debugactive is 1:
					say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] found and values restored.";
			else:
				if debugactive is 1:
					say "DEBUG -> [x]: CharacterIdName: [CharacterIdName] not found in Table of GameCharacterIDs!";
	else if the File of CharacterSave exists:
		say "Restoring Characters...";
		read File of CharacterSave into the Table of GameCharacters;
		repeat with x running from 1 to the number of filled rows in the Table of GameCharacters:
			choose row x in the Table of GameCharacters;
			let CharacterIdName be Name entry;
			if there is a name of CharacterIdName in the Table of GameCharacterIDs:
				let CharacterObject be the object corresponding to a name of CharacterIdName in the Table of GameCharacterIDs;
				if CharacterIdName is listed in PetList:
					if debugactive is 1:
						say "DEBUG -> Pets are part of the player, thus they don't get moved.[line break]";
				[
				else if CharacterIdName is "yourself":
					if debugactive is 1:
						say "DEBUG -> The player doesn't get moved.[line break]";
				]
				else if there is a name of LocationName entry in the Table of GameRoomIDs:
					let TargetRoom be the object corresponding to a name of LocationName entry in the Table of GameRoomIDs;
					move CharacterObject to TargetRoom;
				else:
					say "DEBUG -> Room [LocationName entry] does not exist. '[CharacterIdName]' moved to NPC Nexus. Please report this error on the FS Discord Bug Report Channel![line break]";
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
				now Cock Count of CharacterObject is Cocks entry;
				now Cock Length of CharacterObject is Cock Length entry;
				now Ball Size of CharacterObject is Cock Width entry;
				now Ball Count of CharacterObject is Testes entry;
				now Cunt Count of CharacterObject is Cunts entry;
				now Cunt Depth of CharacterObject is Cunt Depth entry;
				now Cunt Tightness of CharacterObject is Cunt Width entry;
				now Nipple Count of CharacterObject is Breasts entry;
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
	blank out the whole of Table of GameCharacters; [empty out all old data]
	blank out the whole of Table of GameCharacterVariables; [empty after saving]
	blank out the whole of Table of GameTraits; [empty out all old data]

to TraitRestore:
	if the File of TraitSave exists:
		say "Restoring Traits...";
		read File of TraitSave into the Table of GameTraits;
		truncate Feats of Player to 0 entries;
		repeat with y running through persons:[cleaning out the old data]
			truncate Traits of y to 0 entries;
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
	if the number of entries in Vials of Player is not 0:
		repeat with y running from 1 to the number of entries in Vials of Player:
			choose a blank row in the table of PlayerLists;
			now ListName entry is "Vial";
			now EntryText entry is entry y of vials of Player;
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
		repeat with y running from 1 to the number of entries in CompletedQuests of Player: [rebuilds the table of GameTraits with current data]
			choose a blank row in the table of PlayerLists;
			now ListName entry is "CompletedQuest";
			now EntryText entry is entry y of CompletedQuests of Player;
	if the number of entries in EncounteredEnemies of Player is not 0:
		repeat with y running from 1 to the number of entries in EncounteredEnemies of Player: [rebuilds the table of GameTraits with current data]
			choose a blank row in the table of PlayerLists;
			now ListName entry is "EncounteredEnemy";
			now EntryText entry is entry y of EncounteredEnemies of Player;
	if the number of entries in BlockList of Player is not 0:
		repeat with y running from 1 to the number of entries in BlockList of Player: [rebuilds the table of GameTraits with current data]
			choose a blank row in the table of PlayerLists;
			now ListName entry is "BlockList";
			now EntryText entry is entry y of BlockList of Player;
	write File of PlayerSave from the Table of PlayerData; [freshly made table gets saved to file]
	if debugactive is 1:
		say "DEBUG -> File of PlayerSave written.[line break]";
	write File of PlayerListsSave from the Table of PlayerLists; [freshly made table gets saved to file]
	if debugactive is 1:
		say "DEBUG -> File of PlayerListsSave written.[line break]";
	blank out the whole of Table of PlayerData; [empty after saving]
	blank out the whole of Table of PlayerLists; [empty after saving]
	if NewTypeInfectionActive is true: [new parts also active]
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
		now HermInterest entry is HermInterest of Player;
		write File of NewPlayerSave from the Table of NewPlayerData; [freshly made table gets saved to file]
		blank out the whole of Table of NewPlayerData; [empty after saving]
		if debugactive is 1:
			say "DEBUG -> File of NewPlayerSave written.[line break]";


to PlayerRestore:
	if the File of PlayerSave exists:
		say "Restoring Player Data...";
		read File of PlayerSave into the Table of PlayerData;
		choose row 1 in the Table of PlayerData;
		now Skin of Player is skin entry;
		now SkinName of Player is SkinName entry;
		now SkinSpeciesName of Player is SkinName entry;
		now Cock of Player is cock entry;
		now CockName of Player is CockName entry;
		now CockSpeciesName of Player is CockName entry;
		now Face of Player is face entry;
		now FaceName of Player is FaceName entry;
		now FaceSpeciesName of Player is FaceName entry;
		now tail of Player is tail entry;
		now TailName of Player is TailName entry;
		now TailSpeciesName of Player is TailName entry;
		now Body of Player is body entry;
		now BodyName of Player is BodyName entry;
		now BodySpeciesName of Player is BodyName entry;
		now scent of Player is scent entry;
		now Cock Size Desc of Player is Cock Size Desc entry;
		now Cunt Size Desc of Player is Cunt Size Desc entry;
		now Breast Size Desc of Player is Breast Size Desc entry;
		now Short Breast Size Desc of Player is Short Breast Size Desc entry;
		now bodydesc of Player is bodydesc entry;
		now bodytype of Player is bodytype entry;
		if debugactive is 1:
			say "DEBUG -> Player Data restored.";
	else:
		say "No Player Save File Found!";
	blank out the whole of Table of PlayerData; [empty out all old data]
	if the File of PlayerListsSave exists:
		say "Restoring Player Lists...";
		read File of PlayerListsSave into the Table of PlayerLists;
		repeat with y running from 1 to the number of filled rows in the Table of PlayerLists:
			choose row y in the Table of PlayerLists;
			if ListName entry is:
				-- "Vial":
					add EntryText entry to Vials of Player;
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
				-- "BlockList":
					if EntryText entry is not listed in BlockList of Player:
						add EntryText entry to BlockList of Player;
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
		now HermInterest of Player is HermInterest entry;
		if debugactive is 1:
			say "DEBUG -> New Player Data restored.";
	else if NewTypeInfectionActive is true:
		say "No Additional Player Data Save File Found!";
	blank out the whole of Table of NewPlayerData; [empty out all old data]

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
	if debugactive is 1:
		say "DEBUG -> File of UnbornChildrenSave written.[line break]";
	say "Saving born children...";
	write File of ChildrenSave from the Table of PlayerChildren;
	write File of ChildrenBunkerSave from the Table of PlayerBunkerChildren;
	write File of ChildrenRoamingSave from the Table of PlayerRoamingChildren;
	if debugactive is 1:
		say "DEBUG -> File of ChildrenSave written.[line break]";
		say "DEBUG -> File of ChildrenBunkerSave written.[line break]";
		say "DEBUG -> File of ChildrenRoamingSave written.[line break]";

to ChildrenRestore:
	if the File of UnbornChildSave exists:
		say "Restoring unborn children...";
		read File of UnbornChildSave into the Table of ChildData;
		if debugactive is 1:
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
		if debugactive is 1:
			say "DEBUG -> Children restored from FSPlayerChildrenSave.[line break]";
	else:
		say "No Children Save File Found!";
	if the File of ChildrenBunkerSave exists:
		say "Restoring Children (Bunker)...";
		read File of ChildrenBunkerSave into the Table of PlayerBunkerChildren;
		if debugactive is 1:
			say "DEBUG -> Children restored from FSPlayerChildrenBunkerSave.[line break]";
	else:
		say "No Children (Bunker) Save File Found!";
	if the File of ChildrenRoamingSave exists:
		say "Restoring Children (Roaming)...";
		read File of ChildrenRoamingSave into the Table of PlayerRoamingChildren;
		if debugactive is 1:
			say "DEBUG -> Children restored from FSPlayerChildrenRoamingSave.[line break]";
	else:
		say "No Children (Roaming) Save File Found!";

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
	blank out the whole of Table of GameBeasts; [empty after saving]
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
				[bugfix code after re-naming Midway to Fair]
				if Area entry is "Midway":
					now Area entry is "Fair";
				now non-infectious entry is BeastNonInfect;
				now sex entry is BeastSex;
				if debugactive is 1:
					say "DEBUG -> [x]: BeastName: [BeastName] Area entry set to [BeastArea]!";
			else:
				if debugactive is 1:
					say "DEBUG -> BeastName: [BeastName] not found in Table of Random Critters!";
	else:
		say "No Beast Save File Found!";
	blank out the whole of Table of GameBeasts; [empty out all old data]

to NoteSave:
	say "Saving Notes...";
	write File of NoteSave from the Table of JournalNotes;
	if debugactive is 1:
		say "DEBUG -> File of NoteSave written.[line break]";

to NoteRestore:
	if the File of NoteSave exists:
		say "Restoring Notes...";
		read File of NoteSave into the Table of JournalNotes;
		if debugactive is 1:
			say "DEBUG -> Notes restored from FSNoteSave.[line break]";
	else:
		say "No Note Save File Found!";

to CharacterIconRestore:
	say "Restoring Character Icons...";
	AlexIconRestore;
	HadiyaIconRestore;
	LeonardIconRestore;
	RodAndRondaIconRestore;
	SamIconRestore;
	ChrisIconRestore;
	DemonBruteIconRestore;
	DiegoIconRestore;
	JayIconRestore;
	DrMattIconRestore;

Section 2 - Trixie

understand "export progress" as ProgressExport.
ProgressExport is an action applying to nothing.

Carry out ProgressExport:
	say "[ProgressionExport]";

To say ProgressionExport:
	if wrcursestatus is 5:
		wrcurserecede; [puts player back to normal form and restores proper stats for saving]
	LineBreak;
	say "     Writing save files.";
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
		say "     <Press any key to start import>";
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
	VariableLoad;
	CharacterIconRestore;

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
