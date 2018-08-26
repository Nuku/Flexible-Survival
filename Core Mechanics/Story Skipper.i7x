Version 224 of Story Skipper by Core Mechanics begins here.
[ New compressed method - 5/17/2015 - Stripes ]
[ Version 223.1 - Updated w/Enhanced Chimera material ]
[ Update: Saveword version and serial number now part of saveword #31 (originally unused) ]
[ Version 224 - Completely rewritten - Wahn]

The File of InventorySave (owned by another project) is called "InventorySave".
The File of StoreSave (owned by another project) is called "StoreSave".
The File of PlayerSave (owned by another project) is called "PlayerSave".
The File of PlayerListSave (owned by another project) is called "PlayerListSave".

The File of NPCTableSave (owned by another project) is called "NPCTableSave".
The File of EventTableSave (owned by another project) is called "EventTableSave".
The File of RoomTableSave (owned by another project) is called "RoomTableSave".
PersonExclusionList is a list of text that varies.
PersonExclusionList is { "Nullpet", "Latex Vixen", "strange doll", "pink raccoon", "demon brute", "wukong", "human dog", "Retriever Girl", "rubber tigress", "frost giantess", "Little fox", "skunk kit", "equinoid warrior", "Felinoid companion", "Cute Crab", "house cat", "Exotic Bird", "helper dog", "Gryphoness", "bee girl", "gshep", "mouse girl", "royal tiger" };

InventorySaveText is an indexed text that varies. InventorySaveText is usually "no save file found".
StoreSaveText is an indexed text that varies. StoreSaveText is usually "no save file found".
PlayerSaveText is an indexed text that varies. PlayerSaveText is usually "no save file found".
PlayerListSaveText is an indexed text that varies. PlayerListSaveText is usually "no save file found".
SavewordVersion is a number that varies. SavewordVersion is 224. [Saveword version to be outputted in part1. Update this number whenever there's an update to the saveword.]

PlayerDataFileGeneration is an action applying to nothing.

understand "StashPlayerData" as PlayerDataFileGeneration.

carry out PlayerDataFileGeneration:
	PlayerDataSave;

PlayerDataFileRestoration is an action applying to nothing.

understand "RestorePlayerData" as PlayerDataFileRestoration.

carry out PlayerDataFileRestoration:
	PlayerDataRestore;

EventTableRestoration is an action applying to nothing.

understand "EventLoad" as EventTableRestoration.

carry out EventTableRestoration:
	EventTableRestore;

NPCTableRestoration is an action applying to nothing.

understand "NPCLoad" as NPCTableRestoration.

carry out NPCTableRestoration:
	NPCTableRestore;

RoomTableRestoration is an action applying to nothing.

understand "RoomLoad" as RoomTableRestoration.

carry out RoomTableRestoration:
	RoomTableRestore;

InventoryRestoration is an action applying to nothing.

understand "ItemsLoad" as InventoryRestoration.

carry out InventoryRestoration:
	InventoryRestore;

StashRestoration is an action applying to nothing.

understand "StashLoad" as StashRestoration.

carry out StashRestoration:
	StashRestore;

To SaveEverything:
	[saving inventory]
	now InventorySaveText is "";
	repeat with x running from 1 to the number of rows in the table of game objects:
		choose row x in the table of game objects;
		if object entry is owned:
			let num be carried of object entry;
			now InventorySaveText is "[InventorySaveText][name entry]|[num]}[line break]";
	write "[InventorySaveText]" to the File of InventorySave;
	[saving stored items]
	now StoreSaveText is "";
	repeat with x running from 1 to the number of rows in the table of game objects:
		choose row x in the table of game objects;
		if object entry is stored:
			let num be stashed of object entry;
			now StoreSaveText is "[StoreSaveText][name entry]|[num]}[line break]";
	write "[StoreSaveText]" to the File of StoreSave;
	[saving npcs]
	repeat with x running through persons: [updates the table of NPCs]
		let TargetNPCName be printed name of x;
		if there is a name of TargetNPCName in the table of NPCs:
			choose a row with name of TargetNPCName in the Table of NPCs;
			if debugactive is 1:
				say "DEBUG -> Updating [TargetNPCName] in Table of NPCs[line break]";
			if location of x is not nothing:
				now LocationName entry is printed name of location of x;
			else:
				now LocationName entry is "NPC Nexus";
			now HP entry is HP of x;
			now XP entry is XP of x;
			now Level entry is Level of x;
			now Dexterity entry is Dexterity of x;
			now Thirst entry is Thirst of x;
			now Lust entry is Lust of x;
			now Loyalty entry is Loyalty of x;
			now Libido entry is Libido of x;
			now Weapon Damage entry is Weapon Damage of x;
			now Traits entry is Traits of x;
		else:
			say "Error! NPC [x] is not listed in the table of NPCs.";
	write File of NPCTableSave from the Table of NPCs;
	[saving events]
	repeat with x running through situations: [updates the table of GameEvents]
		let TargetSituationName be printed name of x;
		if there is a name of TargetSituationName in the table of GameEvents:
			choose a row with name of TargetSituationName in the Table of GameEvents;
			if debugactive is 1:
				say "DEBUG -> Updating [TargetSituationName] in Table of GameEvents[line break]";
			if x is resolved:
				now State entry is "resolved";
			else:
				now State entry is "unresolved";
			now Sarea entry is sarea of x;
			now Level entry is level of x;
			now MinScore entry is minscore of x;
		else:
			say "Error! Situation [x] is not listed in the table of GameEvents.";
	write File of EventTableSave from the Table of GameEvents;
	[saving rooms]
	repeat with x running through rooms: [updates the table of GameRooms]
		let TargetRoomName be printed name of x;
		if there is a name of TargetRoomName in the table of GameRooms:
			choose a row with name of TargetRoomName in the Table of GameRooms;
			if debugactive is 1:
				say "DEBUG -> Updating [TargetRoomName] in Table of GameRooms[line break]";
			if x is private:
				now Reachability entry is "Private";
			else:
				now Reachability entry is "Public";
			if x is known:
				now ExplorationStatus entry is "Known";
			else:
				now ExplorationStatus entry is "Unknown";
			if x is fasttravel:
				now TravelStatus entry is "Fasttravel";
			else:
				now TravelStatus entry is "Nontravel";
			now HuntArea entry is earea of x;
			if x is Sleepsafe:
				now RestSafety entry is "Safe";
			else:
				now RestSafety entry is "Unsafe";
		else:
			say "Error! Room [x] is not listed in the table of GameRooms.";
	write File of RoomTableSave from the Table of GameRooms;
	PlayerDataSave;

to PlayerDataSave:
	write "Name|[Name of player]}[line break]" to the File of PlayerSave;
	append "Energy|[Energy of player]}[line break]" to the File of PlayerSave;
	append "HP|[HP of player]}[line break]" to the File of PlayerSave;
	append "MaxHP|[MaxHP of player]}[line break]" to the File of PlayerSave;
	append "XP|[XP of player]}[line break]" to the File of PlayerSave;
	append "Level|[Level of player]}[line break]" to the File of PlayerSave;
	append "Strength|[Strength of player]}[line break]" to the File of PlayerSave;
	append "Dexterity|[Dexterity of player]}[line break]" to the File of PlayerSave;
	append "Stamina|[Stamina of player]}[line break]" to the File of PlayerSave;
	append "Charisma|[Charisma of player]}[line break]" to the File of PlayerSave;
	append "Intelligence|[Intelligence of player]}[line break]" to the File of PlayerSave;
	append "Perception|[Perception of player]}[line break]" to the File of PlayerSave;
	append "Hunger|[Hunger of player]}[line break]" to the File of PlayerSave;
	append "Thirst|[Thirst of player]}[line break]" to the File of PlayerSave;
	append "Morale|[Morale of player]}[line break]" to the File of PlayerSave;
	append "Lust|[Lust of player]}[line break]" to the File of PlayerSave;
	append "Loyalty|[Loyalty of player]}[line break]" to the File of PlayerSave;
	append "Libido|[Libido of player]}[line break]" to the File of PlayerSave;
	append "Humanity|[Humanity of player]}[line break]" to the File of PlayerSave;
	append "cocks|[cocks of player]}[line break]" to the File of PlayerSave;
	append "testes|[testes of player]}[line break]" to the File of PlayerSave;
	append "breasts|[breasts of player]}[line break]" to the File of PlayerSave;
	append "cunts|[cunts of player]}[line break]" to the File of PlayerSave;
	append "Breast Size|[Breast Size of player]}[line break]" to the File of PlayerSave;
	append "Cock length|[Cock length of player]}[line break]" to the File of PlayerSave;
	append "Cock Width|[Cock Width of player]}[line break]" to the File of PlayerSave;
	append "Cunt length|[Cunt length of player]}[line break]" to the File of PlayerSave;
	append "Cunt width|[Cunt width of player]}[line break]" to the File of PlayerSave;
	append "armor|[armor of player]}[line break]" to the File of PlayerSave;
	append "capacity|[capacity of player]}[line break]" to the File of PlayerSave;
	append "skin|[skin of player]}[line break]" to the File of PlayerSave;
	append "skinname|[skinname of player]}[line break]" to the File of PlayerSave;
	append "cock|[cock of player]}[line break]" to the File of PlayerSave;
	append "cockname|[cockname of player]}[line break]" to the File of PlayerSave;
	append "face|[face of player]}[line break]" to the File of PlayerSave;
	append "facename|[facename of player]}[line break]" to the File of PlayerSave;
	append "tail|[tail of player]}[line break]" to the File of PlayerSave;
	append "tailname|[tailname of player]}[line break]" to the File of PlayerSave;
	append "body|[body of player]}[line break]" to the File of PlayerSave;
	append "bodyname|[bodyname of player]}[line break]" to the File of PlayerSave;
	append "Cock Size Desc|[Cock Size Desc of player]}[line break]" to the File of PlayerSave;
	append "Cunt Size Desc|[Cunt Size Desc of player]}[line break]" to the File of PlayerSave;
	append "Breast Size Desc|[Breast Size Desc of player]}[line break]" to the File of PlayerSave;
	append "Short Breast Size Desc|[Short Breast Size Desc of player]}[line break]" to the File of PlayerSave;
	append "scalevalue|[scalevalue of player]}[line break]" to the File of PlayerSave;
	append "bodydesc|[bodydesc of player]}[line break]" to the File of PlayerSave;
	append "bodytype|[bodytype of player]}[line break]" to the File of PlayerSave;
	append "SleepRhythm|[SleepRhythm of player]}[line break]" to the File of PlayerSave;
	append "scent|[scent of player]}[line break]" to the File of PlayerSave;
	append "invent|[invent of player]}[line break]" to the File of PlayerSave;
	now PlayerListSaveText is "";
	repeat with y running from 1 to the number of entries in Vials of player:
		now PlayerListSaveText is "[PlayerListSaveText]Vial|[entry y in Vials of player]}[line break]";
	repeat with y running from 1 to the number of entries in Tapes of player:
		now PlayerListSaveText is "[PlayerListSaveText]Tape|[entry y in Tapes of player]}[line break]";
	repeat with y running from 1 to the number of entries in Traits of player:
		now PlayerListSaveText is "[PlayerListSaveText]Trait|[entry y in Traits of player]}[line break]";
	repeat with y running from 1 to the number of entries in Feats of player:
		now PlayerListSaveText is "[PlayerListSaveText]Feat|[entry y in Feats of player]}[line break]";
	repeat with y running from 1 to the number of entries in OpenQuests of player:
		now PlayerListSaveText is "[PlayerListSaveText]OpenQuest|[entry y in OpenQuests of player]}[line break]";
	repeat with y running from 1 to the number of entries in OpenQuests of player:
		now PlayerListSaveText is "[PlayerListSaveText]CompletedQuest|[entry y in CompletedQuests of player]}[line break]";
	repeat with y running from 1 to the number of entries in OpenQuests of player:
		now PlayerListSaveText is "[PlayerListSaveText]EncounteredEnemy|[entry y in EncounteredEnemies of player]}[line break]";
	repeat with y running from 1 to the number of entries in BlockList of player:
		now PlayerListSaveText is "[PlayerListSaveText]BlockListEntry|[entry y in BlockList of player]}[line break]";
	write "[PlayerListSaveText]" to the File of PlayerListSave;

to PlayerDataRestore:
	let PlayerDataRecover be indexed text;
	now PlayerDataRecover is "[text of the File of PlayerSave]";
	replace the text " " in PlayerDataRecover with "`";
	replace the text " " in PlayerDataRecover with "`";
	replace the text "}" in PlayerDataRecover with " ";
	replace the text "-" in PlayerDataRecover with "§";
	say "Recovering player data...";
	repeat with z running from 1 to number of words in PlayerDataRecover:
		let CurrentWord be word number z in PlayerDataRecover;
		replace the text "|" in CurrentWord with " ";
		let DataId be word number 1 in CurrentWord;
		replace the text "`" in DataId with " ";
		let SavedValue be word number 2 in CurrentWord;
		replace the text "`" in SavedValue with " ";
		if DataId is:
			-- "Name":
				now Name of player is Savedvalue;
			-- "Energy":
				now Energy of player is numerical value of SavedValue;
			-- "HP":
				now HP of player is numerical value of SavedValue;
			-- "MaxHP":
				now MaxHP of player is numerical value of SavedValue;
			-- "XP":
				now XP of player is numerical value of SavedValue;
			-- "Level":
				now Level of player is numerical value of SavedValue;
			-- "Strength":
				now Strength of player is numerical value of SavedValue;
			-- "Dexterity":
				now Dexterity of player is numerical value of SavedValue;
			-- "Stamina":
				now Stamina of player is numerical value of SavedValue;
			-- "Charisma":
				now Charisma of player is numerical value of SavedValue;
			-- "Intelligence":
				now Intelligence of player is numerical value of SavedValue;
			-- "Perception":
				now Perception of player is numerical value of SavedValue;
			-- "Hunger":
				now Hunger of player is numerical value of SavedValue;
			-- "Thirst":
				now Thirst of player is numerical value of SavedValue;
			-- "Morale":
				now Morale of player is numerical value of SavedValue;
			-- "Lust":
				now Lust of player is numerical value of SavedValue;
			-- "Loyalty":
				now Loyalty of player is numerical value of SavedValue;
			-- "Libido":
				now Libido of player is numerical value of SavedValue;
			-- "Humanity":
				now Humanity of player is numerical value of SavedValue;
			-- "cocks":
				now cocks of player is numerical value of SavedValue;
			-- "testes":
				now testes of player is numerical value of SavedValue;
			-- "breasts":
				now breasts of player is numerical value of SavedValue;
			-- "cunts":
				now cunts of player is numerical value of SavedValue;
			-- "Breast Size":
				now Breast Size of player is numerical value of SavedValue;
			-- "Cock length":
				now Cock length of player is numerical value of SavedValue;
			-- "Cock Width":
				now Cock Width of player is numerical value of SavedValue;
			-- "Cunt length":
				now Cunt length of player is numerical value of SavedValue;
			-- "Cunt width":
				now Cunt width of player is numerical value of SavedValue;
			-- "armor":
				now armor of player is numerical value of SavedValue;
			-- "capacity":
				now capacity of player is numerical value of SavedValue;
			-- "skin":
				now skin of player is Savedvalue;
			-- "skinname":
				now skinname of player is Savedvalue;
			-- "cock":
				now cock of player is Savedvalue;
			-- "cockname":
				now cockname of player is Savedvalue;
			-- "face":
				now face of player is Savedvalue;
			-- "facename":
				now facename of player is Savedvalue;
			-- "tail":
				now tail of player is Savedvalue;
			-- "tailname":
				now tailname of player is Savedvalue;
			-- "body":
				now body of player is Savedvalue;
			-- "bodyname":
				now bodyname of player is Savedvalue;
			-- "Cock Size Desc":
				now Cock Size Desc of player is Savedvalue;
			-- "Cunt Size Desc":
				now Cunt Size Desc of player is Savedvalue;
			-- "Breast Size Desc":
				now Breast Size Desc of player is Savedvalue;
			-- "Short Breast Size Desc":
				now Short Breast Size Desc of player is Savedvalue;
			-- "scalevalue":
				now scalevalue of player is numerical value of SavedValue;
			-- "bodydesc":
				now bodydesc of player is Savedvalue;
			-- "bodytype":
				now bodytype of player is Savedvalue;
			-- "SleepRhythm":
				now SleepRhythm of player is numerical value of SavedValue;
			-- "scent":
				now scent of player is Savedvalue;
		if debugactive is 1:
			say "DEBUG -> Restoring [DataId] to a value of [SavedValue][line break]";
	let PlayerListRecover be indexed text;
	now PlayerListRecover is "[text of the File of PlayerListSave]";
	replace the text " " in PlayerListRecover with "`";
	replace the text " " in PlayerListRecover with "`";
	replace the text "}" in PlayerListRecover with " ";
	replace the text "-" in PlayerListRecover with "§";
	say "Recovering player data...";
	repeat with z running from 1 to number of words in PlayerListRecover:
		let CurrentWord be word number z in PlayerListRecover;
		replace the text "|" in CurrentWord with " ";
		let ListID be word number 1 in CurrentWord;
		replace the text "`" in ListID with " ";
		let SavedValue be word number 2 in CurrentWord;
		replace the text "`" in SavedValue with " ";
		if ListID is:
			-- "Vial":
				add SavedValue to vials of player;
			-- "Tape":
				add SavedValue to tapes of player;
			-- "Trait":
				add SavedValue to traits of player;
			-- "Feat":
				add SavedValue to feats of player;
			-- "OpenQuest":
				add SavedValue to OpenQuests of player;
			-- "CompletedQuest":
				add SavedValue to CompletedQuests of player;
			-- "EncounteredEnemy":
				add SavedValue to EncounteredEnemies of player;
			-- "BlockListEntry":
				add SavedValue to BlockList of player;

to EventTableRestore:
	read File of EventTableSave into the Table of GameEvents;
	if the number of rows in the Table of GameEvents is not the number of rows in the Table of GameEvents:
		say "ERROR! GameEvents and GameEventIDs table length mismatch!";
	else:
		sort the Table of GameEvents in name order;
		sort the Table of GameEventIDs in name order;
		repeat with N running from 1 to the number of rows in the Table of GameEvents:
			choose row N in the Table of GameEventIDs;
			let EventIdName be name entry;
			let EventObject be object entry;
			choose row N in the Table of GameEvents;
			if debugactive is 1:
				say "DEBUG -> [N]: Name: [name entry]; Status: [State entry]; sarea: [sarea entry]; Level: [level entry]; MinScore [MinScore entry][line break]";
			if EventIDname exactly matches the text name entry, case insensitively:
				if State entry is "resolved":
					now EventObject is resolved;
				else:
					now EventObject is not resolved;
				now sarea of EventObject is Sarea entry;
				now level of EventObject is Level entry;
				now minscore of EventObject is Minscore entry;
			else:
				say "ERROR! GameEventIDName: [EventIdName] mismatch with [name entry][line break]";

to NPCTableRestore:
	read File of NPCTableSave into the Table of NPCs;
	if the number of rows in the Table of NPCs is not the number of rows in the Table of NPCIDs:
		say "ERROR! Table of NPCs and Table of NPCIDs table length mismatch!";
	else:
		sort the Table of NPCs in name order;
		sort the Table of NPCIDs in name order;
		repeat with N running from 1 to the number of rows in the Table of NPCs:
			choose row N in the Table of NPCIDs;
			let NPCIDName be name entry;
			let NPCObject be object entry;
			if NPCIDName is "yourself", next; [the player gets skipped]
			choose row N in the Table of NPCs;
			let NPCLocationName be LocationName entry;
			if debugactive is 1:
				say "DEBUG -> [N]: Name: [name entry]; LocationName: [LocationName entry]; HP: [HP entry]; XP: [XP entry]; Level: [Level entry]; Dexterity: [Dexterity entry]; Thirst: [Thirst entry]; Lust: [Lust entry]; Loyalty: [Loyalty entry] Libido: [Libido entry] Weapon Damage: [Weapon Damage entry] Traits: [Traits entry][line break]";
			if NPCIDname exactly matches the text name entry, case insensitively:
				now HP of NPCObject is HP entry;
				now XP of NPCObject is XP entry;
				now Level of NPCObject is Level entry;
				now Dexterity of NPCObject is Dexterity entry;
				now Thirst of NPCObject is Thirst entry;
				now Lust of NPCObject is Lust entry;
				now Loyalty of NPCObject is Loyalty entry;
				now Libido of NPCObject is Libido entry;
				now Weapon Damage of NPCObject is Weapon Damage entry;
				now Traits of NPCObject is Traits entry;
				if NPCIDname is listed in PersonExclusionList:
					if debugactive is 1:
						say "DEBUG -> Room [NPCLocationName] does not exist. NPC moved to NPC Nexus.[line break]";
					move NPCObject to NPC Nexus;
				else if there is a name of NPCLocationName in the table of GameRoomIDs:
					let TargetRoom be the object corresponding to a name of NPCLocationName in the Table of GameRoomIDs;
					move NPCObject to TargetRoom;
				else:
					if debugactive is 1:
						say "DEBUG -> Room [NPCLocationName] does not exist. NPC moved to NPC Nexus.[line break]";
					move NPCObject to NPC Nexus;
			else:
				say "ERROR! NPCIDName: [NPCIdName] mismatch with [name entry][line break]";

to RoomTableRestore:
	read File of RoomTableSave into the Table of GameRooms;
	if the number of rows in the Table of GameRooms is not the number of rows in the Table of GameRoomIDs:
		say "ERROR! Table of GameRooms and Table of GameRoomIDs table length mismatch!";
	else:
		sort the Table of GameRooms in name order;
		sort the Table of GameRoomIDs in name order;
		repeat with N running from 1 to the number of rows in the Table of GameRooms:
			choose row N in the Table of GameRoomIDs;
			let GameRoomIDName be name entry;
			let GameRoomObject be object entry;
			choose row N in the Table of GameRooms;
			if debugactive is 1:
				say "DEBUG -> [N]: Name: [name entry]; Reachability: [Reachability entry]; ExplorationStatus: [ExplorationStatus entry]; TravelStatus: [TravelStatus entry]; HuntArea: [HuntArea entry]; RestSafety: [RestSafety entry][line break]";
			if GameRoomIDname exactly matches the text name entry, case insensitively:
				if Reachability entry is "Private":
					now GameRoomObject is private;
				else:
					now GameRoomObject is not private;
				if ExplorationStatus entry is "Known":
					now GameRoomObject is known;
				else:
					now GameRoomObject is not known;
				if TravelStatus entry is "Fasttravel":
					now GameRoomObject is fasttravel;
				else:
					now GameRoomObject is not fasttravel;
				now earea of GameRoomObject is HuntArea entry;
				if RestSafety entry is "Safe":
					now GameRoomObject is sleepsafe;
				else:
					now GameRoomObject is not sleepsafe;
			else:
				say "ERROR! GameRoomIDName: [GameRoomIdName] mismatch with [name entry][line break]";

to InventoryRestore:
	let InventoryRecover be indexed text;
	now InventoryRecover is "[text of the File of InventorySave]";
	replace the text " " in InventoryRecover with "`";
	replace the text " " in InventoryRecover with "`";
	replace the text "}" in InventoryRecover with " ";
	replace the text "-" in InventoryRecover with "§";
	replace the text "_" in InventoryRecover with "°";
	say "Recovering inventory...";
	repeat with z running from 1 to number of words in InventoryRecover:
		let CurrentWord be word number z in InventoryRecover;
		replace the text "|" in CurrentWord with " ";
		let ObjectId be word number 1 in CurrentWord;
		replace the text "`" in ObjectId with " ";
		replace the text "§" in ObjectId with "-";
		replace the text "°" in ObjectId with "_";
		let SavedValue be word number 2 in CurrentWord;
		replace the text "`" in SavedValue with " ";
		replace the text "§" in SavedValue with "-";
		replace the text "°" in SavedValue with "_";
		let NumericalValue be 0;
		now NumericalValue is numerical value of SavedValue;
		if debugactive is 1:
			say "DEBUG -> ObjectId: [ObjectId]; SavedValue: [SavedValue]; NumericalValue: [NumericalValue][line break]";
		if there is a name of ObjectId in the table of game objects:
			let InventoryObject be the object corresponding to a name of ObjectId in the table of game objects;
			if debugactive is 1:
				say "DEBUG -> Object found in table of game objects: [InventoryObject][line break]";
			now carried of InventoryObject is NumericalValue;
	if carried of nanite collector > 0:
		now nanitemeter is 2;
	if carried of ancient tome > 1:
		now carried of ancient tome is 1;

to StashRestore:
	let StoreRecover be indexed text;
	now StoreRecover is "[text of the File of StoreSave]";
	replace the text " " in StoreRecover with "`";
	replace the text " " in StoreRecover with "`";
	replace the text "}" in StoreRecover with " ";
	replace the text "-" in StoreRecover with "§";
	replace the text "_" in StoreRecover with "°";
	say "Recovering storage...";
	repeat with z running from 1 to number of words in StoreRecover:
		let CurrentWord be word number z in StoreRecover;
		replace the text "|" in CurrentWord with " ";
		let ObjectId be word number 1 in CurrentWord;
		replace the text "`" in ObjectId with " ";
		replace the text "§" in ObjectId with "-";
		replace the text "°" in ObjectId with "_";
		let SavedValue be word number 2 in CurrentWord;
		replace the text "`" in SavedValue with " ";
		replace the text "§" in SavedValue with "-";
		replace the text "°" in SavedValue with "_";
		let NumericalValue be 0;
		now NumericalValue is numerical value of SavedValue;
		if debugactive is 1:
			say "DEBUG -> ObjectId: [ObjectId]; SavedValue: [SavedValue]; NumericalValue: [NumericalValue][line break]";
		if there is a name of ObjectId in the table of game objects:
			let StorageObject be the object corresponding to a name of ObjectId in the table of game objects;
			if debugactive is 1:
				say "DEBUG -> Object found in table of game objects: [StorageObject][line break]";
			now stashed of StorageObject is NumericalValue;

RestoreEverything is an action applying to nothing.
understand "load game" as RestoreEverything.

Check RestoreEverything:
	if trixie is not visible, say "Your words have no effect. Maybe you should tell them to Trixie in the library instead of just talking to yourself." instead;

Carry out RestoreEverything:
	InventoryRestore;
	StashRestore;
	EventTableRestore;
	RoomTableRestore;
	NPCTableRestore;
	PlayerDataRestore;

Trixie is a person. Trixie is in Grey Abbey Library.

The scent of trixie is "Trixie smells of broken universes and rewritten fate. How anything can smell like that or how you can even know that smell disturbs you to your very core.".

The description of trixie is "[trixiedesc]".

to say trixiedesc:
	say "     Look, it's Trixie, the story fairy! She's about three inches tall, large for her particular breed. She has bright reddish-purple hair and smooth brown skin. Wielded in her right hand is a relatively large wand of old world oak with a great fancy bauble at the end that looks like a cutely renditioned skunk girl head, grinning at you no matter what angle you view it from. Trixie is well shaped, with, relative to the rest of her mass, B cup breasts and wide hips. Her feet are covered in shimmering gold sandals of sorts. Her chest is covered in a t-shirt that reads 'Support us at: https://www.patreon.com/FS'[line break]";
	say "     Trixie's got a button on her t-shirt that says 'Cheaters type [link]iwannacheat[end link]' on it, and a second one that says 'Check out the [link]artwork credits[end link]'. Hmmm.";
	say "     She's also found a ballcap on that says '[link]load game[end link] to activate your last save word. Using [link]saveword[end link] will replace it with a [bold type]new[roman type] magic word.' That's a lot to put on a ballcap that small, but for some reason you're able to read it all easily.";

The conversation of trixie is { "Hello. I will teach you a magic word. To use it, just stand in front of me after [bold type]starting a new game[roman type] and [link]load game[end link]. This will let you bend time and probability, returning you to the condition you were in when made the magic word... mostly. I will do my best, but my powers are not infinite. Also, I'm 'Out of Character', so you really don't see me. Confused yet? Good!" }.

To say magic word:
	if wrcursestatus is 5:
		wrcurserecede; [puts player back to normal form and restores proper stats for saving]
	say "[line break]'An image of your reality now has been stored in some otherworldly storage caches called [']Files['] Don't ask me to explain what those are. It's magic, you know!' she says in a teasing tone with a big grin while waggling her fingers. 'Just be sure to come here to [bold type]load game[roman type] to restore your most recent magic files. Talking to me will make a new magic files every time, so be careful not to overwrite your magic files until you're ready.'";
	SaveEverything;
	if wrcursestatus is 5:
		say "[line break]     Trixie waves her magic wand around and you flash between your normal form and your wereraptor form a few times so she can examine it before leaving you fully as a wereraptor once again.";
		wrcursesave; [puts player back to complete wereraptor form]

Story Skipper ends here.
