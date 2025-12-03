Version 1 of Story Skipper Loose Variables by Core Mechanics begins here.

The File of NumberSave (owned by another project) is called "FSNumberSave".
The File of TextSave (owned by another project) is called "FSTextSave".
The File of TruthSave (owned by another project) is called "FSTruthSave".
The File of IndexedTextSave (owned by another project) is called "FSIndexedTextSave".
The File of TextListSave (owned by another project) is called "FSTextListSave".
The File of NumberListSave (owned by another project) is called "FSNumberListSave".

CurrentVariableName is a text that varies.[@Tag:NotSaved]

VariableSaving is an action applying to nothing.

understand "StashVariables" as VariableSaving.

carry out VariableSaving:
	VariableSave;

[
SVText is an action applying to nothing.

understand "SVText" as SVText.

carry out SVText:
	VariableSaveA;

SVNumber is an action applying to nothing.

understand "SVNumber" as SVNumber.

carry out SVNumber:
	VariableSaveB;

SVTruth is an action applying to nothing.

understand "SVTruth" as SVTruth.

carry out SVTruth:
	VariableSaveC;
]

VariableRestore is an action applying to nothing.

understand "VariableRestoration" as VariableRestore.

carry out VariableRestore:
	VariableLoad;

to VariableSave:
	say "Saving various variables...";
	blank out the whole of Table of GameTexts; [empty out all old data]
	blank out the whole of Table of GameNumbers; [empty out all old data]
	blank out the whole of Table of GameTruths; [empty out all old data]
	blank out the whole of Table of GameIndexedTexts; [empty out all old data]
	blank out the whole of Table of GameTextLists; [empty out all old data]
	blank out the whole of Table of GameNumberLists; [empty out all old data]
	[use the tables to store object states for things not controlled by variables]
	if dispensed of Cola Vending Machine > 0: [storing mall vending machine uses]
		choose blank row in Table of GameNumbers;
		now NumberVarName entry is "ColaVendingMachine_dispensed";
		now NumberVarValue entry is dispensed of Cola Vending Machine;
	if Cola Vending Machine is not in Mall Foodcourt: [storing mall vending machine state]
		choose blank row in Table of GameTruths;
		now TruthVarName entry is "ColaVendingMachine_dead";
		now TruthVarValue entry is true;
	if library computer is on: [storing library PC activation]
		choose blank row in Table of GameTruths;
		now TruthVarName entry is "LibraryComputer_on";
		now TruthVarValue entry is true;
	[continue with storing supported variables]
	repeat through Table of GameVariableIDs:
		now CurrentVariableName is Name entry;
		[if debug is at level 10:
			say "Stashing variable [CurrentVariableName].";]
		if Type Entry is "text":
			TextVariableSave;
		else if Type Entry is "number":
			NumberVariableSave;
		else if Type Entry is "truth state":
			TruthVariableSave;
		else if Type Entry is "indexed text":
			IndexedTextVariableSave;
		else if Type Entry is "list of text":
			TextListVariableSave;
		else if Type Entry is "list of numbers":
			NumberListVariableSave;
	write File of TextSave from the Table of GameTexts; [freshly made table gets saved to file]
	if debug is at level 10:
		say "TextSave File Written.";
	blank out the whole of Table of GameTexts; [empty out all old data]
	write File of NumberSave from the Table of GameNumbers; [freshly made table gets saved to file]
	if debug is at level 10:
		say "NumberSave File Written.";
	blank out the whole of Table of GameNumbers; [empty out all old data]
	write File of TruthSave from the Table of GameTruths; [freshly made table gets saved to file]
	if debug is at level 10:
		say "TruthSave File Written.";
	blank out the whole of Table of GameTruths; [empty out all old data]
	write File of IndexedTextSave from the Table of GameIndexedTexts; [freshly made table gets saved to file]
	if debug is at level 10:
		say "IndexedTextSave File Written.";
	blank out the whole of Table of GameIndexedTexts; [empty out all old data]
	write File of TextListSave from the Table of GameTextLists; [freshly made table gets saved to file]
	if debug is at level 10:
		say "TextListSave File Written.";
	blank out the whole of Table of GameTextLists; [empty out all old data]
	write File of NumberListSave from the Table of GameNumberLists; [freshly made table gets saved to file]
	if debug is at level 10:
		say "NumberListSave File Written.";
	blank out the whole of Table of GameNumberLists; [empty out all old data]

to TextVariableSave:
	choose blank row in Table of GameTexts;
	now TextVarName entry is CurrentVariableName;
	if CurrentVariableName is:
		-- "PronounChoice":
			now TextVarValue entry is PronounChoice of Player;
		-- "PetMuttBreed":
			now TextVarValue entry is PetMuttBreed;
		-- "PetMuttName":
			now TextVarValue entry is PetMuttName;
		-- "PetMuttColor":
			now TextVarValue entry is PetMuttColor;
		-- "PetMuttDetailedlook":
			now TextVarValue entry is PetMuttDetailedlook;
		-- "battleground":
			now TextVarValue entry is battleground;
		-- "bcfinalchairform":
			now TextVarValue entry is bcfinalchairform;
		-- "bcfinalpillarform":
			now TextVarValue entry is bcfinalpillarform;
		-- "BlancheNonBinaryMomDad":
			now TextVarValue entry is BlancheNonBinaryMomDad;
		-- "BlancheNonBinaryMommyDaddy":
			now TextVarValue entry is BlancheNonBinaryMommyDaddy;
		-- "BlueDesignator":
			now TextVarValue entry is BlueDesignator;
		-- "bodyselector":
			now TextVarValue entry is bodyselector;
		-- "BodyShopGuaranteedBody":
			now TextVarValue entry is BodyShopGuaranteedBody;
		-- "BodyShopGuaranteedCrotch":
			now TextVarValue entry is BodyShopGuaranteedCrotch;
		-- "BodyShopGuaranteedFace":
			now TextVarValue entry is BodyShopGuaranteedFace;
		-- "BodyShopGuaranteedSkin":
			now TextVarValue entry is BodyShopGuaranteedSkin;
		-- "BodyShopGuaranteedTail":
			now TextVarValue entry is BodyShopGuaranteedTail;
		-- "ButterflyAttire":
			now TextVarValue entry is ButterflyAttire;
		-- "ButterflyBreastDesc":
			now TextVarValue entry is ButterflyBreastDesc;
		-- "ButterflyTummy":
			now TextVarValue entry is ButterflyTummy;
		-- "CorbinImpregnatingCock":
			now TextVarValue entry is CorbinImpregnatingCock;
		-- "descr":
			now TextVarValue entry is descr;
		-- "DoranPlayerRegard":
			now TextVarValue entry is DoranPlayerRegard;
		-- "ElijahChar-A":
			now TextVarValue entry is ElijahChar-A;
		-- "ElijahChar-B":
			now TextVarValue entry is ElijahChar-B;
		-- "ElijahChar-C":
			now TextVarValue entry is ElijahChar-C;
		-- "ElijahChar-D":
			now TextVarValue entry is ElijahChar-D;
		-- "ElijahChar-E":
			now TextVarValue entry is ElijahChar-E;
		-- "ElijahChar-F":
			now TextVarValue entry is ElijahChar-F;
		-- "ElijahChar-G":
			now TextVarValue entry is ElijahChar-G;
		-- "ElijahChar-H":
			now TextVarValue entry is ElijahChar-H;
		-- "ElijahChar-I":
			now TextVarValue entry is ElijahChar-I;
		-- "ElijahChar-J":
			now TextVarValue entry is ElijahChar-J;
		-- "ElijahChar-K":
			now TextVarValue entry is ElijahChar-K;
		-- "ElijahChar-L":
			now TextVarValue entry is ElijahChar-L;
		-- "ElijahChar-M":
			now TextVarValue entry is ElijahChar-M;
		-- "EricCurrentBabyDaddy":
			now TextVarValue entry is EricCurrentBabyDaddy;
		-- "FeralMuttCurrentBreed":
			now TextVarValue entry is FeralMuttCurrentBreed;
		-- "FeralMuttDetailedLook":
			now TextVarValue entry is FeralMuttDetailedLook;
		-- "FeralMuttFurColor":
			now TextVarValue entry is FeralMuttFurColor;
		-- "freefeatfun":
			now TextVarValue entry is freefeatfun;
		-- "freefeatgeneral":
			now TextVarValue entry is freefeatgeneral;
		-- "furdata":
			now TextVarValue entry is furdata;
		-- "gche":
			now TextVarValue entry is gche;
		-- "gchim":
			now TextVarValue entry is gchim;
		-- "gchis":
			now TextVarValue entry is gchis;
		-- "gchishers":
			now TextVarValue entry is gchishers;
		-- "gdragon":
			now TextVarValue entry is gdragon;
		-- "ghe":
			now TextVarValue entry is ghe;
		-- "ghim":
			now TextVarValue entry is ghim;
		-- "ghis":
			now TextVarValue entry is ghis;
		-- "ghishers":
			now TextVarValue entry is ghishers;
		-- "gmasculine":
			now TextVarValue entry is gmasculine;
		-- "hdformname":
			now TextVarValue entry is hdformname;
		-- "headadjdata":
			now TextVarValue entry is headadjdata;
		-- "HighestPlayerStat":
			now TextVarValue entry is HighestPlayerStat;
		-- "Hope-BornDragonName":
			now TextVarValue entry is Hope-BornDragonName;
		-- "horndata":
			now TextVarValue entry is horndata;
		-- "JenniferFirstKidSpecialStat":
			now TextVarValue entry is JenniferFirstKidSpecialStat;
		-- "keychar":
			now TextVarValue entry is keychar;
		-- "LarissaBody":
			now TextVarValue entry is LarissaBody;
		-- "LarissaBodyDesc":
			now TextVarValue entry is LarissaBodyDesc;
		-- "LarissaBodyType":
			now TextVarValue entry is LarissaBodyType;
		-- "LarissaCock":
			now TextVarValue entry is LarissaCock;
		-- "LarissaFace":
			now TextVarValue entry is LarissaFace;
		-- "LarissaFootForm":
			now TextVarValue entry is LarissaFootForm;
		-- "LarissaForm":
			now TextVarValue entry is LarissaForm;
		-- "LarissaGeneralLook":
			now TextVarValue entry is LarissaGeneralLook;
		-- "LarissaHandForm":
			now TextVarValue entry is LarissaHandForm;
		-- "LarissaInfName":
			now TextVarValue entry is LarissaInfName;
		-- "LarissaMouth":
			now TextVarValue entry is LarissaMouth;
		-- "LarissaSkin":
			now TextVarValue entry is LarissaSkin;
		-- "LarissaTail":
			now TextVarValue entry is LarissaTail;
		-- "LarissaTFText":
			now TextVarValue entry is LarissaTFText;
		-- "Lusting":
			now TextVarValue entry is Lusting;
		-- "musicmessage":
			now TextVarValue entry is musicmessage;
		-- "NadiaChar-A":
			now TextVarValue entry is NadiaChar-A;
		-- "NadiaChar-B":
			now TextVarValue entry is NadiaChar-B;
		-- "NadiaChar-C":
			now TextVarValue entry is NadiaChar-C;
		-- "NadiaChar-D":
			now TextVarValue entry is NadiaChar-D;
		-- "NadiaChar-E":
			now TextVarValue entry is NadiaChar-E;
		-- "NadiaChar-F":
			now TextVarValue entry is NadiaChar-F;
		-- "NadiaChar-G":
			now TextVarValue entry is NadiaChar-G;
		-- "NadiaChar-H":
			now TextVarValue entry is NadiaChar-H;
		-- "NadiaChar-I":
			now TextVarValue entry is NadiaChar-I;
		-- "NadiaChar-J":
			now TextVarValue entry is NadiaChar-J;
		-- "NadiaChar-K":
			now TextVarValue entry is NadiaChar-K;
		-- "NadiaChar-L":
			now TextVarValue entry is NadiaChar-L;
		-- "NadiaChar-M":
			now TextVarValue entry is NadiaChar-M;
		-- "pfpbootymark":
			now TextVarValue entry is pfpbootymark;
		-- "pfpcock":
			now TextVarValue entry is pfpcock;
		-- "pfphair":
			now TextVarValue entry is pfphair;
		-- "pfpskin":
			now TextVarValue entry is pfpskin;
		-- "ppcolor":
			now TextVarValue entry is ppcolor;
		-- "PlayerClass":
			now TextVarValue entry is PlayerClass;
		-- "PlayerName":
			now TextVarValue entry is Name of Player;
		-- "sangr":
			now TextVarValue entry is sangr;
		-- "Scenario":
			now TextVarValue entry is Scenario;
		-- "sh-descr":
			now TextVarValue entry is sh-descr;
		-- "siamesegender":
			now TextVarValue entry is siamesegender;
		-- "slutname":
			now TextVarValue entry is slutname;
		-- "StellaNPCInt":
			now TextVarValue entry is StellaNPCInt;
		-- "ubpreg":
			now TextVarValue entry is ubpreg;
		-- "VikingKidShape":
			now TextVarValue entry is VikingKidShape;
		-- "wolvloc":
			now TextVarValue entry is wolvloc;
		-- "wrbody":
			now TextVarValue entry is wrbody;
		-- "wrbodydesc":
			now TextVarValue entry is wrbodydesc;
		-- "wrBodyName":
			now TextVarValue entry is wrBodyName;
		-- "wrbodytype":
			now TextVarValue entry is wrbodytype;
		-- "wrcock":
			now TextVarValue entry is wrcock;
		-- "wrCockName":
			now TextVarValue entry is wrCockName;
		-- "wrface":
			now TextVarValue entry is wrface;
		-- "wrFaceName":
			now TextVarValue entry is wrFaceName;
		-- "wrskin":
			now TextVarValue entry is wrskin;
		-- "wrSkinName":
			now TextVarValue entry is wrSkinName;
		-- "wrtail":
			now TextVarValue entry is wrtail;
		-- "wrTailName":
			now TextVarValue entry is wrTailName;

to NumberVariableSave:
	choose blank row in Table of GameNumbers;
	now NumberVarName entry is CurrentVariableName;
	if CurrentVariableName is:
		-- "featgained":
			now NumberVarValue entry is featgained of Player;
		-- "absorb":
			now NumberVarValue entry is absorb;
		-- "addedlibido":
			now NumberVarValue entry is addedlibido;
		-- "afsmread":
			now NumberVarValue entry is afsmread;
		-- "aidKenaz":
			now NumberVarValue entry is aidKenaz;
		-- "AlanaRelationship":
			now NumberVarValue entry is AlanaRelationship;
		-- "AlexandraAmySex":
			now NumberVarValue entry is AlexandraAmySex;
		-- "AlexandraBackstory":
			now NumberVarValue entry is AlexandraBackstory;
		-- "AlexandraBrutusInteraction":
			now NumberVarValue entry is AlexandraBrutusInteraction;
		-- "AlexandraBrutusPups":
			now NumberVarValue entry is AlexandraBrutusPups;
		-- "AlexandraKarelPups":
			now NumberVarValue entry is AlexandraKarelPups;
		-- "AlexandraIsaacPups":
			now NumberVarValue entry is AlexandraIsaacPups;
		-- "AlexandraFarmhandPups":
			now NumberVarValue entry is AlexandraFarmhandPups;
		-- "AlexandraNelsonPups":
			now NumberVarValue entry is AlexandraNelsonPups;
		-- "AlexandraCarlInteraction":
			now NumberVarValue entry is AlexandraCarlInteraction;
		-- "AlexandraCarlPups":
			now NumberVarValue entry is AlexandraCarlPups;
		-- "AlexandraCreampieCount":
			now NumberVarValue entry is AlexandraCreampieCount;
		-- "AlexandraEricInteraction":
			now NumberVarValue entry is AlexandraEricInteraction;
		-- "AlexandraFangPups":
			now NumberVarValue entry is AlexandraFangPups;
		-- "AlexandraGrowingPups":
			now NumberVarValue entry is AlexandraGrowingPups;
		-- "AlexandraKorvinInteraction":
			now NumberVarValue entry is AlexandraKorvinInteraction;
		-- "AlexandraKorvinPups":
			now NumberVarValue entry is AlexandraKorvinPups;
		-- "AlexandraPlayerPups":
			now NumberVarValue entry is AlexandraPlayerPups;
		-- "AlexandraPregCount":
			now NumberVarValue entry is AlexandraPregCount;
		-- "AlexandraPupDaddy":
			now NumberVarValue entry is AlexandraPupDaddy;
		-- "AlexandraSarahInteraction":
			now NumberVarValue entry is AlexandraSarahInteraction;
		-- "alexbrunch":
			now NumberVarValue entry is alexbrunch;
		-- "alexdiego":
			now NumberVarValue entry is alexdiego;
		-- "alexleeinfo":
			now NumberVarValue entry is alexleeinfo;
		-- "AlexProgress":
			now NumberVarValue entry is AlexProgress;
		-- "AlexTalk":
			now NumberVarValue entry is AlexTalk;
		-- "Alpha Wolfdefeat":
			now NumberVarValue entry is Alpha Wolfdefeat;
		-- "Alphahuskypet":
			now NumberVarValue entry is Alphahuskypet;
		-- "alphawolfbeaten":
			now NumberVarValue entry is alphawolfbeaten;
		-- "altattackmade":
			now NumberVarValue entry is altattackmade;
		-- "AmirRelationship":
			now NumberVarValue entry is AmirRelationship;
		-- "AmmyAffection":
			now NumberVarValue entry is AmmyAffection;
		-- "AmmyLastEvent":
			now NumberVarValue entry is AmmyLastEvent;
		-- "AmuranAwoken":
			now NumberVarValue entry is AmuranAwoken;
		-- "AmyMaturityCounter":
			now NumberVarValue entry is AmyMaturityCounter;
		-- "AmyNewPuppies":
			now NumberVarValue entry is AmyNewPuppies;
		-- "AmyShyness":
			now NumberVarValue entry is AmyShyness;
		-- "anallevel":
			now NumberVarValue entry is anallevel;
		-- "AnatomyCourse":
			now NumberVarValue entry is AnatomyCourse;
		-- "AngieAroused":
			now NumberVarValue entry is AngieAroused;
		-- "AngieHappy":
			now NumberVarValue entry is AngieHappy;
		-- "AngieTalk":
			now NumberVarValue entry is AngieTalk;
		-- "AngryHorguth":
			now NumberVarValue entry is AngryHorguth;
		-- "anubisrequest":
			now NumberVarValue entry is anubisrequest;
		-- "AptAid":
			now NumberVarValue entry is AptAid;
		-- "ArcherFucked":
			now NumberVarValue entry is ArcherFucked;
		-- "ArenaBattleCounter":
			now NumberVarValue entry is ArenaBattleCounter;
		-- "AresDannyEncounters":
			now NumberVarValue entry is AresDannyEncounters;
		-- "artattempt":
			now NumberVarValue entry is artattempt;
		-- "auto2entry":
			now NumberVarValue entry is auto2entry;
		-- "autoattackmode":
			now NumberVarValue entry is autoattackmode;
		-- "autogender":
			now NumberVarValue entry is autogender;
		-- "automaticcombatcheck":
			now NumberVarValue entry is automaticcombatcheck;
		-- "automatonending":
			now NumberVarValue entry is automatonending;
		-- "avoidance":
			now NumberVarValue entry is avoidance;
		-- "Awesome_boredom":
			now NumberVarValue entry is Awesome_boredom;
		-- "Awesome_counter":
			now NumberVarValue entry is Awesome_counter;
		-- "Awesome_forcesex":
			now NumberVarValue entry is Awesome_forcesex;
		-- "Awesome_noreward":
			now NumberVarValue entry is Awesome_noreward;
		-- "Awesome_sex":
			now NumberVarValue entry is Awesome_sex;
		-- "AxelLastBJ":
			now NumberVarValue entry is AxelLastBJ;
		-- "AxelRelationship":
			now NumberVarValue entry is AxelRelationship;
		-- "AzraelRelationship":
			now NumberVarValue entry is AzraelRelationship;
		-- "balloversize":
			now NumberVarValue entry is balloversize;
		-- "bananapeeled":
			now NumberVarValue entry is bananapeeled;
		-- "bargainbinusagetotal":
			now NumberVarValue entry is bargainbinusagetotal;
		-- "BarnabasRelationship":
			now NumberVarValue entry is BarnabasRelationship;
		-- "BarryFurSuspicion":
			now NumberVarValue entry is BarryFurSuspicion;
		-- "BarryMotive":
			now NumberVarValue entry is BarryMotive;
		-- "BastetApproval":
			now NumberVarValue entry is BastetApproval;
		-- "BastetSexBattleCount":
			now NumberVarValue entry is BastetSexBattleCount;
		-- "battleitem":
			now NumberVarValue entry is battleitem;
		-- "bclatearrival":
			now NumberVarValue entry is bclatearrival;
		-- "bcuntethered":
			now NumberVarValue entry is bcuntethered;
		-- "beatgrnymph":
			now NumberVarValue entry is beatgrnymph;
		-- "beatsatyr":
			now NumberVarValue entry is beatsatyr;
		-- "beatSatyress":
			now NumberVarValue entry is beatSatyress;
		-- "BeforeCombat":
			now NumberVarValue entry is BeforeCombat;
		-- "BehaviorandCustoms":
			now NumberVarValue entry is BehaviorandCustoms;
		-- "Bevkitty":
			now NumberVarValue entry is Bevkitty;
		-- "Bevtalk":
			now NumberVarValue entry is Bevtalk;
		-- "bikedest":
			now NumberVarValue entry is bikedest;
		-- "BjornRelationship":
			now NumberVarValue entry is BjornRelationship;
		-- "BlissDrugTrip":
			now NumberVarValue entry is BlissDrugTrip;
		-- "blotintense":
			now NumberVarValue entry is blotintense;
		-- "bluechaffrape":
			now NumberVarValue entry is bluechaffrape;
		-- "boatfound":
			now NumberVarValue entry is boatfound;
		-- "BodyRelationship":
			now NumberVarValue entry is BodyRelationship;
		-- "BoghrimHuntingTrip":
			now NumberVarValue entry is BoghrimHuntingTrip;
		-- "BoghrimMet":
			now NumberVarValue entry is BoghrimMet;
		-- "bonelust":
			now NumberVarValue entry is bonelust;
		-- "bonusattack":
			now NumberVarValue entry is bonusattack;
		-- "bookfound":
			now NumberVarValue entry is bookfound;
		-- "boosterfeats":
			now NumberVarValue entry is boosterfeats;
		-- "bopdefeated":
			now NumberVarValue entry is bopdefeated;
		-- "bopsongcount":
			now NumberVarValue entry is bopsongcount;
		-- "borisfucked":
			now NumberVarValue entry is borisfucked;
		-- "Borismate":
			now NumberVarValue entry is Borismate;
		-- "Borisquest":
			now NumberVarValue entry is Borisquest;
		-- "boristalk":
			now NumberVarValue entry is boristalk;
		-- "boundcounter":
			now NumberVarValue entry is boundcounter;
		-- "boundmod":
			now NumberVarValue entry is boundmod;
		-- "boundmod2":
			now NumberVarValue entry is boundmod2;
		-- "boundsegment":
			now NumberVarValue entry is boundsegment;
		-- "Bovine_type":
			now NumberVarValue entry is Bovine_type;
		-- "bradfordbounty":
			now NumberVarValue entry is bradfordbounty;
		-- "bradfordBountyNum":
			now NumberVarValue entry is bradfordBountyNum;
		-- "bradfordstory":
			now NumberVarValue entry is bradfordstory;
		-- "BrennanRelationship":
			now NumberVarValue entry is BrennanRelationship;
		-- "BrianOral":
			now NumberVarValue entry is BrianOral;
		-- "BrianRelationship":
			now NumberVarValue entry is BrianRelationship;
		-- "BrianVisit":
			now NumberVarValue entry is BrianVisit;
		-- "BridgetPowellEventVar":
			now NumberVarValue entry is BridgetPowellEventVar;
		-- "brookeanal":
			now NumberVarValue entry is brookeanal;
		-- "BrutusAmySex":
			now NumberVarValue entry is BrutusAmySex;
		-- "BrutusEscalationTimer":
			now NumberVarValue entry is BrutusEscalationTimer;
		-- "BryceFucked":
			now NumberVarValue entry is BryceFucked;
		-- "BryonyBearFuckWatched":
			now NumberVarValue entry is BryonyBearFuckWatched;
		-- "bsextimer":
			now NumberVarValue entry is bsextimer;
		-- "BullMaster":
			now NumberVarValue entry is BullMaster;
		-- "BullTerrierSiblingsVar":
			now NumberVarValue entry is BullTerrierSiblingsVar;
		-- "bunnyjocknosex":
			now NumberVarValue entry is bunnyjocknosex;
		-- "ButterflyBabyGestation":
			now NumberVarValue entry is ButterflyBabyGestation;
		-- "ButterflyEncounters":
			now NumberVarValue entry is ButterflyEncounters;
		-- "ButterflyRaped":
			now NumberVarValue entry is ButterflyRaped;
		-- "ByronRelationship":
			now NumberVarValue entry is ByronRelationship;
		-- "CampBravoWomenAllowed":
			now NumberVarValue entry is CampBravoWomenAllowed;
		-- "CampusCoupleRelationship":
			now NumberVarValue entry is CampusCoupleRelationship;
		-- "CampusLoversProgressTurn":
			now NumberVarValue entry is CampusLoversProgressTurn;
		-- "CampusLoversTrackingVariable":
			now NumberVarValue entry is CampusLoversTrackingVariable;
		-- "candytalk":
			now NumberVarValue entry is candytalk;
		-- "CandyUrikInteraction":
			now NumberVarValue entry is CandyUrikInteraction;
		-- "CaneFurSuspicion":
			now NumberVarValue entry is CaneFurSuspicion;
		-- "CaneMotive":
			now NumberVarValue entry is CaneMotive;
		-- "cannonprep":
			now NumberVarValue entry is cannonprep;
		-- "CaptiveBreederEncounter":
			now NumberVarValue entry is CaptiveBreederEncounter;
		-- "CarlAmySex":
			now NumberVarValue entry is CarlAmySex;
		-- "CarlEricaInteraction":
			now NumberVarValue entry is CarlEricaInteraction;
		-- "CarlEricInteraction":
			now NumberVarValue entry is CarlEricInteraction;
		-- "CarlLibraryEntry":
			now NumberVarValue entry is CarlLibraryEntry;
		-- "CarlSarahInteraction":
			now NumberVarValue entry is CarlSarahInteraction;
		-- "CarlSarahSex":
			now NumberVarValue entry is CarlSarahSex;
		-- "CassandraFucked":
			now NumberVarValue entry is CassandraFucked;
		-- "catadiff":
			now NumberVarValue entry is catadiff;
		-- "catafire":
			now NumberVarValue entry is catafire;
		-- "catdogstate":
			now NumberVarValue entry is catdogstate;
		-- "catnum":
			now NumberVarValue entry is catnum;
		-- "CatsVSDogsCounter":
			now NumberVarValue entry is CatsVSDogsCounter;
		-- "cboyEricSarahInteraction":
			now NumberVarValue entry is cboyEricSarahInteraction;
		-- "cclosscount":
			now NumberVarValue entry is cclosscount;
		-- "ccmiss":
			now NumberVarValue entry is ccmiss;
		-- "CellDoorStatus":
			now NumberVarValue entry is CellDoorStatus;
		-- "CellFourVisits":
			now NumberVarValue entry is CellFourVisits;
		-- "centaurmate":
			now NumberVarValue entry is centaurmate;
		-- "CenterVisits":
			now NumberVarValue entry is CenterVisits;
		-- "centrallib":
			now NumberVarValue entry is centrallib;
		-- "cerberusarousal":
			now NumberVarValue entry is cerberusarousal;
		-- "cerbmaulcount":
			now NumberVarValue entry is cerbmaulcount;
		-- "cfgmode":
			now NumberVarValue entry is cfgmode;
		-- "charcounter":
			now NumberVarValue entry is charcounter;
		-- "chargeup":
			now NumberVarValue entry is chargeup;
		-- "ChaseMarking":
			now NumberVarValue entry is ChaseMarking;
		-- "ChaseOffspring":
			now NumberVarValue entry is ChaseOffspring;
		-- "ChasePetplay":
			now NumberVarValue entry is ChasePetplay;
		-- "ChasePetplayTraining":
			now NumberVarValue entry is ChasePetplayTraining;
		-- "ChaseSexCounter":
			now NumberVarValue entry is ChaseSexCounter;
		-- "CheerleaderFirstEncounter":
			now NumberVarValue entry is CheerleaderFirstEncounter;
		-- "Cheesecakemode":
			now NumberVarValue entry is Cheesecakemode;
		-- "cheetahmate":
			now NumberVarValue entry is cheetahmate;
		-- "ChrisPlayerOffspring":
			now NumberVarValue entry is ChrisPlayerOffspring;
		-- "Christyquest":
			now NumberVarValue entry is Christyquest;
		-- "churchenter":
			now NumberVarValue entry is churchenter;
		-- "clearnomore":
			now NumberVarValue entry is clearnomore;
		-- "CliveFuck":
			now NumberVarValue entry is CliveFuck;
		-- "CloudKnowledge":
			now NumberVarValue entry is CloudKnowledge;
		-- "CocoRelationship":
			now NumberVarValue entry is CocoRelationship;
		-- "ColleenAlpha":
			now NumberVarValue entry is ColleenAlpha;
		-- "ColleenCollared":
			now NumberVarValue entry is ColleenCollared;
		-- "ColleenFound":
			now NumberVarValue entry is ColleenFound;
		-- "ColleenSarahInteraction":
			now NumberVarValue entry is ColleenSarahInteraction;
		-- "ColleenSlut":
			now NumberVarValue entry is ColleenSlut;
		-- "ColleenSpray":
			now NumberVarValue entry is ColleenSpray;
		-- "ColleenTalk":
			now NumberVarValue entry is ColleenTalk;
		-- "CollegeLibraryBrutusEncounter":
			now NumberVarValue entry is CollegeLibraryBrutusEncounter;
		-- "CollegeLibraryRyouseiEncounter":
			now NumberVarValue entry is CollegeLibraryRyouseiEncounter;
		-- "colliedefeat":
			now NumberVarValue entry is colliedefeat;
		-- "combat abort":
			now NumberVarValue entry is combat abort;
		-- "ConclaveKnowledge":
			now NumberVarValue entry is ConclaveKnowledge;
		-- "ConfSvenEricInteraction":
			now NumberVarValue entry is ConfSvenEricInteraction;
		-- "consortinsight":
			now NumberVarValue entry is consortinsight;
		-- "ContainmentBarrierEncounters":
			now NumberVarValue entry is ContainmentBarrierEncounters;
		-- "coonsex":
			now NumberVarValue entry is coonsex;
		-- "coonstatus":
			now NumberVarValue entry is coonstatus;
		-- "CorbinKidCounter":
			now NumberVarValue entry is CorbinKidCounter;
		-- "CorbinPregCounter":
			now NumberVarValue entry is CorbinPregCounter;
		-- "CorbinPregnancy":
			now NumberVarValue entry is CorbinPregnancy;
		-- "corrvicchange1":
			now NumberVarValue entry is corrvicchange1;
		-- "corrvicchange2":
			now NumberVarValue entry is corrvicchange2;
		-- "CouraFriendDevelopments":
			now NumberVarValue entry is CouraFriendDevelopments;
		-- "CouraVirginity":
			now NumberVarValue entry is CouraVirginity;
		-- "CowBully":
			now NumberVarValue entry is CowBully;
		-- "CoyoteTricks":
			now NumberVarValue entry is CoyoteTricks;
		-- "CuckooWatched":
			now NumberVarValue entry is CuckooWatched;
		-- "cumgirlfed":
			now NumberVarValue entry is cumgirlfed;
		-- "cuntsmall":
			now NumberVarValue entry is cuntsmall;
		-- "daisyimpreg":
			now NumberVarValue entry is daisyimpreg;
		-- "Daisytalk":
			now NumberVarValue entry is Daisytalk;
		-- "Dam":
			now NumberVarValue entry is Dam;
		-- "damagein":
			now NumberVarValue entry is damagein;
		-- "damageout":
			now NumberVarValue entry is damageout;
		-- "DariusLostItems":
			now NumberVarValue entry is DariusLostItems;
		-- "DateDay":
			now NumberVarValue entry is DateDay;
		-- "DateMonth":
			now NumberVarValue entry is DateMonth;
		-- "DateYear":
			now NumberVarValue entry is DateYear;
		-- "DavidBrutusMarcVar":
			now NumberVarValue entry is DavidBrutusMarcVar;
		-- "DavidBunkerEntry":
			now NumberVarValue entry is DavidBunkerEntry;
		-- "DavidSarahInteraction":
			now NumberVarValue entry is DavidSarahInteraction;
		-- "DBCaptureQuestVar":
			now NumberVarValue entry is DBCaptureQuestVar;
		-- "Delaymilcount":
			now NumberVarValue entry is Delaymilcount;
		-- "demandIndex":
			now NumberVarValue entry is demandIndex;
		-- "DemonBruteStatus":
			now NumberVarValue entry is DemonBruteStatus;
		-- "DemonFoxInteractions":
			now NumberVarValue entry is DemonFoxInteractions;
		-- "DemonFoxStatus":
			now NumberVarValue entry is DemonFoxStatus;
		-- "dentedbikecount":
			now NumberVarValue entry is dentedbikecount;
		-- "didsubmit":
			now NumberVarValue entry is didsubmit;
		-- "Diegobitched":
			now NumberVarValue entry is Diegobitched;
		-- "DiegoButtSlut":
			now NumberVarValue entry is DiegoButtSlut;
		-- "Diegochanged":
			now NumberVarValue entry is Diegochanged;
		-- "Diegofucked":
			now NumberVarValue entry is Diegofucked;
		-- "dinonest":
			now NumberVarValue entry is dinonest;
		-- "dnfightresult":
			now NumberVarValue entry is dnfightresult;
		-- "dobielibido":
			now NumberVarValue entry is dobielibido;
		-- "dobieresist":
			now NumberVarValue entry is dobieresist;
		-- "DoctorMouseProgress":
			now NumberVarValue entry is DoctorMouseProgress;
		-- "dogfoodcount":
			now NumberVarValue entry is dogfoodcount;
		-- "doggyboned":
			now NumberVarValue entry is doggyboned;
		-- "doggyness":
			now NumberVarValue entry is doggyness;
		-- "dolinfloss":
			now NumberVarValue entry is dolinfloss;
		-- "dollfound":
			now NumberVarValue entry is dollfound;
		-- "dolphinbundle":
			now NumberVarValue entry is dolphinbundle;
		-- "dolphinconsent":
			now NumberVarValue entry is dolphinconsent;
		-- "dolphindefeat":
			now NumberVarValue entry is dolphindefeat;
		-- "dolphinmode":
			now NumberVarValue entry is dolphinmode;
		-- "dolphintricked":
			now NumberVarValue entry is dolphintricked;
		-- "dolphinwantmate":
			now NumberVarValue entry is dolphinwantmate;
		-- "donkeywomanbeaten":
			now NumberVarValue entry is donkeywomanbeaten;
		-- "donkeywomanfucked":
			now NumberVarValue entry is donkeywomanfucked;
		-- "DoranAutofireIntensity":
			now NumberVarValue entry is DoranAutofireIntensity;
		-- "DoranBallModStatus":
			now NumberVarValue entry is DoranBallModStatus;
		-- "DoranDiscussion_var1":
			now NumberVarValue entry is DoranDiscussion_var1;
		-- "DoranDiscussionExit":
			now NumberVarValue entry is DoranDiscussionExit;
		-- "DoranDiscussionExit2":
			now NumberVarValue entry is DoranDiscussionExit2;
		-- "DoranDiscussionProgress":
			now NumberVarValue entry is DoranDiscussionProgress;
		-- "DoranDominanceTopic":
			now NumberVarValue entry is DoranDominanceTopic;
		-- "DoranFoodTimer":
			now NumberVarValue entry is DoranFoodTimer;
		-- "DoranFoodType":
			now NumberVarValue entry is DoranFoodType;
		-- "DoranGenderTopic":
			now NumberVarValue entry is DoranGenderTopic;
		-- "DoranLastBallMod":
			now NumberVarValue entry is DoranLastBallMod;
		-- "DoranLastDiscussion":
			now NumberVarValue entry is DoranLastDiscussion;
		-- "DoranLastInternalMod":
			now NumberVarValue entry is DoranLastInternalMod;
		-- "DoranLastTitMod":
			now NumberVarValue entry is DoranLastTitMod;
		-- "DoranModificationDiscussed":
			now NumberVarValue entry is DoranModificationDiscussed;
		-- "DoranNeutralRole":
			now NumberVarValue entry is DoranNeutralRole;
		-- "DoranRimmingStatus":
			now NumberVarValue entry is DoranRimmingStatus;
		-- "DoranRole":
			now NumberVarValue entry is DoranRole;
		-- "DoranRoleIntensity":
			now NumberVarValue entry is DoranRoleIntensity;
		-- "DoranRoleplayInSession":
			now NumberVarValue entry is DoranRoleplayInSession;
		-- "DoranRP_var1":
			now NumberVarValue entry is DoranRP_var1;
		-- "DoranRP_var2":
			now NumberVarValue entry is DoranRP_var2;
		-- "DoranRP_var3":
			now NumberVarValue entry is DoranRP_var3;
		-- "DoranRP_var4":
			now NumberVarValue entry is DoranRP_var4;
		-- "DoranRPRevealRegard":
			now NumberVarValue entry is DoranRPRevealRegard;
		-- "DoranSelfBlueballing":
			now NumberVarValue entry is DoranSelfBlueballing;
		-- "DoranTitModStatus":
			now NumberVarValue entry is DoranTitModStatus;
		-- "DoranVoreDischarge":
			now NumberVarValue entry is DoranVoreDischarge;
		-- "DoranVoreDuration":
			now NumberVarValue entry is DoranVoreDuration;
		-- "DoranVoreStatus":
			now NumberVarValue entry is DoranVoreStatus;
		-- "dragonessfuck":
			now NumberVarValue entry is dragonessfuck;
		-- "dragontaurcatch":
			now NumberVarValue entry is dragontaurcatch;
		-- "dragontype":
			now NumberVarValue entry is dragontype;
		-- "Drinkserved":
			now NumberVarValue entry is Drinkserved;
		-- "dronevict":
			now NumberVarValue entry is dronevict;
		-- "DVtaurcatch":
			now NumberVarValue entry is DVtaurcatch;
		-- "DylanFucked":
			now NumberVarValue entry is DylanFucked;
		-- "DylanSucked":
			now NumberVarValue entry is DylanSucked;
		-- "eagledefeatnum":
			now NumberVarValue entry is eagledefeatnum;
		-- "ebgatorcarrying":
			now NumberVarValue entry is ebgatorcarrying;
		-- "ebgatord":
			now NumberVarValue entry is ebgatord;
		-- "ebgatorhijack":
			now NumberVarValue entry is ebgatorhijack;
		-- "ebheat_egg":
			now NumberVarValue entry is ebheat_egg;
		-- "ebwhelphijack":
			now NumberVarValue entry is ebwhelphijack;
		-- "ec_fullcount":
			now NumberVarValue entry is ec_fullcount;
		-- "eggplanted":
			now NumberVarValue entry is eggplanted;
		-- "EgyptianRiddle":
			now NumberVarValue entry is EgyptianRiddle;
		-- "ElainePregnant":
			now NumberVarValue entry is ElainePregnant;
		-- "Electricprodstatus":
			now NumberVarValue entry is Electricprodstatus;
		-- "ElfEncounters":
			now NumberVarValue entry is ElfEncounters;
		-- "ElfRimming":
			now NumberVarValue entry is ElfRimming;
		-- "emap":
			now NumberVarValue entry is emap;
		-- "embervicsex":
			now NumberVarValue entry is embervicsex;
		-- "EnrollmentTokens":
			now NumberVarValue entry is EnrollmentTokens;
		-- "eprecharge":
			now NumberVarValue entry is eprecharge;
		-- "eptarget":
			now NumberVarValue entry is eptarget;
		-- "equinoiddefeat":
			now NumberVarValue entry is equinoiddefeat;
		-- "equinoidstatus":
			now NumberVarValue entry is equinoidstatus;
		-- "EricAnalCounter":
			now NumberVarValue entry is EricAnalCounter;
		-- "EricFleeingCountdown":
			now NumberVarValue entry is EricFleeingCountdown;
		-- "EricOffspringCount":
			now NumberVarValue entry is EricOffspringCount;
		-- "EricOrcPillMpreg":
			now NumberVarValue entry is EricOrcPillMpreg;
		-- "EricPregCount":
			now NumberVarValue entry is EricPregCount;
		-- "EricPregTimer":
			now NumberVarValue entry is EricPregTimer;
		-- "EricSarahInteraction":
			now NumberVarValue entry is EricSarahInteraction;
		-- "EricVirginityTaken":
			now NumberVarValue entry is EricVirginityTaken;
		-- "erminecolor":
			now NumberVarValue entry is erminecolor;
		-- "Fancyaroused":
			now NumberVarValue entry is Fancyaroused;
		-- "fancyffcount":
			now NumberVarValue entry is fancyffcount;
		-- "Fancyfucked":
			now NumberVarValue entry is Fancyfucked;
		-- "fancymfcount":
			now NumberVarValue entry is fancymfcount;
		-- "Fancyquest":
			now NumberVarValue entry is Fancyquest;
		-- "Fancytalk":
			now NumberVarValue entry is Fancytalk;
		-- "fangcount":
			now NumberVarValue entry is fangcount;
		-- "FangDashRel":
			now NumberVarValue entry is FangDashRel;
		-- "FangSarahInteraction":
			now NumberVarValue entry is FangSarahInteraction;
		-- "FangWS":
			now NumberVarValue entry is FangWS;
		-- "fashionfight":
			now NumberVarValue entry is fashionfight;
		-- "Featqualified":
			now NumberVarValue entry is Featqualified;
		-- "featunlock":
			now NumberVarValue entry is featunlock;
		-- "Feline_attached":
			now NumberVarValue entry is Feline_attached;
		-- "Feline_encountered":
			now NumberVarValue entry is Feline_encountered;
		-- "Feline_meow":
			now NumberVarValue entry is Feline_meow;
		-- "feline_status":
			now NumberVarValue entry is feline_status;
		-- "Feline_type":
			now NumberVarValue entry is Feline_type;
		-- "FelinoidRescued":
			now NumberVarValue entry is FelinoidRescued;
		-- "FelixSaved":
			now NumberVarValue entry is FelixSaved;
		-- "fellforward":
			now NumberVarValue entry is fellforward;
		-- "femalecatHP":
			now NumberVarValue entry is femalecatHP;
		-- "femonyxq":
			now NumberVarValue entry is femonyxq;
		-- "FeralBirths":
			now NumberVarValue entry is FeralBirths;
		-- "FeralMuttDominance":
			now NumberVarValue entry is FeralMuttDominance;
		-- "FeralMuttFurColorNumber":
			now NumberVarValue entry is FeralMuttFurColorNumber;
		-- "ferretvisit":
			now NumberVarValue entry is ferretvisit;
		-- "fertiletime":
			now NumberVarValue entry is fertiletime;
		-- "ffrivalry":
			now NumberVarValue entry is ffrivalry;
		-- "fgryphon_TFcount":
			now NumberVarValue entry is fgryphon_TFcount;
		-- "fightoutcome":
			now NumberVarValue entry is fightoutcome;
		-- "Fin":
			now NumberVarValue entry is Fin;
		-- "findablestairs":
			now NumberVarValue entry is findablestairs;
		-- "Findfirefighter":
			now NumberVarValue entry is Findfirefighter;
		-- "findwires":
			now NumberVarValue entry is findwires;
		-- "FinnTrackingProgress":
			now NumberVarValue entry is FinnTrackingProgress;
		-- "firebreathcount":
			now NumberVarValue entry is firebreathcount;
		-- "FireSpritemode":
			now NumberVarValue entry is FireSpritemode;
		-- "FirstAtlantisVisit":
			now NumberVarValue entry is FirstAtlantisVisit;
		-- "FirstDescOuter":
			now NumberVarValue entry is FirstDescOuter;
		-- "FirstMannequinTalk":
			now NumberVarValue entry is FirstMannequinTalk;
		-- "fixedgens":
			now NumberVarValue entry is fixedgens;
		-- "flotintense":
			now NumberVarValue entry is flotintense;
		-- "fonyxanalcount":
			now NumberVarValue entry is fonyxanalcount;
		-- "fonyxvagcount":
			now NumberVarValue entry is fonyxvagcount;
		-- "foodcount":
			now NumberVarValue entry is foodcount;
		-- "foodneed":
			now NumberVarValue entry is foodneed;
		-- "foodvendor":
			now NumberVarValue entry is foodvendor;
		-- "foodwaterbonus":
			now NumberVarValue entry is foodwaterbonus;
		-- "ForcedBreederslutBoyTF":
			now NumberVarValue entry is ForcedBreederslutBoyTF;
		-- "ForcedBreederslutTF":
			now NumberVarValue entry is ForcedBreederslutTF;
		-- "foundparts":
			now NumberVarValue entry is foundparts;
		-- "FoxMasterEncounters":
			now NumberVarValue entry is FoxMasterEncounters;
		-- "frankmalesex":
			now NumberVarValue entry is frankmalesex;
		-- "franksex":
			now NumberVarValue entry is franksex;
		-- "FratPartyRecruiterProgression":
			now NumberVarValue entry is FratPartyRecruiterProgression;
		-- "frbatbeaten":
			now NumberVarValue entry is frbatbeaten;
		-- "freecred":
			now NumberVarValue entry is freecred;
		-- "FriesianRelationship":
			now NumberVarValue entry is FriesianRelationship;
		-- "FrostDrakeBeaten":
			now NumberVarValue entry is  FrostDrakeBeaten;
		-- "fsdbias":
			now NumberVarValue entry is fsdbias;
		-- "fsddom":
			now NumberVarValue entry is fsddom;
		-- "fsdfeedmemory":
			now NumberVarValue entry is fsdfeedmemory;
		-- "FSDOPEN":
			now NumberVarValue entry is FSDOPEN;
		-- "fsdsub":
			now NumberVarValue entry is fsdsub;
		-- "fsnovel":
			now NumberVarValue entry is fsnovel;
		-- "FuckedByRazorbackBoar":
			now NumberVarValue entry is FuckedByRazorbackBoar;
		-- "FuckedBySpartan":
			now NumberVarValue entry is FuckedBySpartan;
		-- "FYDM":
			now NumberVarValue entry is FYDM;
		-- "FYDTBMM":
			now NumberVarValue entry is FYDTBMM;
		-- "gameplay":
			now NumberVarValue entry is gameplay;
		-- "gardenveg":
			now NumberVarValue entry is gardenveg;
		-- "GarthRelationship":
			now NumberVarValue entry is GarthRelationship;
		-- "gascloud":
			now NumberVarValue entry is gascloud;
		-- "gatorconsent":
			now NumberVarValue entry is gatorconsent;
		-- "gatordefeat":
			now NumberVarValue entry is gatordefeat;
		-- "gazellesbeaten":
			now NumberVarValue entry is gazellesbeaten;
		-- "gb_gatling_chance":
			now NumberVarValue entry is gb_gatling_chance;
		-- "gb_gatling_counter":
			now NumberVarValue entry is gb_gatling_counter;
		-- "gb_gun":
			now NumberVarValue entry is gb_gun;
		-- "gb_hair":
			now NumberVarValue entry is gb_hair;
		-- "generationConflictFlag":
			now NumberVarValue entry is generationConflictFlag;
		-- "generatorfixing":
			now NumberVarValue entry is generatorfixing;
		-- "GertyQuest":
			now NumberVarValue entry is GertyQuest;
		-- "GertyRelationship":
			now NumberVarValue entry is GertyRelationship;
		-- "gettinglee":
			now NumberVarValue entry is gettinglee;
		-- "giantheight":
			now NumberVarValue entry is giantheight;
		-- "GibsonRelationship":
			now NumberVarValue entry is GibsonRelationship;
		-- "ginafucked":
			now NumberVarValue entry is ginafucked;
		-- "Ginaslut":
			now NumberVarValue entry is Ginaslut;
		-- "Ginatalk":
			now NumberVarValue entry is Ginatalk;
		-- "givingupton":
			now NumberVarValue entry is givingupton;
		-- "GloryFate":
			now NumberVarValue entry is GloryFate;
		-- "gobgender":
			now NumberVarValue entry is gobgender;
		-- "GooColossusProgress":
			now NumberVarValue entry is GooColossusProgress;
		-- "GordonApprehended":
			now NumberVarValue entry is GordonApprehended;
		-- "GordonFurSuspicion":
			now NumberVarValue entry is GordonFurSuspicion;
		-- "GordonMotive":
			now NumberVarValue entry is GordonMotive;
		-- "GorillasMember":
			now NumberVarValue entry is GorillasMember;
		-- "GorillasMemberQuestCounter":
			now NumberVarValue entry is GorillasMemberQuestCounter;
		-- "GorillasRep":
			now NumberVarValue entry is GorillasRep;
		-- "gotcatares":
			now NumberVarValue entry is gotcatares;
		-- "grantbitch":
			now NumberVarValue entry is grantbitch;
		-- "grantfucked":
			now NumberVarValue entry is grantfucked;
		-- "grantsex":
			now NumberVarValue entry is grantsex;
		-- "granttalk":
			now NumberVarValue entry is granttalk;
		-- "GreenTumbTurn":
			now NumberVarValue entry is GreenTumbTurn;
		-- "gryphoncomforted":
			now NumberVarValue entry is gryphoncomforted;
		-- "GryphonessKnowpreg":
			now NumberVarValue entry is GryphonessKnowpreg;
		-- "gsd_encounters":
			now NumberVarValue entry is gsd_encounters;
		-- "gsd_pet":
			now NumberVarValue entry is gsd_pet;
		-- "gsd_var":
			now NumberVarValue entry is gsd_var;
		-- "GenderLock":
			now NumberVarValue entry is GenderLock;
		-- "gshep_bed_scene":
			now NumberVarValue entry is gshep_bed_scene;
		-- "gshep_fights":
			now NumberVarValue entry is gshep_fights;
		-- "gshep_inactive":
			now NumberVarValue entry is gshep_inactive;
		-- "gshep_postfight":
			now NumberVarValue entry is gshep_postfight;
		-- "gshep_sexscene":
			now NumberVarValue entry is gshep_sexscene;
		-- "GShepLastScene":
			now NumberVarValue entry is GShepLastScene;
		-- "gshepsquad":
			now NumberVarValue entry is gshepsquad;
		-- "GusTalkProgress":
			now NumberVarValue entry is GusTalkProgress;
		-- "hadiyafucked":
			now NumberVarValue entry is hadiyafucked;
		-- "hagfeat":
			now NumberVarValue entry is hagfeat;
		-- "halodestroyed":
			now NumberVarValue entry is halodestroyed;
		-- "Haroldaroused":
			now NumberVarValue entry is Haroldaroused;
		-- "Haroldfucked":
			now NumberVarValue entry is Haroldfucked;
		-- "Haroldtalk":
			now NumberVarValue entry is Haroldtalk;
		-- "Harpyconsent":
			now NumberVarValue entry is Harpyconsent;
		-- "Harpydefeat":
			now NumberVarValue entry is Harpydefeat;
		-- "hasgills":
			now NumberVarValue entry is hasgills;
		-- "HasParts":
			now NumberVarValue entry is HasParts;
		-- "hawkmanbeaten":
			now NumberVarValue entry is hawkmanbeaten;
		-- "HayatoHunger":
			now NumberVarValue entry is HayatoHunger;
		-- "HBMR":
			now NumberVarValue entry is HBMR;
		-- "hdform":
			now NumberVarValue entry is hdform;
		-- "hdmode":
			now NumberVarValue entry is hdmode;
		-- "hdog":
			now NumberVarValue entry is hdog;
		-- "heatdrive":
			now NumberVarValue entry is heatdrive;
		-- "HeatedPoodle":
			now NumberVarValue entry is HeatedPoodle;
		-- "heatform":
			now NumberVarValue entry is heatform;
		-- "heatlevel":
			now NumberVarValue entry is heatlevel;
		-- "HelenPregnant":
			now NumberVarValue entry is HelenPregnant;
		-- "hellgatherquest":
			now NumberVarValue entry is hellgatherquest;
		-- "hellHoundLevel":
			now NumberVarValue entry is hellHoundLevel;
		-- "HelpKenazOut":
			now NumberVarValue entry is HelpKenazOut;
		-- "HermaidSub":
			now NumberVarValue entry is HermaidSub;
		-- "hermlvconsent":
			now NumberVarValue entry is hermlvconsent;
		-- "hermlvmeet":
			now NumberVarValue entry is hermlvmeet;
		-- "hfgbread":
			now NumberVarValue entry is hfgbread;
		-- "HG_Flashback_Turns":
			now NumberVarValue entry is HG_Flashback_Turns;
		-- "hgryphon_TGcount":
			now NumberVarValue entry is hgryphon_TGcount;
		-- "hgryphonwin":
			now NumberVarValue entry is hgryphonwin;
		-- "hgsqc":
			now NumberVarValue entry is hgsqc;
		-- "hijackgestation":
			now NumberVarValue entry is hijackgestation;
		-- "hobo-food-reminder":
			now NumberVarValue entry is hobo-food-reminder;
		-- "hobo-grmilkhelp":
			now NumberVarValue entry is hobo-grmilkhelp;
		-- "hobo-journal":
			now NumberVarValue entry is hobo-journal;
		-- "hobo-medical":
			now NumberVarValue entry is hobo-medical;
		-- "hobo-medical-gift":
			now NumberVarValue entry is hobo-medical-gift;
		-- "hobo-water-reminder":
			now NumberVarValue entry is hobo-water-reminder;
		-- "Homarusearch":
			now NumberVarValue entry is Homarusearch;
		-- "Homarusearching":
			now NumberVarValue entry is Homarusearching;
		-- "Homarutalk":
			now NumberVarValue entry is Homarutalk;
		-- "hospbattlelost":
			now NumberVarValue entry is hospbattlelost;
		-- "hospcountdown":
			now NumberVarValue entry is hospcountdown;
		-- "hospfight":
			now NumberVarValue entry is hospfight;
		-- "hospnav":
			now NumberVarValue entry is hospnav;
		-- "hospquest":
			now NumberVarValue entry is hospquest;
		-- "hospstairs":
			now NumberVarValue entry is hospstairs;
		-- "hpF of Sylvia":
			now NumberVarValue entry is hpF of Sylvia;
		-- "hpM of Sylvia":
			now NumberVarValue entry is hpM of Sylvia;
		-- "hsrp":
			now NumberVarValue entry is hsrp;
		-- "huntfeat":
			now NumberVarValue entry is huntfeat;
		-- "hvorecount":
			now NumberVarValue entry is hvorecount;
		-- "hvorelevel":
			now NumberVarValue entry is hvorelevel;
		-- "hydraheadcount":
			now NumberVarValue entry is hydraheadcount;
		-- "hydramaulcount":
			now NumberVarValue entry is hydramaulcount;
		-- "hyenaintel":
			now NumberVarValue entry is hyenaintel;
		-- "hyenastabledeal":
			now NumberVarValue entry is hyenastabledeal;
		-- "HyenaTrailing":
			now NumberVarValue entry is HyenaTrailing;
		-- "HYG":
			now NumberVarValue entry is HYG;
		-- "hypernull":
			now NumberVarValue entry is hypernull;
		-- "HyperSerumTracker":
			now NumberVarValue entry is HyperSerumTracker;
		-- "icarus_cbt":
			now NumberVarValue entry is icarus_cbt;
		-- "icarus_cumstuff":
			now NumberVarValue entry is icarus_cumstuff;
		-- "icarus_lastpred":
			now NumberVarValue entry is icarus_lastpred;
		-- "IcarusAmySex":
			now NumberVarValue entry is IcarusAmySex;
		-- "icarussex6_variant":
			now NumberVarValue entry is icarussex6_variant;
		-- "impalamode":
			now NumberVarValue entry is impalamode;
		-- "ImpPlayerMarkingTurn":
			now NumberVarValue entry is ImpPlayerMarkingTurn;
		-- "inafight":
			now NumberVarValue entry is inafight;
		-- "incubusnosex":
			now NumberVarValue entry is incubusnosex;
		-- "InflatableOtterSuitBindStage":
			now NumberVarValue entry is InflatableOtterSuitBindStage;
		-- "InflatableOtterSuitMode":
			now NumberVarValue entry is InflatableOtterSuitMode;
		-- "infvulpstate":
			now NumberVarValue entry is infvulpstate;
		-- "invcolumns":
			now NumberVarValue entry is invcolumns;
		-- "invlinklistfilled":
			now NumberVarValue entry is invlinklistfilled;
		-- "isTwinHere":
			now NumberVarValue entry is isTwinHere;
		-- "JackalBoyTF":
			now NumberVarValue entry is JackalBoyTF;
		-- "JackalManTF":
			now NumberVarValue entry is JackalManTF;
		-- "JaksEncounters":
			now NumberVarValue entry is JaksEncounters;
		-- "jamesfed":
			now NumberVarValue entry is jamesfed;
		-- "jamessex":
			now NumberVarValue entry is jamessex;
		-- "Janicearoused":
			now NumberVarValue entry is Janicearoused;
		-- "Janicequest":
			now NumberVarValue entry is Janicequest;
		-- "Janicetalk":
			now NumberVarValue entry is Janicetalk;
		-- "JayMarkRelationship":
			now NumberVarValue entry is JayMarkRelationship;
		-- "jbfound":
			now NumberVarValue entry is jbfound;
		-- "jdigup":
			now NumberVarValue entry is jdigup;
		-- "JennaRelationship":
			now NumberVarValue entry is JennaRelationship;
		-- "Jenniferfucked":
			now NumberVarValue entry is Jenniferfucked;
		-- "Jenniferpregnant":
			now NumberVarValue entry is Jenniferpregnant;
		-- "Jenniferwolves":
			now NumberVarValue entry is Jenniferwolves;
		-- "JewelHeistCaught":
			now NumberVarValue entry is JewelHeistCaught;
		-- "joannaharoldtalk":
			now NumberVarValue entry is joannaharoldtalk;
		-- "joannaoffernum":
			now NumberVarValue entry is joannaoffernum;
		-- "joannatalk":
			now NumberVarValue entry is joannatalk;
		-- "junknum":
			now NumberVarValue entry is junknum;
		-- "JustinRelationship":
			now NumberVarValue entry is JustinRelationship;
		-- "kangaroodefeat":
			now NumberVarValue entry is kangaroodefeat;
		-- "KatyaDildoTaken":
			now NumberVarValue entry is KatyaDildoTaken;
		-- "KatyaRelationship":
			now NumberVarValue entry is KatyaRelationship;
		-- "KatyaResistance":
			now NumberVarValue entry is KatyaResistance;
		-- "keepbody":
			now NumberVarValue entry is keepbody;
		-- "keepcock":
			now NumberVarValue entry is keepcock;
		-- "keepface":
			now NumberVarValue entry is keepface;
		-- "keepskin":
			now NumberVarValue entry is keepskin;
		-- "keeptail":
			now NumberVarValue entry is keeptail;
		-- "Kenazaroused":
			now NumberVarValue entry is Kenazaroused;
		-- "Kenazdes":
			now NumberVarValue entry is Kenazdes;
		-- "Kenaztalk":
			now NumberVarValue entry is Kenaztalk;
		-- "keycollection":
			now NumberVarValue entry is keycollection;
		-- "KinksandFetishes":
			now NumberVarValue entry is KinksandFetishes;
		-- "Kitsunearoused":
			now NumberVarValue entry is Kitsunearoused;
		-- "Kitsunetalk":
			now NumberVarValue entry is Kitsunetalk;
		-- "kittyness":
			now NumberVarValue entry is kittyness;
		-- "knightcrestnum":
			now NumberVarValue entry is knightcrestnum;
		-- "KoballoonLossCounter":
			now NumberVarValue entry is KoballoonLossCounter;
		-- "KoballoonMet":
			now NumberVarValue entry is KoballoonMet;
		-- "koboldgangmet":
			now NumberVarValue entry is koboldgangmet;
		-- "koboldgangsubs":
			now NumberVarValue entry is koboldgangsubs;
		-- "KoboldScaleColor":
			now NumberVarValue entry is KoboldScaleColor;
		-- "Koghhstatus":
			now NumberVarValue entry is Koghhstatus;
		-- "KorvinSubmitCounter":
			now NumberVarValue entry is KorvinSubmitCounter;
		-- "kpstatus":
			now NumberVarValue entry is kpstatus;
		-- "KTO":
			now NumberVarValue entry is KTO;
		-- "KitsuneEventStage":
			now NumberVarValue entry is KitsuneEventStage;
		-- "ktspeciesbonus":
			now NumberVarValue entry is ktspeciesbonus;
		-- "KurtEvent":
			now NumberVarValue entry is KurtEvent;
		-- "KurtRelationship":
			now NumberVarValue entry is KurtRelationship;
		-- "KyleRelationship":
			now NumberVarValue entry is KyleRelationship;
		-- "KyrverthMaleBoning":
			now NumberVarValue entry is KyrverthMaleBoning;
		-- "KyrverthQuestGiven":
			now NumberVarValue entry is KyrverthQuestGiven;
		-- "KyrverthStage":
			now NumberVarValue entry is KyrverthStage;
		-- "KyrverthTimer":
			now NumberVarValue entry is KyrverthTimer;
		-- "Kyrverthitemget":
			now NumberVarValue entry is KyrverthItemGet;
		-- "KyrverthItemReturned":
			now NumberVarValue entry is KyrverthItemReturned;
		-- "KyrverthNutGrowth":
			now NumberVarValue entry is KyrverthNutGrowth;
		-- "KyrverthSpikeGrowth":
			now NumberVarValue entry is KyrverthSpikeGrowth;
		-- "KyrverthWingType":
			now NumberVarValue entry is KyrverthWingType;
		-- "KyrverthCockType":
			now NumberVarValue entry is KyrverthCockType;
		-- "KyrverthLockoutTimer":
			now NumberVarValue entry is KyrverthLockoutTimer;
		-- "KyrverthEndingTimer":
			now NumberVarValue entry is KyrverthEndingTimer;
		-- "KyrverthBodyChanged":
			now NumberVarValue entry is KyrverthBodyChanged;
		-- "KyrverthPanicWitnessed":
			now NumberVarValue entry is KyrverthPanicWitnessed;
		-- "labhost":
			now NumberVarValue entry is labhost;
		-- "labtimerA":
			now NumberVarValue entry is labtimerA;
		-- "labtimerB":
			now NumberVarValue entry is labtimerB;
		-- "lairconsent":
			now NumberVarValue entry is lairconsent;
		-- "LampVariable":
			now NumberVarValue entry is LampVariable;
		-- "LarissaBodycat":
			now NumberVarValue entry is LarissaBodycat;
		-- "LarissaLastTF":
			now NumberVarValue entry is LarissaLastTF;
		-- "LarissaOldgender":
			now NumberVarValue entry is LarissaOldgender;
		-- "LarissTFcost":
			now NumberVarValue entry is LarissTFcost;
		-- "larvacounter":
			now NumberVarValue entry is larvacounter;
		-- "larvaegg":
			now NumberVarValue entry is larvaegg;
		-- "larvaexpel":
			now NumberVarValue entry is larvaexpel;
		-- "larvalaid":
			now NumberVarValue entry is larvalaid;
		-- "last_infvulp_airhead":
			now NumberVarValue entry is last_infvulp_airhead;
		-- "lastABEncounter":
			now NumberVarValue entry is lastABEncounter;
		-- "lastAlexandraPast":
			now NumberVarValue entry is lastAlexandraPast;
		-- "lastAlexandraSarahInteraction":
			now NumberVarValue entry is lastAlexandraSarahInteraction;
		-- "lastAmySpotted":
			now NumberVarValue entry is lastAmySpotted;
		-- "lastAndreTalk":
			now NumberVarValue entry is lastAndreTalk;
		-- "LastAngieLearned":
			now NumberVarValue entry is LastAngieLearned;
		-- "lastArtemisglomp":
			now NumberVarValue entry is lastArtemisglomp;
		-- "lastArtemisplay":
			now NumberVarValue entry is lastArtemisplay;
		-- "LastAtlantisCenterWalkin":
			now NumberVarValue entry is LastAtlantisCenterWalkin;
		-- "lastbcchair":
			now NumberVarValue entry is lastbcchair;
		-- "lastbcduobeaten":
			now NumberVarValue entry is lastbcduobeaten;
		-- "lastBodyShopEvent":
			now NumberVarValue entry is lastBodyShopEvent;
		-- "lastbookshelves":
			now NumberVarValue entry is lastbookshelves;
		-- "lastBrennanWolfScene":
			now NumberVarValue entry is lastBrennanWolfScene;
		-- "LastCampusWalkin":
			now NumberVarValue entry is LastCampusWalkin;
		-- "lastCandyfucked":
			now NumberVarValue entry is lastCandyfucked;
		-- "lastCandyUrikInteraction":
			now NumberVarValue entry is lastCandyUrikInteraction;
		-- "LastCandyWalkin":
			now NumberVarValue entry is LastCandyWalkin;
		-- "lastCarlEricInteraction":
			now NumberVarValue entry is lastCarlEricInteraction;
		-- "lastCarlKorvinInteraction":
			now NumberVarValue entry is lastCarlKorvinInteraction;
		-- "lastCarlSarahInteraction":
			now NumberVarValue entry is lastCarlSarahInteraction;
		-- "lastcheetahturns":
			now NumberVarValue entry is lastcheetahturns;
		-- "lastChristyfucked":
			now NumberVarValue entry is lastChristyfucked;
		-- "lastchurchattempt":
			now NumberVarValue entry is lastchurchattempt;
		-- "lastColleenSarahInteraction":
			now NumberVarValue entry is lastColleenSarahInteraction;
		-- "lastconfession":
			now NumberVarValue entry is lastconfession;
		-- "lastConfSvenEricInteraction":
			now NumberVarValue entry is lastConfSvenEricInteraction;
		-- "lastDavidSarahInteraction":
			now NumberVarValue entry is lastDavidSarahInteraction;
		-- "Lastdelaymilitary":
			now NumberVarValue entry is Lastdelaymilitary;
		-- "lastdenevent":
			now NumberVarValue entry is lastdenevent;
		-- "lastdobiemess":
			now NumberVarValue entry is lastdobiemess;
		-- "LastDrinkserved":
			now NumberVarValue entry is LastDrinkserved;
		-- "lastDrMousefucked":
			now NumberVarValue entry is lastDrMousefucked;
		-- "lastEricSarahInteraction":
			now NumberVarValue entry is lastEricSarahInteraction;
		-- "lastFangSarahInteraction":
			now NumberVarValue entry is lastFangSarahInteraction;
		-- "lastFelixTalk":
			now NumberVarValue entry is lastFelixTalk;
		-- "lastfgryphon_TF":
			now NumberVarValue entry is lastfgryphon_TF;
		-- "lastfightround":
			now NumberVarValue entry is lastfightround;
		-- "lastflowersmell":
			now NumberVarValue entry is lastflowersmell;
		-- "Lastfoodrun":
			now NumberVarValue entry is Lastfoodrun;
		-- "lastfsdfeeding":
			now NumberVarValue entry is lastfsdfeeding;
		-- "Lastgameplay":
			now NumberVarValue entry is Lastgameplay;
		-- "lastgardenveg":
			now NumberVarValue entry is lastgardenveg;
		-- "lastGuardBeg":
			now NumberVarValue entry is lastGuardBeg;
		-- "LastHelenTalk":
			now NumberVarValue entry is LastHelenTalk;
		-- "LastHelpKenazOut":
			now NumberVarValue entry is LastHelpKenazOut;
		-- "lasthgryphon_TG":
			now NumberVarValue entry is lasthgryphon_TG;
		-- "LastImpMeeting":
			now NumberVarValue entry is LastImpMeeting;
		-- "lastinvfoundindex":
			now NumberVarValue entry is lastinvfoundindex;
		-- "LastJaksEncounter":
			now NumberVarValue entry is LastJaksEncounter;
		-- "LastJenniferSoda":
			now NumberVarValue entry is LastJenniferSoda;
		-- "lastjoannajuice":
			now NumberVarValue entry is lastjoannajuice;
		-- "Lastjournaluse":
			now NumberVarValue entry is Lastjournaluse;
		-- "LastKenazdes":
			now NumberVarValue entry is LastKenazdes;
		-- "lastleomidcoitus":
			now NumberVarValue entry is lastleomidcoitus;
		-- "lastlibrarybrowse":
			now NumberVarValue entry is lastlibrarybrowse;
		-- "lastLilithTalk":
			now NumberVarValue entry is lastLilithTalk;
		-- "LastLockerroomTrioMeet":
			now NumberVarValue entry is LastLockerroomTrioMeet;
		-- "lastMallInteriorScene":
			now NumberVarValue entry is lastMallInteriorScene;
		-- "Lastmarefed":
			now NumberVarValue entry is Lastmarefed;
		-- "LastMarketWalkin":
			now NumberVarValue entry is LastMarketWalkin;
		-- "Lastmidnightmimiced":
			now NumberVarValue entry is Lastmidnightmimiced;
		-- "lastmilking":
			now NumberVarValue entry is lastmilking;
		-- "lastMKoutcome":
			now NumberVarValue entry is lastMKoutcome;
		-- "LastMoreauPartSale":
			now NumberVarValue entry is LastMoreauPartSale;
		-- "lastNadiaSpotted":
			now NumberVarValue entry is lastNadiaSpotted;
		-- "lastoctofight":
			now NumberVarValue entry is lastoctofight;
		-- "lastorcabeat":
			now NumberVarValue entry is lastorcabeat;
		-- "lastPaulahealing":
			now NumberVarValue entry is lastPaulahealing;
		-- "Lastpigfed":
			now NumberVarValue entry is Lastpigfed;
		-- "lastPolicePatrol":
			now NumberVarValue entry is lastPolicePatrol;
		-- "lastpolicerepair":
			now NumberVarValue entry is lastpolicerepair;
		-- "lastpoolgame":
			now NumberVarValue entry is lastpoolgame;
		-- "lastpubvisit":
			now NumberVarValue entry is lastpubvisit;
		-- "lastrandomharold":
			now NumberVarValue entry is lastrandomharold;
		-- "lastRaneEricInteraction":
			now NumberVarValue entry is lastRaneEricInteraction;
		-- "lastratdartthrow":
			now NumberVarValue entry is lastratdartthrow;
		-- "lastratvisit":
			now NumberVarValue entry is lastratvisit;
		-- "LastResidentialWalkin":
			now NumberVarValue entry is LastResidentialWalkin;
		-- "LastRiddle":
			now NumberVarValue entry is LastRiddle;
		-- "Lastriddlesphinx":
			now NumberVarValue entry is Lastriddlesphinx;
		-- "lastRyouseiDavidInteraction":
			now NumberVarValue entry is lastRyouseiDavidInteraction;
		-- "lastRyouseiEricInteraction":
			now NumberVarValue entry is lastRyouseiEricInteraction;
		-- "lastSallyfucked":
			now NumberVarValue entry is lastSallyfucked;
		-- "lastsealfight":
			now NumberVarValue entry is lastsealfight;
		-- "lastSeptusfucked":
			now NumberVarValue entry is lastSeptusfucked;
		-- "lastShowerUse":
			now NumberVarValue entry is lastShowerUse;
		-- "Lastskunkfuck":
			now NumberVarValue entry is Lastskunkfuck;
		-- "LastSlutslavefucked":
			now NumberVarValue entry is LastSlutslavefucked;
		-- "lastSlutslavelearned":
			now NumberVarValue entry is lastSlutslavelearned;
		-- "lastSnowStarGiven":
			now NumberVarValue entry is lastSnowStarGiven;
		-- "laststellamove":
			now NumberVarValue entry is laststellamove;
		-- "lastSvendrink":
			now NumberVarValue entry is lastSvendrink;
		-- "LastTehuantlCarlScene":
			now NumberVarValue entry is LastTehuantlCarlScene;
		-- "LastTehuantlKorvinScene":
			now NumberVarValue entry is LastTehuantlKorvinScene;
		-- "lasttentaclebattleoutcome":
			now NumberVarValue entry is lasttentaclebattleoutcome;
		-- "lastThomasTalk":
			now NumberVarValue entry is lastThomasTalk;
		-- "LastTimothymilked":
			now NumberVarValue entry is LastTimothymilked;
		-- "lastTomeInteraction":
			now NumberVarValue entry is lastTomeInteraction;
		-- "Lasttreasurehunt":
			now NumberVarValue entry is Lasttreasurehunt;
		-- "LastTSEvent":
			now NumberVarValue entry is LastTSEvent;
		-- "lastturn":
			now NumberVarValue entry is lastturn;
		-- "lastUrikEricInteraction":
			now NumberVarValue entry is lastUrikEricInteraction;
		-- "Lastvixenposing":
			now NumberVarValue entry is Lastvixenposing;
		-- "Lastwaterrun":
			now NumberVarValue entry is Lastwaterrun;
		-- "LastWerewolfFuck":
			now NumberVarValue entry is LastWerewolfFuck;
		-- "lastworkout":
			now NumberVarValue entry is lastworkout;
		-- "LastXerxesTalk":
			now NumberVarValue entry is LastXerxesTalk;
		-- "laundryProgress":
			now NumberVarValue entry is laundryProgress;
		-- "lavalamplick":
			now NumberVarValue entry is lavalamplick;
		-- "LectureCheck":
			now NumberVarValue entry is LectureCheck;
		-- "Leonardtimer":
			now NumberVarValue entry is Leonardtimer;
		-- "leosupplies":
			now NumberVarValue entry is leosupplies;
		-- "lessontime":
			now NumberVarValue entry is lessontime;
		-- "lgnumber":
			now NumberVarValue entry is lgnumber;
		-- "libidomemory":
			now NumberVarValue entry is libidomemory;
		-- "libstealth":
			now NumberVarValue entry is libstealth;
		-- "libsuppcount":
			now NumberVarValue entry is libsuppcount;
		-- "libvis":
			now NumberVarValue entry is libvis;
		-- "lilianabathsex":
			now NumberVarValue entry is lilianabathsex;
		-- "LilithKidCounter":
			now NumberVarValue entry is LilithKidCounter;
		-- "LilithPregCounter":
			now NumberVarValue entry is LilithPregCounter;
		-- "LilithPregnancy":
			now NumberVarValue entry is LilithPregnancy;
		-- "lisaartemiscount1":
			now NumberVarValue entry is lisaartemiscount1;
		-- "lisaartemiscount2":
			now NumberVarValue entry is lisaartemiscount2;
		-- "Lisacheat":
			now NumberVarValue entry is Lisacheat;
		-- "littlelostskunk":
			now NumberVarValue entry is littlelostskunk;
		-- "lizgirlangry":
			now NumberVarValue entry is lizgirlangry;
		-- "lizgirlimpreg":
			now NumberVarValue entry is lizgirlimpreg;
		-- "lizgirlinheat":
			now NumberVarValue entry is lizgirlinheat;
		-- "lizgirlmarked":
			now NumberVarValue entry is lizgirlmarked;
		-- "LockerroomTrioRelationship":
			now NumberVarValue entry is LockerroomTrioRelationship;
		-- "LoganCommand":
			now NumberVarValue entry is LoganCommand;
		-- "LOK":
			now NumberVarValue entry is LOK;
		-- "longboatfind":
			now NumberVarValue entry is longboatfind;
		-- "Lost":
			now NumberVarValue entry is Lost;
		-- "losttoalphahusky":
			now NumberVarValue entry is losttoalphahusky;
		-- "lostToHorseman":
			now NumberVarValue entry is lostToHorseman;
		-- "LostToZebra":
			now NumberVarValue entry is LostToZebra;
		-- "loversbench":
			now NumberVarValue entry is loversbench;
		-- "lustadjust":
			now NumberVarValue entry is lustadjust;
		-- "lustatt":
			now NumberVarValue entry is lustatt;
		-- "lwcounter":
			now NumberVarValue entry is lwcounter;
		-- "MalakhiRelationship":
			now NumberVarValue entry is MalakhiRelationship;
		-- "malecatHP":
			now NumberVarValue entry is malecatHP;
		-- "mammoth_cv_count":
			now NumberVarValue entry is mammoth_cv_count;
		-- "marefed":
			now NumberVarValue entry is marefed;
		-- "margaydancecount":
			now NumberVarValue entry is margaydancecount;
		-- "margaymet":
			now NumberVarValue entry is margaymet;
		-- "margayubed":
			now NumberVarValue entry is margayubed;
		-- "MarkedSeraphisCum":
			now NumberVarValue entry is MarkedSeraphisCum;
		-- "MarketVisits":
			now NumberVarValue entry is MarketVisits;
		-- "mateable":
			now NumberVarValue entry is mateable;
		-- "matriarchdefeated":
			now NumberVarValue entry is matriarchdefeated;
		-- "matriarchowned":
			now NumberVarValue entry is matriarchowned;
		-- "mattcollection":
			now NumberVarValue entry is mattcollection;
		-- "mattintel":
			now NumberVarValue entry is mattintel;
		-- "mdasslevel":
			now NumberVarValue entry is mdasslevel;
		-- "mdmaxlossscene":
			now NumberVarValue entry is mdmaxlossscene;
		-- "mdrakeanal":
			now NumberVarValue entry is mdrakeanal;
		-- "mdrakebeaten":
			now NumberVarValue entry is mdrakebeaten;
		-- "mdrakeloss":
			now NumberVarValue entry is mdrakeloss;
		-- "mdrakeoversized":
			now NumberVarValue entry is mdrakeoversized;
		-- "medeaget":
			now NumberVarValue entry is medeaget;
		-- "MenuRiddleNumber":
			now NumberVarValue entry is MenuRiddleNumber;
		-- "metalskin":
			now NumberVarValue entry is metalskin;
		-- "micaela_bf":
			now NumberVarValue entry is micaela_bf;
		-- "MichaelGholeMeetings":
			now NumberVarValue entry is MichaelGholeMeetings;
		-- "Midnightmimiced":
			now NumberVarValue entry is Midnightmimiced;
		-- "midnightsighted":
			now NumberVarValue entry is midnightsighted;
		-- "MiltonRelationship":
			now NumberVarValue entry is MiltonRelationship;
		-- "missskip":
			now NumberVarValue entry is missskip;
		-- "MiyukiRelationship":
			now NumberVarValue entry is MiyukiRelationship;
		-- "MKloss":
			now NumberVarValue entry is MKloss;
		-- "MKmet":
			now NumberVarValue entry is MKmet;
		-- "MKwin":
			now NumberVarValue entry is MKwin;
		-- "mlamiabeaten":
			now NumberVarValue entry is mlamiabeaten;
		-- "mlamialoss":
			now NumberVarValue entry is mlamialoss;
		-- "MMC":
			now NumberVarValue entry is MMC;
		-- "MMP":
			now NumberVarValue entry is MMP;
		-- "mondodgebonus":
			now NumberVarValue entry is mondodgebonus;
		-- "monmindbonus":
			now NumberVarValue entry is monmindbonus;
		-- "monstercom":
			now NumberVarValue entry is monstercom;
		-- "monsterHP":
			now NumberVarValue entry is monsterHP;
		-- "monstermemory":
			now NumberVarValue entry is monstermemory;
		-- "monsterpoison":
			now NumberVarValue entry is monsterpoison;
		-- "monsterpowerup":
			now NumberVarValue entry is monsterpowerup;
		-- "Mooed":
			now NumberVarValue entry is Mooed;
		-- "Mooing":
			now NumberVarValue entry is Mooing;
		-- "Mothdefeat":
			now NumberVarValue entry is Mothdefeat;
		-- "mothgirlnosex":
			now NumberVarValue entry is mothgirlnosex;
		-- "mousecounter":
			now NumberVarValue entry is mousecounter;
		-- "mousecurse":
			now NumberVarValue entry is mousecurse;
		-- "mousefucked":
			now NumberVarValue entry is mousefucked;
		-- "mouseintel":
			now NumberVarValue entry is mouseintel;
		-- "mousespot":
			now NumberVarValue entry is mousespot;
		-- "mousevic":
			now NumberVarValue entry is mousevic;
		-- "MovingOrwell":
			now NumberVarValue entry is MovingOrwell;
		-- "mpregcount":
			now NumberVarValue entry is mpregcount;
		-- "mqcountdown":
			now NumberVarValue entry is mqcountdown;
		-- "mqpickup":
			now NumberVarValue entry is mqpickup;
		-- "mqstatus":
			now NumberVarValue entry is mqstatus;
		-- "mre01":
			now NumberVarValue entry is mre01;
		-- "mre02":
			now NumberVarValue entry is mre02;
		-- "MSStorageVisited":
			now NumberVarValue entry is MSStorageVisited;
		-- "MTP":
			now NumberVarValue entry is MTP;
		-- "mtrp":
			now NumberVarValue entry is mtrp;
		-- "MulAnalAcceptance":
			now NumberVarValue entry is MulAnalAcceptance;
		-- "multicunt":
			now NumberVarValue entry is multicunt;
		-- "MurderMystery":
			now NumberVarValue entry is MurderMystery;
		-- "MushroomCaveVisited":
			now NumberVarValue entry is MushroomCaveVisited;
		-- "MYDAM":
			now NumberVarValue entry is MYDAM;
		-- "MYDGM":
			now NumberVarValue entry is MYDGM;
		-- "MYDTBMM":
			now NumberVarValue entry is MYDTBMM;
		-- "myseread":
			now NumberVarValue entry is myseread;
		-- "NadiaChickCounter":
			now NumberVarValue entry is NadiaChickCounter;
		-- "NadiaDescription":
			now NumberVarValue entry is NadiaDescription;
		-- "NadiaFertilityCounter":
			now NumberVarValue entry is NadiaFertilityCounter;
		-- "NadiaintCounter":
			now NumberVarValue entry is NadiaintCounter;
		-- "NadiaPregCounter1":
			now NumberVarValue entry is NadiaPregCounter1;
		-- "NadiaPregCounter2":
			now NumberVarValue entry is NadiaPregCounter2;
		-- "NadiaPregCounter3":
			now NumberVarValue entry is NadiaPregCounter3;
		-- "NadiaPregVisibility":
			now NumberVarValue entry is NadiaPregVisibility;
		-- "nanitemeter":
			now NumberVarValue entry is nanitemeter;
		-- "NatalieFucked":
			now NumberVarValue entry is NatalieFucked;
		-- "ndmhigh":
			now NumberVarValue entry is ndmhigh;
		-- "NerdMeetings":
			now NumberVarValue entry is NerdMeetings;
		-- "NermineAroused":
			now NumberVarValue entry is NermineAroused;
		-- "NermineBukkakeTurn":
			now NumberVarValue entry is NermineBukkakeTurn;
		-- "NermineFeat":
			now NumberVarValue entry is NermineFeat;
		-- "NermineFennecTurn":
			now NumberVarValue entry is NermineFennecTurn;
		-- "NermineFucked":
			now NumberVarValue entry is NermineFucked;
		-- "Nerminehelpstatus":
			now NumberVarValue entry is Nerminehelpstatus;
		-- "nerminepackage":
			now NumberVarValue entry is nerminepackage;
		-- "nerminepackagematt":
			now NumberVarValue entry is nerminepackagematt;
		-- "NermineQuest":
			now NumberVarValue entry is NermineQuest;
		-- "NermineTalk":
			now NumberVarValue entry is NermineTalk;
		-- "NESProgress":
			now NumberVarValue entry is NESProgress;
		-- "nesteddino":
			now NumberVarValue entry is nesteddino;
		-- "NGRP":
			now NumberVarValue entry is NGRP;
		-- "nightcheck":
			now NumberVarValue entry is nightcheck;
		-- "Nightmaremastery":
			now NumberVarValue entry is Nightmaremastery;
		-- "Nightmareslavery":
			now NumberVarValue entry is Nightmareslavery;
		-- "nightmaretf":
			now NumberVarValue entry is nightmaretf;
		-- "no_AlexandraNPC":
			now NumberVarValue entry is no_AlexandraNPC;
		-- "no_AlexandraTask":
			now NumberVarValue entry is no_AlexandraTask;
		-- "noamazoniansex":
			now NumberVarValue entry is noamazoniansex;
		-- "noanimebabesex":
			now NumberVarValue entry is noanimebabesex;
		-- "nobeaversex":
			now NumberVarValue entry is nobeaversex;
		-- "nobirdofparadisesex":
			now NumberVarValue entry is nobirdofparadisesex;
		-- "nobluechaffinchsex":
			now NumberVarValue entry is nobluechaffinchsex;
		-- "nocandycoonsex":
			now NumberVarValue entry is nocandycoonsex;
		-- "nochinchillasex":
			now NumberVarValue entry is nochinchillasex;
		-- "nodonkeywomansex":
			now NumberVarValue entry is nodonkeywomansex;
		-- "noeaglesex":
			now NumberVarValue entry is noeaglesex;
		-- "noelksex":
			now NumberVarValue entry is noelksex;
		-- "nofponysex":
			now NumberVarValue entry is nofponysex;
		-- "nogiraffesex":
			now NumberVarValue entry is nogiraffesex;
		-- "nogunbunnysex":
			now NumberVarValue entry is nogunbunnysex;
		-- "nohawkmansex":
			now NumberVarValue entry is nohawkmansex;
		-- "nohgryphonsex":
			now NumberVarValue entry is nohgryphonsex;
		-- "NoIntroduction":
			now NumberVarValue entry is NoIntroduction;
		-- "nolatexerminesex":
			now NumberVarValue entry is nolatexerminesex;
		-- "noocelotbtsex":
			now NumberVarValue entry is noocelotbtsex;
		-- "noocelotldsex":
			now NumberVarValue entry is noocelotldsex;
		-- "nopiratesharksex":
			now NumberVarValue entry is nopiratesharksex;
		-- "noplionsex":
			now NumberVarValue entry is noplionsex;
		-- "nopoodlesex":
			now NumberVarValue entry is nopoodlesex;
		-- "nosnowmeowsex":
			now NumberVarValue entry is nosnowmeowsex;
		-- "nosugarglidersex":
			now NumberVarValue entry is nosugarglidersex;
		-- "noteddybearsex":
			now NumberVarValue entry is noteddybearsex;
		-- "notrashcoonsex":
			now NumberVarValue entry is notrashcoonsex;
		-- "novicsex":
			now NumberVarValue entry is novicsex;
		-- "NPCintCounter":
			now NumberVarValue entry is NPCintCounter;
		-- "nsgained":
			now NumberVarValue entry is nsgained;
		-- "numOfBountiesLeft":
			now NumberVarValue entry is numOfBountiesLeft;
		-- "numwater":
			now NumberVarValue entry is numwater;
		-- "ocelotchoice":
			now NumberVarValue entry is ocelotchoice;
		-- "ocelotsize":
			now NumberVarValue entry is ocelotsize;
		-- "OfficeGirlsDominance":
			now NumberVarValue entry is OfficeGirlsDominance;
		-- "OfficeGirlsFriendship":
			now NumberVarValue entry is OfficeGirlsFriendship;
		-- "OliverRelationship":
			now NumberVarValue entry is OliverRelationship;
		-- "Onyxboislut":
			now NumberVarValue entry is Onyxboislut;
		-- "onyxdma":
			now NumberVarValue entry is onyxdma;
		-- "onyxdmc":
			now NumberVarValue entry is onyxdmc;
		-- "onyxdmra":
			now NumberVarValue entry is onyxdmra;
		-- "onyxfinale":
			now NumberVarValue entry is onyxfinale;
		-- "onyxlapdance":
			now NumberVarValue entry is onyxlapdance;
		-- "Onyxmareslut":
			now NumberVarValue entry is Onyxmareslut;
		-- "orcadom":
			now NumberVarValue entry is orcadom;
		-- "orcafdom":
			now NumberVarValue entry is orcafdom;
		-- "orcaintense":
			now NumberVarValue entry is orcaintense;
		-- "OrcFemSpecialFightNumber":
			now NumberVarValue entry is OrcFemSpecialFightNumber;
		-- "OrcSlaverCaptureTime":
			now NumberVarValue entry is OrcSlaverCaptureTime;
		-- "OrcSlaverStatus":
			now NumberVarValue entry is OrcSlaverStatus;
		-- "Otterconsent":
			now NumberVarValue entry is Otterconsent;
		-- "Otterdefeat":
			now NumberVarValue entry is Otterdefeat;
		-- "OttoForm":
			now NumberVarValue entry is OttoForm;
		-- "ovipreglevel":
			now NumberVarValue entry is ovipreglevel;
		-- "partner1Choice":
			now NumberVarValue entry is partner1Choice;
		-- "partner2Choice":
			now NumberVarValue entry is partner2Choice;
		-- "patrooms":
			now NumberVarValue entry is patrooms;
		-- "peacockcontrol":
			now NumberVarValue entry is peacockcontrol;
		-- "Peacocked":
			now NumberVarValue entry is Peacocked;
		-- "pepped":
			now NumberVarValue entry is pepped;
		-- "peppereyes":
			now NumberVarValue entry is peppereyes;
		-- "PericlesRelationship":
			now NumberVarValue entry is PericlesRelationship;
		-- "petchance":
			now NumberVarValue entry is petchance;
		-- "pethitbonus":
			now NumberVarValue entry is pethitbonus;
		-- "pewterassocc":
			now NumberVarValue entry is pewterassocc;
		-- "pewterassvar1":
			now NumberVarValue entry is pewterassvar1;
		-- "pewterassvar2":
			now NumberVarValue entry is pewterassvar2;
		-- "pewterbodycap":
			now NumberVarValue entry is pewterbodycap;
		-- "pewterbodyocc":
			now NumberVarValue entry is pewterbodyocc;
		-- "pewtercockocc":
			now NumberVarValue entry is pewtercockocc;
		-- "pewtercockvar1":
			now NumberVarValue entry is pewtercockvar1;
		-- "pewtercockvar2":
			now NumberVarValue entry is pewtercockvar2;
		-- "pewtercuntocc":
			now NumberVarValue entry is pewtercuntocc;
		-- "pewtercuntvar1":
			now NumberVarValue entry is pewtercuntvar1;
		-- "pewtercuntvar2":
			now NumberVarValue entry is pewtercuntvar2;
		-- "pewtergenitalcap":
			now NumberVarValue entry is pewtergenitalcap;
		-- "pewterheadcap":
			now NumberVarValue entry is pewterheadcap;
		-- "pewterheadocc":
			now NumberVarValue entry is pewterheadocc;
		-- "pewterheadvar1":
			now NumberVarValue entry is pewterheadvar1;
		-- "pewterheadvar2":
			now NumberVarValue entry is pewterheadvar2;
		-- "pewterheadvar3":
			now NumberVarValue entry is pewterheadvar3;
		-- "pfptype":
			now NumberVarValue entry is pfptype;
		-- "PhilipMudWrestleCount":
			now NumberVarValue entry is PhilipMudWrestleCount;
		-- "PhilipWrestleEnd":
			now NumberVarValue entry is PhilipWrestleEnd;
		-- "piercesave":
			now NumberVarValue entry is piercesave;
		-- "piercestatus":
			now NumberVarValue entry is piercestatus;
		-- "piercingquest":
			now NumberVarValue entry is piercingquest;
		-- "Pigfed":
			now NumberVarValue entry is Pigfed;
		-- "Pigfucked":
			now NumberVarValue entry is Pigfucked;
		-- "piginitiation":
			now NumberVarValue entry is piginitiation;
		-- "pitbullgender":
			now NumberVarValue entry is pitbullgender;
		-- "plantdefeat":
			now NumberVarValue entry is plantdefeat;
		-- "plantwin":
			now NumberVarValue entry is plantwin;
		-- "playercrestnum":
			now NumberVarValue entry is playercrestnum;
		-- "PlayerInformed":
			now NumberVarValue entry is PlayerInformed;
		-- "playermetalskin":
			now NumberVarValue entry is playermetalskin;
		-- "playerpoison":
			now NumberVarValue entry is playerpoison;
		-- "playon":
			now NumberVarValue entry is playon;
		-- "pldamagebonus":
			now NumberVarValue entry is pldamagebonus;
		-- "pldodgebonus":
			now NumberVarValue entry is pldodgebonus;
		-- "plfleebonus":
			now NumberVarValue entry is plfleebonus;
		-- "plhitbonus":
			now NumberVarValue entry is plhitbonus;
		-- "plionvic":
			now NumberVarValue entry is plionvic;
		-- "plionvored":
			now NumberVarValue entry is plionvored;
		-- "plmindbonus":
			now NumberVarValue entry is plmindbonus;
		-- "plnatarmor":
			now NumberVarValue entry is plnatarmor;
		-- "PLRLooted":
			now NumberVarValue entry is PLRLooted;
		-- "plushleoloss":
			now NumberVarValue entry is plushleoloss;
		-- "plweaknatarmor":
			now NumberVarValue entry is plweaknatarmor;
		-- "policerepair":
			now NumberVarValue entry is policerepair;
		-- "PoliceStationTwelveInfpop":
			now NumberVarValue entry is PoliceStationTwelveInfpop;
		-- "PoliceStationTwelvePopulation":
			now NumberVarValue entry is PoliceStationTwelvePopulation;
		-- "poodleapproved":
			now NumberVarValue entry is poodleapproved;
		-- "PoseidonRelationship":
			now NumberVarValue entry is PoseidonRelationship;
		-- "PowerUpDrugTrip":
			now NumberVarValue entry is PowerUpDrugTrip;
		-- "pquest":
			now NumberVarValue entry is pquest;
		-- "pr_completion":
			now NumberVarValue entry is pr_completion;
		-- "pregtype":
			now NumberVarValue entry is pregtype;
		-- "provingstallionhood":
			now NumberVarValue entry is provingstallionhood;
		-- "psycheadjust":
			now NumberVarValue entry is psycheadjust;
		-- "pubvisit":
			now NumberVarValue entry is pubvisit;
		-- "purfeat":
			now NumberVarValue entry is purfeat;
		-- "quitter":
			now NumberVarValue entry is quitter;
		-- "rabbitfucked":
			now NumberVarValue entry is rabbitfucked;
		-- "rabbitmulticock":
			now NumberVarValue entry is rabbitmulticock;
		-- "rabbitsibling":
			now NumberVarValue entry is rabbitsibling;
		-- "rachelfuck":
			now NumberVarValue entry is rachelfuck;
		-- "ramlosstick":
			now NumberVarValue entry is ramlosstick;
		-- "ramtraining":
			now NumberVarValue entry is ramtraining;
		-- "ramvar":
			now NumberVarValue entry is ramvar;
		-- "RandallBradRelationship":
			now NumberVarValue entry is RandallBradRelationship;
		-- "RandomItemPick":
			now NumberVarValue entry is RandomItemPick;
		-- "RaneDeedsTracker":
			now NumberVarValue entry is RaneDeedsTracker;
		-- "RareQuesting":
			now NumberVarValue entry is RareQuesting;
		-- "ratdartcount":
			now NumberVarValue entry is ratdartcount;
		-- "RazorbackBoarEvents":
			now NumberVarValue entry is RazorbackBoarEvents;
		-- "ReceptionistTalk":
			now NumberVarValue entry is ReceptionistTalk;
		-- "recoverchance":
			now NumberVarValue entry is recoverchance;
		-- "Recoveredhardware":
			now NumberVarValue entry is Recoveredhardware;
		-- "RegChaseHelp":
			now NumberVarValue entry is RegChaseHelp;
		-- "Researchbypass":
			now NumberVarValue entry is Researchbypass;
		-- "ResidentialVisits":
			now NumberVarValue entry is ResidentialVisits;
		-- "restaurantpig":
			now NumberVarValue entry is restaurantpig;
		-- "restoration":
			now NumberVarValue entry is restoration;
		-- "riddlesphinx":
			now NumberVarValue entry is riddlesphinx;
		-- "Riddlewin":
			now NumberVarValue entry is Riddlewin;
		-- "RomanceBooksFound":
			now NumberVarValue entry is RomanceBooksFound;
		-- "rsc":
			now NumberVarValue entry is rsc;
		-- "RTWinCounter":
			now NumberVarValue entry is RTWinCounter;
		-- "RyanFucked":
			now NumberVarValue entry is RyanFucked;
		-- "RyouseiDavidInteraction":
			now NumberVarValue entry is RyouseiDavidInteraction;
		-- "RyouseiEricInteraction":
			now NumberVarValue entry is RyouseiEricInteraction;
		-- "RyouseiHayato":
			now NumberVarValue entry is RyouseiHayato;
		-- "RyouseiRane":
			now NumberVarValue entry is RyouseiRane;
		-- "RyouseiXerxes":
			now NumberVarValue entry is RyouseiXerxes;
		-- "sabtoothed":
			now NumberVarValue entry is sabtoothed;
		-- "sabtoothedmatt":
			now NumberVarValue entry is sabtoothedmatt;
		-- "SandySaved":
			now NumberVarValue entry is SandySaved;
		-- "SarahCured":
			now NumberVarValue entry is SarahCured;
		-- "SarahPregnant":
			now NumberVarValue entry is SarahPregnant;
		-- "SarahPups":
			now NumberVarValue entry is SarahPups;
		-- "SarahShower":
			now NumberVarValue entry is SarahShower;
		-- "SarahSlut":
			now NumberVarValue entry is SarahSlut;
		-- "SarahTalk":
			now NumberVarValue entry is SarahTalk;
		-- "SatisfiedTanuki":
			now NumberVarValue entry is SatisfiedTanuki;
		-- "SatyressStage":
			now NumberVarValue entry is SatyressStage;
		-- "SatyrFratPartyStage":
			now NumberVarValue entry is SatyrFratPartyStage;
		-- "SatyrFratRichardRelationship":
			now NumberVarValue entry is SatyrFratRichardRelationship;
		-- "scaledr":
			now NumberVarValue entry is scaledr;
		-- "scopnum":
			now NumberVarValue entry is scopnum;
		-- "Score":
			now NumberVarValue entry is Score;
		-- "ScottyRelationship":
			now NumberVarValue entry is ScottyRelationship;
		-- "scufflecount":
			now NumberVarValue entry is scufflecount;
		-- "sdbook":
			now NumberVarValue entry is sdbook;
		-- "searchesUtSit":
			now NumberVarValue entry is searchesUtSit;
		-- "SeraphisContent":
			now NumberVarValue entry is SeraphisContent;
		-- "SeraphisNeedy":
			now NumberVarValue entry is SeraphisNeedy;
		-- "SeraphisRelationship":
			now NumberVarValue entry is SeraphisRelationship;
		-- "SerenityHunger":
			now NumberVarValue entry is SerenityHunger;
		-- "SethFucked":
			now NumberVarValue entry is SethFucked;
		-- "SethTempleNumber":
			now NumberVarValue entry is SethTempleNumber;
		-- "sextablerun":
			now NumberVarValue entry is sextablerun;
		-- "sgtimer":
			now NumberVarValue entry is sgtimer;
		-- "sgtmarkstalk":
			now NumberVarValue entry is sgtmarkstalk;
		-- "shadowy":
			now NumberVarValue entry is shadowy;
		-- "SharkFountainCounter":
			now NumberVarValue entry is SharkFountainCounter;
		-- "sierramem":
			now NumberVarValue entry is sierramem;
		-- "SilverToken":
			now NumberVarValue entry is SilverToken;
		-- "sirenfight":
			now NumberVarValue entry is sirenfight;
		-- "SizeEnvyTracker":
			now NumberVarValue entry is SizeEnvyTracker;
		-- "SkarnothLibraryEntry":
			now NumberVarValue entry is SkarnothLibraryEntry;
		-- "SkarnothMasterSlave":
			now NumberVarValue entry is SkarnothMasterSlave;
		-- "SkarnothThongStatus":
			now NumberVarValue entry is SkarnothThongStatus;
		-- "SkarnothDrugStatus":
			now NumberVarValue entry is SkarnothDrugStatus;
		-- "skipturnblocker":
			now NumberVarValue entry is skipturnblocker;
		-- "skrp":
			now NumberVarValue entry is skrp;
		-- "Skunk_type":
			now NumberVarValue entry is Skunk_type;
		-- "skunkbeaststatus":
			now NumberVarValue entry is skunkbeaststatus;
		-- "skunkfucked":
			now NumberVarValue entry is skunkfucked;
		-- "skunkmulticock":
			now NumberVarValue entry is skunkmulticock;
		-- "skunkready":
			now NumberVarValue entry is skunkready;
		-- "skunksister":
			now NumberVarValue entry is skunksister;
		-- "skunkspot":
			now NumberVarValue entry is skunkspot;
		-- "SlaveRaidEncounters":
			now NumberVarValue entry is SlaveRaidEncounters;
		-- "Sleeptimercount":
			now NumberVarValue entry is Sleeptimercount;
		-- "slutfucked":
			now NumberVarValue entry is slutfucked;
		-- "Slutratcor":
			now NumberVarValue entry is Slutratcor;
		-- "SlutRatDenPoolTable":
			now NumberVarValue entry is SlutRatDenPoolTable;
		-- "SlutRatDenVisitTimes":
			now NumberVarValue entry is SlutRatDenVisitTimes;
		-- "SlutratSub":
			now NumberVarValue entry is SlutratSub;
		-- "Slutslavefucked":
			now NumberVarValue entry is Slutslavefucked;
		-- "Slutslavelearned":
			now NumberVarValue entry is Slutslavelearned;
		-- "Slutslavetalk":
			now NumberVarValue entry is Slutslavetalk;
		-- "smf":
			now NumberVarValue entry is smf;
		-- "snakecap":
			now NumberVarValue entry is snakecap;
		-- "snakedomm":
			now NumberVarValue entry is snakedomm;
		-- "snakehijack":
			now NumberVarValue entry is snakehijack;
		-- "snakehijacktimer":
			now NumberVarValue entry is snakehijacktimer;
		-- "snakeocc":
			now NumberVarValue entry is snakeocc;
		-- "snakesubm":
			now NumberVarValue entry is snakesubm;
		-- "SnowAmySex":
			now NumberVarValue entry is SnowAmySex;
		-- "SnowmeowSoldierStatus":
			now NumberVarValue entry is SnowmeowSoldierStatus;
		-- "Soldierhorsetf":
			now NumberVarValue entry is Soldierhorsetf;
		-- "solsticefsex":
			now NumberVarValue entry is solsticefsex;
		-- "solsticemsex":
			now NumberVarValue entry is solsticemsex;
		-- "SonnyFood":
			now NumberVarValue entry is SonnyFood;
		-- "SonnyQuest":
			now NumberVarValue entry is SonnyQuest;
		-- "SonnyRelationship":
			now NumberVarValue entry is SonnyRelationship;
		-- "SpidertaurRelationship":
			now NumberVarValue entry is SpidertaurRelationship;
		-- "Spriteconsent":
			now NumberVarValue entry is Spriteconsent;
		-- "Spritedefeat":
			now NumberVarValue entry is Spritedefeat;
		-- "SquadEncounters":
			now NumberVarValue entry is SquadEncounters;
		-- "squidcolor":
			now NumberVarValue entry is squidcolor;
		-- "squirefeature":
			now NumberVarValue entry is squirefeature;
		-- "squirrelfucked":
			now NumberVarValue entry is squirrelfucked;
		-- "squirrelspot":
			now NumberVarValue entry is squirrelspot;
		-- "ssstash":
			now NumberVarValue entry is ssstash;
		-- "Stablesearchstatus":
			now NumberVarValue entry is Stablesearchstatus;
		-- "staircaselocation":
			now NumberVarValue entry is staircaselocation;
		-- "Started":
			now NumberVarValue entry is Started;
		-- "statuequest":
			now NumberVarValue entry is statuequest;
		-- "steriletime":
			now NumberVarValue entry is steriletime;
		-- "Stevenfood":
			now NumberVarValue entry is Stevenfood;
		-- "StevenFuckcount":
			now NumberVarValue entry is StevenFuckcount;
		-- "Stevenmm":
			now NumberVarValue entry is Stevenmm;
		-- "Stevenremoved":
			now NumberVarValue entry is Stevenremoved;
		-- "StevenSwayed":
			now NumberVarValue entry is StevenSwayed;
		-- "Steventrust":
			now NumberVarValue entry is Steventrust;
		-- "Stevenwater":
			now NumberVarValue entry is Stevenwater;
		-- "StewartLocationCounter":
			now NumberVarValue entry is StewartLocationCounter;
		-- "StewartRelationship":
			now NumberVarValue entry is StewartRelationship;
		-- "stiffedpayment":
			now NumberVarValue entry is stiffedpayment;
		-- "strangebottledrink":
			now NumberVarValue entry is strangebottledrink;
		-- "struggleatt":
			now NumberVarValue entry is struggleatt;
		-- "supermarketcount":
			now NumberVarValue entry is supermarketcount;
		-- "survfeat":
			now NumberVarValue entry is survfeat;
		-- "Susanfirsttime":
			now NumberVarValue entry is Susanfirsttime;
		-- "SvenAmySex":
			now NumberVarValue entry is SvenAmySex;
		-- "SvenCandyMsg":
			now NumberVarValue entry is SvenCandyMsg;
		-- "SylviaConv":
			now NumberVarValue entry is SylviaConv;
		-- "SylviaTrapVar":
			now NumberVarValue entry is SylviaTrapVar;
		-- "SylviaVirginCheck":
			now NumberVarValue entry is SylviaVirginCheck;
		-- "TaniClassMemory":
			now NumberVarValue entry is TaniClassMemory;
		-- "TaniRecommendation":
			now NumberVarValue entry is TaniRecommendation;
		-- "Tanukigender":
			now NumberVarValue entry is Tanukigender;
		-- "Targetturns":
			now NumberVarValue entry is Targetturns;
		-- "tatsave":
			now NumberVarValue entry is tatsave;
		-- "tatstatus":
			now NumberVarValue entry is tatstatus;
		-- "tattoohunter":
			now NumberVarValue entry is tattoohunter;
		-- "TawnyaFurSuspicion":
			now NumberVarValue entry is TawnyaFurSuspicion;
		-- "TawnyaMotive":
			now NumberVarValue entry is TawnyaMotive;
		-- "tcopfight":
			now NumberVarValue entry is tcopfight;
		-- "teddyvored":
			now NumberVarValue entry is teddyvored;
		-- "TehuantlKorvinRelationship":
			now NumberVarValue entry is TehuantlKorvinRelationship;
		-- "TehuantlSnowStatus":
			now NumberVarValue entry is TehuantlSnowStatus;
		-- "TehuantlStatus":
			now NumberVarValue entry is TehuantlStatus;
		-- "TempClearBypass":
			now NumberVarValue entry is TempClearBypass;
		-- "templust":
			now NumberVarValue entry is templust;
		-- "tempnum":
			now NumberVarValue entry is tempnum;
		-- "tempnum2":
			now NumberVarValue entry is tempnum2;
		-- "tempthirst":
			now NumberVarValue entry is tempthirst;
		-- "TentacleInteractions":
			now NumberVarValue entry is TentacleInteractions;
		-- "tentaclerape":
			now NumberVarValue entry is tentaclerape;
		-- "TentacleStatus":
			now NumberVarValue entry is TentacleStatus;
		-- "tentsubmit":
			now NumberVarValue entry is tentsubmit;
		-- "thabread":
			now NumberVarValue entry is thabread;
		-- "ThomasPregnancy":
			now NumberVarValue entry is ThomasPregnancy;
		-- "ThomasQuestVar":
			now NumberVarValue entry is ThomasQuestVar;
		-- "ThomasSaved":
			now NumberVarValue entry is ThomasSaved;
		-- "ThunderTrackingVariable":
			now NumberVarValue entry is ThunderTrackingVariable;
		-- "tightfitcount":
			now NumberVarValue entry is tightfitcount;
		-- "tigressclient":
			now NumberVarValue entry is tigressclient;
		-- "tigressfucked":
			now NumberVarValue entry is tigressfucked;
		-- "tigresswinner":
			now NumberVarValue entry is tigresswinner;
		-- "TimekeepingVar":
			now NumberVarValue entry is TimekeepingVar;
		-- "timetillrampage":
			now NumberVarValue entry is timetillrampage;
		-- "Timothyfucked":
			now NumberVarValue entry is Timothyfucked;
		-- "tmapfound":
			now NumberVarValue entry is tmapfound;
		-- "tmonster":
			now NumberVarValue entry is tmonster;
		-- "TomeFound":
			now NumberVarValue entry is TomeFound;
		-- "TomeInfluence":
			now NumberVarValue entry is TomeInfluence;
		-- "TomeInfluenceTimer":
			now NumberVarValue entry is TomeInfluenceTimer;
		-- "TomeInteractions":
			now NumberVarValue entry is TomeInteractions;
		-- "TomeTimer":
			now NumberVarValue entry is TomeTimer;
		-- "Treasurefound":
			now NumberVarValue entry is Treasurefound;
		-- "treasurehunt":
			now NumberVarValue entry is treasurehunt;
		-- "triclamped":
			now NumberVarValue entry is triclamped;
		-- "triclampedmatt":
			now NumberVarValue entry is triclampedmatt;
		-- "TritonRelationship":
			now NumberVarValue entry is TritonRelationship;
		-- "TryoutScore":
			now NumberVarValue entry is TryoutScore;
		-- "TSEventCounter":
			now NumberVarValue entry is TSEventCounter;
		-- "tsw_fsd":
			now NumberVarValue entry is tsw_fsd;
		-- "tsw_relationship":
			now NumberVarValue entry is tsw_relationship;
		-- "tti_scene":
			now NumberVarValue entry is tti_scene;
		-- "ttIcarus":
			now NumberVarValue entry is ttIcarus;
		-- "ttransform":
			now NumberVarValue entry is ttransform;
		-- "Turns":
			now NumberVarValue entry is Turns;
		-- "turns in heat":
			now NumberVarValue entry is turns in heat;
		-- "TwelveLaborsStage":
			now NumberVarValue entry is TwelveLaborsStage;
		-- "twpimpbeaten":
			now NumberVarValue entry is twpimpbeaten;
		-- "twpimploss":
			now NumberVarValue entry is twpimploss;
		-- "Tyraffection":
			now NumberVarValue entry is Tyraffection;
		-- "TyrDefeated":
			now NumberVarValue entry is TyrDefeated;
		-- "Tyrtalk":
			now NumberVarValue entry is Tyrtalk;
		-- "ubchoice":
			now NumberVarValue entry is ubchoice;
		-- "ubcount":
			now NumberVarValue entry is ubcount;
		-- "UBlevel":
			now NumberVarValue entry is UBlevel;
		-- "UrikEricInteraction":
			now NumberVarValue entry is UrikEricInteraction;
		-- "UrsineDefeatCount":
			now NumberVarValue entry is UrsineDefeatCount;
		-- "UtahGender":
			now NumberVarValue entry is UtahGender;
		-- "valhosp":
			now NumberVarValue entry is valhosp;
		-- "ValPregCounter":
			now NumberVarValue entry is ValPregCounter;
		-- "ValPregnancy":
			now NumberVarValue entry is ValPregnancy;
		-- "Valtalk":
			now NumberVarValue entry is Valtalk;
		-- "VentDomSize":
			now NumberVarValue entry is VentDomSize;
		-- "VentFluidAmount":
			now NumberVarValue entry is VentFluidAmount;
		-- "VentFoxContentLevel":
			now NumberVarValue entry is VentFoxContentLevel;
		-- "VentFoxLastFed":
			now NumberVarValue entry is VentFoxLastFed;
		-- "VentFoxRelationship":
			now NumberVarValue entry is VentFoxRelationship;
		-- "VentOviAmount":
			now NumberVarValue entry is VentOviAmount;
		-- "VentSubSize":
			now NumberVarValue entry is VentSubSize;
		-- "VentWSAmount":
			now NumberVarValue entry is VentWSAmount;
		-- "vetcheater":
			now NumberVarValue entry is vetcheater;
		-- "vgeckoanal":
			now NumberVarValue entry is vgeckoanal;
		-- "vgeckobeaten":
			now NumberVarValue entry is vgeckobeaten;
		-- "vgeckoloss":
			now NumberVarValue entry is vgeckoloss;
		-- "VictoryOverDaBull":
			now NumberVarValue entry is VictoryOverDaBull;
		-- "VikingKidCounter":
			now NumberVarValue entry is VikingKidCounter;
		-- "VikingKidGender":
			now NumberVarValue entry is VikingKidGender;
		-- "VikingPregCounter":
			now NumberVarValue entry is VikingPregCounter;
		-- "VikingPregnancy":
			now NumberVarValue entry is VikingPregnancy;
		-- "VikingRelationship":
			now NumberVarValue entry is VikingRelationship;
		-- "VikingSpartanWar":
			now NumberVarValue entry is VikingSpartanWar;
		-- "VikingUltimatum":
			now NumberVarValue entry is VikingUltimatum;
		-- "VikingWar":
			now NumberVarValue entry is VikingWar;
		-- "violinfound":
			now NumberVarValue entry is violinfound;
		-- "vixcountdown":
			now NumberVarValue entry is vixcountdown;
		-- "vixentaurcatch":
			now NumberVarValue entry is vixentaurcatch;
		-- "vixgender":
			now NumberVarValue entry is vixgender;
		-- "vorechoice":
			now NumberVarValue entry is vorechoice;
		-- "vorecount":
			now NumberVarValue entry is vorecount;
		-- "vorelevel":
			now NumberVarValue entry is vorelevel;
		-- "vpostmusenum":
			now NumberVarValue entry is vpostmusenum;
		-- "waiterhater":
			now NumberVarValue entry is waiterhater;
		-- "WallyQuestDenial":
			now NumberVarValue entry is WallyQuestDenial;
		-- "WallyOrcFled":
			now NumberVarValue entry is WallyOrcFled;
		-- "InsightGained":
			now NumberVarValue entry is InsightGained;
		-- "WallyTrust":
			now NumberVarValue entry is WallyTrust;
		-- "WallStanding":
			now NumberVarValue entry is WallStanding;
		-- "WarLossCounter":
			now NumberVarValue entry is WarLossCounter;
		-- "WarriorChrisDominance":
			now NumberVarValue entry is WarriorChrisDominance;
		-- "WarriorChrisPlayerFucked":
			now NumberVarValue entry is WarriorChrisPlayerFucked;
		-- "wasfertile":
			now NumberVarValue entry is wasfertile;
		-- "wasfertilef":
			now NumberVarValue entry is wasfertilef;
		-- "washerenest":
			now NumberVarValue entry is washerenest;
		-- "wassterile":
			now NumberVarValue entry is wassterile;
		-- "wassterilef":
			now NumberVarValue entry is wassterilef;
		-- "watercount":
			now NumberVarValue entry is watercount;
		-- "waterneed":
			now NumberVarValue entry is waterneed;
		-- "weaselcount":
			now NumberVarValue entry is weaselcount;
		-- "WellRestedTimer":
			now NumberVarValue entry is WellRestedTimer;
		-- "werewolfcostumenosex":
			now NumberVarValue entry is werewolfcostumenosex;
		-- "WerewolfRelationship":
			now NumberVarValue entry is WerewolfRelationship;
		-- "whelpspotnum":
			now NumberVarValue entry is whelpspotnum;
		-- "WhiptailLossCount":
			now NumberVarValue entry is WhiptailLossCount;
		-- "WhoringExperience":
			now NumberVarValue entry is WhoringExperience;
		-- "WineFound":
			now NumberVarValue entry is WineFound;
		-- "wolfhermdefeat":
			now NumberVarValue entry is wolfhermdefeat;
		-- "wolfhermvictory":
			now NumberVarValue entry is wolfhermvictory;
		-- "WolfHorseMallCouple":
			now NumberVarValue entry is WolfHorseMallCouple;
		-- "workoutprice":
			now NumberVarValue entry is workoutprice;
		-- "wrcurseholdback":
			now NumberVarValue entry is wrcurseholdback;
		-- "wrcurseMoffatt":
			now NumberVarValue entry is wrcurseMoffatt;
		-- "wrcurseNermine":
			now NumberVarValue entry is wrcurseNermine;
		-- "wrcursestart":
			now NumberVarValue entry is wrcursestart;
		-- "wrcursestatus":
			now NumberVarValue entry is wrcursestatus;
		-- "wrdaycycle":
			now NumberVarValue entry is wrdaycycle;
		-- "wrestlechance":
			now NumberVarValue entry is wrestlechance;
		-- "wrestlingwolfdefeat":
			now NumberVarValue entry is wrestlingwolfdefeat;
		-- "wrlastNermine":
			now NumberVarValue entry is wrlastNermine;
		-- "wrmode":
			now NumberVarValue entry is wrmode;
		-- "wrscalevalue":
			now NumberVarValue entry is wrscalevalue;
		-- "wrwolfanal":
			now NumberVarValue entry is wrwolfanal;
		-- "wrwolfbeaten":
			now NumberVarValue entry is wrwolfbeaten;
		-- "WSlevel":
			now NumberVarValue entry is WSlevel;
		-- "wwheal":
			now NumberVarValue entry is wwheal;
		-- "wyvernbias":
			now NumberVarValue entry is wyvernbias;
		-- "WYVGEN":
			now NumberVarValue entry is WYVGEN;
		-- "wyvkin1att":
			now NumberVarValue entry is wyvkin1att;
		-- "wyvkin1gen":
			now NumberVarValue entry is wyvkin1gen;
		-- "wyvkin1lib":
			now NumberVarValue entry is wyvkin1lib;
		-- "wyvkin2att":
			now NumberVarValue entry is wyvkin2att;
		-- "wyvkin2gen":
			now NumberVarValue entry is wyvkin2gen;
		-- "wyvkin2lib":
			now NumberVarValue entry is wyvkin2lib;
		-- "wyvkin3att":
			now NumberVarValue entry is wyvkin3att;
		-- "wyvkin3gen":
			now NumberVarValue entry is wyvkin3gen;
		-- "wyvkin3lib":
			now NumberVarValue entry is wyvkin3lib;
		-- "wyvkin4att":
			now NumberVarValue entry is wyvkin4att;
		-- "wyvkin4gen":
			now NumberVarValue entry is wyvkin4gen;
		-- "wyvkin4lib":
			now NumberVarValue entry is wyvkin4lib;
		-- "wyvkinassign":
			now NumberVarValue entry is wyvkinassign;
		-- "wyvkinatt":
			now NumberVarValue entry is wyvkinatt;
		-- "wyvkinocc":
			now NumberVarValue entry is wyvkinocc;
		-- "WYVLEV":
			now NumberVarValue entry is WYVLEV;
		-- "wyvorgyroll":
			now NumberVarValue entry is wyvorgyroll;
		-- "WYVSF":
			now NumberVarValue entry is WYVSF;
		-- "yamatdom":
			now NumberVarValue entry is yamatdom;
		-- "ydcolor":
			now NumberVarValue entry is ydcolor;
		-- "YDSF":
			now NumberVarValue entry is YDSF;
		-- "ymgmode":
			now NumberVarValue entry is ymgmode;
		-- "ZebraLossCount":
			now NumberVarValue entry is ZebraLossCount;
		-- "ZekeRelationship":
			now NumberVarValue entry is ZekeRelationship;
		-- "zephyrpests":
			now NumberVarValue entry is zephyrpests;
		-- "zephyrtask":
			now NumberVarValue entry is zephyrtask;
		-- "ZieraFucked":
			now NumberVarValue entry is ZieraFucked;
		-- "zigseat":
			now NumberVarValue entry is zigseat;
		-- "zpc_Zc":
			now NumberVarValue entry is zpc_Zc;

to TruthVariableSave:
	choose blank row in Table of GameTruths;
	now TruthVarName entry is CurrentVariableName;
	if CurrentVariableName is:
		-- "A_Candy":
			now TruthVarValue entry is A_Candy;
		-- "A_Colleen":
			now TruthVarValue entry is A_Colleen;
		-- "A_David":
			now TruthVarValue entry is A_David;
		-- "A_Elijah":
			now TruthVarValue entry is A_Elijah;
		-- "A_Fang":
			now TruthVarValue entry is A_Fang;
		-- "A_Helen":
			now TruthVarValue entry is A_Helen;
		-- "A_Icarus":
			now TruthVarValue entry is A_Icarus;
		-- "A_Mack":
			now TruthVarValue entry is A_Mack;
		-- "A_Onyx":
			now TruthVarValue entry is A_Onyx;
		-- "A_Philip":
			now TruthVarValue entry is A_Philip;
		-- "A_Sally":
			now TruthVarValue entry is A_Sally;
		-- "A_Sam":
			now TruthVarValue entry is A_Sam;
		-- "A_Sandra":
			now TruthVarValue entry is A_Sandra;
		-- "A_Sarah":
			now TruthVarValue entry is A_Sarah;
		-- "A_Sarah2":
			now TruthVarValue entry is A_Sarah2;
		-- "A_Snow":
			now TruthVarValue entry is A_Snow;
		-- "A_Solstice":
			now TruthVarValue entry is A_Solstice;
		-- "A_Sven":
			now TruthVarValue entry is A_Sven;
		-- "A_Xerxes":
			now TruthVarValue entry is A_Xerxes;
		-- "Alexandracoffee":
			now TruthVarValue entry is Alexandracoffee;
		-- "alexandragshep1":
			now TruthVarValue entry is alexandragshep1;
		-- "Alexandrastory":
			now TruthVarValue entry is Alexandrastory;
		-- "Alexandrastory2":
			now TruthVarValue entry is Alexandrastory2;
		-- "Alexandrastory3":
			now TruthVarValue entry is Alexandrastory3;
		-- "alphaHuskyBountyState":
			now TruthVarValue entry is alphaHuskyBountyState;
		-- "alphawolfreplaced":
			now TruthVarValue entry is alphawolfreplaced;
		-- "altsealedentrance":
			now TruthVarValue entry is altsealedentrance;
		-- "animal heat":
			now TruthVarValue entry is animal heat;
		-- "animeclubfight":
			now TruthVarValue entry is animeclubfight;
		-- "artemisstatefairrt":
			now TruthVarValue entry is artemisstatefairrt;
		-- "AT_Diego":
			now TruthVarValue entry is AT_Diego;
		-- "AT_Jimmy":
			now TruthVarValue entry is AT_Jimmy;
		-- "AT_Lisa":
			now TruthVarValue entry is AT_Lisa;
		-- "AT_Marks":
			now TruthVarValue entry is AT_Marks;
		-- "AT_Matt":
			now TruthVarValue entry is AT_Matt;
		-- "AT_Mouse":
			now TruthVarValue entry is AT_Mouse;
		-- "AT_Patrol":
			now TruthVarValue entry is AT_Patrol;
		-- "at_patrol_01":
			now TruthVarValue entry is at_patrol_01;
		-- "AT_Paula":
			now TruthVarValue entry is AT_Paula;
		-- "AT_Philip":
			now TruthVarValue entry is AT_Philip;
		-- "AT_Qytat":
			now TruthVarValue entry is AT_Qytat;
		-- "AT_Repair":
			now TruthVarValue entry is AT_Repair;
		-- "AT_RLD":
			now TruthVarValue entry is AT_RLD;
		-- "AT_Sandra":
			now TruthVarValue entry is AT_Sandra;
		-- "AT_Sarah":
			now TruthVarValue entry is AT_Sarah;
		-- "AT_Snow":
			now TruthVarValue entry is AT_Snow;
		-- "AT_Stella":
			now TruthVarValue entry is AT_Stella;
		-- "AT_Sven":
			now TruthVarValue entry is AT_Sven;
		-- "autofeatloading":
			now TruthVarValue entry is autofeatloading;
		-- "BastetSexOrTalk":
			now TruthVarValue entry is BastetSexOrTalk;
		-- "bcplayroomlast":
			now TruthVarValue entry is bcplayroomlast;
		-- "bcseenhugeorca":
			now TruthVarValue entry is bcseenhugeorca;
		-- "bcseenkingchair":
			now TruthVarValue entry is bcseenkingchair;
		-- "bcseenkingknight":
			now TruthVarValue entry is bcseenkingknight;
		-- "bcseenplayroom":
			now TruthVarValue entry is bcseenplayroom;
		-- "bcseenpunchingpillars":
			now TruthVarValue entry is bcseenpunchingpillars;
		-- "bcseenthroneroom":
			now TruthVarValue entry is bcseenthroneroom;
		-- "bcswordplay":
			now TruthVarValue entry is bcswordplay;
		-- "beachrape":
			now TruthVarValue entry is beachrape;
		-- "beauceronmet":
			now TruthVarValue entry is beauceronmet;
		-- "birthedwhelp":
			now TruthVarValue entry is birthedwhelp;
		-- "blanchetalk1":
			now TruthVarValue entry is blanchetalk1;
		-- "blanchetalk2":
			now TruthVarValue entry is blanchetalk2;
		-- "blanchetalk3":
			now TruthVarValue entry is blanchetalk3;
		-- "BlindMode":
			now TruthVarValue entry is BlindMode;
		-- "blindmode": [previous spelling with other capitalization]
			now TruthVarValue entry is BlindMode;
		-- "bopseen":
			now TruthVarValue entry is bopseen;
		-- "BorisArtemistalk":
			now TruthVarValue entry is BorisArtemistalk;
		-- "boundrecover":
			now TruthVarValue entry is boundrecover;
		-- "boundstate":
			now TruthVarValue entry is boundstate;
		-- "bradfordstory1":
			now TruthVarValue entry is bradfordstory1;
		-- "bradfordstory2":
			now TruthVarValue entry is bradfordstory2;
		-- "bradfordstory3":
			now TruthVarValue entry is bradfordstory3;
		-- "bradfordstory4":
			now TruthVarValue entry is bradfordstory4;
		-- "brookeandrewtalk":
			now TruthVarValue entry is brookeandrewtalk;
		-- "busterstory1":
			now TruthVarValue entry is busterstory1;
		-- "busterstory2":
			now TruthVarValue entry is busterstory2;
		-- "ButterflyForeplay":
			now TruthVarValue entry is ButterflyForeplay;
		-- "ButterflyHasNegligee":
			now TruthVarValue entry is ButterflyHasNegligee;
		-- "ButterflyLikesYou":
			now TruthVarValue entry is ButterflyLikesYou;
		-- "ButterflyLove":
			now TruthVarValue entry is ButterflyLove;
		-- "ButterflyNegligeeTorn":
			now TruthVarValue entry is ButterflyNegligeeTorn;
		-- "ButterflyPantiesFound":
			now TruthVarValue entry is ButterflyPantiesFound;
		-- "ButterflyPregnant":
			now TruthVarValue entry is ButterflyPregnant;
		-- "ButterflyProcreated":
			now TruthVarValue entry is ButterflyProcreated;
		-- "ButterflyRevenge":
			now TruthVarValue entry is ButterflyRevenge;
		-- "callovi":
			now TruthVarValue entry is callovi;
		-- "cclosttarget":
			now TruthVarValue entry is cclosttarget;
		-- "cheetah_mpreg":
			now TruthVarValue entry is cheetah_mpreg;
		-- "chindem":
			now TruthVarValue entry is chindem;
		-- "christysausage":
			now TruthVarValue entry is christysausage;
		-- "ClassPaymentAccepted":
			now TruthVarValue entry is ClassPaymentAccepted;
		-- "cuptrick":
			now TruthVarValue entry is cuptrick;
		-- "demonBruteBountyState":
			now TruthVarValue entry is demonBruteBountyState;
		-- "DemonFox_Apologized":
			now TruthVarValue entry is DemonFox_Apologized;
		-- "DemonFox_Encountered":
			now TruthVarValue entry is DemonFox_Encountered;
		-- "DemonFox_PlayerDefeated":
			now TruthVarValue entry is DemonFox_PlayerDefeated;
		-- "DemonFox_PlayerFled":
			now TruthVarValue entry is DemonFox_PlayerFled;
		-- "DemonFox_PlayerSubmitted":
			now TruthVarValue entry is DemonFox_PlayerSubmitted;
		-- "DemonFox_PlayerWon":
			now TruthVarValue entry is DemonFox_PlayerWon;
		-- "DemonFox_PlayerWon_Fucked":
			now TruthVarValue entry is DemonFox_PlayerWon_Fucked;
		-- "DemonFoxRead":
			now TruthVarValue entry is DemonFoxRead;
		-- "dobieanal":
			now TruthVarValue entry is dobieanal;
		-- "DoranAnnoyed":
			now TruthVarValue entry is DoranAnnoyed;
		-- "DoranAutofired":
			now TruthVarValue entry is DoranAutofired;
		-- "DoranAutofireDiscussed":
			now TruthVarValue entry is DoranAutofireDiscussed;
		-- "DoranCumFilled":
			now TruthVarValue entry is DoranCumFilled;
		-- "DoranFirstTalk":
			now TruthVarValue entry is DoranFirstTalk;
		-- "DoranInternal":
			now TruthVarValue entry is DoranInternal;
		-- "DoranPlayerBlueballing":
			now TruthVarValue entry is DoranPlayerBlueballing;
		-- "DoranPlayerCumFilled":
			now TruthVarValue entry is DoranPlayerCumFilled;
		-- "DoranPlayerGenderRegard":
			now TruthVarValue entry is DoranPlayerGenderRegard;
		-- "DoranRefusedSex":
			now TruthVarValue entry is DoranRefusedSex;
		-- "DoranSelfGender":
			now TruthVarValue entry is DoranSelfGender;
		-- "drutah_msg1":
			now TruthVarValue entry is drutah_msg1;
		-- "duckyactive":
			now TruthVarValue entry is duckyactive;
		-- "ebheat_msg":
			now TruthVarValue entry is ebheat_msg;
		-- "ebneuterswitch":
			now TruthVarValue entry is ebneuterswitch;
		-- "enduring":
			now TruthVarValue entry is enduring;
		-- "eprodused":
			now TruthVarValue entry is eprodused;
		-- "facecheck":
			now TruthVarValue entry is facecheck;
		-- "fangsidney":
			now TruthVarValue entry is fangsidney;
		-- "FangToy":
			now TruthVarValue entry is FangToy;
		-- "fangvelos1":
			now TruthVarValue entry is fangvelos1;
		-- "featherready":
			now TruthVarValue entry is featherready;
		-- "feline_pride_defeat":
			now TruthVarValue entry is feline_pride_defeat;
		-- "FFSDUBM":
			now TruthVarValue entry is FFSDUBM;
		-- "firebreathready":
			now TruthVarValue entry is firebreathready;
		-- "firstgarg":
			now TruthVarValue entry is firstgarg;
		-- "floatertaken":
			now TruthVarValue entry is floatertaken;
		-- "flotmarked":
			now TruthVarValue entry is flotmarked;
		-- "Francoismixcleaned":
			now TruthVarValue entry is Francoismixcleaned;
		-- "Francoistalk1":
			now TruthVarValue entry is Francoistalk1;
		-- "fsnakevalid":
			now TruthVarValue entry is fsnakevalid;
		-- "garrettinfo1":
			now TruthVarValue entry is garrettinfo1;
		-- "gobdem":
			now TruthVarValue entry is gobdem;
		-- "grhouse":
			now TruthVarValue entry is grhouse;
		-- "gsd_attack":
			now TruthVarValue entry is gsd_attack;
		-- "gsd_fled":
			now TruthVarValue entry is gsd_fled;
		-- "gsd_male":
			now TruthVarValue entry is gsd_male;
		-- "gsd_slut":
			now TruthVarValue entry is gsd_slut;
		-- "gsd_special":
			now TruthVarValue entry is gsd_special;
		-- "HadGusBackgroundTalk":
			now TruthVarValue entry is HadGusBackgroundTalk;
		-- "hadiyahyg":
			now TruthVarValue entry is hadiyahyg;
		-- "HardMode":
			now TruthVarValue entry is HardMode;
		-- "heat enabled":
			now TruthVarValue entry is heat enabled;
		-- "heatturnskipper":
			now TruthVarValue entry is heatturnskipper;
		-- "hobo-food-gift":
			now TruthVarValue entry is hobo-food-gift;
		-- "hobo-grmilk":
			now TruthVarValue entry is hobo-grmilk;
		-- "hobo-libidosupp":
			now TruthVarValue entry is hobo-libidosupp;
		-- "hobo-water-gift":
			now TruthVarValue entry is hobo-water-gift;
		-- "honeygiven":
			now TruthVarValue entry is honeygiven;
		-- "houndfromhell":
			now TruthVarValue entry is houndfromhell;
		-- "hvoreoffer":
			now TruthVarValue entry is hvoreoffer;
		-- "hydraheadregrowth":
			now TruthVarValue entry is hydraheadregrowth;
		-- "HyenaMatVore":
			now TruthVarValue entry is HyenaMatVore;
		-- "icarusrim":
			now TruthVarValue entry is icarusrim;
		-- "icarusscene1":
			now TruthVarValue entry is icarusscene1;
		-- "icarusscene2":
			now TruthVarValue entry is icarusscene2;
		-- "impregnatevalid":
			now TruthVarValue entry is impregnatevalid;
		-- "inasituation":
			now TruthVarValue entry is inasituation;
		-- "inheat":
			now TruthVarValue entry is inheat;
		-- "insectlarva":
			now TruthVarValue entry is insectlarva;
		-- "internalCockbypass":
			now TruthVarValue entry is internalCockbypass;
		-- "internalBallsbypass":
			now TruthVarValue entry is internalBallsbypass;
		-- "isHellhound":
			now TruthVarValue entry is isHellhound;
		-- "ishunting":
			now TruthVarValue entry is ishunting;
		-- "joannadogsaved":
			now TruthVarValue entry is joannadogsaved;
		-- "karahbtalk":
			now TruthVarValue entry is karahbtalk;
		-- "kristenmsg1":
			now TruthVarValue entry is kristenmsg1;
		-- "kristenmsg2":
			now TruthVarValue entry is kristenmsg2;
		-- "kristenmsg3":
			now TruthVarValue entry is kristenmsg3;
		-- "kristenmsg4":
			now TruthVarValue entry is kristenmsg4;
		-- "kristenmsg5":
			now TruthVarValue entry is kristenmsg5;
		-- "kristentf3fuck":
			now TruthVarValue entry is kristentf3fuck;
		-- "ktcockmatch":
			now TruthVarValue entry is ktcockmatch;
		-- "KyrverthItemStealable":
			now TruthVarValue entry is KyrverthItemStealable;
		-- "KyrverthItemTaken":
			now TruthVarValue entry is KyrverthItemTaken;
		-- "KyrverthQuestHairGiven":
			now TruthVarValue entry is KyrverthQuestHairGiven;
		-- "KyrverthUsedArtifact":
			now TruthVarValue entry is KyrverthUsedArtifact;
		-- "LarissaTailed":
			now TruthVarValue entry is LarissaTailed;
		-- "LarissaWinged":
			now TruthVarValue entry is LarissaWinged;
		-- "LastTurnDay":
			now TruthVarValue entry is LastTurnDay;
		-- "latexErmineBountyState":
			now TruthVarValue entry is latexErmineBountyState;
		-- "latexhuskymode":
			now TruthVarValue entry is latexhuskymode;
		-- "leodinner":
			now TruthVarValue entry is leodinner;
		-- "Leonardcabinet":
			now TruthVarValue entry is Leonardcabinet;
		-- "Leonardcaraway":
			now TruthVarValue entry is Leonardcaraway;
		-- "Leonardwrdesk":
			now TruthVarValue entry is Leonardwrdesk;
		-- "leopocketwatch":
			now TruthVarValue entry is leopocketwatch;
		-- "leoshadowmet":
			now TruthVarValue entry is leoshadowmet;
		-- "LindseyMPregDetected":
			now TruthVarValue entry is LindseyMPregDetected;
		-- "lindseyws":
			now TruthVarValue entry is lindseyws;
		-- "maleHound":
			now TruthVarValue entry is maleHound;
		-- "mchristyanal":
			now TruthVarValue entry is mchristyanal;
		-- "mchristybottom":
			now TruthVarValue entry is mchristybottom;
		-- "mchristytop":
			now TruthVarValue entry is mchristytop;
		-- "mdstaffface":
			now TruthVarValue entry is mdstaffface;
		-- "medeapanda":
			now TruthVarValue entry is medeapanda;
		-- "medeapill":
			now TruthVarValue entry is medeapill;
		-- "medeaub":
			now TruthVarValue entry is medeaub;
		-- "Meredith_anal":
			now TruthVarValue entry is Meredith_anal;
		-- "Meredith_Colleen_fun1":
			now TruthVarValue entry is Meredith_Colleen_fun1;
		-- "Meredith_Vanessa_fun1":
			now TruthVarValue entry is Meredith_Vanessa_fun1;
		-- "Meredith_Vanessa_fun2":
			now TruthVarValue entry is Meredith_Vanessa_fun2;
		-- "messypigaltorgasm":
			now TruthVarValue entry is messypigaltorgasm;
		-- "MFSDUBM":
			now TruthVarValue entry is MFSDUBM;
		-- "MKunleashed":
			now TruthVarValue entry is MKunleashed;
		-- "mlamiaboobmash":
			now TruthVarValue entry is mlamiaboobmash;
		-- "mlamiamet":
			now TruthVarValue entry is mlamiamet;
		-- "monsterhit":
			now TruthVarValue entry is monsterhit;
		-- "MoreauDiscount":
			now TruthVarValue entry is MoreauDiscount;
		-- "MoreauPaymentAccepted":
			now TruthVarValue entry is MoreauPaymentAccepted;
		-- "mpreghijack":
			now TruthVarValue entry is mpreghijack;
		-- "mre04":
			now TruthVarValue entry is mre04;
		-- "msnakevalid":
			now TruthVarValue entry is msnakevalid;
		-- "muggerison":
			now TruthVarValue entry is muggerison;
		-- "nagawarning":
			now TruthVarValue entry is nagawarning;
		-- "NavCheckReturn":
			now TruthVarValue entry is NavCheckReturn;
		-- "ndmLisa":
			now TruthVarValue entry is ndmLisa;
		-- "nmformswitch":
			now TruthVarValue entry is nmformswitch;
		-- "NoHealMode":
			now TruthVarValue entry is NoHealMode;
		-- "nosquirrelanal":
			now TruthVarValue entry is nosquirrelanal;
		-- "obliging":
			now TruthVarValue entry is obliging;
		-- "onyxhappytalk":
			now TruthVarValue entry is onyxhappytalk;
		-- "onyxsmra":
			now TruthVarValue entry is onyxsmra;
		-- "onyxsmro":
			now TruthVarValue entry is onyxsmro;
		-- "onyxsmrv":
			now TruthVarValue entry is onyxsmrv;
		-- "ovipregalways":
			now TruthVarValue entry is ovipregalways;
		-- "ovipregmedeatalk":
			now TruthVarValue entry is ovipregmedeatalk;
		-- "ovipregnant":
			now TruthVarValue entry is ovipregnant;
		-- "pewtertorsosuppress":
			now TruthVarValue entry is pewtertorsosuppress;
		-- "PlayerPigBodied":
			now TruthVarValue entry is PlayerPigBodied;
		-- "ppatt":
			now TruthVarValue entry is ppatt;
		-- "pr_task01":
			now TruthVarValue entry is pr_task01;
		-- "pr_task02":
			now TruthVarValue entry is pr_task02;
		-- "pr_task03":
			now TruthVarValue entry is pr_task03;
		-- "pr_task04":
			now TruthVarValue entry is pr_task04;
		-- "preghijack":
			now TruthVarValue entry is preghijack;
		-- "rabbitified":
			now TruthVarValue entry is rabbitified;
		-- "rambjvirg":
			now TruthVarValue entry is rambjvirg;
		-- "ramslut":
			now TruthVarValue entry is ramslut;
		-- "RestoreMode":
			now TruthVarValue entry is RestoreMode;
		-- "rkrcheck":
			now TruthVarValue entry is rkrcheck;
		-- "rlingfound":
			now TruthVarValue entry is rlingfound;
		-- "roughing":
			now TruthVarValue entry is roughing;
		-- "rowing":
			now TruthVarValue entry is rowing;
		-- "sa_otteress":
			now TruthVarValue entry is sa_otteress;
		-- "sa_redvixen":
			now TruthVarValue entry is sa_redvixen;
		-- "sa_wusky":
			now TruthVarValue entry is sa_wusky;
		-- "saberKittyBountyState":
			now TruthVarValue entry is saberKittyBountyState;
		-- "samformtalk":
			now TruthVarValue entry is samformtalk;
		-- "sangenreg":
			now TruthVarValue entry is sangenreg;
		-- "SarahTehuantl":
			now TruthVarValue entry is SarahTehuantl;
		-- "sblzephyr":
			now TruthVarValue entry is sblzephyr;
		-- "SerenityVore":
			now TruthVarValue entry is SerenityVore;
		-- "sidneyanal":
			now TruthVarValue entry is sidneyanal;
		-- "sidneyformtalk":
			now TruthVarValue entry is sidneyformtalk;
		-- "sidneytalk1":
			now TruthVarValue entry is sidneytalk1;
		-- "sidneytalk2":
			now TruthVarValue entry is sidneytalk2;
		-- "sidneytalk3":
			now TruthVarValue entry is sidneytalk3;
		-- "sidneytalk4":
			now TruthVarValue entry is sidneytalk4;
		-- "sierramale":
			now TruthVarValue entry is sierramale;
		-- "sierrapure":
			now TruthVarValue entry is sierrapure;
		-- "skipcockchange":
			now TruthVarValue entry is skipcockchange;
		-- "skipretaliate":
			now TruthVarValue entry is skipretaliate;
		-- "spidergirlBountyState":
			now TruthVarValue entry is spidergirlBountyState;
		-- "ssbpg":
			now TruthVarValue entry is ssbpg;
		-- "ssgbii":
			now TruthVarValue entry is ssgbii;
		-- "ssgpd":
			now TruthVarValue entry is ssgpd;
		-- "sshh":
			now TruthVarValue entry is sshh;
		-- "ssmb":
			now TruthVarValue entry is ssmb;
		-- "ssos":
			now TruthVarValue entry is ssos;
		-- "ssxpa":
			now TruthVarValue entry is ssxpa;
		-- "stellapsurv":
			now TruthVarValue entry is stellapsurv;
		-- "sugarglidernote":
			now TruthVarValue entry is sugarglidernote;
		-- "sugferretjoke":
			now TruthVarValue entry is sugferretjoke;
		-- "Susanoversize":
			now TruthVarValue entry is Susanoversize;
		-- "SvenStory1":
			now TruthVarValue entry is SvenStory1;
		-- "Terminatorsleep":
			now TruthVarValue entry is Terminatorsleep;
		-- "TerminatorSleepActivated":
			now TruthVarValue entry is TerminatorSleepActivated;
		-- "thmpregdetect":
			now TruthVarValue entry is thmpregdetect;
		-- "TomeEventPending":
			now TruthVarValue entry is TomeEventPending;
		-- "toystoreoverride":
			now TruthVarValue entry is toystoreoverride;
		-- "toystoreseen":
			now TruthVarValue entry is toystoreseen;
		-- "ts_warrior":
			now TruthVarValue entry is ts_warrior;
		-- "tsw_victory":
			now TruthVarValue entry is tsw_victory;
		-- "twistedPimpBountyState":
			now TruthVarValue entry is twistedPimpBountyState;
		-- "twistfsdfeedmemory":
			now TruthVarValue entry is twistfsdfeedmemory;
		-- "TyrTraining":
			now TruthVarValue entry is TyrTraining;
		-- "ubspecial1":
			now TruthVarValue entry is ubspecial1;
		-- "utahmet":
			now TruthVarValue entry is utahmet;
		-- "vampiric":
			now TruthVarValue entry is vampiric;
		-- "velosapology":
			now TruthVarValue entry is velosapology;
		-- "velosfleepenalty":
			now TruthVarValue entry is velosfleepenalty;
		-- "velosheadstalk":
			now TruthVarValue entry is velosheadstalk;
		-- "velosparasitetalk":
			now TruthVarValue entry is velosparasitetalk;
		-- "velossaved":
			now TruthVarValue entry is velossaved;
		-- "velossavedtalk":
			now TruthVarValue entry is velossavedtalk;
		-- "velossavedyes":
			now TruthVarValue entry is velossavedyes;
		-- "vgeckoboost":
			now TruthVarValue entry is vgeckoboost;
		-- "vorespecial1":
			now TruthVarValue entry is vorespecial1;
		-- "weakwilled":
			now TruthVarValue entry is weakwilled;
		-- "WerewolfWatching":
			now TruthVarValue entry is WerewolfWatching;
		-- "wrcurseactivity":
			now TruthVarValue entry is wrcurseactivity;
		-- "wrdinoskel":
			now TruthVarValue entry is wrdinoskel;
		-- "wrwolfseen":
			now TruthVarValue entry is wrwolfseen;
		-- "yolandakeyfob":
			now TruthVarValue entry is yolandakeyfob;
		-- "yolandaqytat":
			now TruthVarValue entry is yolandaqytat;
		-- "yolandatreasure":
			now TruthVarValue entry is yolandatreasure;
		-- "zigorcycle":
			now TruthVarValue entry is zigorcycle;
		-- "zigorhadiyaquest":
			now TruthVarValue entry is zigorhadiyaquest;
		-- "zpc_inzone":
			now TruthVarValue entry is zpc_inzone;

to IndexedTextVariableSave:
	choose blank row in Table of GameIndexedTexts;
	now IndexedTextVarName entry is CurrentVariableName;
	if CurrentVariableName is:
		-- "bcupsize":
			now IndexedTextVarValue entry is bcupsize;
		-- "bmagic":
			now IndexedTextVarValue entry is bmagic;
		-- "cupsize":
			now IndexedTextVarValue entry is cupsize;

to TextListVariableSave:
	if CurrentVariableName is:
		-- "Childrenbodies":
			if the number of entries in Childrenbodies is not 0:
				repeat with y running from 1 to the number of entries in Childrenbodies:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of Childrenbodies;
		-- "Childrenfaces":
			if the number of entries in Childrenfaces is not 0:
				repeat with y running from 1 to the number of entries in Childrenfaces:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of Childrenfaces;
		-- "Childrenskins":
			if the number of entries in Childrenskins is not 0:
				repeat with y running from 1 to the number of entries in Childrenskins:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of Childrenskins;
		-- "Dolphinlist":
			if the number of entries in Dolphinlist is not 0:
				repeat with y running from 1 to the number of entries in Dolphinlist:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of Dolphinlist;
		-- "lbcomplist":
			if the number of entries in lbcomplist is not 0:
				repeat with y running from 1 to the number of entries in lbcomplist:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of lbcompList;
		-- "ndmlist":
			if the number of entries in ndmlist is not 0:
				repeat with y running from 1 to the number of entries in ndmlist:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of ndmList;
		-- "StoredSluts_Female":
			if the number of entries in StoredSluts_Female is not 0:
				repeat with y running from 1 to the number of entries in StoredSluts_Female:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of StoredSluts_Female;
		-- "StoredSluts_Male":
			if the number of entries in StoredSluts_Male is not 0:
				repeat with y running from 1 to the number of entries in StoredSluts_Male:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of StoredSluts_Male;
		-- "StoredSluts_Other":
			if the number of entries in StoredSluts_Other is not 0:
				repeat with y running from 1 to the number of entries in StoredSluts_Other:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of StoredSluts_Other;

to NumberListVariableSave:
	if CurrentVariableName is:
		-- "AlexandraNPC":
			if the number of entries in AlexandraNPC is not 0:
				repeat with y running from 1 to the number of entries in AlexandraNPC:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of AlexandraNPC;
		-- "bookcollection":
			if the number of entries in bookcollection is not 0:
				repeat with y running from 1 to the number of entries in bookcollection:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of bookcollection;
		-- "campuswander":
			if the number of entries in campuswander is not 0:
				repeat with y running from 1 to the number of entries in campuswander:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of campuswander;
		-- "Francois_Discovered":
			if the number of entries in Francois_Discovered is not 0:
				repeat with y running from 1 to the number of entries in Francois_Discovered:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of Francois_Discovered;
		-- "Francois_Undiscovered":
			if the number of entries in Francois_Undiscovered is not 0:
				repeat with y running from 1 to the number of entries in Francois_Undiscovered:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of Francois_Undiscovered;
		-- "leodenlist":
			if the number of entries in leodenlist is not 0:
				repeat with y running from 1 to the number of entries in leodenlist:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of leodenList;
		-- "leoparklist":
			if the number of entries in leoparklist is not 0:
				repeat with y running from 1 to the number of entries in leoparklist:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of leoparkList;
		-- "mrevents":
			if the number of entries in mrevents is not 0:
				repeat with y running from 1 to the number of entries in mrevents:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of mrevents;
		-- "pfpclist":
			if the number of entries in pfpclist is not 0:
				repeat with y running from 1 to the number of entries in pfpclist:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of pfpcList;
		-- "velospostmusings":
			if the number of entries in velospostmusings is not 0:
				repeat with y running from 1 to the number of entries in velospostmusings:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of velospostmusings;

to VariableLoad:
	VariableTextLoad;
	VariableNumberLoad;
	VariableTruthLoad;
	VariableIndexedTextLoad;
	VariableTextListLoad;
	VariableNumberListLoad;

to VariableTextLoad:
	if the File of TextSave exists:
		say "Restoring Texts...";
		read File of TextSave into the Table of GameTexts;
		repeat with x running from 1 to the number of filled rows in the Table of GameTexts:
			if there is no TextVarValue in row x of the Table of GameTexts, next;
			choose row x in the Table of GameTexts;
			[
			if debug is at level 10:
				say "Restoring text [TextVarName entry].";
			]
			if TextVarName entry is:
				-- "PronounChoice":
					if PronounChoice of Player is not TextVarValue entry, now PronounChoice of Player is TextVarValue entry;
				-- "PetMuttBreed":
					if PetMuttBreed is not TextVarValue entry, now PetMuttBreed is TextVarValue entry;
				-- "PetMuttName":
					if PetMuttName is not TextVarValue entry, now PetMuttName is TextVarValue entry;
				-- "PetMuttColor":
					if PetMuttColor is not TextVarValue entry, now PetMuttColor is TextVarValue entry;
				-- "PetMuttDetailedlook":
					if PetMuttDetailedlook is not TextVarValue entry, now PetMuttDetailedlook is TextVarValue entry;
				-- "battleground":
					if battleground is not TextVarValue entry, now battleground is TextVarValue entry;
				-- "bcfinalchairform":
					if bcfinalchairform is not TextVarValue entry, now bcfinalchairform is TextVarValue entry;
				-- "bcfinalpillarform":
					if bcfinalpillarform is not TextVarValue entry, now bcfinalpillarform is TextVarValue entry;
				-- "BlancheNonBinaryMomDad":
					if BlancheNonBinaryMomDad is not TextVarValue entry, now BlancheNonBinaryMomDad is TextVarValue entry;
				-- "BlancheNonBinaryMommyDaddy":
					if BlancheNonBinaryMommyDaddy is not TextVarValue entry, now BlancheNonBinaryMommyDaddy is TextVarValue entry;
				-- "BlueDesignator":
					if BlueDesignator is not TextVarValue entry, now BlueDesignator is TextVarValue entry;
				-- "bodyselector":
					if bodyselector is not TextVarValue entry, now bodyselector is TextVarValue entry;
				-- "BodyShopGuaranteedBody":
					if BodyShopGuaranteedBody is not TextVarValue entry, now BodyShopGuaranteedBody is TextVarValue entry;
				-- "BodyShopGuaranteedCrotch":
					if BodyShopGuaranteedCrotch is not TextVarValue entry, now BodyShopGuaranteedCrotch is TextVarValue entry;
				-- "BodyShopGuaranteedFace":
					if BodyShopGuaranteedFace is not TextVarValue entry, now BodyShopGuaranteedFace is TextVarValue entry;
				-- "BodyShopGuaranteedSkin":
					if BodyShopGuaranteedSkin is not TextVarValue entry, now BodyShopGuaranteedSkin is TextVarValue entry;
				-- "BodyShopGuaranteedTail":
					if BodyShopGuaranteedTail is not TextVarValue entry, now BodyShopGuaranteedTail is TextVarValue entry;
				-- "ButterflyAttire":
					if ButterflyAttire is not TextVarValue entry, now ButterflyAttire is TextVarValue entry;
				-- "ButterflyBreastDesc":
					if ButterflyBreastDesc is not TextVarValue entry, now ButterflyBreastDesc is TextVarValue entry;
				-- "ButterflyTummy":
					if ButterflyTummy is not TextVarValue entry, now ButterflyTummy is TextVarValue entry;
				-- "CorbinImpregnatingCock":
					if CorbinImpregnatingCock is not TextVarValue entry, now CorbinImpregnatingCock is TextVarValue entry;
				-- "descr":
					if descr is not TextVarValue entry, now descr is TextVarValue entry;
				-- "DoranPlayerRegard":
					if DoranPlayerRegard is not TextVarValue entry, now DoranPlayerRegard is TextVarValue entry;
				-- "ElijahChar-A":
					if ElijahChar-A is not TextVarValue entry, now ElijahChar-A is TextVarValue entry;
				-- "ElijahChar-B":
					if ElijahChar-B is not TextVarValue entry, now ElijahChar-B is TextVarValue entry;
				-- "ElijahChar-C":
					if ElijahChar-C is not TextVarValue entry, now ElijahChar-C is TextVarValue entry;
				-- "ElijahChar-D":
					if ElijahChar-D is not TextVarValue entry, now ElijahChar-D is TextVarValue entry;
				-- "ElijahChar-E":
					if ElijahChar-E is not TextVarValue entry, now ElijahChar-E is TextVarValue entry;
				-- "ElijahChar-F":
					if ElijahChar-F is not TextVarValue entry, now ElijahChar-F is TextVarValue entry;
				-- "ElijahChar-G":
					if ElijahChar-G is not TextVarValue entry, now ElijahChar-G is TextVarValue entry;
				-- "ElijahChar-H":
					if ElijahChar-H is not TextVarValue entry, now ElijahChar-H is TextVarValue entry;
				-- "ElijahChar-I":
					if ElijahChar-I is not TextVarValue entry, now ElijahChar-I is TextVarValue entry;
				-- "ElijahChar-J":
					if ElijahChar-J is not TextVarValue entry, now ElijahChar-J is TextVarValue entry;
				-- "ElijahChar-K":
					if ElijahChar-K is not TextVarValue entry, now ElijahChar-K is TextVarValue entry;
				-- "ElijahChar-L":
					if ElijahChar-L is not TextVarValue entry, now ElijahChar-L is TextVarValue entry;
				-- "ElijahChar-M":
					if ElijahChar-M is not TextVarValue entry, now ElijahChar-M is TextVarValue entry;
				-- "EricCurrentBabyDaddy":
					if EricCurrentBabyDaddy is not TextVarValue entry, now EricCurrentBabyDaddy is TextVarValue entry;
				-- "FeralMuttCurrentBreed":
					if FeralMuttCurrentBreed is not TextVarValue entry, now FeralMuttCurrentBreed is TextVarValue entry;
				-- "FeralMuttDetailedLook":
					if FeralMuttDetailedLook is not TextVarValue entry, now FeralMuttDetailedLook is TextVarValue entry;
				-- "FeralMuttFurColor":
					if FeralMuttFurColor is not TextVarValue entry, now FeralMuttFurColor is TextVarValue entry;
				-- "freefeatfun":
					if freefeatfun is not TextVarValue entry, now freefeatfun is TextVarValue entry;
				-- "freefeatgeneral":
					if freefeatgeneral is not TextVarValue entry, now freefeatgeneral is TextVarValue entry;
				-- "furdata":
					if furdata is not TextVarValue entry, now furdata is TextVarValue entry;
				-- "gche":
					if gche is not TextVarValue entry, now gche is TextVarValue entry;
				-- "gchim":
					if gchim is not TextVarValue entry, now gchim is TextVarValue entry;
				-- "gchis":
					if gchis is not TextVarValue entry, now gchis is TextVarValue entry;
				-- "gchishers":
					if gchishers is not TextVarValue entry, now gchishers is TextVarValue entry;
				-- "gdragon":
					if gdragon is not TextVarValue entry, now gdragon is TextVarValue entry;
				-- "ghe":
					if ghe is not TextVarValue entry, now ghe is TextVarValue entry;
				-- "ghim":
					if ghim is not TextVarValue entry, now ghim is TextVarValue entry;
				-- "ghis":
					if ghis is not TextVarValue entry, now ghis is TextVarValue entry;
				-- "ghishers":
					if ghishers is not TextVarValue entry, now ghishers is TextVarValue entry;
				-- "gmasculine":
					if gmasculine is not TextVarValue entry, now gmasculine is TextVarValue entry;
				-- "hdformname":
					if hdformname is not TextVarValue entry, now hdformname is TextVarValue entry;
				-- "headadjdata":
					if headadjdata is not TextVarValue entry, now headadjdata is TextVarValue entry;
				-- "HighestPlayerStat":
					if HighestPlayerStat is not TextVarValue entry, now HighestPlayerStat is TextVarValue entry;
				-- "Hope-BornDragonName":
					if Hope-BornDragonName is not TextVarValue entry, now Hope-BornDragonName is TextVarValue entry;
				-- "horndata":
					if horndata is not TextVarValue entry, now horndata is TextVarValue entry;
				-- "JenniferFirstKidSpecialStat":
					if JenniferFirstKidSpecialStat is not TextVarValue entry, now JenniferFirstKidSpecialStat is TextVarValue entry;
				-- "keychar":
					if keychar is not TextVarValue entry, now keychar is TextVarValue entry;
				-- "LarissaBody":
					if LarissaBody is not TextVarValue entry, now LarissaBody is TextVarValue entry;
				-- "LarissaBodyDesc":
					if LarissaBodyDesc is not TextVarValue entry, now LarissaBodyDesc is TextVarValue entry;
				-- "LarissaBodyType":
					if LarissaBodyType is not TextVarValue entry, now LarissaBodyType is TextVarValue entry;
				-- "LarissaCock":
					if LarissaCock is not TextVarValue entry, now LarissaCock is TextVarValue entry;
				-- "LarissaFace":
					if LarissaFace is not TextVarValue entry, now LarissaFace is TextVarValue entry;
				-- "LarissaFootForm":
					if LarissaFootForm is not TextVarValue entry, now LarissaFootForm is TextVarValue entry;
				-- "LarissaForm":
					if LarissaForm is not TextVarValue entry, now LarissaForm is TextVarValue entry;
				-- "LarissaGeneralLook":
					if LarissaGeneralLook is not TextVarValue entry, now LarissaGeneralLook is TextVarValue entry;
				-- "LarissaHandForm":
					if LarissaHandForm is not TextVarValue entry, now LarissaHandForm is TextVarValue entry;
				-- "LarissaInfName":
					if LarissaInfName is not TextVarValue entry, now LarissaInfName is TextVarValue entry;
				-- "LarissaMouth":
					if LarissaMouth is not TextVarValue entry, now LarissaMouth is TextVarValue entry;
				-- "LarissaSkin":
					if LarissaSkin is not TextVarValue entry, now LarissaSkin is TextVarValue entry;
				-- "LarissaTail":
					if LarissaTail is not TextVarValue entry, now LarissaTail is TextVarValue entry;
				-- "LarissaTFText":
					if LarissaTFText is not TextVarValue entry, now LarissaTFText is TextVarValue entry;
				-- "Lusting":
					if Lusting is not TextVarValue entry, now Lusting is TextVarValue entry;
				-- "musicmessage":
					if musicmessage is not TextVarValue entry, now musicmessage is TextVarValue entry;
				-- "NadiaChar-A":
					if NadiaChar-A is not TextVarValue entry, now NadiaChar-A is TextVarValue entry;
				-- "NadiaChar-B":
					if NadiaChar-B is not TextVarValue entry, now NadiaChar-B is TextVarValue entry;
				-- "NadiaChar-C":
					if NadiaChar-C is not TextVarValue entry, now NadiaChar-C is TextVarValue entry;
				-- "NadiaChar-D":
					if NadiaChar-D is not TextVarValue entry, now NadiaChar-D is TextVarValue entry;
				-- "NadiaChar-E":
					if NadiaChar-E is not TextVarValue entry, now NadiaChar-E is TextVarValue entry;
				-- "NadiaChar-F":
					if NadiaChar-F is not TextVarValue entry, now NadiaChar-F is TextVarValue entry;
				-- "NadiaChar-G":
					if NadiaChar-G is not TextVarValue entry, now NadiaChar-G is TextVarValue entry;
				-- "NadiaChar-H":
					if NadiaChar-H is not TextVarValue entry, now NadiaChar-H is TextVarValue entry;
				-- "NadiaChar-I":
					if NadiaChar-I is not TextVarValue entry, now NadiaChar-I is TextVarValue entry;
				-- "NadiaChar-J":
					if NadiaChar-J is not TextVarValue entry, now NadiaChar-J is TextVarValue entry;
				-- "NadiaChar-K":
					if NadiaChar-K is not TextVarValue entry, now NadiaChar-K is TextVarValue entry;
				-- "NadiaChar-L":
					if NadiaChar-L is not TextVarValue entry, now NadiaChar-L is TextVarValue entry;
				-- "NadiaChar-M":
					if NadiaChar-M is not TextVarValue entry, now NadiaChar-M is TextVarValue entry;
				-- "pfpbootymark":
					if pfpbootymark is not TextVarValue entry, now pfpbootymark is TextVarValue entry;
				-- "pfpcock":
					if pfpcock is not TextVarValue entry, now pfpcock is TextVarValue entry;
				-- "pfphair":
					if pfphair is not TextVarValue entry, now pfphair is TextVarValue entry;
				-- "pfpskin":
					if pfpskin is not TextVarValue entry, now pfpskin is TextVarValue entry;
				-- "ppcolor":
					if ppcolor is not TextVarValue entry, now ppcolor is TextVarValue entry;
				-- "PlayerClass":
					if PlayerClass is not TextVarValue entry, now PlayerClass is TextVarValue entry;
				-- "PlayerName":
					if Name of Player is not TextVarValue entry, now Name of Player is TextVarValue entry;
				-- "sangr":
					if sangr is not TextVarValue entry, now sangr is TextVarValue entry;
				-- "Scenario":
					if Scenario is not TextVarValue entry, now Scenario is TextVarValue entry;
				-- "sh-descr":
					if sh-descr is not TextVarValue entry, now sh-descr is TextVarValue entry;
				-- "siamesegender":
					if siamesegender is not TextVarValue entry, now siamesegender is TextVarValue entry;
				-- "slutname":
					if slutname is not TextVarValue entry, now slutname is TextVarValue entry;
				-- "StellaNPCInt":
					if StellaNPCInt is not TextVarValue entry, now StellaNPCInt is TextVarValue entry;
				-- "ubpreg":
					if ubpreg is not TextVarValue entry, now ubpreg is TextVarValue entry;
				-- "VikingKidShape":
					if VikingKidShape is not TextVarValue entry, now VikingKidShape is TextVarValue entry;
				-- "wolvloc":
					if wolvloc is not TextVarValue entry, now wolvloc is TextVarValue entry;
				-- "wrbody":
					if wrbody is not TextVarValue entry, now wrbody is TextVarValue entry;
				-- "wrbodydesc":
					if wrbodydesc is not TextVarValue entry, now wrbodydesc is TextVarValue entry;
				-- "wrBodyName":
					if wrBodyName is not TextVarValue entry, now wrBodyName is TextVarValue entry;
				-- "wrbodytype":
					if wrbodytype is not TextVarValue entry, now wrbodytype is TextVarValue entry;
				-- "wrcock":
					if wrcock is not TextVarValue entry, now wrcock is TextVarValue entry;
				-- "wrCockName":
					if wrCockName is not TextVarValue entry, now wrCockName is TextVarValue entry;
				-- "wrface":
					if wrface is not TextVarValue entry, now wrface is TextVarValue entry;
				-- "wrFaceName":
					if wrFaceName is not TextVarValue entry, now wrFaceName is TextVarValue entry;
				-- "wrskin":
					if wrskin is not TextVarValue entry, now wrskin is TextVarValue entry;
				-- "wrSkinName":
					if wrSkinName is not TextVarValue entry, now wrSkinName is TextVarValue entry;
				-- "wrtail":
					if wrtail is not TextVarValue entry, now wrtail is TextVarValue entry;
				-- "wrTailName":
					if wrTailName is not TextVarValue entry, now wrTailName is TextVarValue entry;
			[
			if debug is at level 10:
				say "DEBUG -> VarName '[TextVarName entry]' restored to '[TextVarValue entry]'.";
			]
	else:
		say "No Text Save File Found!";

to VariableNumberLoad:
	if the File of NumberSave exists:
		say "Restoring Numbers...";
		read File of NumberSave into the Table of GameNumbers;
		repeat with x running from 1 to the number of filled rows in the Table of GameNumbers:
			if there is no NumberVarValue in row x of the Table of GameNumbers, next;
			choose row x in the Table of GameNumbers;
			[
			if debug is at level 10:
				say "Restoring Number [NumberVarName entry].";
			]
			if NumberVarName entry is:
				-- "ColaVendingMachine_dispensed":
					if dispensed of Cola Vending Machine is not NumberVarValue entry, now dispensed of Cola Vending Machine is NumberVarValue entry;
				-- "featgained":
					if featgained of Player is not NumberVarValue entry, now featgained of Player is NumberVarValue entry;
				-- "absorb":
					if absorb is not NumberVarValue entry, now absorb is NumberVarValue entry;
				-- "addedlibido":
					if addedlibido is not NumberVarValue entry, now addedlibido is NumberVarValue entry;
				-- "afsmread":
					if afsmread is not NumberVarValue entry, now afsmread is NumberVarValue entry;
				-- "aidKenaz":
					if aidKenaz is not NumberVarValue entry, now aidKenaz is NumberVarValue entry;
				-- "AlanaRelationship":
					if AlanaRelationship is not NumberVarValue entry, now AlanaRelationship is NumberVarValue entry;
				-- "AlexandraAmySex":
					if AlexandraAmySex is not NumberVarValue entry, now AlexandraAmySex is NumberVarValue entry;
				-- "AlexandraBackstory":
					if AlexandraBackstory is not NumberVarValue entry, now AlexandraBackstory is NumberVarValue entry;
				-- "AlexandraBrutusInteraction":
					if AlexandraBrutusInteraction is not NumberVarValue entry, now AlexandraBrutusInteraction is NumberVarValue entry;
				-- "AlexandraBrutusPups":
					if AlexandraBrutusPups is not NumberVarValue entry, now AlexandraBrutusPups is NumberVarValue entry;
				-- "AlexandraKarelPups":
					if AlexandraKarelPups is not NumberVarValue entry, now AlexandraKarelPups is NumberVarValue entry;
				-- "AlexandraIsaacPups":
					if AlexandraIsaacPups is not NumberVarValue entry, now AlexandraIsaacPups is NumberVarValue entry;
				-- "AlexandraFarmhandPups":
					if AlexandraFarmhandPups is not NumberVarValue entry, now AlexandraFarmhandPups is NumberVarValue entry;
				-- "AlexandraNelsonPups":
					if AlexandraNelsonPups is not NumberVarValue entry, now AlexandraNelsonPups is NumberVarValue entry;
				-- "AlexandraCarlInteraction":
					if AlexandraCarlInteraction is not NumberVarValue entry, now AlexandraCarlInteraction is NumberVarValue entry;
				-- "AlexandraCarlPups":
					if AlexandraCarlPups is not NumberVarValue entry, now AlexandraCarlPups is NumberVarValue entry;
				-- "AlexandraCreampieCount":
					if AlexandraCreampieCount is not NumberVarValue entry, now AlexandraCreampieCount is NumberVarValue entry;
				-- "AlexandraEricInteraction":
					if AlexandraEricInteraction is not NumberVarValue entry, now AlexandraEricInteraction is NumberVarValue entry;
				-- "AlexandraFangPups":
					if AlexandraFangPups is not NumberVarValue entry, now AlexandraFangPups is NumberVarValue entry;
				-- "AlexandraGrowingPups":
					if AlexandraGrowingPups is not NumberVarValue entry, now AlexandraGrowingPups is NumberVarValue entry;
				-- "AlexandraKorvinInteraction":
					if AlexandraKorvinInteraction is not NumberVarValue entry, now AlexandraKorvinInteraction is NumberVarValue entry;
				-- "AlexandraKorvinPups":
					if AlexandraKorvinPups is not NumberVarValue entry, now AlexandraKorvinPups is NumberVarValue entry;
				-- "AlexandraPlayerPups":
					if AlexandraPlayerPups is not NumberVarValue entry, now AlexandraPlayerPups is NumberVarValue entry;
				-- "AlexandraPregCount":
					if AlexandraPregCount is not NumberVarValue entry, now AlexandraPregCount is NumberVarValue entry;
				-- "AlexandraPupDaddy":
					if AlexandraPupDaddy is not NumberVarValue entry, now AlexandraPupDaddy is NumberVarValue entry;
				-- "AlexandraSarahInteraction":
					if AlexandraSarahInteraction is not NumberVarValue entry, now AlexandraSarahInteraction is NumberVarValue entry;
				-- "alexbrunch":
					if alexbrunch is not NumberVarValue entry, now alexbrunch is NumberVarValue entry;
				-- "alexdiego":
					if alexdiego is not NumberVarValue entry, now alexdiego is NumberVarValue entry;
				-- "alexleeinfo":
					if alexleeinfo is not NumberVarValue entry, now alexleeinfo is NumberVarValue entry;
				-- "AlexProgress":
					if AlexProgress is not NumberVarValue entry, now AlexProgress is NumberVarValue entry;
				-- "AlexTalk":
					if AlexTalk is not NumberVarValue entry, now AlexTalk is NumberVarValue entry;
				-- "Alpha Wolfdefeat":
					if Alpha Wolfdefeat is not NumberVarValue entry, now Alpha Wolfdefeat is NumberVarValue entry;
				-- "Alphahuskypet":
					if Alphahuskypet is not NumberVarValue entry, now Alphahuskypet is NumberVarValue entry;
				-- "alphawolfbeaten":
					if alphawolfbeaten is not NumberVarValue entry, now alphawolfbeaten is NumberVarValue entry;
				-- "altattackmade":
					if altattackmade is not NumberVarValue entry, now altattackmade is NumberVarValue entry;
				-- "AmirRelationship":
					if AmirRelationship is not NumberVarValue entry, now AmirRelationship is NumberVarValue entry;
				-- "AmmyAffection":
					if AmmyAffection is not NumberVarValue entry, now AmmyAffection is NumberVarValue entry;
				-- "AmmyLastEvent":
					if AmmyLastEvent is not NumberVarValue entry, now AmmyLastEvent is NumberVarValue entry;
				-- "AmuranAwoken":
					if AmuranAwoken is not NumberVarValue entry, now AmuranAwoken is NumberVarValue entry;
				-- "AmyMaturityCounter":
					if AmyMaturityCounter is not NumberVarValue entry, now AmyMaturityCounter is NumberVarValue entry;
				-- "AmyNewPuppies":
					if AmyNewPuppies is not NumberVarValue entry, now AmyNewPuppies is NumberVarValue entry;
				-- "AmyShyness":
					if AmyShyness is not NumberVarValue entry, now AmyShyness is NumberVarValue entry;
				-- "anallevel":
					if anallevel is not NumberVarValue entry, now anallevel is NumberVarValue entry;
				-- "AnatomyCourse":
					if AnatomyCourse is not NumberVarValue entry, now AnatomyCourse is NumberVarValue entry;
				-- "AngieAroused":
					if AngieAroused is not NumberVarValue entry, now AngieAroused is NumberVarValue entry;
				-- "AngieHappy":
					if AngieHappy is not NumberVarValue entry, now AngieHappy is NumberVarValue entry;
				-- "AngieTalk":
					if AngieTalk is not NumberVarValue entry, now AngieTalk is NumberVarValue entry;
				-- "AngryHorguth":
					if AngryHorguth is not NumberVarValue entry, now AngryHorguth is NumberVarValue entry;
				-- "anubisrequest":
					if anubisrequest is not NumberVarValue entry, now anubisrequest is NumberVarValue entry;
				-- "AptAid":
					if AptAid is not NumberVarValue entry, now AptAid is NumberVarValue entry;
				-- "ArcherFucked":
					if ArcherFucked is not NumberVarValue entry, now ArcherFucked is NumberVarValue entry;
				-- "ArenaBattleCounter":
					if ArenaBattleCounter is not NumberVarValue entry, now ArenaBattleCounter is NumberVarValue entry;
				-- "AresDannyEncounters":
					if AresDannyEncounters is not NumberVarValue entry, now AresDannyEncounters is NumberVarValue entry;
				-- "artattempt":
					if artattempt is not NumberVarValue entry, now artattempt is NumberVarValue entry;
				-- "auto2entry":
					if auto2entry is not NumberVarValue entry, now auto2entry is NumberVarValue entry;
				-- "autoattackmode":
					if autoattackmode is not NumberVarValue entry, now autoattackmode is NumberVarValue entry;
				-- "autogender":
					if autogender is not NumberVarValue entry, now autogender is NumberVarValue entry;
				-- "automaticcombatcheck":
					if automaticcombatcheck is not NumberVarValue entry, now automaticcombatcheck is NumberVarValue entry;
				-- "automatonending":
					if automatonending is not NumberVarValue entry, now automatonending is NumberVarValue entry;
				-- "avoidance":
					if avoidance is not NumberVarValue entry, now avoidance is NumberVarValue entry;
				-- "Awesome_boredom":
					if Awesome_boredom is not NumberVarValue entry, now Awesome_boredom is NumberVarValue entry;
				-- "Awesome_counter":
					if Awesome_counter is not NumberVarValue entry, now Awesome_counter is NumberVarValue entry;
				-- "Awesome_forcesex":
					if Awesome_forcesex is not NumberVarValue entry, now Awesome_forcesex is NumberVarValue entry;
				-- "Awesome_noreward":
					if Awesome_noreward is not NumberVarValue entry, now Awesome_noreward is NumberVarValue entry;
				-- "Awesome_sex":
					if Awesome_sex is not NumberVarValue entry, now Awesome_sex is NumberVarValue entry;
				-- "AxelLastBJ":
					if AxelLastBJ is not NumberVarValue entry, now AxelLastBJ is NumberVarValue entry;
				-- "AxelRelationship":
					if AxelRelationship is not NumberVarValue entry, now AxelRelationship is NumberVarValue entry;
				-- "AzraelRelationship":
					if AzraelRelationship is not NumberVarValue entry, now AzraelRelationship is NumberVarValue entry;
				-- "balloversize":
					if balloversize is not NumberVarValue entry, now balloversize is NumberVarValue entry;
				-- "bananapeeled":
					if bananapeeled is not NumberVarValue entry, now bananapeeled is NumberVarValue entry;
				-- "bargainbinusagetotal":
					if bargainbinusagetotal is not NumberVarValue entry, now bargainbinusagetotal is NumberVarValue entry;
				-- "BarnabasRelationship":
					if BarnabasRelationship is not NumberVarValue entry, now BarnabasRelationship is NumberVarValue entry;
				-- "BarryFurSuspicion":
					if BarryFurSuspicion is not NumberVarValue entry, now BarryFurSuspicion is NumberVarValue entry;
				-- "BarryMotive":
					if BarryMotive is not NumberVarValue entry, now BarryMotive is NumberVarValue entry;
				-- "BastetApproval":
					if BastetApproval is not NumberVarValue entry, now BastetApproval is NumberVarValue entry;
				-- "BastetSexBattleCount":
					if BastetSexBattleCount is not NumberVarValue entry, now BastetSexBattleCount is NumberVarValue entry;
				-- "battleitem":
					if battleitem is not NumberVarValue entry, now battleitem is NumberVarValue entry;
				-- "bclatearrival":
					if bclatearrival is not NumberVarValue entry, now bclatearrival is NumberVarValue entry;
				-- "bcuntethered":
					if bcuntethered is not NumberVarValue entry, now bcuntethered is NumberVarValue entry;
				-- "beatgrnymph":
					if beatgrnymph is not NumberVarValue entry, now beatgrnymph is NumberVarValue entry;
				-- "beatsatyr":
					if beatsatyr is not NumberVarValue entry, now beatsatyr is NumberVarValue entry;
				-- "beatSatyress":
					if beatSatyress is not NumberVarValue entry, now beatSatyress is NumberVarValue entry;
				-- "BeforeCombat":
					if BeforeCombat is not NumberVarValue entry, now BeforeCombat is NumberVarValue entry;
				-- "BehaviorandCustoms":
					if BehaviorandCustoms is not NumberVarValue entry, now BehaviorandCustoms is NumberVarValue entry;
				-- "Bevkitty":
					if Bevkitty is not NumberVarValue entry, now Bevkitty is NumberVarValue entry;
				-- "Bevtalk":
					if Bevtalk is not NumberVarValue entry, now Bevtalk is NumberVarValue entry;
				-- "bikedest":
					if bikedest is not NumberVarValue entry, now bikedest is NumberVarValue entry;
				-- "BjornRelationship":
					if BjornRelationship is not NumberVarValue entry, now BjornRelationship is NumberVarValue entry;
				-- "BlissDrugTrip":
					if BlissDrugTrip is not NumberVarValue entry, now BlissDrugTrip is NumberVarValue entry;
				-- "blotintense":
					if blotintense is not NumberVarValue entry, now blotintense is NumberVarValue entry;
				-- "bluechaffrape":
					if bluechaffrape is not NumberVarValue entry, now bluechaffrape is NumberVarValue entry;
				-- "boatfound":
					if boatfound is not NumberVarValue entry, now boatfound is NumberVarValue entry;
				-- "BodyRelationship":
					if BodyRelationship is not NumberVarValue entry, now BodyRelationship is NumberVarValue entry;
				-- "BoghrimHuntingTrip":
					if BoghrimHuntingTrip is not NumberVarValue entry, now BoghrimHuntingTrip is NumberVarValue entry;
				-- "BoghrimMet":
					if BoghrimMet is not NumberVarValue entry, now BoghrimMet is NumberVarValue entry;
				-- "bonelust":
					if bonelust is not NumberVarValue entry, now bonelust is NumberVarValue entry;
				-- "bonusattack":
					if bonusattack is not NumberVarValue entry, now bonusattack is NumberVarValue entry;
				-- "bookfound":
					if bookfound is not NumberVarValue entry, now bookfound is NumberVarValue entry;
				-- "boosterfeats":
					if boosterfeats is not NumberVarValue entry, now boosterfeats is NumberVarValue entry;
				-- "bopdefeated":
					if bopdefeated is not NumberVarValue entry, now bopdefeated is NumberVarValue entry;
				-- "bopsongcount":
					if bopsongcount is not NumberVarValue entry, now bopsongcount is NumberVarValue entry;
				-- "borisfucked":
					if borisfucked is not NumberVarValue entry, now borisfucked is NumberVarValue entry;
				-- "Borismate":
					if Borismate is not NumberVarValue entry, now Borismate is NumberVarValue entry;
				-- "Borisquest":
					if Borisquest is not NumberVarValue entry, now Borisquest is NumberVarValue entry;
				-- "boristalk":
					if boristalk is not NumberVarValue entry, now boristalk is NumberVarValue entry;
				-- "boundcounter":
					if boundcounter is not NumberVarValue entry, now boundcounter is NumberVarValue entry;
				-- "boundmod":
					if boundmod is not NumberVarValue entry, now boundmod is NumberVarValue entry;
				-- "boundmod2":
					if boundmod2 is not NumberVarValue entry, now boundmod2 is NumberVarValue entry;
				-- "boundsegment":
					if boundsegment is not NumberVarValue entry, now boundsegment is NumberVarValue entry;
				-- "Bovine_type":
					if Bovine_type is not NumberVarValue entry, now Bovine_type is NumberVarValue entry;
				-- "bradfordbounty":
					if bradfordbounty is not NumberVarValue entry, now bradfordbounty is NumberVarValue entry;
				-- "bradfordBountyNum":
					if bradfordBountyNum is not NumberVarValue entry, now bradfordBountyNum is NumberVarValue entry;
				-- "bradfordstory":
					if bradfordstory is not NumberVarValue entry, now bradfordstory is NumberVarValue entry;
				-- "BrennanRelationship":
					if BrennanRelationship is not NumberVarValue entry, now BrennanRelationship is NumberVarValue entry;
				-- "BrianOral":
					if BrianOral is not NumberVarValue entry, now BrianOral is NumberVarValue entry;
				-- "BrianRelationship":
					if BrianRelationship is not NumberVarValue entry, now BrianRelationship is NumberVarValue entry;
				-- "BrianVisit":
					if BrianVisit is not NumberVarValue entry, now BrianVisit is NumberVarValue entry;
				-- "BridgetPowellEventVar":
					if BridgetPowellEventVar is not NumberVarValue entry, now BridgetPowellEventVar is NumberVarValue entry;
				-- "brookeanal":
					if brookeanal is not NumberVarValue entry, now brookeanal is NumberVarValue entry;
				-- "BrutusAmySex":
					if BrutusAmySex is not NumberVarValue entry, now BrutusAmySex is NumberVarValue entry;
				-- "BrutusEscalationTimer":
					if BrutusEscalationTimer is not NumberVarValue entry, now BrutusEscalationTimer is NumberVarValue entry;
				-- "BryceFucked":
					if BryceFucked is not NumberVarValue entry, now BryceFucked is NumberVarValue entry;
				-- "BryonyBearFuckWatched":
					if BryonyBearFuckWatched is not NumberVarValue entry, now BryonyBearFuckWatched is NumberVarValue entry;
				-- "bsextimer":
					if bsextimer is not NumberVarValue entry, now bsextimer is NumberVarValue entry;
				-- "BullMaster":
					if BullMaster is not NumberVarValue entry, now BullMaster is NumberVarValue entry;
				-- "BullTerrierSiblingsVar":
					if BullTerrierSiblingsVar is not NumberVarValue entry, now BullTerrierSiblingsVar is NumberVarValue entry;
				-- "bunnyjocknosex":
					if bunnyjocknosex is not NumberVarValue entry, now bunnyjocknosex is NumberVarValue entry;
				-- "ButterflyBabyGestation":
					if ButterflyBabyGestation is not NumberVarValue entry, now ButterflyBabyGestation is NumberVarValue entry;
				-- "ButterflyEncounters":
					if ButterflyEncounters is not NumberVarValue entry, now ButterflyEncounters is NumberVarValue entry;
				-- "ButterflyRaped":
					if ButterflyRaped is not NumberVarValue entry, now ButterflyRaped is NumberVarValue entry;
				-- "ByronRelationship":
					if ByronRelationship is not NumberVarValue entry, now ByronRelationship is NumberVarValue entry;
				-- "CampBravoWomenAllowed":
					if CampBravoWomenAllowed is not NumberVarValue entry, now CampBravoWomenAllowed is NumberVarValue entry;
				-- "CampusCoupleRelationship":
					if CampusCoupleRelationship is not NumberVarValue entry, now CampusCoupleRelationship is NumberVarValue entry;
				-- "CampusLoversProgressTurn":
					if CampusLoversProgressTurn is not NumberVarValue entry, now CampusLoversProgressTurn is NumberVarValue entry;
				-- "CampusLoversTrackingVariable":
					if CampusLoversTrackingVariable is not NumberVarValue entry, now CampusLoversTrackingVariable is NumberVarValue entry;
				-- "candytalk":
					if candytalk is not NumberVarValue entry, now candytalk is NumberVarValue entry;
				-- "CandyUrikInteraction":
					if CandyUrikInteraction is not NumberVarValue entry, now CandyUrikInteraction is NumberVarValue entry;
				-- "CaneFurSuspicion":
					if CaneFurSuspicion is not NumberVarValue entry, now CaneFurSuspicion is NumberVarValue entry;
				-- "CaneMotive":
					if CaneMotive is not NumberVarValue entry, now CaneMotive is NumberVarValue entry;
				-- "cannonprep":
					if cannonprep is not NumberVarValue entry, now cannonprep is NumberVarValue entry;
				-- "CaptiveBreederEncounter":
					if CaptiveBreederEncounter is not NumberVarValue entry, now CaptiveBreederEncounter is NumberVarValue entry;
				-- "CarlAmySex":
					if CarlAmySex is not NumberVarValue entry, now CarlAmySex is NumberVarValue entry;
				-- "CarlEricaInteraction":
					if CarlEricaInteraction is not NumberVarValue entry, now CarlEricaInteraction is NumberVarValue entry;
				-- "CarlEricInteraction":
					if CarlEricInteraction is not NumberVarValue entry, now CarlEricInteraction is NumberVarValue entry;
				-- "CarlLibraryEntry":
					if CarlLibraryEntry is not NumberVarValue entry, now CarlLibraryEntry is NumberVarValue entry;
				-- "CarlSarahInteraction":
					if CarlSarahInteraction is not NumberVarValue entry, now CarlSarahInteraction is NumberVarValue entry;
				-- "CarlSarahSex":
					if CarlSarahSex is not NumberVarValue entry, now CarlSarahSex is NumberVarValue entry;
				-- "CassandraFucked":
					if CassandraFucked is not NumberVarValue entry, now CassandraFucked is NumberVarValue entry;
				-- "catadiff":
					if catadiff is not NumberVarValue entry, now catadiff is NumberVarValue entry;
				-- "catafire":
					if catafire is not NumberVarValue entry, now catafire is NumberVarValue entry;
				-- "catdogstate":
					if catdogstate is not NumberVarValue entry, now catdogstate is NumberVarValue entry;
				-- "catnum":
					if catnum is not NumberVarValue entry, now catnum is NumberVarValue entry;
				-- "CatsVSDogsCounter":
					if CatsVSDogsCounter is not NumberVarValue entry, now CatsVSDogsCounter is NumberVarValue entry;
				-- "cboyEricSarahInteraction":
					if cboyEricSarahInteraction is not NumberVarValue entry, now cboyEricSarahInteraction is NumberVarValue entry;
				-- "cclosscount":
					if cclosscount is not NumberVarValue entry, now cclosscount is NumberVarValue entry;
				-- "ccmiss":
					if ccmiss is not NumberVarValue entry, now ccmiss is NumberVarValue entry;
				-- "CellDoorStatus":
					if CellDoorStatus is not NumberVarValue entry, now CellDoorStatus is NumberVarValue entry;
				-- "CellFourVisits":
					if CellFourVisits is not NumberVarValue entry, now CellFourVisits is NumberVarValue entry;
				-- "centaurmate":
					if centaurmate is not NumberVarValue entry, now centaurmate is NumberVarValue entry;
				-- "CenterVisits":
					if CenterVisits is not NumberVarValue entry, now CenterVisits is NumberVarValue entry;
				-- "centrallib":
					if centrallib is not NumberVarValue entry, now centrallib is NumberVarValue entry;
				-- "cerberusarousal":
					if cerberusarousal is not NumberVarValue entry, now cerberusarousal is NumberVarValue entry;
				-- "cerbmaulcount":
					if cerbmaulcount is not NumberVarValue entry, now cerbmaulcount is NumberVarValue entry;
				-- "cfgmode":
					if cfgmode is not NumberVarValue entry, now cfgmode is NumberVarValue entry;
				-- "charcounter":
					if charcounter is not NumberVarValue entry, now charcounter is NumberVarValue entry;
				-- "chargeup":
					if chargeup is not NumberVarValue entry, now chargeup is NumberVarValue entry;
				-- "ChaseMarking":
					if ChaseMarking is not NumberVarValue entry, now ChaseMarking is NumberVarValue entry;
				-- "ChaseOffspring":
					if ChaseOffspring is not NumberVarValue entry, now ChaseOffspring is NumberVarValue entry;
				-- "ChasePetplay":
					if ChasePetplay is not NumberVarValue entry, now ChasePetplay is NumberVarValue entry;
				-- "ChasePetplayTraining":
					if ChasePetplayTraining is not NumberVarValue entry, now ChasePetplayTraining is NumberVarValue entry;
				-- "ChaseSexCounter":
					if ChaseSexCounter is not NumberVarValue entry, now ChaseSexCounter is NumberVarValue entry;
				-- "CheerleaderFirstEncounter":
					if CheerleaderFirstEncounter is not NumberVarValue entry, now CheerleaderFirstEncounter is NumberVarValue entry;
				-- "Cheesecakemode":
					if Cheesecakemode is not NumberVarValue entry, now Cheesecakemode is NumberVarValue entry;
				-- "cheetahmate":
					if cheetahmate is not NumberVarValue entry, now cheetahmate is NumberVarValue entry;
				-- "ChrisPlayerOffspring":
					if ChrisPlayerOffspring is not NumberVarValue entry, now ChrisPlayerOffspring is NumberVarValue entry;
				-- "Christyquest":
					if Christyquest is not NumberVarValue entry, now Christyquest is NumberVarValue entry;
				-- "churchenter":
					if churchenter is not NumberVarValue entry, now churchenter is NumberVarValue entry;
				-- "clearnomore":
					if clearnomore is not NumberVarValue entry, now clearnomore is NumberVarValue entry;
				-- "CliveFuck":
					if CliveFuck is not NumberVarValue entry, now CliveFuck is NumberVarValue entry;
				-- "CloudKnowledge":
					if CloudKnowledge is not NumberVarValue entry, now CloudKnowledge is NumberVarValue entry;
				-- "CocoRelationship":
					if CocoRelationship is not NumberVarValue entry, now CocoRelationship is NumberVarValue entry;
				-- "ColleenAlpha":
					if ColleenAlpha is not NumberVarValue entry, now ColleenAlpha is NumberVarValue entry;
				-- "ColleenCollared":
					if ColleenCollared is not NumberVarValue entry, now ColleenCollared is NumberVarValue entry;
				-- "ColleenFound":
					if ColleenFound is not NumberVarValue entry, now ColleenFound is NumberVarValue entry;
				-- "ColleenSarahInteraction":
					if ColleenSarahInteraction is not NumberVarValue entry, now ColleenSarahInteraction is NumberVarValue entry;
				-- "ColleenSlut":
					if ColleenSlut is not NumberVarValue entry, now ColleenSlut is NumberVarValue entry;
				-- "ColleenSpray":
					if ColleenSpray is not NumberVarValue entry, now ColleenSpray is NumberVarValue entry;
				-- "ColleenTalk":
					if ColleenTalk is not NumberVarValue entry, now ColleenTalk is NumberVarValue entry;
				-- "CollegeLibraryBrutusEncounter":
					if CollegeLibraryBrutusEncounter is not NumberVarValue entry, now CollegeLibraryBrutusEncounter is NumberVarValue entry;
				-- "CollegeLibraryRyouseiEncounter":
					if CollegeLibraryRyouseiEncounter is not NumberVarValue entry, now CollegeLibraryRyouseiEncounter is NumberVarValue entry;
				-- "colliedefeat":
					if colliedefeat is not NumberVarValue entry, now colliedefeat is NumberVarValue entry;
				-- "combat abort":
					if combat abort is not NumberVarValue entry, now combat abort is NumberVarValue entry;
				-- "ConclaveKnowledge":
					if ConclaveKnowledge is not NumberVarValue entry, now ConclaveKnowledge is NumberVarValue entry;
				-- "ConfSvenEricInteraction":
					if ConfSvenEricInteraction is not NumberVarValue entry, now ConfSvenEricInteraction is NumberVarValue entry;
				-- "consortinsight":
					if consortinsight is not NumberVarValue entry, now consortinsight is NumberVarValue entry;
				-- "ContainmentBarrierEncounters":
					if ContainmentBarrierEncounters is not NumberVarValue entry, now ContainmentBarrierEncounters is NumberVarValue entry;
				-- "coonsex":
					if coonsex is not NumberVarValue entry, now coonsex is NumberVarValue entry;
				-- "coonstatus":
					if coonstatus is not NumberVarValue entry, now coonstatus is NumberVarValue entry;
				-- "CorbinKidCounter":
					if CorbinKidCounter is not NumberVarValue entry, now CorbinKidCounter is NumberVarValue entry;
				-- "CorbinPregCounter":
					if CorbinPregCounter is not NumberVarValue entry, now CorbinPregCounter is NumberVarValue entry;
				-- "CorbinPregnancy":
					if CorbinPregnancy is not NumberVarValue entry, now CorbinPregnancy is NumberVarValue entry;
				-- "corrvicchange1":
					if corrvicchange1 is not NumberVarValue entry, now corrvicchange1 is NumberVarValue entry;
				-- "corrvicchange2":
					if corrvicchange2 is not NumberVarValue entry, now corrvicchange2 is NumberVarValue entry;
				-- "CouraFriendDevelopments":
					if CouraFriendDevelopments is not NumberVarValue entry, now CouraFriendDevelopments is NumberVarValue entry;
				-- "CouraVirginity":
					if CouraVirginity is not NumberVarValue entry, now CouraVirginity is NumberVarValue entry;
				-- "CowBully":
					if CowBully is not NumberVarValue entry, now CowBully is NumberVarValue entry;
				-- "CoyoteTricks":
					if CoyoteTricks is not NumberVarValue entry, now CoyoteTricks is NumberVarValue entry;
				-- "CuckooWatched":
					if CuckooWatched is not NumberVarValue entry, now CuckooWatched is NumberVarValue entry;
				-- "cumgirlfed":
					if cumgirlfed is not NumberVarValue entry, now cumgirlfed is NumberVarValue entry;
				-- "cuntsmall":
					if cuntsmall is not NumberVarValue entry, now cuntsmall is NumberVarValue entry;
				-- "daisyimpreg":
					if daisyimpreg is not NumberVarValue entry, now daisyimpreg is NumberVarValue entry;
				-- "Daisytalk":
					if Daisytalk is not NumberVarValue entry, now Daisytalk is NumberVarValue entry;
				-- "Dam":
					if Dam is not NumberVarValue entry, now Dam is NumberVarValue entry;
				-- "damagein":
					if damagein is not NumberVarValue entry, now damagein is NumberVarValue entry;
				-- "damageout":
					if damageout is not NumberVarValue entry, now damageout is NumberVarValue entry;
				-- "DariusLostItems":
					if DariusLostItems is not NumberVarValue entry, now DariusLostItems is NumberVarValue entry;
				-- "DateDay":
					if DateDay is not NumberVarValue entry, now DateDay is NumberVarValue entry;
				-- "DateMonth":
					if DateMonth is not NumberVarValue entry, now DateMonth is NumberVarValue entry;
				-- "DateYear":
					if DateYear is not NumberVarValue entry, now DateYear is NumberVarValue entry;
				-- "DavidBrutusMarcVar":
					if DavidBrutusMarcVar is not NumberVarValue entry, now DavidBrutusMarcVar is NumberVarValue entry;
				-- "DavidBunkerEntry":
					if DavidBunkerEntry is not NumberVarValue entry, now DavidBunkerEntry is NumberVarValue entry;
				-- "DavidSarahInteraction":
					if DavidSarahInteraction is not NumberVarValue entry, now DavidSarahInteraction is NumberVarValue entry;
				-- "DBCaptureQuestVar":
					if DBCaptureQuestVar is not NumberVarValue entry, now DBCaptureQuestVar is NumberVarValue entry;
				-- "Delaymilcount":
					if Delaymilcount is not NumberVarValue entry, now Delaymilcount is NumberVarValue entry;
				-- "demandIndex":
					if demandIndex is not NumberVarValue entry, now demandIndex is NumberVarValue entry;
				-- "DemonBruteStatus":
					if DemonBruteStatus is not NumberVarValue entry, now DemonBruteStatus is NumberVarValue entry;
				-- "DemonFoxInteractions":
					if DemonFoxInteractions is not NumberVarValue entry, now DemonFoxInteractions is NumberVarValue entry;
				-- "DemonFoxStatus":
					if DemonFoxStatus is not NumberVarValue entry, now DemonFoxStatus is NumberVarValue entry;
				-- "dentedbikecount":
					if dentedbikecount is not NumberVarValue entry, now dentedbikecount is NumberVarValue entry;
				-- "didsubmit":
					if didsubmit is not NumberVarValue entry, now didsubmit is NumberVarValue entry;
				-- "Diegobitched":
					if Diegobitched is not NumberVarValue entry, now Diegobitched is NumberVarValue entry;
				-- "DiegoButtSlut":
					if DiegoButtSlut is not NumberVarValue entry, now DiegoButtSlut is NumberVarValue entry;
				-- "Diegochanged":
					if Diegochanged is not NumberVarValue entry, now Diegochanged is NumberVarValue entry;
				-- "Diegofucked":
					if Diegofucked is not NumberVarValue entry, now Diegofucked is NumberVarValue entry;
				-- "dinonest":
					if dinonest is not NumberVarValue entry, now dinonest is NumberVarValue entry;
				-- "dnfightresult":
					if dnfightresult is not NumberVarValue entry, now dnfightresult is NumberVarValue entry;
				-- "dobielibido":
					if dobielibido is not NumberVarValue entry, now dobielibido is NumberVarValue entry;
				-- "dobieresist":
					if dobieresist is not NumberVarValue entry, now dobieresist is NumberVarValue entry;
				-- "DoctorMouseProgress":
					if DoctorMouseProgress is not NumberVarValue entry, now DoctorMouseProgress is NumberVarValue entry;
				-- "dogfoodcount":
					if dogfoodcount is not NumberVarValue entry, now dogfoodcount is NumberVarValue entry;
				-- "doggyboned":
					if doggyboned is not NumberVarValue entry, now doggyboned is NumberVarValue entry;
				-- "doggyness":
					if doggyness is not NumberVarValue entry, now doggyness is NumberVarValue entry;
				-- "dollfound":
					if dollfound is not NumberVarValue entry, now dollfound is NumberVarValue entry;
				-- "dolphinbundle":
					if dolphinbundle is not NumberVarValue entry, now dolphinbundle is NumberVarValue entry;
				-- "dolphinconsent":
					if dolphinconsent is not NumberVarValue entry, now dolphinconsent is NumberVarValue entry;
				-- "dolphindefeat":
					if dolphindefeat is not NumberVarValue entry, now dolphindefeat is NumberVarValue entry;
				-- "dolphinmode":
					if dolphinmode is not NumberVarValue entry, now dolphinmode is NumberVarValue entry;
				-- "dolphintricked":
					if dolphintricked is not NumberVarValue entry, now dolphintricked is NumberVarValue entry;
				-- "dolphinwantmate":
					if dolphinwantmate is not NumberVarValue entry, now dolphinwantmate is NumberVarValue entry;
				-- "donkeywomanbeaten":
					if donkeywomanbeaten is not NumberVarValue entry, now donkeywomanbeaten is NumberVarValue entry;
				-- "donkeywomanfucked":
					if donkeywomanfucked is not NumberVarValue entry, now donkeywomanfucked is NumberVarValue entry;
				-- "DoranAutofireIntensity":
					if DoranAutofireIntensity is not NumberVarValue entry, now DoranAutofireIntensity is NumberVarValue entry;
				-- "DoranBallModStatus":
					if DoranBallModStatus is not NumberVarValue entry, now DoranBallModStatus is NumberVarValue entry;
				-- "DoranDiscussion_var1":
					if DoranDiscussion_var1 is not NumberVarValue entry, now DoranDiscussion_var1 is NumberVarValue entry;
				-- "DoranDiscussionExit":
					if DoranDiscussionExit is not NumberVarValue entry, now DoranDiscussionExit is NumberVarValue entry;
				-- "DoranDiscussionExit2":
					if DoranDiscussionExit2 is not NumberVarValue entry, now DoranDiscussionExit2 is NumberVarValue entry;
				-- "DoranDiscussionProgress":
					if DoranDiscussionProgress is not NumberVarValue entry, now DoranDiscussionProgress is NumberVarValue entry;
				-- "DoranDominanceTopic":
					if DoranDominanceTopic is not NumberVarValue entry, now DoranDominanceTopic is NumberVarValue entry;
				-- "DoranFoodTimer":
					if DoranFoodTimer is not NumberVarValue entry, now DoranFoodTimer is NumberVarValue entry;
				-- "DoranFoodType":
					if DoranFoodType is not NumberVarValue entry, now DoranFoodType is NumberVarValue entry;
				-- "DoranGenderTopic":
					if DoranGenderTopic is not NumberVarValue entry, now DoranGenderTopic is NumberVarValue entry;
				-- "DoranLastBallMod":
					if DoranLastBallMod is not NumberVarValue entry, now DoranLastBallMod is NumberVarValue entry;
				-- "DoranLastDiscussion":
					if DoranLastDiscussion is not NumberVarValue entry, now DoranLastDiscussion is NumberVarValue entry;
				-- "DoranLastInternalMod":
					if DoranLastInternalMod is not NumberVarValue entry, now DoranLastInternalMod is NumberVarValue entry;
				-- "DoranLastTitMod":
					if DoranLastTitMod is not NumberVarValue entry, now DoranLastTitMod is NumberVarValue entry;
				-- "DoranModificationDiscussed":
					if DoranModificationDiscussed is not NumberVarValue entry, now DoranModificationDiscussed is NumberVarValue entry;
				-- "DoranNeutralRole":
					if DoranNeutralRole is not NumberVarValue entry, now DoranNeutralRole is NumberVarValue entry;
				-- "DoranRimmingStatus":
					if DoranRimmingStatus is not NumberVarValue entry, now DoranRimmingStatus is NumberVarValue entry;
				-- "DoranRole":
					if DoranRole is not NumberVarValue entry, now DoranRole is NumberVarValue entry;
				-- "DoranRoleIntensity":
					if DoranRoleIntensity is not NumberVarValue entry, now DoranRoleIntensity is NumberVarValue entry;
				-- "DoranRoleplayInSession":
					if DoranRoleplayInSession is not NumberVarValue entry, now DoranRoleplayInSession is NumberVarValue entry;
				-- "DoranRP_var1":
					if DoranRP_var1 is not NumberVarValue entry, now DoranRP_var1 is NumberVarValue entry;
				-- "DoranRP_var2":
					if DoranRP_var2 is not NumberVarValue entry, now DoranRP_var2 is NumberVarValue entry;
				-- "DoranRP_var3":
					if DoranRP_var3 is not NumberVarValue entry, now DoranRP_var3 is NumberVarValue entry;
				-- "DoranRP_var4":
					if DoranRP_var4 is not NumberVarValue entry, now DoranRP_var4 is NumberVarValue entry;
				-- "DoranRPRevealRegard":
					if DoranRPRevealRegard is not NumberVarValue entry, now DoranRPRevealRegard is NumberVarValue entry;
				-- "DoranSelfBlueballing":
					if DoranSelfBlueballing is not NumberVarValue entry, now DoranSelfBlueballing is NumberVarValue entry;
				-- "DoranTitModStatus":
					if DoranTitModStatus is not NumberVarValue entry, now DoranTitModStatus is NumberVarValue entry;
				-- "DoranVoreDischarge":
					if DoranVoreDischarge is not NumberVarValue entry, now DoranVoreDischarge is NumberVarValue entry;
				-- "DoranVoreDuration":
					if DoranVoreDuration is not NumberVarValue entry, now DoranVoreDuration is NumberVarValue entry;
				-- "DoranVoreStatus":
					if DoranVoreStatus is not NumberVarValue entry, now DoranVoreStatus is NumberVarValue entry;
				-- "dragonessfuck":
					if dragonessfuck is not NumberVarValue entry, now dragonessfuck is NumberVarValue entry;
				-- "dragontaurcatch":
					if dragontaurcatch is not NumberVarValue entry, now dragontaurcatch is NumberVarValue entry;
				-- "dragontype":
					if dragontype is not NumberVarValue entry, now dragontype is NumberVarValue entry;
				-- "Drinkserved":
					if Drinkserved is not NumberVarValue entry, now Drinkserved is NumberVarValue entry;
				-- "dronevict":
					if dronevict is not NumberVarValue entry, now dronevict is NumberVarValue entry;
				-- "DVtaurcatch":
					if DVtaurcatch is not NumberVarValue entry, now DVtaurcatch is NumberVarValue entry;
				-- "DylanFucked":
					if DylanFucked is not NumberVarValue entry, now DylanFucked is NumberVarValue entry;
				-- "DylanSucked":
					if DylanSucked is not NumberVarValue entry, now DylanSucked is NumberVarValue entry;
				-- "eagledefeatnum":
					if eagledefeatnum is not NumberVarValue entry, now eagledefeatnum is NumberVarValue entry;
				-- "ebgatorcarrying":
					if ebgatorcarrying is not NumberVarValue entry, now ebgatorcarrying is NumberVarValue entry;
				-- "ebgatord":
					if ebgatord is not NumberVarValue entry, now ebgatord is NumberVarValue entry;
				-- "ebgatorhijack":
					if ebgatorhijack is not NumberVarValue entry, now ebgatorhijack is NumberVarValue entry;
				-- "ebheat_egg":
					if ebheat_egg is not NumberVarValue entry, now ebheat_egg is NumberVarValue entry;
				-- "ebwhelphijack":
					if ebwhelphijack is not NumberVarValue entry, now ebwhelphijack is NumberVarValue entry;
				-- "ec_fullcount":
					if ec_fullcount is not NumberVarValue entry, now ec_fullcount is NumberVarValue entry;
				-- "eggplanted":
					if eggplanted is not NumberVarValue entry, now eggplanted is NumberVarValue entry;
				-- "EgyptianRiddle":
					if EgyptianRiddle is not NumberVarValue entry, now EgyptianRiddle is NumberVarValue entry;
				-- "ElainePregnant":
					if ElainePregnant is not NumberVarValue entry, now ElainePregnant is NumberVarValue entry;
				-- "Electricprodstatus":
					if Electricprodstatus is not NumberVarValue entry, now Electricprodstatus is NumberVarValue entry;
				-- "ElfEncounters":
					if ElfEncounters is not NumberVarValue entry, now ElfEncounters is NumberVarValue entry;
				-- "ElfRimming":
					if ElfRimming is not NumberVarValue entry, now ElfRimming is NumberVarValue entry;
				-- "emap":
					if emap is not NumberVarValue entry, now emap is NumberVarValue entry;
				-- "embervicsex":
					if embervicsex is not NumberVarValue entry, now embervicsex is NumberVarValue entry;
				-- "EnrollmentTokens":
					if EnrollmentTokens is not NumberVarValue entry, now EnrollmentTokens is NumberVarValue entry;
				-- "eprecharge":
					if eprecharge is not NumberVarValue entry, now eprecharge is NumberVarValue entry;
				-- "eptarget":
					if eptarget is not NumberVarValue entry, now eptarget is NumberVarValue entry;
				-- "equinoiddefeat":
					if equinoiddefeat is not NumberVarValue entry, now equinoiddefeat is NumberVarValue entry;
				-- "equinoidstatus":
					if equinoidstatus is not NumberVarValue entry, now equinoidstatus is NumberVarValue entry;
				-- "EricAnalCounter":
					if EricAnalCounter is not NumberVarValue entry, now EricAnalCounter is NumberVarValue entry;
				-- "EricFleeingCountdown":
					if EricFleeingCountdown is not NumberVarValue entry, now EricFleeingCountdown is NumberVarValue entry;
				-- "EricOffspringCount":
					if EricOffspringCount is not NumberVarValue entry, now EricOffspringCount is NumberVarValue entry;
				-- "EricOrcPillMpreg":
					if EricOrcPillMpreg is not NumberVarValue entry, now EricOrcPillMpreg is NumberVarValue entry;
				-- "EricPregCount":
					if EricPregCount is not NumberVarValue entry, now EricPregCount is NumberVarValue entry;
				-- "EricPregTimer":
					if EricPregTimer is not NumberVarValue entry, now EricPregTimer is NumberVarValue entry;
				-- "EricSarahInteraction":
					if EricSarahInteraction is not NumberVarValue entry, now EricSarahInteraction is NumberVarValue entry;
				-- "EricVirginityTaken":
					if EricVirginityTaken is not NumberVarValue entry, now EricVirginityTaken is NumberVarValue entry;
				-- "erminecolor":
					if erminecolor is not NumberVarValue entry, now erminecolor is NumberVarValue entry;
				-- "EweFucked":
					if Stamina of Mary is not NumberVarValue entry, now Stamina of Mary is NumberVarValue entry;
				-- "Fancyaroused":
					if Fancyaroused is not NumberVarValue entry, now Fancyaroused is NumberVarValue entry;
				-- "fancyffcount":
					if fancyffcount is not NumberVarValue entry, now fancyffcount is NumberVarValue entry;
				-- "Fancyfucked":
					if Fancyfucked is not NumberVarValue entry, now Fancyfucked is NumberVarValue entry;
				-- "fancymfcount":
					if fancymfcount is not NumberVarValue entry, now fancymfcount is NumberVarValue entry;
				-- "Fancyquest":
					if Fancyquest is not NumberVarValue entry, now Fancyquest is NumberVarValue entry;
				-- "Fancytalk":
					if Fancytalk is not NumberVarValue entry, now Fancytalk is NumberVarValue entry;
				-- "fangcount":
					if fangcount is not NumberVarValue entry, now fangcount is NumberVarValue entry;
				-- "FangDashRel":
					if FangDashRel is not NumberVarValue entry, now FangDashRel is NumberVarValue entry;
				-- "FangSarahInteraction":
					if FangSarahInteraction is not NumberVarValue entry, now FangSarahInteraction is NumberVarValue entry;
				-- "FangWS":
					if FangWS is not NumberVarValue entry, now FangWS is NumberVarValue entry;
				-- "fashionfight":
					if fashionfight is not NumberVarValue entry, now fashionfight is NumberVarValue entry;
				-- "Featqualified":
					if Featqualified is not NumberVarValue entry, now Featqualified is NumberVarValue entry;
				-- "featunlock":
					if featunlock is not NumberVarValue entry, now featunlock is NumberVarValue entry;
				-- "Feline_attached":
					if Feline_attached is not NumberVarValue entry, now Feline_attached is NumberVarValue entry;
				-- "Feline_encountered":
					if Feline_encountered is not NumberVarValue entry, now Feline_encountered is NumberVarValue entry;
				-- "Feline_meow":
					if Feline_meow is not NumberVarValue entry, now Feline_meow is NumberVarValue entry;
				-- "feline_status":
					if feline_status is not NumberVarValue entry, now feline_status is NumberVarValue entry;
				-- "Feline_type":
					if Feline_type is not NumberVarValue entry, now Feline_type is NumberVarValue entry;
				-- "FelinoidRescued":
					if FelinoidRescued is not NumberVarValue entry, now FelinoidRescued is NumberVarValue entry;
				-- "FelixSaved":
					if FelixSaved is not NumberVarValue entry, now FelixSaved is NumberVarValue entry;
				-- "fellforward":
					if fellforward is not NumberVarValue entry, now fellforward is NumberVarValue entry;
				-- "femalecatHP":
					if femalecatHP is not NumberVarValue entry, now femalecatHP is NumberVarValue entry;
				-- "femonyxq":
					if femonyxq is not NumberVarValue entry, now femonyxq is NumberVarValue entry;
				-- "FeralBirths":
					if FeralBirths is not NumberVarValue entry, now FeralBirths is NumberVarValue entry;
				-- "FeralMuttDominance":
					if FeralMuttDominance is not NumberVarValue entry, now FeralMuttDominance is NumberVarValue entry;
				-- "FeralMuttFurColorNumber":
					if FeralMuttFurColorNumber is not NumberVarValue entry, now FeralMuttFurColorNumber is NumberVarValue entry;
				-- "ferretvisit":
					if ferretvisit is not NumberVarValue entry, now ferretvisit is NumberVarValue entry;
				-- "fertiletime":
					if fertiletime is not NumberVarValue entry, now fertiletime is NumberVarValue entry;
				-- "ffrivalry":
					if ffrivalry is not NumberVarValue entry, now ffrivalry is NumberVarValue entry;
				-- "fgryphon_TFcount":
					if fgryphon_TFcount is not NumberVarValue entry, now fgryphon_TFcount is NumberVarValue entry;
				-- "fightoutcome":
					if fightoutcome is not NumberVarValue entry, now fightoutcome is NumberVarValue entry;
				-- "Fin":
					if Fin is not NumberVarValue entry, now Fin is NumberVarValue entry;
				-- "findablestairs":
					if findablestairs is not NumberVarValue entry, now findablestairs is NumberVarValue entry;
				-- "Findfirefighter":
					if Findfirefighter is not NumberVarValue entry, now Findfirefighter is NumberVarValue entry;
				-- "findwires":
					if findwires is not NumberVarValue entry, now findwires is NumberVarValue entry;
				-- "FinnTrackingProgress":
					if FinnTrackingProgress is not NumberVarValue entry, now FinnTrackingProgress is NumberVarValue entry;
				-- "firebreathcount":
					if firebreathcount is not NumberVarValue entry, now firebreathcount is NumberVarValue entry;
				-- "FireSpritemode":
					if FireSpritemode is not NumberVarValue entry, now FireSpritemode is NumberVarValue entry;
				-- "FirstAtlantisVisit":
					if FirstAtlantisVisit is not NumberVarValue entry, now FirstAtlantisVisit is NumberVarValue entry;
				-- "FirstDescOuter":
					if FirstDescOuter is not NumberVarValue entry, now FirstDescOuter is NumberVarValue entry;
				-- "FirstMannequinTalk":
					if FirstMannequinTalk is not NumberVarValue entry, now FirstMannequinTalk is NumberVarValue entry;
				-- "fixedgens":
					if fixedgens is not NumberVarValue entry, now fixedgens is NumberVarValue entry;
				-- "flotintense":
					if flotintense is not NumberVarValue entry, now flotintense is NumberVarValue entry;
				-- "fonyxanalcount":
					if fonyxanalcount is not NumberVarValue entry, now fonyxanalcount is NumberVarValue entry;
				-- "fonyxvagcount":
					if fonyxvagcount is not NumberVarValue entry, now fonyxvagcount is NumberVarValue entry;
				-- "foodcount":
					if foodcount is not NumberVarValue entry, now foodcount is NumberVarValue entry;
				-- "foodneed":
					if foodneed is not NumberVarValue entry, now foodneed is NumberVarValue entry;
				-- "foodvendor":
					if foodvendor is not NumberVarValue entry, now foodvendor is NumberVarValue entry;
				-- "foodwaterbonus":
					if foodwaterbonus is not NumberVarValue entry, now foodwaterbonus is NumberVarValue entry;
				-- "ForcedBreederslutBoyTF":
					if ForcedBreederslutBoyTF is not NumberVarValue entry, now ForcedBreederslutBoyTF is NumberVarValue entry;
				-- "ForcedBreederslutTF":
					if ForcedBreederslutTF is not NumberVarValue entry, now ForcedBreederslutTF is NumberVarValue entry;
				-- "foundparts":
					if foundparts is not NumberVarValue entry, now foundparts is NumberVarValue entry;
				-- "FoxMasterEncounters":
					if FoxMasterEncounters is not NumberVarValue entry, now FoxMasterEncounters is NumberVarValue entry;
				-- "frankmalesex":
					if frankmalesex is not NumberVarValue entry, now frankmalesex is NumberVarValue entry;
				-- "franksex":
					if franksex is not NumberVarValue entry, now franksex is NumberVarValue entry;
				-- "FratPartyRecruiterProgression":
					if FratPartyRecruiterProgression is not NumberVarValue entry, now FratPartyRecruiterProgression is NumberVarValue entry;
				-- "frbatbeaten":
					if frbatbeaten is not NumberVarValue entry, now frbatbeaten is NumberVarValue entry;
				-- "freecred":
					if freecred is not NumberVarValue entry, now freecred is NumberVarValue entry;
				-- "FriesianRelationship":
					if FriesianRelationship is not NumberVarValue entry, now FriesianRelationship is NumberVarValue entry;
				-- "FrostDrakeBeaten":
					if FrostDrakeBeaten is not NumberVarValue entry, now FrostDrakeBeaten is NumberVarValue entry;
				-- "fsdbias":
					if fsdbias is not NumberVarValue entry, now fsdbias is NumberVarValue entry;
				-- "fsddom":
					if fsddom is not NumberVarValue entry, now fsddom is NumberVarValue entry;
				-- "fsdfeedmemory":
					if fsdfeedmemory is not NumberVarValue entry, now fsdfeedmemory is NumberVarValue entry;
				-- "FSDOPEN":
					if FSDOPEN is not NumberVarValue entry, now FSDOPEN is NumberVarValue entry;
				-- "fsdsub":
					if fsdsub is not NumberVarValue entry, now fsdsub is NumberVarValue entry;
				-- "fsnovel":
					if fsnovel is not NumberVarValue entry, now fsnovel is NumberVarValue entry;
				-- "FuckedByRazorbackBoar":
					if FuckedByRazorbackBoar is not NumberVarValue entry, now FuckedByRazorbackBoar is NumberVarValue entry;
				-- "FuckedBySpartan":
					if FuckedBySpartan is not NumberVarValue entry, now FuckedBySpartan is NumberVarValue entry;
				-- "FYDM":
					if FYDM is not NumberVarValue entry, now FYDM is NumberVarValue entry;
				-- "FYDTBMM":
					if FYDTBMM is not NumberVarValue entry, now FYDTBMM is NumberVarValue entry;
				-- "gameplay":
					if gameplay is not NumberVarValue entry, now gameplay is NumberVarValue entry;
				-- "gardenveg":
					if gardenveg is not NumberVarValue entry, now gardenveg is NumberVarValue entry;
				-- "GarthRelationship":
					if GarthRelationship is not NumberVarValue entry, now GarthRelationship is NumberVarValue entry;
				-- "gascloud":
					if gascloud is not NumberVarValue entry, now gascloud is NumberVarValue entry;
				-- "gatorconsent":
					if gatorconsent is not NumberVarValue entry, now gatorconsent is NumberVarValue entry;
				-- "gatordefeat":
					if gatordefeat is not NumberVarValue entry, now gatordefeat is NumberVarValue entry;
				-- "gazellesbeaten":
					if gazellesbeaten is not NumberVarValue entry, now gazellesbeaten is NumberVarValue entry;
				-- "gb_gatling_chance":
					if gb_gatling_chance is not NumberVarValue entry, now gb_gatling_chance is NumberVarValue entry;
				-- "gb_gatling_counter":
					if gb_gatling_counter is not NumberVarValue entry, now gb_gatling_counter is NumberVarValue entry;
				-- "gb_gun":
					if gb_gun is not NumberVarValue entry, now gb_gun is NumberVarValue entry;
				-- "gb_hair":
					if gb_hair is not NumberVarValue entry, now gb_hair is NumberVarValue entry;
				-- "generationConflictFlag":
					if generationConflictFlag is not NumberVarValue entry, now generationConflictFlag is NumberVarValue entry;
				-- "generatorfixing":
					if generatorfixing is not NumberVarValue entry, now generatorfixing is NumberVarValue entry;
				-- "GertyQuest":
					if GertyQuest is not NumberVarValue entry, now GertyQuest is NumberVarValue entry;
				-- "GertyRelationship":
					if GertyRelationship is not NumberVarValue entry, now GertyRelationship is NumberVarValue entry;
				-- "gettinglee":
					if gettinglee is not NumberVarValue entry, now gettinglee is NumberVarValue entry;
				-- "giantheight":
					if giantheight is not NumberVarValue entry, now giantheight is NumberVarValue entry;
				-- "GibsonRelationship":
					if GibsonRelationship is not NumberVarValue entry, now GibsonRelationship is NumberVarValue entry;
				-- "ginafucked":
					if ginafucked is not NumberVarValue entry, now ginafucked is NumberVarValue entry;
				-- "Ginaslut":
					if Ginaslut is not NumberVarValue entry, now Ginaslut is NumberVarValue entry;
				-- "Ginatalk":
					if Ginatalk is not NumberVarValue entry, now Ginatalk is NumberVarValue entry;
				-- "givingupton":
					if givingupton is not NumberVarValue entry, now givingupton is NumberVarValue entry;
				-- "GloryFate":
					if GloryFate is not NumberVarValue entry, now GloryFate is NumberVarValue entry;
				-- "gobgender":
					if gobgender is not NumberVarValue entry, now gobgender is NumberVarValue entry;
				-- "GooColossusProgress":
					if GooColossusProgress is not NumberVarValue entry, now GooColossusProgress is NumberVarValue entry;
				-- "GordonApprehended":
					if GordonApprehended is not NumberVarValue entry, now GordonApprehended is NumberVarValue entry;
				-- "GordonFurSuspicion":
					if GordonFurSuspicion is not NumberVarValue entry, now GordonFurSuspicion is NumberVarValue entry;
				-- "GordonMotive":
					if GordonMotive is not NumberVarValue entry, now GordonMotive is NumberVarValue entry;
				-- "GorillasMember":
					if GorillasMember is not NumberVarValue entry, now GorillasMember is NumberVarValue entry;
				-- "GorillasMemberQuestCounter":
					if GorillasMemberQuestCounter is not NumberVarValue entry, now GorillasMemberQuestCounter is NumberVarValue entry;
				-- "GorillasRep":
					if GorillasRep is not NumberVarValue entry, now GorillasRep is NumberVarValue entry;
				-- "gotcatares":
					if gotcatares is not NumberVarValue entry, now gotcatares is NumberVarValue entry;
				-- "grantbitch":
					if grantbitch is not NumberVarValue entry, now grantbitch is NumberVarValue entry;
				-- "grantfucked":
					if grantfucked is not NumberVarValue entry, now grantfucked is NumberVarValue entry;
				-- "grantsex":
					if grantsex is not NumberVarValue entry, now grantsex is NumberVarValue entry;
				-- "granttalk":
					if granttalk is not NumberVarValue entry, now granttalk is NumberVarValue entry;
				-- "GreenTumbTurn":
					if GreenTumbTurn is not NumberVarValue entry, now GreenTumbTurn is NumberVarValue entry;
				-- "gryphoncomforted":
					if gryphoncomforted is not NumberVarValue entry, now gryphoncomforted is NumberVarValue entry;
				-- "GryphonessKnowpreg":
					if GryphonessKnowpreg is not NumberVarValue entry, now GryphonessKnowpreg is NumberVarValue entry;
				-- "gsd_encounters":
					if gsd_encounters is not NumberVarValue entry, now gsd_encounters is NumberVarValue entry;
				-- "gsd_pet":
					if gsd_pet is not NumberVarValue entry, now gsd_pet is NumberVarValue entry;
				-- "gsd_var":
					if gsd_var is not NumberVarValue entry, now gsd_var is NumberVarValue entry;
				-- "GenderLock":
					if GenderLock is not NumberVarValue entry, now GenderLock is NumberVarValue entry;
				-- "gsgl":
					if GenderLock is not NumberVarValue entry, now GenderLock is NumberVarValue entry;
				-- "gshep_bed_scene":
					if gshep_bed_scene is not NumberVarValue entry, now gshep_bed_scene is NumberVarValue entry;
				-- "gshep_fights":
					if gshep_fights is not NumberVarValue entry, now gshep_fights is NumberVarValue entry;
				-- "gshep_inactive":
					if gshep_inactive is not NumberVarValue entry, now gshep_inactive is NumberVarValue entry;
				-- "gshep_postfight":
					if gshep_postfight is not NumberVarValue entry, now gshep_postfight is NumberVarValue entry;
				-- "gshep_sexscene":
					if gshep_sexscene is not NumberVarValue entry, now gshep_sexscene is NumberVarValue entry;
				-- "GShepLastScene":
					if GShepLastScene is not NumberVarValue entry, now GShepLastScene is NumberVarValue entry;
				-- "gshepsquad":
					if gshepsquad is not NumberVarValue entry, now gshepsquad is NumberVarValue entry;
				-- "GusTalkProgress":
					if GusTalkProgress is not NumberVarValue entry, now GusTalkProgress is NumberVarValue entry;
				-- "hadiyafucked":
					if hadiyafucked is not NumberVarValue entry, now hadiyafucked is NumberVarValue entry;
				-- "hagfeat":
					if hagfeat is not NumberVarValue entry, now hagfeat is NumberVarValue entry;
				-- "halodestroyed":
					if halodestroyed is not NumberVarValue entry, now halodestroyed is NumberVarValue entry;
				-- "Haroldaroused":
					if Haroldaroused is not NumberVarValue entry, now Haroldaroused is NumberVarValue entry;
				-- "Haroldfucked":
					if Haroldfucked is not NumberVarValue entry, now Haroldfucked is NumberVarValue entry;
				-- "Haroldtalk":
					if Haroldtalk is not NumberVarValue entry, now Haroldtalk is NumberVarValue entry;
				-- "Harpyconsent":
					if Harpyconsent is not NumberVarValue entry, now Harpyconsent is NumberVarValue entry;
				-- "Harpydefeat":
					if Harpydefeat is not NumberVarValue entry, now Harpydefeat is NumberVarValue entry;
				-- "hasgills":
					if hasgills is not NumberVarValue entry, now hasgills is NumberVarValue entry;
				-- "HasParts":
					if HasParts is not NumberVarValue entry, now HasParts is NumberVarValue entry;
				-- "hawkmanbeaten":
					if hawkmanbeaten is not NumberVarValue entry, now hawkmanbeaten is NumberVarValue entry;
				-- "HayatoHunger":
					if HayatoHunger is not NumberVarValue entry, now HayatoHunger is NumberVarValue entry;
				-- "HBMR":
					if HBMR is not NumberVarValue entry, now HBMR is NumberVarValue entry;
				-- "hdform":
					if hdform is not NumberVarValue entry, now hdform is NumberVarValue entry;
				-- "hdmode":
					if hdmode is not NumberVarValue entry, now hdmode is NumberVarValue entry;
				-- "hdog":
					if hdog is not NumberVarValue entry, now hdog is NumberVarValue entry;
				-- "heatdrive":
					if heatdrive is not NumberVarValue entry, now heatdrive is NumberVarValue entry;
				-- "HeatedPoodle":
					if HeatedPoodle is not NumberVarValue entry, now HeatedPoodle is NumberVarValue entry;
				-- "heatform":
					if heatform is not NumberVarValue entry, now heatform is NumberVarValue entry;
				-- "heatlevel":
					if heatlevel is not NumberVarValue entry, now heatlevel is NumberVarValue entry;
				-- "HelenPregnant":
					if HelenPregnant is not NumberVarValue entry, now HelenPregnant is NumberVarValue entry;
				-- "hellgatherquest":
					if hellgatherquest is not NumberVarValue entry, now hellgatherquest is NumberVarValue entry;
				-- "hellHoundLevel":
					if hellHoundLevel is not NumberVarValue entry, now hellHoundLevel is NumberVarValue entry;
				-- "HelpKenazOut":
					if HelpKenazOut is not NumberVarValue entry, now HelpKenazOut is NumberVarValue entry;
				-- "HermaidSub":
					if HermaidSub is not NumberVarValue entry, now HermaidSub is NumberVarValue entry;
				-- "hermlvconsent":
					if hermlvconsent is not NumberVarValue entry, now hermlvconsent is NumberVarValue entry;
				-- "hermlvmeet":
					if hermlvmeet is not NumberVarValue entry, now hermlvmeet is NumberVarValue entry;
				-- "hfgbread":
					if hfgbread is not NumberVarValue entry, now hfgbread is NumberVarValue entry;
				-- "HG_Flashback_Turns":
					if HG_Flashback_Turns is not NumberVarValue entry, now HG_Flashback_Turns is NumberVarValue entry;
				-- "hgryphon_TGcount":
					if hgryphon_TGcount is not NumberVarValue entry, now hgryphon_TGcount is NumberVarValue entry;
				-- "hgryphonwin":
					if hgryphonwin is not NumberVarValue entry, now hgryphonwin is NumberVarValue entry;
				-- "hgsqc":
					if hgsqc is not NumberVarValue entry, now hgsqc is NumberVarValue entry;
				-- "hijackgestation":
					if hijackgestation is not NumberVarValue entry, now hijackgestation is NumberVarValue entry;
				-- "hobo-food-reminder":
					if hobo-food-reminder is not NumberVarValue entry, now hobo-food-reminder is NumberVarValue entry;
				-- "hobo-grmilkhelp":
					if hobo-grmilkhelp is not NumberVarValue entry, now hobo-grmilkhelp is NumberVarValue entry;
				-- "hobo-journal":
					if hobo-journal is not NumberVarValue entry, now hobo-journal is NumberVarValue entry;
				-- "hobo-medical":
					if hobo-medical is not NumberVarValue entry, now hobo-medical is NumberVarValue entry;
				-- "hobo-medical-gift":
					if hobo-medical-gift is not NumberVarValue entry, now hobo-medical-gift is NumberVarValue entry;
				-- "hobo-water-reminder":
					if hobo-water-reminder is not NumberVarValue entry, now hobo-water-reminder is NumberVarValue entry;
				-- "Homarusearch":
					if Homarusearch is not NumberVarValue entry, now Homarusearch is NumberVarValue entry;
				-- "Homarusearching":
					if Homarusearching is not NumberVarValue entry, now Homarusearching is NumberVarValue entry;
				-- "Homarutalk":
					if Homarutalk is not NumberVarValue entry, now Homarutalk is NumberVarValue entry;
				-- "hospbattlelost":
					if hospbattlelost is not NumberVarValue entry, now hospbattlelost is NumberVarValue entry;
				-- "hospcountdown":
					if hospcountdown is not NumberVarValue entry, now hospcountdown is NumberVarValue entry;
				-- "hospfight":
					if hospfight is not NumberVarValue entry, now hospfight is NumberVarValue entry;
				-- "hospnav":
					if hospnav is not NumberVarValue entry, now hospnav is NumberVarValue entry;
				-- "hospquest":
					if hospquest is not NumberVarValue entry, now hospquest is NumberVarValue entry;
				-- "hospstairs":
					if hospstairs is not NumberVarValue entry, now hospstairs is NumberVarValue entry;
				-- "hpF of Sylvia":
					if hpF of Sylvia is not NumberVarValue entry, now hpF of Sylvia is NumberVarValue entry;
				-- "hpM of Sylvia":
					if hpM of Sylvia is not NumberVarValue entry, now hpM of Sylvia is NumberVarValue entry;
				-- "hsrp":
					if hsrp is not NumberVarValue entry, now hsrp is NumberVarValue entry;
				-- "huntfeat":
					if huntfeat is not NumberVarValue entry, now huntfeat is NumberVarValue entry;
				-- "hvorecount":
					if hvorecount is not NumberVarValue entry, now hvorecount is NumberVarValue entry;
				-- "hvorelevel":
					if hvorelevel is not NumberVarValue entry, now hvorelevel is NumberVarValue entry;
				-- "hydraheadcount":
					if hydraheadcount is not NumberVarValue entry, now hydraheadcount is NumberVarValue entry;
				-- "hydramaulcount":
					if hydramaulcount is not NumberVarValue entry, now hydramaulcount is NumberVarValue entry;
				-- "hyenaintel":
					if hyenaintel is not NumberVarValue entry, now hyenaintel is NumberVarValue entry;
				-- "hyenastabledeal":
					if hyenastabledeal is not NumberVarValue entry, now hyenastabledeal is NumberVarValue entry;
				-- "HyenaTrailing":
					if HyenaTrailing is not NumberVarValue entry, now HyenaTrailing is NumberVarValue entry;
				-- "HYG":
					if HYG is not NumberVarValue entry, now HYG is NumberVarValue entry;
				-- "hypernull":
					if hypernull is not NumberVarValue entry, now hypernull is NumberVarValue entry;
				-- "HyperSerumTracker":
					if HyperSerumTracker is not NumberVarValue entry, now HyperSerumTracker is NumberVarValue entry;
				-- "icarus_cbt":
					if icarus_cbt is not NumberVarValue entry, now icarus_cbt is NumberVarValue entry;
				-- "icarus_cumstuff":
					if icarus_cumstuff is not NumberVarValue entry, now icarus_cumstuff is NumberVarValue entry;
				-- "icarus_lastpred":
					if icarus_lastpred is not NumberVarValue entry, now icarus_lastpred is NumberVarValue entry;
				-- "IcarusAmySex":
					if IcarusAmySex is not NumberVarValue entry, now IcarusAmySex is NumberVarValue entry;
				-- "icarussex6_variant":
					if icarussex6_variant is not NumberVarValue entry, now icarussex6_variant is NumberVarValue entry;
				-- "impalamode":
					if impalamode is not NumberVarValue entry, now impalamode is NumberVarValue entry;
				-- "ImpPlayerMarkingTurn":
					if ImpPlayerMarkingTurn is not NumberVarValue entry, now ImpPlayerMarkingTurn is NumberVarValue entry;
				-- "inafight":
					if inafight is not NumberVarValue entry, now inafight is NumberVarValue entry;
				-- "incubusnosex":
					if incubusnosex is not NumberVarValue entry, now incubusnosex is NumberVarValue entry;
				-- "InflatableOtterSuitBindStage":
					if InflatableOtterSuitBindStage is not NumberVarValue entry, now InflatableOtterSuitBindStage is NumberVarValue entry;
				-- "InflatableOtterSuitMode":
					if InflatableOtterSuitMode is not NumberVarValue entry, now InflatableOtterSuitMode is NumberVarValue entry;
				-- "infvulpstate":
					if infvulpstate is not NumberVarValue entry, now infvulpstate is NumberVarValue entry;
				-- "invcolumns":
					if invcolumns is not NumberVarValue entry, now invcolumns is NumberVarValue entry;
				-- "invlinklistfilled":
					if invlinklistfilled is not NumberVarValue entry, now invlinklistfilled is NumberVarValue entry;
				-- "isTwinHere":
					if isTwinHere is not NumberVarValue entry, now isTwinHere is NumberVarValue entry;
				-- "JackalBoyTF":
					if JackalBoyTF is not NumberVarValue entry, now JackalBoyTF is NumberVarValue entry;
				-- "JackalManTF":
					if JackalManTF is not NumberVarValue entry, now JackalManTF is NumberVarValue entry;
				-- "JaksEncounters":
					if JaksEncounters is not NumberVarValue entry, now JaksEncounters is NumberVarValue entry;
				-- "jamesfed":
					if jamesfed is not NumberVarValue entry, now jamesfed is NumberVarValue entry;
				-- "jamessex":
					if jamessex is not NumberVarValue entry, now jamessex is NumberVarValue entry;
				-- "Janicearoused":
					if Janicearoused is not NumberVarValue entry, now Janicearoused is NumberVarValue entry;
				-- "Janicequest":
					if Janicequest is not NumberVarValue entry, now Janicequest is NumberVarValue entry;
				-- "Janicetalk":
					if Janicetalk is not NumberVarValue entry, now Janicetalk is NumberVarValue entry;
				-- "JayMarkRelationship":
					if JayMarkRelationship is not NumberVarValue entry, now JayMarkRelationship is NumberVarValue entry;
				-- "jbfound":
					if jbfound is not NumberVarValue entry, now jbfound is NumberVarValue entry;
				-- "jdigup":
					if jdigup is not NumberVarValue entry, now jdigup is NumberVarValue entry;
				-- "JennaRelationship":
					if JennaRelationship is not NumberVarValue entry, now JennaRelationship is NumberVarValue entry;
				-- "Jenniferfucked":
					if Jenniferfucked is not NumberVarValue entry, now Jenniferfucked is NumberVarValue entry;
				-- "Jenniferpregnant":
					if Jenniferpregnant is not NumberVarValue entry, now Jenniferpregnant is NumberVarValue entry;
				-- "Jenniferwolves":
					if Jenniferwolves is not NumberVarValue entry, now Jenniferwolves is NumberVarValue entry;
				-- "JewelHeistCaught":
					if JewelHeistCaught is not NumberVarValue entry, now JewelHeistCaught is NumberVarValue entry;
				-- "joannaharoldtalk":
					if joannaharoldtalk is not NumberVarValue entry, now joannaharoldtalk is NumberVarValue entry;
				-- "joannaoffernum":
					if joannaoffernum is not NumberVarValue entry, now joannaoffernum is NumberVarValue entry;
				-- "joannatalk":
					if joannatalk is not NumberVarValue entry, now joannatalk is NumberVarValue entry;
				-- "junknum":
					if junknum is not NumberVarValue entry, now junknum is NumberVarValue entry;
				-- "JustinRelationship":
					if JustinRelationship is not NumberVarValue entry, now JustinRelationship is NumberVarValue entry;
				-- "kangaroodefeat":
					if kangaroodefeat is not NumberVarValue entry, now kangaroodefeat is NumberVarValue entry;
				-- "KatyaDildoTaken":
					if KatyaDildoTaken is not NumberVarValue entry, now KatyaDildoTaken is NumberVarValue entry;
				-- "KatyaRelationship":
					if KatyaRelationship is not NumberVarValue entry, now KatyaRelationship is NumberVarValue entry;
				-- "KatyaResistance":
					if KatyaResistance is not NumberVarValue entry, now KatyaResistance is NumberVarValue entry;
				-- "keepbody":
					if keepbody is not NumberVarValue entry, now keepbody is NumberVarValue entry;
				-- "keepcock":
					if keepcock is not NumberVarValue entry, now keepcock is NumberVarValue entry;
				-- "keepface":
					if keepface is not NumberVarValue entry, now keepface is NumberVarValue entry;
				-- "keepskin":
					if keepskin is not NumberVarValue entry, now keepskin is NumberVarValue entry;
				-- "keeptail":
					if keeptail is not NumberVarValue entry, now keeptail is NumberVarValue entry;
				-- "Kenazaroused":
					if Kenazaroused is not NumberVarValue entry, now Kenazaroused is NumberVarValue entry;
				-- "Kenazdes":
					if Kenazdes is not NumberVarValue entry, now Kenazdes is NumberVarValue entry;
				-- "Kenaztalk":
					if Kenaztalk is not NumberVarValue entry, now Kenaztalk is NumberVarValue entry;
				-- "keycollection":
					if keycollection is not NumberVarValue entry, now keycollection is NumberVarValue entry;
				-- "KinksandFetishes":
					if KinksandFetishes is not NumberVarValue entry, now KinksandFetishes is NumberVarValue entry;
				-- "Kitsunearoused":
					if Kitsunearoused is not NumberVarValue entry, now Kitsunearoused is NumberVarValue entry;
				-- "Kitsunetalk":
					if Kitsunetalk is not NumberVarValue entry, now Kitsunetalk is NumberVarValue entry;
				-- "kittyness":
					if kittyness is not NumberVarValue entry, now kittyness is NumberVarValue entry;
				-- "knightcrestnum":
					if knightcrestnum is not NumberVarValue entry, now knightcrestnum is NumberVarValue entry;
				-- "KoballoonLossCounter":
					if KoballoonLossCounter is not NumberVarValue entry, now KoballoonLossCounter is NumberVarValue entry;
				-- "KoballoonMet":
					if KoballoonMet is not NumberVarValue entry, now KoballoonMet is NumberVarValue entry;
				-- "koboldgangmet":
					if koboldgangmet is not NumberVarValue entry, now koboldgangmet is NumberVarValue entry;
				-- "koboldgangsubs":
					if koboldgangsubs is not NumberVarValue entry, now koboldgangsubs is NumberVarValue entry;
				-- "KoboldScaleColor":
					if KoboldScaleColor is not NumberVarValue entry, now KoboldScaleColor is NumberVarValue entry;
				-- "Koghhstatus":
					if Koghhstatus is not NumberVarValue entry, now Koghhstatus is NumberVarValue entry;
				-- "KorvinSubmitCounter":
					if KorvinSubmitCounter is not NumberVarValue entry, now KorvinSubmitCounter is NumberVarValue entry;
				-- "kpstatus":
					if kpstatus is not NumberVarValue entry, now kpstatus is NumberVarValue entry;
				-- "KTO":
					if KTO is not NumberVarValue entry, now KTO is NumberVarValue entry;
				-- "KitsuneEventStage":
					if KitsuneEventStage is not NumberVarValue entry, now KitsuneEventStage is NumberVarValue entry;
				-- "ktspeciesbonus":
					if ktspeciesbonus is not NumberVarValue entry, now ktspeciesbonus is NumberVarValue entry;
				-- "KurtEvent":
					if KurtEvent is not NumberVarValue entry, now KurtEvent is NumberVarValue entry;
				-- "KurtRelationship":
					if KurtRelationship is not NumberVarValue entry, now KurtRelationship is NumberVarValue entry;
				-- "KyleRelationship":
					if KyleRelationship is not NumberVarValue entry, now KyleRelationship is NumberVarValue entry;
				-- "KyrverthMaleBoning":
					if KyrverthMaleBoning is not NumberVarValue entry, now KyrverthMaleBoning is NumberVarValue entry;
				-- "KyrverthQuestGiven":
					if KyrverthQuestGiven is not NumberVarValue entry, now KyrverthQuestGiven is NumberVarValue entry;
				-- "KyrverthStage":
					if KyrverthStage is not NumberVarValue entry, now KyrverthStage is NumberVarValue entry;
				-- "KyrverthTimer":
					if KyrverthTimer is not NumberVarValue entry, now KyrverthTimer is NumberVarValue entry;
				-- "Kyrverthitemget":
					if KyrverthItemGet is not NumberVarValue entry, now KyrverthItemGet is NumberVarValue entry;
				-- "KyrverthItemReturned":
					if KyrverthItemReturned is not NumberVarValue entry, now KyrverthItemReturned is NumberVarValue entry;
				-- "KyrverthNutGrowth":
					if KyrverthNutGrowth is not NumberVarValue entry, now KyrverthNutGrowth is NumberVarValue entry;
				-- "KyrverthSpikeGrowth":
					if KyrverthSpikeGrowth is not NumberVarValue entry, now KyrverthSpikeGrowth is NumberVarValue entry;
				-- "KyrverthWingType":
					if KyrverthWingType is not NumberVarValue entry, now KyrverthWingType is NumberVarValue entry;
				-- "KyrverthCockType":
					if KyrverthCockType is not NumberVarValue entry, now KyrverthCockType is NumberVarValue entry;
				-- "KyrverthLockoutTimer":
					if KyrverthLockoutTimer is not NumberVarValue entry, now KyrverthLockoutTimer is NumberVarValue entry;
				-- "KyrverthEndingTimer":
					if KyrverthEndingTimer is not NumberVarValue entry, now KyrverthEndingTimer is NumberVarValue entry;
				-- "KyrverthBodyChanged":
					if KyrverthBodyChanged is not NumberVarValue entry, now KyrverthBodyChanged is NumberVarValue entry;
				-- "KyrverthPanicWitnessed":
					if KyrverthPanicWitnessed is not NumberVarValue entry, now KyrverthPanicWitnessed is NumberVarValue entry;
				-- "labhost":
					if labhost is not NumberVarValue entry, now labhost is NumberVarValue entry;
				-- "labtimerA":
					if labtimerA is not NumberVarValue entry, now labtimerA is NumberVarValue entry;
				-- "labtimerB":
					if labtimerB is not NumberVarValue entry, now labtimerB is NumberVarValue entry;
				-- "lairconsent":
					if lairconsent is not NumberVarValue entry, now lairconsent is NumberVarValue entry;
				-- "LampVariable":
					if LampVariable is not NumberVarValue entry, now LampVariable is NumberVarValue entry;
				-- "LarissaBodycat":
					if LarissaBodycat is not NumberVarValue entry, now LarissaBodycat is NumberVarValue entry;
				-- "LarissaLastTF":
					if LarissaLastTF is not NumberVarValue entry, now LarissaLastTF is NumberVarValue entry;
				-- "LarissaOldgender":
					if LarissaOldgender is not NumberVarValue entry, now LarissaOldgender is NumberVarValue entry;
				-- "LarissTFcost":
					if LarissTFcost is not NumberVarValue entry, now LarissTFcost is NumberVarValue entry;
				-- "larvacounter":
					if larvacounter is not NumberVarValue entry, now larvacounter is NumberVarValue entry;
				-- "larvaegg":
					if larvaegg is not NumberVarValue entry, now larvaegg is NumberVarValue entry;
				-- "larvaexpel":
					if larvaexpel is not NumberVarValue entry, now larvaexpel is NumberVarValue entry;
				-- "larvalaid":
					if larvalaid is not NumberVarValue entry, now larvalaid is NumberVarValue entry;
				-- "last_infvulp_airhead":
					if last_infvulp_airhead is not NumberVarValue entry, now last_infvulp_airhead is NumberVarValue entry;
				-- "lastABEncounter":
					if lastABEncounter is not NumberVarValue entry, now lastABEncounter is NumberVarValue entry;
				-- "lastAlexandraPast":
					if lastAlexandraPast is not NumberVarValue entry, now lastAlexandraPast is NumberVarValue entry;
				-- "lastAlexandraSarahInteraction":
					if lastAlexandraSarahInteraction is not NumberVarValue entry, now lastAlexandraSarahInteraction is NumberVarValue entry;
				-- "lastAmySpotted":
					if lastAmySpotted is not NumberVarValue entry, now lastAmySpotted is NumberVarValue entry;
				-- "lastAndreTalk":
					if lastAndreTalk is not NumberVarValue entry, now lastAndreTalk is NumberVarValue entry;
				-- "LastAngieLearned":
					if LastAngieLearned is not NumberVarValue entry, now LastAngieLearned is NumberVarValue entry;
				-- "lastArtemisglomp":
					if lastArtemisglomp is not NumberVarValue entry, now lastArtemisglomp is NumberVarValue entry;
				-- "lastArtemisplay":
					if lastArtemisplay is not NumberVarValue entry, now lastArtemisplay is NumberVarValue entry;
				-- "LastAtlantisCenterWalkin":
					if LastAtlantisCenterWalkin is not NumberVarValue entry, now LastAtlantisCenterWalkin is NumberVarValue entry;
				-- "lastbcchair":
					if lastbcchair is not NumberVarValue entry, now lastbcchair is NumberVarValue entry;
				-- "lastbcduobeaten":
					if lastbcduobeaten is not NumberVarValue entry, now lastbcduobeaten is NumberVarValue entry;
				-- "lastBodyShopEvent":
					if lastBodyShopEvent is not NumberVarValue entry, now lastBodyShopEvent is NumberVarValue entry;
				-- "lastbookshelves":
					if lastbookshelves is not NumberVarValue entry, now lastbookshelves is NumberVarValue entry;
				-- "lastBrennanWolfScene":
					if lastBrennanWolfScene is not NumberVarValue entry, now lastBrennanWolfScene is NumberVarValue entry;
				-- "LastCampusWalkin":
					if LastCampusWalkin is not NumberVarValue entry, now LastCampusWalkin is NumberVarValue entry;
				-- "lastCandyfucked":
					if lastCandyfucked is not NumberVarValue entry, now lastCandyfucked is NumberVarValue entry;
				-- "lastCandyUrikInteraction":
					if lastCandyUrikInteraction is not NumberVarValue entry, now lastCandyUrikInteraction is NumberVarValue entry;
				-- "LastCandyWalkin":
					if LastCandyWalkin is not NumberVarValue entry, now LastCandyWalkin is NumberVarValue entry;
				-- "lastCarlEricInteraction":
					if lastCarlEricInteraction is not NumberVarValue entry, now lastCarlEricInteraction is NumberVarValue entry;
				-- "lastCarlKorvinInteraction":
					if lastCarlKorvinInteraction is not NumberVarValue entry, now lastCarlKorvinInteraction is NumberVarValue entry;
				-- "lastCarlSarahInteraction":
					if lastCarlSarahInteraction is not NumberVarValue entry, now lastCarlSarahInteraction is NumberVarValue entry;
				-- "lastcheetahturns":
					if lastcheetahturns is not NumberVarValue entry, now lastcheetahturns is NumberVarValue entry;
				-- "lastChristyfucked":
					if lastChristyfucked is not NumberVarValue entry, now lastChristyfucked is NumberVarValue entry;
				-- "lastchurchattempt":
					if lastchurchattempt is not NumberVarValue entry, now lastchurchattempt is NumberVarValue entry;
				-- "lastColleenSarahInteraction":
					if lastColleenSarahInteraction is not NumberVarValue entry, now lastColleenSarahInteraction is NumberVarValue entry;
				-- "lastconfession":
					if lastconfession is not NumberVarValue entry, now lastconfession is NumberVarValue entry;
				-- "lastConfSvenEricInteraction":
					if lastConfSvenEricInteraction is not NumberVarValue entry, now lastConfSvenEricInteraction is NumberVarValue entry;
				-- "lastDavidSarahInteraction":
					if lastDavidSarahInteraction is not NumberVarValue entry, now lastDavidSarahInteraction is NumberVarValue entry;
				-- "Lastdelaymilitary":
					if Lastdelaymilitary is not NumberVarValue entry, now Lastdelaymilitary is NumberVarValue entry;
				-- "lastdenevent":
					if lastdenevent is not NumberVarValue entry, now lastdenevent is NumberVarValue entry;
				-- "lastdobiemess":
					if lastdobiemess is not NumberVarValue entry, now lastdobiemess is NumberVarValue entry;
				-- "LastDrinkserved":
					if LastDrinkserved is not NumberVarValue entry, now LastDrinkserved is NumberVarValue entry;
				-- "lastDrMousefucked":
					if lastDrMousefucked is not NumberVarValue entry, now lastDrMousefucked is NumberVarValue entry;
				-- "lastEricSarahInteraction":
					if lastEricSarahInteraction is not NumberVarValue entry, now lastEricSarahInteraction is NumberVarValue entry;
				-- "lastFangSarahInteraction":
					if lastFangSarahInteraction is not NumberVarValue entry, now lastFangSarahInteraction is NumberVarValue entry;
				-- "lastFelixTalk":
					if lastFelixTalk is not NumberVarValue entry, now lastFelixTalk is NumberVarValue entry;
				-- "lastfgryphon_TF":
					if lastfgryphon_TF is not NumberVarValue entry, now lastfgryphon_TF is NumberVarValue entry;
				-- "lastfightround":
					if lastfightround is not NumberVarValue entry, now lastfightround is NumberVarValue entry;
				-- "lastflowersmell":
					if lastflowersmell is not NumberVarValue entry, now lastflowersmell is NumberVarValue entry;
				-- "Lastfoodrun":
					if Lastfoodrun is not NumberVarValue entry, now Lastfoodrun is NumberVarValue entry;
				-- "lastfsdfeeding":
					if lastfsdfeeding is not NumberVarValue entry, now lastfsdfeeding is NumberVarValue entry;
				-- "Lastgameplay":
					if Lastgameplay is not NumberVarValue entry, now Lastgameplay is NumberVarValue entry;
				-- "lastgardenveg":
					if lastgardenveg is not NumberVarValue entry, now lastgardenveg is NumberVarValue entry;
				-- "lastGuardBeg":
					if lastGuardBeg is not NumberVarValue entry, now lastGuardBeg is NumberVarValue entry;
				-- "LastHelenTalk":
					if LastHelenTalk is not NumberVarValue entry, now LastHelenTalk is NumberVarValue entry;
				-- "LastHelpKenazOut":
					if LastHelpKenazOut is not NumberVarValue entry, now LastHelpKenazOut is NumberVarValue entry;
				-- "lasthgryphon_TG":
					if lasthgryphon_TG is not NumberVarValue entry, now lasthgryphon_TG is NumberVarValue entry;
				-- "LastImpMeeting":
					if LastImpMeeting is not NumberVarValue entry, now LastImpMeeting is NumberVarValue entry;
				-- "lastinvfoundindex":
					if lastinvfoundindex is not NumberVarValue entry, now lastinvfoundindex is NumberVarValue entry;
				-- "LastJaksEncounter":
					if LastJaksEncounter is not NumberVarValue entry, now LastJaksEncounter is NumberVarValue entry;
				-- "LastJenniferSoda":
					if LastJenniferSoda is not NumberVarValue entry, now LastJenniferSoda is NumberVarValue entry;
				-- "lastjoannajuice":
					if lastjoannajuice is not NumberVarValue entry, now lastjoannajuice is NumberVarValue entry;
				-- "Lastjournaluse":
					if Lastjournaluse is not NumberVarValue entry, now Lastjournaluse is NumberVarValue entry;
				-- "LastKenazdes":
					if LastKenazdes is not NumberVarValue entry, now LastKenazdes is NumberVarValue entry;
				-- "lastleomidcoitus":
					if lastleomidcoitus is not NumberVarValue entry, now lastleomidcoitus is NumberVarValue entry;
				-- "lastlibrarybrowse":
					if lastlibrarybrowse is not NumberVarValue entry, now lastlibrarybrowse is NumberVarValue entry;
				-- "lastLilithTalk":
					if lastLilithTalk is not NumberVarValue entry, now lastLilithTalk is NumberVarValue entry;
				-- "LastLockerroomTrioMeet":
					if LastLockerroomTrioMeet is not NumberVarValue entry, now LastLockerroomTrioMeet is NumberVarValue entry;
				-- "lastMallInteriorScene":
					if lastMallInteriorScene is not NumberVarValue entry, now lastMallInteriorScene is NumberVarValue entry;
				-- "Lastmarefed":
					if Lastmarefed is not NumberVarValue entry, now Lastmarefed is NumberVarValue entry;
				-- "LastMarketWalkin":
					if LastMarketWalkin is not NumberVarValue entry, now LastMarketWalkin is NumberVarValue entry;
				-- "Lastmidnightmimiced":
					if Lastmidnightmimiced is not NumberVarValue entry, now Lastmidnightmimiced is NumberVarValue entry;
				-- "lastmilking":
					if lastmilking is not NumberVarValue entry, now lastmilking is NumberVarValue entry;
				-- "lastMKoutcome":
					if lastMKoutcome is not NumberVarValue entry, now lastMKoutcome is NumberVarValue entry;
				-- "LastMoreauPartSale":
					if LastMoreauPartSale is not NumberVarValue entry, now LastMoreauPartSale is NumberVarValue entry;
				-- "lastNadiaSpotted":
					if lastNadiaSpotted is not NumberVarValue entry, now lastNadiaSpotted is NumberVarValue entry;
				-- "lastoctofight":
					if lastoctofight is not NumberVarValue entry, now lastoctofight is NumberVarValue entry;
				-- "lastorcabeat":
					if lastorcabeat is not NumberVarValue entry, now lastorcabeat is NumberVarValue entry;
				-- "lastPaulahealing":
					if lastPaulahealing is not NumberVarValue entry, now lastPaulahealing is NumberVarValue entry;
				-- "Lastpigfed":
					if Lastpigfed is not NumberVarValue entry, now Lastpigfed is NumberVarValue entry;
				-- "lastPolicePatrol":
					if lastPolicePatrol is not NumberVarValue entry, now lastPolicePatrol is NumberVarValue entry;
				-- "lastpolicerepair":
					if lastpolicerepair is not NumberVarValue entry, now lastpolicerepair is NumberVarValue entry;
				-- "lastpoolgame":
					if lastpoolgame is not NumberVarValue entry, now lastpoolgame is NumberVarValue entry;
				-- "lastpubvisit":
					if lastpubvisit is not NumberVarValue entry, now lastpubvisit is NumberVarValue entry;
				-- "lastrandomharold":
					if lastrandomharold is not NumberVarValue entry, now lastrandomharold is NumberVarValue entry;
				-- "lastRaneEricInteraction":
					if lastRaneEricInteraction is not NumberVarValue entry, now lastRaneEricInteraction is NumberVarValue entry;
				-- "lastratdartthrow":
					if lastratdartthrow is not NumberVarValue entry, now lastratdartthrow is NumberVarValue entry;
				-- "lastratvisit":
					if lastratvisit is not NumberVarValue entry, now lastratvisit is NumberVarValue entry;
				-- "LastResidentialWalkin":
					if LastResidentialWalkin is not NumberVarValue entry, now LastResidentialWalkin is NumberVarValue entry;
				-- "LastRiddle":
					if LastRiddle is not NumberVarValue entry, now LastRiddle is NumberVarValue entry;
				-- "Lastriddlesphinx":
					if Lastriddlesphinx is not NumberVarValue entry, now Lastriddlesphinx is NumberVarValue entry;
				-- "lastRyouseiDavidInteraction":
					if lastRyouseiDavidInteraction is not NumberVarValue entry, now lastRyouseiDavidInteraction is NumberVarValue entry;
				-- "lastRyouseiEricInteraction":
					if lastRyouseiEricInteraction is not NumberVarValue entry, now lastRyouseiEricInteraction is NumberVarValue entry;
				-- "lastSallyfucked":
					if lastSallyfucked is not NumberVarValue entry, now lastSallyfucked is NumberVarValue entry;
				-- "lastsealfight":
					if lastsealfight is not NumberVarValue entry, now lastsealfight is NumberVarValue entry;
				-- "lastSeptusfucked":
					if lastSeptusfucked is not NumberVarValue entry, now lastSeptusfucked is NumberVarValue entry;
				-- "lastShowerUse":
					if lastShowerUse is not NumberVarValue entry, now lastShowerUse is NumberVarValue entry;
				-- "Lastskunkfuck":
					if Lastskunkfuck is not NumberVarValue entry, now Lastskunkfuck is NumberVarValue entry;
				-- "LastSlutslavefucked":
					if LastSlutslavefucked is not NumberVarValue entry, now LastSlutslavefucked is NumberVarValue entry;
				-- "lastSlutslavelearned":
					if lastSlutslavelearned is not NumberVarValue entry, now lastSlutslavelearned is NumberVarValue entry;
				-- "lastSnowStarGiven":
					if lastSnowStarGiven is not NumberVarValue entry, now lastSnowStarGiven is NumberVarValue entry;
				-- "laststellamove":
					if laststellamove is not NumberVarValue entry, now laststellamove is NumberVarValue entry;
				-- "lastSvendrink":
					if lastSvendrink is not NumberVarValue entry, now lastSvendrink is NumberVarValue entry;
				-- "LastTehuantlCarlScene":
					if LastTehuantlCarlScene is not NumberVarValue entry, now LastTehuantlCarlScene is NumberVarValue entry;
				-- "LastTehuantlKorvinScene":
					if LastTehuantlKorvinScene is not NumberVarValue entry, now LastTehuantlKorvinScene is NumberVarValue entry;
				-- "lasttentaclebattleoutcome":
					if lasttentaclebattleoutcome is not NumberVarValue entry, now lasttentaclebattleoutcome is NumberVarValue entry;
				-- "lastThomasTalk":
					if lastThomasTalk is not NumberVarValue entry, now lastThomasTalk is NumberVarValue entry;
				-- "LastTimothymilked":
					if LastTimothymilked is not NumberVarValue entry, now LastTimothymilked is NumberVarValue entry;
				-- "lastTomeInteraction":
					if lastTomeInteraction is not NumberVarValue entry, now lastTomeInteraction is NumberVarValue entry;
				-- "Lasttreasurehunt":
					if Lasttreasurehunt is not NumberVarValue entry, now Lasttreasurehunt is NumberVarValue entry;
				-- "LastTSEvent":
					if LastTSEvent is not NumberVarValue entry, now LastTSEvent is NumberVarValue entry;
				-- "lastturn":
					if lastturn is not NumberVarValue entry, now lastturn is NumberVarValue entry;
				-- "lastUrikEricInteraction":
					if lastUrikEricInteraction is not NumberVarValue entry, now lastUrikEricInteraction is NumberVarValue entry;
				-- "Lastvixenposing":
					if Lastvixenposing is not NumberVarValue entry, now Lastvixenposing is NumberVarValue entry;
				-- "Lastwaterrun":
					if Lastwaterrun is not NumberVarValue entry, now Lastwaterrun is NumberVarValue entry;
				-- "LastWerewolfFuck":
					if LastWerewolfFuck is not NumberVarValue entry, now LastWerewolfFuck is NumberVarValue entry;
				-- "lastworkout":
					if lastworkout is not NumberVarValue entry, now lastworkout is NumberVarValue entry;
				-- "LastXerxesTalk":
					if LastXerxesTalk is not NumberVarValue entry, now LastXerxesTalk is NumberVarValue entry;
				-- "laundryProgress":
					if laundryProgress is not NumberVarValue entry, now laundryProgress is NumberVarValue entry;
				-- "lavalamplick":
					if lavalamplick is not NumberVarValue entry, now lavalamplick is NumberVarValue entry;
				-- "LectureCheck":
					if LectureCheck is not NumberVarValue entry, now LectureCheck is NumberVarValue entry;
				-- "Leonardtimer":
					if Leonardtimer is not NumberVarValue entry, now Leonardtimer is NumberVarValue entry;
				-- "leosupplies":
					if leosupplies is not NumberVarValue entry, now leosupplies is NumberVarValue entry;
				-- "lessontime":
					if lessontime is not NumberVarValue entry, now lessontime is NumberVarValue entry;
				-- "lgnumber":
					if lgnumber is not NumberVarValue entry, now lgnumber is NumberVarValue entry;
				-- "libidomemory":
					if libidomemory is not NumberVarValue entry, now libidomemory is NumberVarValue entry;
				-- "libstealth":
					if libstealth is not NumberVarValue entry, now libstealth is NumberVarValue entry;
				-- "libsuppcount":
					if libsuppcount is not NumberVarValue entry, now libsuppcount is NumberVarValue entry;
				-- "libvis":
					if libvis is not NumberVarValue entry, now libvis is NumberVarValue entry;
				-- "lilianabathsex":
					if lilianabathsex is not NumberVarValue entry, now lilianabathsex is NumberVarValue entry;
				-- "LilithKidCounter":
					if LilithKidCounter is not NumberVarValue entry, now LilithKidCounter is NumberVarValue entry;
				-- "LilithPregCounter":
					if LilithPregCounter is not NumberVarValue entry, now LilithPregCounter is NumberVarValue entry;
				-- "LilithPregnancy":
					if LilithPregnancy is not NumberVarValue entry, now LilithPregnancy is NumberVarValue entry;
				-- "lisaartemiscount1":
					if lisaartemiscount1 is not NumberVarValue entry, now lisaartemiscount1 is NumberVarValue entry;
				-- "lisaartemiscount2":
					if lisaartemiscount2 is not NumberVarValue entry, now lisaartemiscount2 is NumberVarValue entry;
				-- "Lisacheat":
					if Lisacheat is not NumberVarValue entry, now Lisacheat is NumberVarValue entry;
				-- "littlelostskunk":
					if littlelostskunk is not NumberVarValue entry, now littlelostskunk is NumberVarValue entry;
				-- "lizgirlangry":
					if lizgirlangry is not NumberVarValue entry, now lizgirlangry is NumberVarValue entry;
				-- "lizgirlimpreg":
					if lizgirlimpreg is not NumberVarValue entry, now lizgirlimpreg is NumberVarValue entry;
				-- "lizgirlinheat":
					if lizgirlinheat is not NumberVarValue entry, now lizgirlinheat is NumberVarValue entry;
				-- "lizgirlmarked":
					if lizgirlmarked is not NumberVarValue entry, now lizgirlmarked is NumberVarValue entry;
				-- "LockerroomTrioRelationship":
					if LockerroomTrioRelationship is not NumberVarValue entry, now LockerroomTrioRelationship is NumberVarValue entry;
				-- "LoganCommand":
					if LoganCommand is not NumberVarValue entry, now LoganCommand is NumberVarValue entry;
				-- "LOK":
					if LOK is not NumberVarValue entry, now LOK is NumberVarValue entry;
				-- "longboatfind":
					if longboatfind is not NumberVarValue entry, now longboatfind is NumberVarValue entry;
				-- "Lost":
					if Lost is not NumberVarValue entry, now Lost is NumberVarValue entry;
				-- "losttoalphahusky":
					if losttoalphahusky is not NumberVarValue entry, now losttoalphahusky is NumberVarValue entry;
				-- "lostToHorseman":
					if lostToHorseman is not NumberVarValue entry, now lostToHorseman is NumberVarValue entry;
				-- "LostToZebra":
					if LostToZebra is not NumberVarValue entry, now LostToZebra is NumberVarValue entry;
				-- "loversbench":
					if loversbench is not NumberVarValue entry, now loversbench is NumberVarValue entry;
				-- "lustadjust":
					if lustadjust is not NumberVarValue entry, now lustadjust is NumberVarValue entry;
				-- "lustatt":
					if lustatt is not NumberVarValue entry, now lustatt is NumberVarValue entry;
				-- "lwcounter":
					if lwcounter is not NumberVarValue entry, now lwcounter is NumberVarValue entry;
				-- "MalakhiRelationship":
					if MalakhiRelationship is not NumberVarValue entry, now MalakhiRelationship is NumberVarValue entry;
				-- "malecatHP":
					if malecatHP is not NumberVarValue entry, now malecatHP is NumberVarValue entry;
				-- "mammoth_cv_count":
					if mammoth_cv_count is not NumberVarValue entry, now mammoth_cv_count is NumberVarValue entry;
				-- "marefed":
					if marefed is not NumberVarValue entry, now marefed is NumberVarValue entry;
				-- "margaydancecount":
					if margaydancecount is not NumberVarValue entry, now margaydancecount is NumberVarValue entry;
				-- "margaymet":
					if margaymet is not NumberVarValue entry, now margaymet is NumberVarValue entry;
				-- "margayubed":
					if margayubed is not NumberVarValue entry, now margayubed is NumberVarValue entry;
				-- "MarkedSeraphisCum":
					if MarkedSeraphisCum is not NumberVarValue entry, now MarkedSeraphisCum is NumberVarValue entry;
				-- "MarketVisits":
					if MarketVisits is not NumberVarValue entry, now MarketVisits is NumberVarValue entry;
				-- "mateable":
					if mateable is not NumberVarValue entry, now mateable is NumberVarValue entry;
				-- "matriarchdefeated":
					if matriarchdefeated is not NumberVarValue entry, now matriarchdefeated is NumberVarValue entry;
				-- "matriarchowned":
					if matriarchowned is not NumberVarValue entry, now matriarchowned is NumberVarValue entry;
				-- "mattcollection":
					if mattcollection is not NumberVarValue entry, now mattcollection is NumberVarValue entry;
				-- "mattintel":
					if mattintel is not NumberVarValue entry, now mattintel is NumberVarValue entry;
				-- "mdasslevel":
					if mdasslevel is not NumberVarValue entry, now mdasslevel is NumberVarValue entry;
				-- "mdmaxlossscene":
					if mdmaxlossscene is not NumberVarValue entry, now mdmaxlossscene is NumberVarValue entry;
				-- "mdrakeanal":
					if mdrakeanal is not NumberVarValue entry, now mdrakeanal is NumberVarValue entry;
				-- "mdrakebeaten":
					if mdrakebeaten is not NumberVarValue entry, now mdrakebeaten is NumberVarValue entry;
				-- "mdrakeloss":
					if mdrakeloss is not NumberVarValue entry, now mdrakeloss is NumberVarValue entry;
				-- "mdrakeoversized":
					if mdrakeoversized is not NumberVarValue entry, now mdrakeoversized is NumberVarValue entry;
				-- "medeaget":
					if medeaget is not NumberVarValue entry, now medeaget is NumberVarValue entry;
				-- "MenuRiddleNumber":
					if MenuRiddleNumber is not NumberVarValue entry, now MenuRiddleNumber is NumberVarValue entry;
				-- "metalskin":
					if metalskin is not NumberVarValue entry, now metalskin is NumberVarValue entry;
				-- "micaela_bf":
					if micaela_bf is not NumberVarValue entry, now micaela_bf is NumberVarValue entry;
				-- "MichaelGholeMeetings":
					if MichaelGholeMeetings is not NumberVarValue entry, now MichaelGholeMeetings is NumberVarValue entry;
				-- "Midnightmimiced":
					if Midnightmimiced is not NumberVarValue entry, now Midnightmimiced is NumberVarValue entry;
				-- "midnightsighted":
					if midnightsighted is not NumberVarValue entry, now midnightsighted is NumberVarValue entry;
				-- "MiltonRelationship":
					if MiltonRelationship is not NumberVarValue entry, now MiltonRelationship is NumberVarValue entry;
				-- "missskip":
					if missskip is not NumberVarValue entry, now missskip is NumberVarValue entry;
				-- "MiyukiRelationship":
					if MiyukiRelationship is not NumberVarValue entry, now MiyukiRelationship is NumberVarValue entry;
				-- "MKloss":
					if MKloss is not NumberVarValue entry, now MKloss is NumberVarValue entry;
				-- "MKmet":
					if MKmet is not NumberVarValue entry, now MKmet is NumberVarValue entry;
				-- "MKwin":
					if MKwin is not NumberVarValue entry, now MKwin is NumberVarValue entry;
				-- "mlamiabeaten":
					if mlamiabeaten is not NumberVarValue entry, now mlamiabeaten is NumberVarValue entry;
				-- "mlamialoss":
					if mlamialoss is not NumberVarValue entry, now mlamialoss is NumberVarValue entry;
				-- "MMC":
					if MMC is not NumberVarValue entry, now MMC is NumberVarValue entry;
				-- "MMP":
					if MMP is not NumberVarValue entry, now MMP is NumberVarValue entry;
				-- "mondodgebonus":
					if mondodgebonus is not NumberVarValue entry, now mondodgebonus is NumberVarValue entry;
				-- "monmindbonus":
					if monmindbonus is not NumberVarValue entry, now monmindbonus is NumberVarValue entry;
				-- "monstercom":
					if monstercom is not NumberVarValue entry, now monstercom is NumberVarValue entry;
				-- "monsterHP":
					if monsterHP is not NumberVarValue entry, now monsterHP is NumberVarValue entry;
				-- "monstermemory":
					if monstermemory is not NumberVarValue entry, now monstermemory is NumberVarValue entry;
				-- "monsterpoison":
					if monsterpoison is not NumberVarValue entry, now monsterpoison is NumberVarValue entry;
				-- "monsterpowerup":
					if monsterpowerup is not NumberVarValue entry, now monsterpowerup is NumberVarValue entry;
				-- "Mooed":
					if Mooed is not NumberVarValue entry, now Mooed is NumberVarValue entry;
				-- "Mooing":
					if Mooing is not NumberVarValue entry, now Mooing is NumberVarValue entry;
				-- "Mothdefeat":
					if Mothdefeat is not NumberVarValue entry, now Mothdefeat is NumberVarValue entry;
				-- "mothgirlnosex":
					if mothgirlnosex is not NumberVarValue entry, now mothgirlnosex is NumberVarValue entry;
				-- "mousecounter":
					if mousecounter is not NumberVarValue entry, now mousecounter is NumberVarValue entry;
				-- "mousecurse":
					if mousecurse is not NumberVarValue entry, now mousecurse is NumberVarValue entry;
				-- "mousefucked":
					if mousefucked is not NumberVarValue entry, now mousefucked is NumberVarValue entry;
				-- "mouseintel":
					if mouseintel is not NumberVarValue entry, now mouseintel is NumberVarValue entry;
				-- "mousespot":
					if mousespot is not NumberVarValue entry, now mousespot is NumberVarValue entry;
				-- "mousevic":
					if mousevic is not NumberVarValue entry, now mousevic is NumberVarValue entry;
				-- "MovingOrwell":
					if MovingOrwell is not NumberVarValue entry, now MovingOrwell is NumberVarValue entry;
				-- "mpregcount":
					if mpregcount is not NumberVarValue entry, now mpregcount is NumberVarValue entry;
				-- "mqcountdown":
					if mqcountdown is not NumberVarValue entry, now mqcountdown is NumberVarValue entry;
				-- "mqpickup":
					if mqpickup is not NumberVarValue entry, now mqpickup is NumberVarValue entry;
				-- "mqstatus":
					if mqstatus is not NumberVarValue entry, now mqstatus is NumberVarValue entry;
				-- "mre01":
					if mre01 is not NumberVarValue entry, now mre01 is NumberVarValue entry;
				-- "mre02":
					if mre02 is not NumberVarValue entry, now mre02 is NumberVarValue entry;
				-- "MSStorageVisited":
					if MSStorageVisited is not NumberVarValue entry, now MSStorageVisited is NumberVarValue entry;
				-- "MTP":
					if MTP is not NumberVarValue entry, now MTP is NumberVarValue entry;
				-- "mtrp":
					if mtrp is not NumberVarValue entry, now mtrp is NumberVarValue entry;
				-- "MulAnalAcceptance":
					if MulAnalAcceptance is not NumberVarValue entry, now MulAnalAcceptance is NumberVarValue entry;
				-- "multicunt":
					if multicunt is not NumberVarValue entry, now multicunt is NumberVarValue entry;
				-- "MurderMystery":
					if MurderMystery is not NumberVarValue entry, now MurderMystery is NumberVarValue entry;
				-- "MushroomCaveVisited":
					if MushroomCaveVisited is not NumberVarValue entry, now MushroomCaveVisited is NumberVarValue entry;
				-- "MYDAM":
					if MYDAM is not NumberVarValue entry, now MYDAM is NumberVarValue entry;
				-- "MYDGM":
					if MYDGM is not NumberVarValue entry, now MYDGM is NumberVarValue entry;
				-- "MYDTBMM":
					if MYDTBMM is not NumberVarValue entry, now MYDTBMM is NumberVarValue entry;
				-- "myseread":
					if myseread is not NumberVarValue entry, now myseread is NumberVarValue entry;
				-- "NadiaChickCounter":
					if NadiaChickCounter is not NumberVarValue entry, now NadiaChickCounter is NumberVarValue entry;
				-- "NadiaDescription":
					if NadiaDescription is not NumberVarValue entry, now NadiaDescription is NumberVarValue entry;
				-- "NadiaFertilityCounter":
					if NadiaFertilityCounter is not NumberVarValue entry, now NadiaFertilityCounter is NumberVarValue entry;
				-- "NadiaintCounter":
					if NadiaintCounter is not NumberVarValue entry, now NadiaintCounter is NumberVarValue entry;
				-- "NadiaPregCounter1":
					if NadiaPregCounter1 is not NumberVarValue entry, now NadiaPregCounter1 is NumberVarValue entry;
				-- "NadiaPregCounter2":
					if NadiaPregCounter2 is not NumberVarValue entry, now NadiaPregCounter2 is NumberVarValue entry;
				-- "NadiaPregCounter3":
					if NadiaPregCounter3 is not NumberVarValue entry, now NadiaPregCounter3 is NumberVarValue entry;
				-- "NadiaPregVisibility":
					if NadiaPregVisibility is not NumberVarValue entry, now NadiaPregVisibility is NumberVarValue entry;
				-- "nanitemeter":
					if nanitemeter is not NumberVarValue entry, now nanitemeter is NumberVarValue entry;
				-- "NatalieFucked":
					if NatalieFucked is not NumberVarValue entry, now NatalieFucked is NumberVarValue entry;
				-- "ndmhigh":
					if ndmhigh is not NumberVarValue entry, now ndmhigh is NumberVarValue entry;
				-- "NerdMeetings":
					if NerdMeetings is not NumberVarValue entry, now NerdMeetings is NumberVarValue entry;
				-- "NermineAroused":
					if NermineAroused is not NumberVarValue entry, now NermineAroused is NumberVarValue entry;
				-- "NermineBukkakeTurn":
					if NermineBukkakeTurn is not NumberVarValue entry, now NermineBukkakeTurn is NumberVarValue entry;
				-- "NermineFeat":
					if NermineFeat is not NumberVarValue entry, now NermineFeat is NumberVarValue entry;
				-- "NermineFennecTurn":
					if NermineFennecTurn is not NumberVarValue entry, now NermineFennecTurn is NumberVarValue entry;
				-- "NermineFucked":
					if NermineFucked is not NumberVarValue entry, now NermineFucked is NumberVarValue entry;
				-- "Nerminehelpstatus":
					if Nerminehelpstatus is not NumberVarValue entry, now Nerminehelpstatus is NumberVarValue entry;
				-- "nerminepackage":
					if nerminepackage is not NumberVarValue entry, now nerminepackage is NumberVarValue entry;
				-- "nerminepackagematt":
					if nerminepackagematt is not NumberVarValue entry, now nerminepackagematt is NumberVarValue entry;
				-- "NermineQuest":
					if NermineQuest is not NumberVarValue entry, now NermineQuest is NumberVarValue entry;
				-- "NermineTalk":
					if NermineTalk is not NumberVarValue entry, now NermineTalk is NumberVarValue entry;
				-- "NESProgress":
					if NESProgress is not NumberVarValue entry, now NESProgress is NumberVarValue entry;
				-- "nesteddino":
					if nesteddino is not NumberVarValue entry, now nesteddino is NumberVarValue entry;
				-- "NGRP":
					if NGRP is not NumberVarValue entry, now NGRP is NumberVarValue entry;
				-- "nightcheck":
					if nightcheck is not NumberVarValue entry, now nightcheck is NumberVarValue entry;
				-- "Nightmaremastery":
					if Nightmaremastery is not NumberVarValue entry, now Nightmaremastery is NumberVarValue entry;
				-- "Nightmareslavery":
					if Nightmareslavery is not NumberVarValue entry, now Nightmareslavery is NumberVarValue entry;
				-- "nightmaretf":
					if nightmaretf is not NumberVarValue entry, now nightmaretf is NumberVarValue entry;
				-- "no_AlexandraNPC":
					if no_AlexandraNPC is not NumberVarValue entry, now no_AlexandraNPC is NumberVarValue entry;
				-- "no_AlexandraTask":
					if no_AlexandraTask is not NumberVarValue entry, now no_AlexandraTask is NumberVarValue entry;
				-- "noamazoniansex":
					if noamazoniansex is not NumberVarValue entry, now noamazoniansex is NumberVarValue entry;
				-- "noanimebabesex":
					if noanimebabesex is not NumberVarValue entry, now noanimebabesex is NumberVarValue entry;
				-- "nobeaversex":
					if nobeaversex is not NumberVarValue entry, now nobeaversex is NumberVarValue entry;
				-- "nobirdofparadisesex":
					if nobirdofparadisesex is not NumberVarValue entry, now nobirdofparadisesex is NumberVarValue entry;
				-- "nobluechaffinchsex":
					if nobluechaffinchsex is not NumberVarValue entry, now nobluechaffinchsex is NumberVarValue entry;
				-- "nocandycoonsex":
					if nocandycoonsex is not NumberVarValue entry, now nocandycoonsex is NumberVarValue entry;
				-- "nochinchillasex":
					if nochinchillasex is not NumberVarValue entry, now nochinchillasex is NumberVarValue entry;
				-- "nodonkeywomansex":
					if nodonkeywomansex is not NumberVarValue entry, now nodonkeywomansex is NumberVarValue entry;
				-- "noeaglesex":
					if noeaglesex is not NumberVarValue entry, now noeaglesex is NumberVarValue entry;
				-- "noelksex":
					if noelksex is not NumberVarValue entry, now noelksex is NumberVarValue entry;
				-- "nofponysex":
					if nofponysex is not NumberVarValue entry, now nofponysex is NumberVarValue entry;
				-- "nogiraffesex":
					if nogiraffesex is not NumberVarValue entry, now nogiraffesex is NumberVarValue entry;
				-- "nogunbunnysex":
					if nogunbunnysex is not NumberVarValue entry, now nogunbunnysex is NumberVarValue entry;
				-- "nohawkmansex":
					if nohawkmansex is not NumberVarValue entry, now nohawkmansex is NumberVarValue entry;
				-- "nohgryphonsex":
					if nohgryphonsex is not NumberVarValue entry, now nohgryphonsex is NumberVarValue entry;
				-- "NoIntroduction":
					if NoIntroduction is not NumberVarValue entry, now NoIntroduction is NumberVarValue entry;
				-- "nolatexerminesex":
					if nolatexerminesex is not NumberVarValue entry, now nolatexerminesex is NumberVarValue entry;
				-- "noocelotbtsex":
					if noocelotbtsex is not NumberVarValue entry, now noocelotbtsex is NumberVarValue entry;
				-- "noocelotldsex":
					if noocelotldsex is not NumberVarValue entry, now noocelotldsex is NumberVarValue entry;
				-- "nopiratesharksex":
					if nopiratesharksex is not NumberVarValue entry, now nopiratesharksex is NumberVarValue entry;
				-- "noplionsex":
					if noplionsex is not NumberVarValue entry, now noplionsex is NumberVarValue entry;
				-- "nopoodlesex":
					if nopoodlesex is not NumberVarValue entry, now nopoodlesex is NumberVarValue entry;
				-- "nosnowmeowsex":
					if nosnowmeowsex is not NumberVarValue entry, now nosnowmeowsex is NumberVarValue entry;
				-- "nosugarglidersex":
					if nosugarglidersex is not NumberVarValue entry, now nosugarglidersex is NumberVarValue entry;
				-- "noteddybearsex":
					if noteddybearsex is not NumberVarValue entry, now noteddybearsex is NumberVarValue entry;
				-- "notrashcoonsex":
					if notrashcoonsex is not NumberVarValue entry, now notrashcoonsex is NumberVarValue entry;
				-- "novicsex":
					if novicsex is not NumberVarValue entry, now novicsex is NumberVarValue entry;
				-- "NPCintCounter":
					if NPCintCounter is not NumberVarValue entry, now NPCintCounter is NumberVarValue entry;
				-- "nsgained":
					if nsgained is not NumberVarValue entry, now nsgained is NumberVarValue entry;
				-- "numOfBountiesLeft":
					if numOfBountiesLeft is not NumberVarValue entry, now numOfBountiesLeft is NumberVarValue entry;
				-- "numwater":
					if numwater is not NumberVarValue entry, now numwater is NumberVarValue entry;
				-- "ocelotchoice":
					if ocelotchoice is not NumberVarValue entry, now ocelotchoice is NumberVarValue entry;
				-- "ocelotsize":
					if ocelotsize is not NumberVarValue entry, now ocelotsize is NumberVarValue entry;
				-- "OfficeGirlsDominance":
					if OfficeGirlsDominance is not NumberVarValue entry, now OfficeGirlsDominance is NumberVarValue entry;
				-- "OfficeGirlsFriendship":
					if OfficeGirlsFriendship is not NumberVarValue entry, now OfficeGirlsFriendship is NumberVarValue entry;
				-- "OliverRelationship":
					if OliverRelationship is not NumberVarValue entry, now OliverRelationship is NumberVarValue entry;
				-- "Onyxboislut":
					if Onyxboislut is not NumberVarValue entry, now Onyxboislut is NumberVarValue entry;
				-- "onyxdma":
					if onyxdma is not NumberVarValue entry, now onyxdma is NumberVarValue entry;
				-- "onyxdmc":
					if onyxdmc is not NumberVarValue entry, now onyxdmc is NumberVarValue entry;
				-- "onyxdmra":
					if onyxdmra is not NumberVarValue entry, now onyxdmra is NumberVarValue entry;
				-- "onyxfinale":
					if onyxfinale is not NumberVarValue entry, now onyxfinale is NumberVarValue entry;
				-- "onyxlapdance":
					if onyxlapdance is not NumberVarValue entry, now onyxlapdance is NumberVarValue entry;
				-- "Onyxmareslut":
					if Onyxmareslut is not NumberVarValue entry, now Onyxmareslut is NumberVarValue entry;
				-- "orcadom":
					if orcadom is not NumberVarValue entry, now orcadom is NumberVarValue entry;
				-- "orcafdom":
					if orcafdom is not NumberVarValue entry, now orcafdom is NumberVarValue entry;
				-- "orcaintense":
					if orcaintense is not NumberVarValue entry, now orcaintense is NumberVarValue entry;
				-- "OrcFemSpecialFightNumber":
					if OrcFemSpecialFightNumber is not NumberVarValue entry, now OrcFemSpecialFightNumber is NumberVarValue entry;
				-- "OrcSlaverCaptureTime":
					if OrcSlaverCaptureTime is not NumberVarValue entry, now OrcSlaverCaptureTime is NumberVarValue entry;
				-- "OrcSlaverStatus":
					if OrcSlaverStatus is not NumberVarValue entry, now OrcSlaverStatus is NumberVarValue entry;
				-- "Otterconsent":
					if Otterconsent is not NumberVarValue entry, now Otterconsent is NumberVarValue entry;
				-- "Otterdefeat":
					if Otterdefeat is not NumberVarValue entry, now Otterdefeat is NumberVarValue entry;
				-- "OttoForm":
					if OttoForm is not NumberVarValue entry, now OttoForm is NumberVarValue entry;
				-- "ovipreglevel":
					if ovipreglevel is not NumberVarValue entry, now ovipreglevel is NumberVarValue entry;
				-- "partner1Choice":
					if partner1Choice is not NumberVarValue entry, now partner1Choice is NumberVarValue entry;
				-- "partner2Choice":
					if partner2Choice is not NumberVarValue entry, now partner2Choice is NumberVarValue entry;
				-- "patrooms":
					if patrooms is not NumberVarValue entry, now patrooms is NumberVarValue entry;
				-- "peacockcontrol":
					if peacockcontrol is not NumberVarValue entry, now peacockcontrol is NumberVarValue entry;
				-- "Peacocked":
					if Peacocked is not NumberVarValue entry, now Peacocked is NumberVarValue entry;
				-- "pepped":
					if pepped is not NumberVarValue entry, now pepped is NumberVarValue entry;
				-- "peppereyes":
					if peppereyes is not NumberVarValue entry, now peppereyes is NumberVarValue entry;
				-- "PericlesRelationship":
					if PericlesRelationship is not NumberVarValue entry, now PericlesRelationship is NumberVarValue entry;
				-- "petchance":
					if petchance is not NumberVarValue entry, now petchance is NumberVarValue entry;
				-- "pethitbonus":
					if pethitbonus is not NumberVarValue entry, now pethitbonus is NumberVarValue entry;
				-- "pewterassocc":
					if pewterassocc is not NumberVarValue entry, now pewterassocc is NumberVarValue entry;
				-- "pewterassvar1":
					if pewterassvar1 is not NumberVarValue entry, now pewterassvar1 is NumberVarValue entry;
				-- "pewterassvar2":
					if pewterassvar2 is not NumberVarValue entry, now pewterassvar2 is NumberVarValue entry;
				-- "pewterbodycap":
					if pewterbodycap is not NumberVarValue entry, now pewterbodycap is NumberVarValue entry;
				-- "pewterbodyocc":
					if pewterbodyocc is not NumberVarValue entry, now pewterbodyocc is NumberVarValue entry;
				-- "pewtercockocc":
					if pewtercockocc is not NumberVarValue entry, now pewtercockocc is NumberVarValue entry;
				-- "pewtercockvar1":
					if pewtercockvar1 is not NumberVarValue entry, now pewtercockvar1 is NumberVarValue entry;
				-- "pewtercockvar2":
					if pewtercockvar2 is not NumberVarValue entry, now pewtercockvar2 is NumberVarValue entry;
				-- "pewtercuntocc":
					if pewtercuntocc is not NumberVarValue entry, now pewtercuntocc is NumberVarValue entry;
				-- "pewtercuntvar1":
					if pewtercuntvar1 is not NumberVarValue entry, now pewtercuntvar1 is NumberVarValue entry;
				-- "pewtercuntvar2":
					if pewtercuntvar2 is not NumberVarValue entry, now pewtercuntvar2 is NumberVarValue entry;
				-- "pewtergenitalcap":
					if pewtergenitalcap is not NumberVarValue entry, now pewtergenitalcap is NumberVarValue entry;
				-- "pewterheadcap":
					if pewterheadcap is not NumberVarValue entry, now pewterheadcap is NumberVarValue entry;
				-- "pewterheadocc":
					if pewterheadocc is not NumberVarValue entry, now pewterheadocc is NumberVarValue entry;
				-- "pewterheadvar1":
					if pewterheadvar1 is not NumberVarValue entry, now pewterheadvar1 is NumberVarValue entry;
				-- "pewterheadvar2":
					if pewterheadvar2 is not NumberVarValue entry, now pewterheadvar2 is NumberVarValue entry;
				-- "pewterheadvar3":
					if pewterheadvar3 is not NumberVarValue entry, now pewterheadvar3 is NumberVarValue entry;
				-- "pfptype":
					if pfptype is not NumberVarValue entry, now pfptype is NumberVarValue entry;
				-- "PhilipMudWrestleCount":
					if PhilipMudWrestleCount is not NumberVarValue entry, now PhilipMudWrestleCount is NumberVarValue entry;
				-- "PhilipWrestleEnd":
					if PhilipWrestleEnd is not NumberVarValue entry, now PhilipWrestleEnd is NumberVarValue entry;
				-- "piercesave":
					if piercesave is not NumberVarValue entry, now piercesave is NumberVarValue entry;
				-- "piercestatus":
					if piercestatus is not NumberVarValue entry, now piercestatus is NumberVarValue entry;
				-- "piercingquest":
					if piercingquest is not NumberVarValue entry, now piercingquest is NumberVarValue entry;
				-- "Pigfed":
					if Pigfed is not NumberVarValue entry, now Pigfed is NumberVarValue entry;
				-- "Pigfucked":
					if Pigfucked is not NumberVarValue entry, now Pigfucked is NumberVarValue entry;
				-- "piginitiation":
					if piginitiation is not NumberVarValue entry, now piginitiation is NumberVarValue entry;
				-- "pitbullgender":
					if pitbullgender is not NumberVarValue entry, now pitbullgender is NumberVarValue entry;
				-- "plantdefeat":
					if plantdefeat is not NumberVarValue entry, now plantdefeat is NumberVarValue entry;
				-- "plantwin":
					if plantwin is not NumberVarValue entry, now plantwin is NumberVarValue entry;
				-- "playercrestnum":
					if playercrestnum is not NumberVarValue entry, now playercrestnum is NumberVarValue entry;
				-- "PlayerInformed":
					if PlayerInformed is not NumberVarValue entry, now PlayerInformed is NumberVarValue entry;
				-- "playermetalskin":
					if playermetalskin is not NumberVarValue entry, now playermetalskin is NumberVarValue entry;
				-- "playerpoison":
					if playerpoison is not NumberVarValue entry, now playerpoison is NumberVarValue entry;
				-- "playon":
					if playon is not NumberVarValue entry, now playon is NumberVarValue entry;
				-- "pldamagebonus":
					if pldamagebonus is not NumberVarValue entry, now pldamagebonus is NumberVarValue entry;
				-- "pldodgebonus":
					if pldodgebonus is not NumberVarValue entry, now pldodgebonus is NumberVarValue entry;
				-- "plfleebonus":
					if plfleebonus is not NumberVarValue entry, now plfleebonus is NumberVarValue entry;
				-- "plhitbonus":
					if plhitbonus is not NumberVarValue entry, now plhitbonus is NumberVarValue entry;
				-- "plionvic":
					if plionvic is not NumberVarValue entry, now plionvic is NumberVarValue entry;
				-- "plionvored":
					if plionvored is not NumberVarValue entry, now plionvored is NumberVarValue entry;
				-- "plmindbonus":
					if plmindbonus is not NumberVarValue entry, now plmindbonus is NumberVarValue entry;
				-- "plnatarmor":
					if plnatarmor is not NumberVarValue entry, now plnatarmor is NumberVarValue entry;
				-- "PLRLooted":
					if PLRLooted is not NumberVarValue entry, now PLRLooted is NumberVarValue entry;
				-- "plushleoloss":
					if plushleoloss is not NumberVarValue entry, now plushleoloss is NumberVarValue entry;
				-- "plweaknatarmor":
					if plweaknatarmor is not NumberVarValue entry, now plweaknatarmor is NumberVarValue entry;
				-- "policerepair":
					if policerepair is not NumberVarValue entry, now policerepair is NumberVarValue entry;
				-- "PoliceStationTwelveInfpop":
					if PoliceStationTwelveInfpop is not NumberVarValue entry, now PoliceStationTwelveInfpop is NumberVarValue entry;
				-- "PoliceStationTwelvePopulation":
					if PoliceStationTwelvePopulation is not NumberVarValue entry, now PoliceStationTwelvePopulation is NumberVarValue entry;
				-- "poodleapproved":
					if poodleapproved is not NumberVarValue entry, now poodleapproved is NumberVarValue entry;
				-- "PoseidonRelationship":
					if PoseidonRelationship is not NumberVarValue entry, now PoseidonRelationship is NumberVarValue entry;
				-- "PowerUpDrugTrip":
					if PowerUpDrugTrip is not NumberVarValue entry, now PowerUpDrugTrip is NumberVarValue entry;
				-- "pquest":
					if pquest is not NumberVarValue entry, now pquest is NumberVarValue entry;
				-- "pr_completion":
					if pr_completion is not NumberVarValue entry, now pr_completion is NumberVarValue entry;
				-- "pregtype":
					if pregtype is not NumberVarValue entry, now pregtype is NumberVarValue entry;
				-- "provingstallionhood":
					if provingstallionhood is not NumberVarValue entry, now provingstallionhood is NumberVarValue entry;
				-- "psycheadjust":
					if psycheadjust is not NumberVarValue entry, now psycheadjust is NumberVarValue entry;
				-- "pubvisit":
					if pubvisit is not NumberVarValue entry, now pubvisit is NumberVarValue entry;
				-- "purfeat":
					if purfeat is not NumberVarValue entry, now purfeat is NumberVarValue entry;
				-- "quitter":
					if quitter is not NumberVarValue entry, now quitter is NumberVarValue entry;
				-- "rabbitfucked":
					if rabbitfucked is not NumberVarValue entry, now rabbitfucked is NumberVarValue entry;
				-- "rabbitmulticock":
					if rabbitmulticock is not NumberVarValue entry, now rabbitmulticock is NumberVarValue entry;
				-- "rabbitsibling":
					if rabbitsibling is not NumberVarValue entry, now rabbitsibling is NumberVarValue entry;
				-- "rachelfuck":
					if rachelfuck is not NumberVarValue entry, now rachelfuck is NumberVarValue entry;
				-- "RamFucked":
					if Stamina of Leon is not NumberVarValue entry, now Stamina of Leon is NumberVarValue entry;
				-- "ramlosstick":
					if ramlosstick is not NumberVarValue entry, now ramlosstick is NumberVarValue entry;
				-- "ramtraining":
					if ramtraining is not NumberVarValue entry, now ramtraining is NumberVarValue entry;
				-- "ramvar":
					if ramvar is not NumberVarValue entry, now ramvar is NumberVarValue entry;
				-- "RandallBradRelationship":
					if RandallBradRelationship is not NumberVarValue entry, now RandallBradRelationship is NumberVarValue entry;
				-- "RandomItemPick":
					if RandomItemPick is not NumberVarValue entry, now RandomItemPick is NumberVarValue entry;
				-- "RaneDeedsTracker":
					if RaneDeedsTracker is not NumberVarValue entry, now RaneDeedsTracker is NumberVarValue entry;
				-- "RareQuesting":
					if RareQuesting is not NumberVarValue entry, now RareQuesting is NumberVarValue entry;
				-- "ratdartcount":
					if ratdartcount is not NumberVarValue entry, now ratdartcount is NumberVarValue entry;
				-- "RazorbackBoarEvents":
					if RazorbackBoarEvents is not NumberVarValue entry, now RazorbackBoarEvents is NumberVarValue entry;
				-- "ReceptionistTalk":
					if ReceptionistTalk is not NumberVarValue entry, now ReceptionistTalk is NumberVarValue entry;
				-- "recoverchance":
					if recoverchance is not NumberVarValue entry, now recoverchance is NumberVarValue entry;
				-- "Recoveredhardware":
					if Recoveredhardware is not NumberVarValue entry, now Recoveredhardware is NumberVarValue entry;
				-- "RegChaseHelp":
					if RegChaseHelp is not NumberVarValue entry, now RegChaseHelp is NumberVarValue entry;
				-- "Researchbypass":
					if Researchbypass is not NumberVarValue entry, now Researchbypass is NumberVarValue entry;
				-- "ResidentialVisits":
					if ResidentialVisits is not NumberVarValue entry, now ResidentialVisits is NumberVarValue entry;
				-- "restaurantpig":
					if restaurantpig is not NumberVarValue entry, now restaurantpig is NumberVarValue entry;
				-- "restoration":
					if restoration is not NumberVarValue entry, now restoration is NumberVarValue entry;
				-- "riddlesphinx":
					if riddlesphinx is not NumberVarValue entry, now riddlesphinx is NumberVarValue entry;
				-- "Riddlewin":
					if Riddlewin is not NumberVarValue entry, now Riddlewin is NumberVarValue entry;
				-- "RomanceBooksFound":
					if RomanceBooksFound is not NumberVarValue entry, now RomanceBooksFound is NumberVarValue entry;
				-- "rsc":
					if rsc is not NumberVarValue entry, now rsc is NumberVarValue entry;
				-- "RTWinCounter":
					if RTWinCounter is not NumberVarValue entry, now RTWinCounter is NumberVarValue entry;
				-- "RyanFucked":
					if RyanFucked is not NumberVarValue entry, now RyanFucked is NumberVarValue entry;
				-- "RyouseiDavidInteraction":
					if RyouseiDavidInteraction is not NumberVarValue entry, now RyouseiDavidInteraction is NumberVarValue entry;
				-- "RyouseiEricInteraction":
					if RyouseiEricInteraction is not NumberVarValue entry, now RyouseiEricInteraction is NumberVarValue entry;
				-- "RyouseiHayato":
					if RyouseiHayato is not NumberVarValue entry, now RyouseiHayato is NumberVarValue entry;
				-- "RyouseiRane":
					if RyouseiRane is not NumberVarValue entry, now RyouseiRane is NumberVarValue entry;
				-- "RyouseiXerxes":
					if RyouseiXerxes is not NumberVarValue entry, now RyouseiXerxes is NumberVarValue entry;
				-- "sabtoothed":
					if sabtoothed is not NumberVarValue entry, now sabtoothed is NumberVarValue entry;
				-- "sabtoothedmatt":
					if sabtoothedmatt is not NumberVarValue entry, now sabtoothedmatt is NumberVarValue entry;
				-- "SandySaved":
					if SandySaved is not NumberVarValue entry, now SandySaved is NumberVarValue entry;
				-- "SarahCured":
					if SarahCured is not NumberVarValue entry, now SarahCured is NumberVarValue entry;
				-- "SarahPregnant":
					if SarahPregnant is not NumberVarValue entry, now SarahPregnant is NumberVarValue entry;
				-- "SarahPups":
					if SarahPups is not NumberVarValue entry, now SarahPups is NumberVarValue entry;
				-- "SarahShower":
					if SarahShower is not NumberVarValue entry, now SarahShower is NumberVarValue entry;
				-- "SarahSlut":
					if SarahSlut is not NumberVarValue entry, now SarahSlut is NumberVarValue entry;
				-- "SarahTalk":
					if SarahTalk is not NumberVarValue entry, now SarahTalk is NumberVarValue entry;
				-- "SatisfiedTanuki":
					if SatisfiedTanuki is not NumberVarValue entry, now SatisfiedTanuki is NumberVarValue entry;
				-- "SatyressStage":
					if SatyressStage is not NumberVarValue entry, now SatyressStage is NumberVarValue entry;
				-- "SatyrFratPartyStage":
					if SatyrFratPartyStage is not NumberVarValue entry, now SatyrFratPartyStage is NumberVarValue entry;
				-- "SatyrFratRichardRelationship":
					if SatyrFratRichardRelationship is not NumberVarValue entry, now SatyrFratRichardRelationship is NumberVarValue entry;
				-- "scaledr":
					if scaledr is not NumberVarValue entry, now scaledr is NumberVarValue entry;
				-- "scopnum":
					if scopnum is not NumberVarValue entry, now scopnum is NumberVarValue entry;
				-- "Score":
					if Score is not NumberVarValue entry, now Score is NumberVarValue entry;
				-- "ScottyRelationship":
					if ScottyRelationship is not NumberVarValue entry, now ScottyRelationship is NumberVarValue entry;
				-- "scufflecount":
					if scufflecount is not NumberVarValue entry, now scufflecount is NumberVarValue entry;
				-- "sdbook":
					if sdbook is not NumberVarValue entry, now sdbook is NumberVarValue entry;
				-- "searchesUtSit":
					if searchesUtSit is not NumberVarValue entry, now searchesUtSit is NumberVarValue entry;
				-- "SeraphisContent":
					if SeraphisContent is not NumberVarValue entry, now SeraphisContent is NumberVarValue entry;
				-- "SeraphisNeedy":
					if SeraphisNeedy is not NumberVarValue entry, now SeraphisNeedy is NumberVarValue entry;
				-- "SeraphisRelationship":
					if SeraphisRelationship is not NumberVarValue entry, now SeraphisRelationship is NumberVarValue entry;
				-- "SerenityHunger":
					if SerenityHunger is not NumberVarValue entry, now SerenityHunger is NumberVarValue entry;
				-- "SethFucked":
					if SethFucked is not NumberVarValue entry, now SethFucked is NumberVarValue entry;
				-- "SethTempleNumber":
					if SethTempleNumber is not NumberVarValue entry, now SethTempleNumber is NumberVarValue entry;
				-- "sextablerun":
					if sextablerun is not NumberVarValue entry, now sextablerun is NumberVarValue entry;
				-- "sgtimer":
					if sgtimer is not NumberVarValue entry, now sgtimer is NumberVarValue entry;
				-- "sgtmarkstalk":
					if sgtmarkstalk is not NumberVarValue entry, now sgtmarkstalk is NumberVarValue entry;
				-- "shadowy":
					if shadowy is not NumberVarValue entry, now shadowy is NumberVarValue entry;
				-- "SharkFountainCounter":
					if SharkFountainCounter is not NumberVarValue entry, now SharkFountainCounter is NumberVarValue entry;
				-- "shiftable":
					if Resolution of Secure Area is not NumberVarValue entry, now Resolution of Secure Area is NumberVarValue entry;
				-- "sierramem":
					if sierramem is not NumberVarValue entry, now sierramem is NumberVarValue entry;
				-- "SilverToken":
					if SilverToken is not NumberVarValue entry, now SilverToken is NumberVarValue entry;
				-- "sirenfight":
					if sirenfight is not NumberVarValue entry, now sirenfight is NumberVarValue entry;
				-- "SizeEnvyTracker":
					if SizeEnvyTracker is not NumberVarValue entry, now SizeEnvyTracker is NumberVarValue entry;
				-- "SkarnothLibraryEntry":
					if SkarnothLibraryEntry is not NumberVarValue entry, now SkarnothLibraryEntry is NumberVarValue entry;
				-- "SkarnothMasterSlave":
					if SkarnothMasterSlave is not NumberVarValue entry, now SkarnothMasterSlave is NumberVarValue entry;
				-- "SkarnothThongStatus":
					if SkarnothThongStatus is not NumberVarValue entry, now SkarnothThongStatus is NumberVarValue entry;
				-- "SkarnothDrugStatus":
					if SkarnothDrugStatus is not NumberVarValue entry, now SkarnothDrugStatus is NumberVarValue entry;
				-- "skipturnblocker":
					if skipturnblocker is not NumberVarValue entry, now skipturnblocker is NumberVarValue entry;
				-- "skrp":
					if skrp is not NumberVarValue entry, now skrp is NumberVarValue entry;
				-- "Skunk_type":
					if Skunk_type is not NumberVarValue entry, now Skunk_type is NumberVarValue entry;
				-- "skunkbeaststatus":
					if skunkbeaststatus is not NumberVarValue entry, now skunkbeaststatus is NumberVarValue entry;
				-- "skunkfucked":
					if skunkfucked is not NumberVarValue entry, now skunkfucked is NumberVarValue entry;
				-- "skunkmulticock":
					if skunkmulticock is not NumberVarValue entry, now skunkmulticock is NumberVarValue entry;
				-- "skunkready":
					if skunkready is not NumberVarValue entry, now skunkready is NumberVarValue entry;
				-- "skunksister":
					if skunksister is not NumberVarValue entry, now skunksister is NumberVarValue entry;
				-- "skunkspot":
					if skunkspot is not NumberVarValue entry, now skunkspot is NumberVarValue entry;
				-- "SlaveRaidEncounters":
					if SlaveRaidEncounters is not NumberVarValue entry, now SlaveRaidEncounters is NumberVarValue entry;
				-- "Sleeptimercount":
					if Sleeptimercount is not NumberVarValue entry, now Sleeptimercount is NumberVarValue entry;
				-- "slutfucked":
					if slutfucked is not NumberVarValue entry, now slutfucked is NumberVarValue entry;
				-- "Slutratcor":
					if Slutratcor is not NumberVarValue entry, now Slutratcor is NumberVarValue entry;
				-- "SlutRatDenPoolTable":
					if SlutRatDenPoolTable is not NumberVarValue entry, now SlutRatDenPoolTable is NumberVarValue entry;
				-- "SlutRatDenVisitTimes":
					if SlutRatDenVisitTimes is not NumberVarValue entry, now SlutRatDenVisitTimes is NumberVarValue entry;
				-- "SlutratSub":
					if SlutratSub is not NumberVarValue entry, now SlutratSub is NumberVarValue entry;
				-- "Slutslavefucked":
					if Slutslavefucked is not NumberVarValue entry, now Slutslavefucked is NumberVarValue entry;
				-- "Slutslavelearned":
					if Slutslavelearned is not NumberVarValue entry, now Slutslavelearned is NumberVarValue entry;
				-- "Slutslavetalk":
					if Slutslavetalk is not NumberVarValue entry, now Slutslavetalk is NumberVarValue entry;
				-- "smf":
					if smf is not NumberVarValue entry, now smf is NumberVarValue entry;
				-- "snakecap":
					if snakecap is not NumberVarValue entry, now snakecap is NumberVarValue entry;
				-- "snakedomm":
					if snakedomm is not NumberVarValue entry, now snakedomm is NumberVarValue entry;
				-- "snakehijack":
					if snakehijack is not NumberVarValue entry, now snakehijack is NumberVarValue entry;
				-- "snakehijacktimer":
					if snakehijacktimer is not NumberVarValue entry, now snakehijacktimer is NumberVarValue entry;
				-- "snakeocc":
					if snakeocc is not NumberVarValue entry, now snakeocc is NumberVarValue entry;
				-- "snakesubm":
					if snakesubm is not NumberVarValue entry, now snakesubm is NumberVarValue entry;
				-- "SnowAmySex":
					if SnowAmySex is not NumberVarValue entry, now SnowAmySex is NumberVarValue entry;
				-- "SnowmeowSoldierStatus":
					if SnowmeowSoldierStatus is not NumberVarValue entry, now SnowmeowSoldierStatus is NumberVarValue entry;
				-- "Soldierhorsetf":
					if Soldierhorsetf is not NumberVarValue entry, now Soldierhorsetf is NumberVarValue entry;
				-- "solsticefsex":
					if solsticefsex is not NumberVarValue entry, now solsticefsex is NumberVarValue entry;
				-- "solsticemsex":
					if solsticemsex is not NumberVarValue entry, now solsticemsex is NumberVarValue entry;
				-- "SonnyFood":
					if SonnyFood is not NumberVarValue entry, now SonnyFood is NumberVarValue entry;
				-- "SonnyQuest":
					if SonnyQuest is not NumberVarValue entry, now SonnyQuest is NumberVarValue entry;
				-- "SonnyRelationship":
					if SonnyRelationship is not NumberVarValue entry, now SonnyRelationship is NumberVarValue entry;
				-- "SpidertaurRelationship":
					if SpidertaurRelationship is not NumberVarValue entry, now SpidertaurRelationship is NumberVarValue entry;
				-- "Spriteconsent":
					if Spriteconsent is not NumberVarValue entry, now Spriteconsent is NumberVarValue entry;
				-- "Spritedefeat":
					if Spritedefeat is not NumberVarValue entry, now Spritedefeat is NumberVarValue entry;
				-- "SquadEncounters":
					if SquadEncounters is not NumberVarValue entry, now SquadEncounters is NumberVarValue entry;
				-- "squidcolor":
					if squidcolor is not NumberVarValue entry, now squidcolor is NumberVarValue entry;
				-- "squirefeature":
					if squirefeature is not NumberVarValue entry, now squirefeature is NumberVarValue entry;
				-- "squirrelfucked":
					if squirrelfucked is not NumberVarValue entry, now squirrelfucked is NumberVarValue entry;
				-- "squirrelspot":
					if squirrelspot is not NumberVarValue entry, now squirrelspot is NumberVarValue entry;
				-- "ssstash":
					if ssstash is not NumberVarValue entry, now ssstash is NumberVarValue entry;
				-- "Stablesearchstatus":
					if Stablesearchstatus is not NumberVarValue entry, now Stablesearchstatus is NumberVarValue entry;
				-- "staircaselocation":
					if staircaselocation is not NumberVarValue entry, now staircaselocation is NumberVarValue entry;
				-- "Started":
					if Started is not NumberVarValue entry, now Started is NumberVarValue entry;
				-- "statuequest":
					if statuequest is not NumberVarValue entry, now statuequest is NumberVarValue entry;
				-- "steriletime":
					if steriletime is not NumberVarValue entry, now steriletime is NumberVarValue entry;
				-- "Stevenfood":
					if Stevenfood is not NumberVarValue entry, now Stevenfood is NumberVarValue entry;
				-- "StevenFuckcount":
					if StevenFuckcount is not NumberVarValue entry, now StevenFuckcount is NumberVarValue entry;
				-- "Stevenmm":
					if Stevenmm is not NumberVarValue entry, now Stevenmm is NumberVarValue entry;
				-- "Stevenremoved":
					if Stevenremoved is not NumberVarValue entry, now Stevenremoved is NumberVarValue entry;
				-- "StevenSwayed":
					if StevenSwayed is not NumberVarValue entry, now StevenSwayed is NumberVarValue entry;
				-- "Steventrust":
					if Steventrust is not NumberVarValue entry, now Steventrust is NumberVarValue entry;
				-- "Stevenwater":
					if Stevenwater is not NumberVarValue entry, now Stevenwater is NumberVarValue entry;
				-- "StewartLocationCounter":
					if StewartLocationCounter is not NumberVarValue entry, now StewartLocationCounter is NumberVarValue entry;
				-- "StewartRelationship":
					if StewartRelationship is not NumberVarValue entry, now StewartRelationship is NumberVarValue entry;
				-- "stiffedpayment":
					if stiffedpayment is not NumberVarValue entry, now stiffedpayment is NumberVarValue entry;
				-- "strangebottledrink":
					if strangebottledrink is not NumberVarValue entry, now strangebottledrink is NumberVarValue entry;
				-- "struggleatt":
					if struggleatt is not NumberVarValue entry, now struggleatt is NumberVarValue entry;
				-- "supermarketcount":
					if supermarketcount is not NumberVarValue entry, now supermarketcount is NumberVarValue entry;
				-- "survfeat":
					if survfeat is not NumberVarValue entry, now survfeat is NumberVarValue entry;
				-- "Susanfirsttime":
					if Susanfirsttime is not NumberVarValue entry, now Susanfirsttime is NumberVarValue entry;
				-- "SvenAmySex":
					if SvenAmySex is not NumberVarValue entry, now SvenAmySex is NumberVarValue entry;
				-- "SvenCandyMsg":
					if SvenCandyMsg is not NumberVarValue entry, now SvenCandyMsg is NumberVarValue entry;
				-- "SylviaConv":
					if SylviaConv is not NumberVarValue entry, now SylviaConv is NumberVarValue entry;
				-- "SylviaTrapVar":
					if SylviaTrapVar is not NumberVarValue entry, now SylviaTrapVar is NumberVarValue entry;
				-- "SylviaVirginCheck":
					if SylviaVirginCheck is not NumberVarValue entry, now SylviaVirginCheck is NumberVarValue entry;
				-- "TaniClassMemory":
					if TaniClassMemory is not NumberVarValue entry, now TaniClassMemory is NumberVarValue entry;
				-- "TaniRecommendation":
					if TaniRecommendation is not NumberVarValue entry, now TaniRecommendation is NumberVarValue entry;
				-- "Tanukigender":
					if Tanukigender is not NumberVarValue entry, now Tanukigender is NumberVarValue entry;
				-- "Targetturns":
					if Targetturns is not NumberVarValue entry, now Targetturns is NumberVarValue entry;
				-- "tatsave":
					if tatsave is not NumberVarValue entry, now tatsave is NumberVarValue entry;
				-- "tatstatus":
					if tatstatus is not NumberVarValue entry, now tatstatus is NumberVarValue entry;
				-- "tattoohunter":
					if tattoohunter is not NumberVarValue entry, now tattoohunter is NumberVarValue entry;
				-- "TawnyaFurSuspicion":
					if TawnyaFurSuspicion is not NumberVarValue entry, now TawnyaFurSuspicion is NumberVarValue entry;
				-- "TawnyaMotive":
					if TawnyaMotive is not NumberVarValue entry, now TawnyaMotive is NumberVarValue entry;
				-- "tcopfight":
					if tcopfight is not NumberVarValue entry, now tcopfight is NumberVarValue entry;
				-- "teddyvored":
					if teddyvored is not NumberVarValue entry, now teddyvored is NumberVarValue entry;
				-- "TehuantlKorvinRelationship":
					if TehuantlKorvinRelationship is not NumberVarValue entry, now TehuantlKorvinRelationship is NumberVarValue entry;
				-- "TehuantlSnowStatus":
					if TehuantlSnowStatus is not NumberVarValue entry, now TehuantlSnowStatus is NumberVarValue entry;
				-- "TehuantlStatus":
					if TehuantlStatus is not NumberVarValue entry, now TehuantlStatus is NumberVarValue entry;
				-- "TempClearBypass":
					if TempClearBypass is not NumberVarValue entry, now TempClearBypass is NumberVarValue entry;
				-- "templust":
					if templust is not NumberVarValue entry, now templust is NumberVarValue entry;
				-- "tempnum":
					if tempnum is not NumberVarValue entry, now tempnum is NumberVarValue entry;
				-- "tempnum2":
					if tempnum2 is not NumberVarValue entry, now tempnum2 is NumberVarValue entry;
				-- "tempthirst":
					if tempthirst is not NumberVarValue entry, now tempthirst is NumberVarValue entry;
				-- "TentacleInteractions":
					if TentacleInteractions is not NumberVarValue entry, now TentacleInteractions is NumberVarValue entry;
				-- "tentaclerape":
					if tentaclerape is not NumberVarValue entry, now tentaclerape is NumberVarValue entry;
				-- "TentacleStatus":
					if TentacleStatus is not NumberVarValue entry, now TentacleStatus is NumberVarValue entry;
				-- "tentsubmit":
					if tentsubmit is not NumberVarValue entry, now tentsubmit is NumberVarValue entry;
				-- "thabread":
					if thabread is not NumberVarValue entry, now thabread is NumberVarValue entry;
				-- "ThomasPregnancy":
					if ThomasPregnancy is not NumberVarValue entry, now ThomasPregnancy is NumberVarValue entry;
				-- "ThomasQuestVar":
					if ThomasQuestVar is not NumberVarValue entry, now ThomasQuestVar is NumberVarValue entry;
				-- "ThomasSaved":
					if ThomasSaved is not NumberVarValue entry, now ThomasSaved is NumberVarValue entry;
				-- "ThunderTrackingVariable":
					if ThunderTrackingVariable is not NumberVarValue entry, now ThunderTrackingVariable is NumberVarValue entry;
				-- "tightfitcount":
					if tightfitcount is not NumberVarValue entry, now tightfitcount is NumberVarValue entry;
				-- "tigressclient":
					if tigressclient is not NumberVarValue entry, now tigressclient is NumberVarValue entry;
				-- "tigressfucked":
					if tigressfucked is not NumberVarValue entry, now tigressfucked is NumberVarValue entry;
				-- "tigresswinner":
					if tigresswinner is not NumberVarValue entry, now tigresswinner is NumberVarValue entry;
				-- "TimekeepingVar":
					if TimekeepingVar is not NumberVarValue entry, now TimekeepingVar is NumberVarValue entry;
				-- "timetillrampage":
					if timetillrampage is not NumberVarValue entry, now timetillrampage is NumberVarValue entry;
				-- "Timothyfucked":
					if Timothyfucked is not NumberVarValue entry, now Timothyfucked is NumberVarValue entry;
				-- "tmapfound":
					if tmapfound is not NumberVarValue entry, now tmapfound is NumberVarValue entry;
				-- "tmonster":
					if tmonster is not NumberVarValue entry, now tmonster is NumberVarValue entry;
				-- "TomeFound":
					if TomeFound is not NumberVarValue entry, now TomeFound is NumberVarValue entry;
				-- "TomeInfluence":
					if TomeInfluence is not NumberVarValue entry, now TomeInfluence is NumberVarValue entry;
				-- "TomeInfluenceTimer":
					if TomeInfluenceTimer is not NumberVarValue entry, now TomeInfluenceTimer is NumberVarValue entry;
				-- "TomeInteractions":
					if TomeInteractions is not NumberVarValue entry, now TomeInteractions is NumberVarValue entry;
				-- "TomeTimer":
					if TomeTimer is not NumberVarValue entry, now TomeTimer is NumberVarValue entry;
				-- "Treasurefound":
					if Treasurefound is not NumberVarValue entry, now Treasurefound is NumberVarValue entry;
				-- "treasurehunt":
					if treasurehunt is not NumberVarValue entry, now treasurehunt is NumberVarValue entry;
				-- "triclamped":
					if triclamped is not NumberVarValue entry, now triclamped is NumberVarValue entry;
				-- "triclampedmatt":
					if triclampedmatt is not NumberVarValue entry, now triclampedmatt is NumberVarValue entry;
				-- "TritonRelationship":
					if TritonRelationship is not NumberVarValue entry, now TritonRelationship is NumberVarValue entry;
				-- "TryoutScore":
					if TryoutScore is not NumberVarValue entry, now TryoutScore is NumberVarValue entry;
				-- "TSEventCounter":
					if TSEventCounter is not NumberVarValue entry, now TSEventCounter is NumberVarValue entry;
				-- "tsw_fsd":
					if tsw_fsd is not NumberVarValue entry, now tsw_fsd is NumberVarValue entry;
				-- "tsw_relationship":
					if tsw_relationship is not NumberVarValue entry, now tsw_relationship is NumberVarValue entry;
				-- "tti_scene":
					if tti_scene is not NumberVarValue entry, now tti_scene is NumberVarValue entry;
				-- "ttIcarus":
					if ttIcarus is not NumberVarValue entry, now ttIcarus is NumberVarValue entry;
				-- "ttransform":
					if ttransform is not NumberVarValue entry, now ttransform is NumberVarValue entry;
				-- "Turns":
					if Turns is not NumberVarValue entry, now Turns is NumberVarValue entry;
				-- "turns in heat":
					if turns in heat is not NumberVarValue entry, now turns in heat is NumberVarValue entry;
				-- "TwelveLaborsStage":
					if TwelveLaborsStage is not NumberVarValue entry, now TwelveLaborsStage is NumberVarValue entry;
				-- "twpimpbeaten":
					if twpimpbeaten is not NumberVarValue entry, now twpimpbeaten is NumberVarValue entry;
				-- "twpimploss":
					if twpimploss is not NumberVarValue entry, now twpimploss is NumberVarValue entry;
				-- "Tyraffection":
					if Tyraffection is not NumberVarValue entry, now Tyraffection is NumberVarValue entry;
				-- "TyrDefeated":
					if TyrDefeated is not NumberVarValue entry, now TyrDefeated is NumberVarValue entry;
				-- "Tyrtalk":
					if Tyrtalk is not NumberVarValue entry, now Tyrtalk is NumberVarValue entry;
				-- "ubchoice":
					if ubchoice is not NumberVarValue entry, now ubchoice is NumberVarValue entry;
				-- "ubcount":
					if ubcount is not NumberVarValue entry, now ubcount is NumberVarValue entry;
				-- "UBlevel":
					if UBlevel is not NumberVarValue entry, now UBlevel is NumberVarValue entry;
				-- "UrikEricInteraction":
					if UrikEricInteraction is not NumberVarValue entry, now UrikEricInteraction is NumberVarValue entry;
				-- "UrsineDefeatCount":
					if UrsineDefeatCount is not NumberVarValue entry, now UrsineDefeatCount is NumberVarValue entry;
				-- "UtahGender":
					if UtahGender is not NumberVarValue entry, now UtahGender is NumberVarValue entry;
				-- "valhosp":
					if valhosp is not NumberVarValue entry, now valhosp is NumberVarValue entry;
				-- "ValPregCounter":
					if ValPregCounter is not NumberVarValue entry, now ValPregCounter is NumberVarValue entry;
				-- "ValPregnancy":
					if ValPregnancy is not NumberVarValue entry, now ValPregnancy is NumberVarValue entry;
				-- "Valtalk":
					if Valtalk is not NumberVarValue entry, now Valtalk is NumberVarValue entry;
				-- "VentDomSize":
					if VentDomSize is not NumberVarValue entry, now VentDomSize is NumberVarValue entry;
				-- "VentFluidAmount":
					if VentFluidAmount is not NumberVarValue entry, now VentFluidAmount is NumberVarValue entry;
				-- "VentFoxContentLevel":
					if VentFoxContentLevel is not NumberVarValue entry, now VentFoxContentLevel is NumberVarValue entry;
				-- "VentFoxLastFed":
					if VentFoxLastFed is not NumberVarValue entry, now VentFoxLastFed is NumberVarValue entry;
				-- "VentFoxRelationship":
					if VentFoxRelationship is not NumberVarValue entry, now VentFoxRelationship is NumberVarValue entry;
				-- "VentOviAmount":
					if VentOviAmount is not NumberVarValue entry, now VentOviAmount is NumberVarValue entry;
				-- "VentSubSize":
					if VentSubSize is not NumberVarValue entry, now VentSubSize is NumberVarValue entry;
				-- "VentWSAmount":
					if VentWSAmount is not NumberVarValue entry, now VentWSAmount is NumberVarValue entry;
				-- "vetcheater":
					if vetcheater is not NumberVarValue entry, now vetcheater is NumberVarValue entry;
				-- "vgeckoanal":
					if vgeckoanal is not NumberVarValue entry, now vgeckoanal is NumberVarValue entry;
				-- "vgeckobeaten":
					if vgeckobeaten is not NumberVarValue entry, now vgeckobeaten is NumberVarValue entry;
				-- "vgeckoloss":
					if vgeckoloss is not NumberVarValue entry, now vgeckoloss is NumberVarValue entry;
				-- "VictoryOverDaBull":
					if VictoryOverDaBull is not NumberVarValue entry, now VictoryOverDaBull is NumberVarValue entry;
				-- "VikingKidCounter":
					if VikingKidCounter is not NumberVarValue entry, now VikingKidCounter is NumberVarValue entry;
				-- "VikingKidGender":
					if VikingKidGender is not NumberVarValue entry, now VikingKidGender is NumberVarValue entry;
				-- "VikingPregCounter":
					if VikingPregCounter is not NumberVarValue entry, now VikingPregCounter is NumberVarValue entry;
				-- "VikingPregnancy":
					if VikingPregnancy is not NumberVarValue entry, now VikingPregnancy is NumberVarValue entry;
				-- "VikingRelationship":
					if VikingRelationship is not NumberVarValue entry, now VikingRelationship is NumberVarValue entry;
				-- "VikingSpartanWar":
					if VikingSpartanWar is not NumberVarValue entry, now VikingSpartanWar is NumberVarValue entry;
				-- "VikingUltimatum":
					if VikingUltimatum is not NumberVarValue entry, now VikingUltimatum is NumberVarValue entry;
				-- "VikingWar":
					if VikingWar is not NumberVarValue entry, now VikingWar is NumberVarValue entry;
				-- "violinfound":
					if violinfound is not NumberVarValue entry, now violinfound is NumberVarValue entry;
				-- "vixcountdown":
					if vixcountdown is not NumberVarValue entry, now vixcountdown is NumberVarValue entry;
				-- "vixentaurcatch":
					if vixentaurcatch is not NumberVarValue entry, now vixentaurcatch is NumberVarValue entry;
				-- "vixgender":
					if vixgender is not NumberVarValue entry, now vixgender is NumberVarValue entry;
				-- "vorechoice":
					if vorechoice is not NumberVarValue entry, now vorechoice is NumberVarValue entry;
				-- "vorecount":
					if vorecount is not NumberVarValue entry, now vorecount is NumberVarValue entry;
				-- "vorelevel":
					if vorelevel is not NumberVarValue entry, now vorelevel is NumberVarValue entry;
				-- "vpostmusenum":
					if vpostmusenum is not NumberVarValue entry, now vpostmusenum is NumberVarValue entry;
				-- "waiterhater":
					if waiterhater is not NumberVarValue entry, now waiterhater is NumberVarValue entry;
				-- "WallyQuestDenial":
					if WallyQuestDenial is not NumberVarValue entry, now WallyQuestDenial is NumberVarValue entry;
				-- "WallyOrcFled":
					if WallyOrcFled is not NumberVarValue entry, now WallyOrcFled is NumberVarValue entry;
				-- "InsightGained":
					if InsightGained is not NumberVarValue entry, now InsightGained is NumberVarValue entry;
				-- "WallyTrust":
					if WallyTrust is not NumberVarValue entry, now WallyTrust is NumberVarValue entry;
				-- "WallStanding":
					if WallStanding is not NumberVarValue entry, now WallStanding is NumberVarValue entry;
				-- "WarLossCounter":
					if WarLossCounter is not NumberVarValue entry, now WarLossCounter is NumberVarValue entry;
				-- "WarriorChrisDominance":
					if WarriorChrisDominance is not NumberVarValue entry, now WarriorChrisDominance is NumberVarValue entry;
				-- "WarriorChrisPlayerFucked":
					if WarriorChrisPlayerFucked is not NumberVarValue entry, now WarriorChrisPlayerFucked is NumberVarValue entry;
				-- "wasfertile":
					if wasfertile is not NumberVarValue entry, now wasfertile is NumberVarValue entry;
				-- "wasfertilef":
					if wasfertilef is not NumberVarValue entry, now wasfertilef is NumberVarValue entry;
				-- "washerenest":
					if washerenest is not NumberVarValue entry, now washerenest is NumberVarValue entry;
				-- "wassterile":
					if wassterile is not NumberVarValue entry, now wassterile is NumberVarValue entry;
				-- "wassterilef":
					if wassterilef is not NumberVarValue entry, now wassterilef is NumberVarValue entry;
				-- "watercount":
					if watercount is not NumberVarValue entry, now watercount is NumberVarValue entry;
				-- "waterneed":
					if waterneed is not NumberVarValue entry, now waterneed is NumberVarValue entry;
				-- "weaselcount":
					if weaselcount is not NumberVarValue entry, now weaselcount is NumberVarValue entry;
				-- "WellRestedTimer":
					if WellRestedTimer is not NumberVarValue entry, now WellRestedTimer is NumberVarValue entry;
				-- "werewolfcostumenosex":
					if werewolfcostumenosex is not NumberVarValue entry, now werewolfcostumenosex is NumberVarValue entry;
				-- "WerewolfRelationship":
					if WerewolfRelationship is not NumberVarValue entry, now WerewolfRelationship is NumberVarValue entry;
				-- "whelpspotnum":
					if whelpspotnum is not NumberVarValue entry, now whelpspotnum is NumberVarValue entry;
				-- "WhiptailLossCount":
					if WhiptailLossCount is not NumberVarValue entry, now WhiptailLossCount is NumberVarValue entry;
				-- "WhoringExperience":
					if WhoringExperience is not NumberVarValue entry, now WhoringExperience is NumberVarValue entry;
				-- "WineFound":
					if WineFound is not NumberVarValue entry, now WineFound is NumberVarValue entry;
				-- "wolfhermdefeat":
					if wolfhermdefeat is not NumberVarValue entry, now wolfhermdefeat is NumberVarValue entry;
				-- "wolfhermvictory":
					if wolfhermvictory is not NumberVarValue entry, now wolfhermvictory is NumberVarValue entry;
				-- "WolfHorseMallCouple":
					if WolfHorseMallCouple is not NumberVarValue entry, now WolfHorseMallCouple is NumberVarValue entry;
				-- "workoutprice":
					if workoutprice is not NumberVarValue entry, now workoutprice is NumberVarValue entry;
				-- "wrcurseholdback":
					if wrcurseholdback is not NumberVarValue entry, now wrcurseholdback is NumberVarValue entry;
				-- "wrcurseMoffatt":
					if wrcurseMoffatt is not NumberVarValue entry, now wrcurseMoffatt is NumberVarValue entry;
				-- "wrcurseNermine":
					if wrcurseNermine is not NumberVarValue entry, now wrcurseNermine is NumberVarValue entry;
				-- "wrcursestart":
					if wrcursestart is not NumberVarValue entry, now wrcursestart is NumberVarValue entry;
				-- "wrcursestatus":
					if wrcursestatus is not NumberVarValue entry, now wrcursestatus is NumberVarValue entry;
				-- "wrdaycycle":
					if wrdaycycle is not NumberVarValue entry, now wrdaycycle is NumberVarValue entry;
				-- "wrestlechance":
					if wrestlechance is not NumberVarValue entry, now wrestlechance is NumberVarValue entry;
				-- "wrestlingwolfdefeat":
					if wrestlingwolfdefeat is not NumberVarValue entry, now wrestlingwolfdefeat is NumberVarValue entry;
				-- "wrlastNermine":
					if wrlastNermine is not NumberVarValue entry, now wrlastNermine is NumberVarValue entry;
				-- "wrmode":
					if wrmode is not NumberVarValue entry, now wrmode is NumberVarValue entry;
				-- "wrscalevalue":
					if wrscalevalue is not NumberVarValue entry, now wrscalevalue is NumberVarValue entry;
				-- "wrwolfanal":
					if wrwolfanal is not NumberVarValue entry, now wrwolfanal is NumberVarValue entry;
				-- "wrwolfbeaten":
					if wrwolfbeaten is not NumberVarValue entry, now wrwolfbeaten is NumberVarValue entry;
				-- "WSlevel":
					if WSlevel is not NumberVarValue entry, now WSlevel is NumberVarValue entry;
				-- "wwheal":
					if wwheal is not NumberVarValue entry, now wwheal is NumberVarValue entry;
				-- "wyvernbias":
					if wyvernbias is not NumberVarValue entry, now wyvernbias is NumberVarValue entry;
				-- "WYVGEN":
					if WYVGEN is not NumberVarValue entry, now WYVGEN is NumberVarValue entry;
				-- "wyvkin1att":
					if wyvkin1att is not NumberVarValue entry, now wyvkin1att is NumberVarValue entry;
				-- "wyvkin1gen":
					if wyvkin1gen is not NumberVarValue entry, now wyvkin1gen is NumberVarValue entry;
				-- "wyvkin1lib":
					if wyvkin1lib is not NumberVarValue entry, now wyvkin1lib is NumberVarValue entry;
				-- "wyvkin2att":
					if wyvkin2att is not NumberVarValue entry, now wyvkin2att is NumberVarValue entry;
				-- "wyvkin2gen":
					if wyvkin2gen is not NumberVarValue entry, now wyvkin2gen is NumberVarValue entry;
				-- "wyvkin2lib":
					if wyvkin2lib is not NumberVarValue entry, now wyvkin2lib is NumberVarValue entry;
				-- "wyvkin3att":
					if wyvkin3att is not NumberVarValue entry, now wyvkin3att is NumberVarValue entry;
				-- "wyvkin3gen":
					if wyvkin3gen is not NumberVarValue entry, now wyvkin3gen is NumberVarValue entry;
				-- "wyvkin3lib":
					if wyvkin3lib is not NumberVarValue entry, now wyvkin3lib is NumberVarValue entry;
				-- "wyvkin4att":
					if wyvkin4att is not NumberVarValue entry, now wyvkin4att is NumberVarValue entry;
				-- "wyvkin4gen":
					if wyvkin4gen is not NumberVarValue entry, now wyvkin4gen is NumberVarValue entry;
				-- "wyvkin4lib":
					if wyvkin4lib is not NumberVarValue entry, now wyvkin4lib is NumberVarValue entry;
				-- "wyvkinassign":
					if wyvkinassign is not NumberVarValue entry, now wyvkinassign is NumberVarValue entry;
				-- "wyvkinatt":
					if wyvkinatt is not NumberVarValue entry, now wyvkinatt is NumberVarValue entry;
				-- "wyvkinocc":
					if wyvkinocc is not NumberVarValue entry, now wyvkinocc is NumberVarValue entry;
				-- "WYVLEV":
					if WYVLEV is not NumberVarValue entry, now WYVLEV is NumberVarValue entry;
				-- "wyvorgyroll":
					if wyvorgyroll is not NumberVarValue entry, now wyvorgyroll is NumberVarValue entry;
				-- "WYVSF":
					if WYVSF is not NumberVarValue entry, now WYVSF is NumberVarValue entry;
				-- "yamatdom":
					if yamatdom is not NumberVarValue entry, now yamatdom is NumberVarValue entry;
				-- "ydcolor":
					if ydcolor is not NumberVarValue entry, now ydcolor is NumberVarValue entry;
				-- "YDSF":
					if YDSF is not NumberVarValue entry, now YDSF is NumberVarValue entry;
				-- "ymgmode":
					if ymgmode is not NumberVarValue entry, now ymgmode is NumberVarValue entry;
				-- "ZebraLossCount":
					if ZebraLossCount is not NumberVarValue entry, now ZebraLossCount is NumberVarValue entry;
				-- "ZekeRelationship":
					if ZekeRelationship is not NumberVarValue entry, now ZekeRelationship is NumberVarValue entry;
				-- "zephyrpests":
					if zephyrpests is not NumberVarValue entry, now zephyrpests is NumberVarValue entry;
				-- "zephyrtask":
					if zephyrtask is not NumberVarValue entry, now zephyrtask is NumberVarValue entry;
				-- "ZieraFucked":
					if ZieraFucked is not NumberVarValue entry, now ZieraFucked is NumberVarValue entry;
				-- "zigseat":
					if zigseat is not NumberVarValue entry, now zigseat is NumberVarValue entry;
				-- "zpc_Zc":
					if zpc_Zc is not NumberVarValue entry, now zpc_Zc is NumberVarValue entry;
			[
			if debug is at level 10:
				say "DEBUG -> VarName '[NumberVarName entry]' restored to '[NumberVarValue entry]'.";
			]
	else:
		say "No Number Save File Found!";

to VariableTruthLoad:
	if the File of TruthSave exists:
		say "Restoring Truths...";
		read File of TruthSave into the Table of GameTruths;
		repeat with x running from 1 to the number of filled rows in the Table of GameTruths:
			if there is no TruthVarValue in row x of the Table of GameTruths, next;
			choose row x in the Table of GameTruths;
			[
			if debug is at level 10:
				say "Restoring Truth [TruthVarName entry].";
			]
			if TruthVarName entry is:
				-- "ColaVendingMachine_dead":
					if Cola Vending Machine is in Mall Foodcourt, now Cola Vending Machine is nowhere;
				-- "LibraryComputer_on":
					if library computer is not on, now library computer is on;
				-- "A_Candy":
					if A_Candy is not TruthVarValue entry, now A_Candy is TruthVarValue entry;
				-- "A_Colleen":
					if A_Colleen is not TruthVarValue entry, now A_Colleen is TruthVarValue entry;
				-- "A_David":
					if A_David is not TruthVarValue entry, now A_David is TruthVarValue entry;
				-- "A_Elijah":
					if A_Elijah is not TruthVarValue entry, now A_Elijah is TruthVarValue entry;
				-- "A_Fang":
					if A_Fang is not TruthVarValue entry, now A_Fang is TruthVarValue entry;
				-- "A_Helen":
					if A_Helen is not TruthVarValue entry, now A_Helen is TruthVarValue entry;
				-- "A_Icarus":
					if A_Icarus is not TruthVarValue entry, now A_Icarus is TruthVarValue entry;
				-- "A_Mack":
					if A_Mack is not TruthVarValue entry, now A_Mack is TruthVarValue entry;
				-- "A_Onyx":
					if A_Onyx is not TruthVarValue entry, now A_Onyx is TruthVarValue entry;
				-- "A_Philip":
					if A_Philip is not TruthVarValue entry, now A_Philip is TruthVarValue entry;
				-- "A_Sally":
					if A_Sally is not TruthVarValue entry, now A_Sally is TruthVarValue entry;
				-- "A_Sam":
					if A_Sam is not TruthVarValue entry, now A_Sam is TruthVarValue entry;
				-- "A_Sandra":
					if A_Sandra is not TruthVarValue entry, now A_Sandra is TruthVarValue entry;
				-- "A_Sarah":
					if A_Sarah is not TruthVarValue entry, now A_Sarah is TruthVarValue entry;
				-- "A_Sarah2":
					if A_Sarah2 is not TruthVarValue entry, now A_Sarah2 is TruthVarValue entry;
				-- "A_Snow":
					if A_Snow is not TruthVarValue entry, now A_Snow is TruthVarValue entry;
				-- "A_Solstice":
					if A_Solstice is not TruthVarValue entry, now A_Solstice is TruthVarValue entry;
				-- "A_Sven":
					if A_Sven is not TruthVarValue entry, now A_Sven is TruthVarValue entry;
				-- "A_Xerxes":
					if A_Xerxes is not TruthVarValue entry, now A_Xerxes is TruthVarValue entry;
				-- "Alexandracoffee":
					if Alexandracoffee is not TruthVarValue entry, now Alexandracoffee is TruthVarValue entry;
				-- "alexandragshep1":
					if alexandragshep1 is not TruthVarValue entry, now alexandragshep1 is TruthVarValue entry;
				-- "Alexandrastory":
					if Alexandrastory is not TruthVarValue entry, now Alexandrastory is TruthVarValue entry;
				-- "Alexandrastory2":
					if Alexandrastory2 is not TruthVarValue entry, now Alexandrastory2 is TruthVarValue entry;
				-- "Alexandrastory3":
					if Alexandrastory3 is not TruthVarValue entry, now Alexandrastory3 is TruthVarValue entry;
				-- "alphaHuskyBountyState":
					if alphaHuskyBountyState is not TruthVarValue entry, now alphaHuskyBountyState is TruthVarValue entry;
				-- "alphawolfreplaced":
					if alphawolfreplaced is not TruthVarValue entry, now alphawolfreplaced is TruthVarValue entry;
				-- "altsealedentrance":
					if altsealedentrance is not TruthVarValue entry, now altsealedentrance is TruthVarValue entry;
				-- "animal heat":
					if animal heat is not TruthVarValue entry, now animal heat is TruthVarValue entry;
				-- "animeclubfight":
					if animeclubfight is not TruthVarValue entry, now animeclubfight is TruthVarValue entry;
				-- "artemisstatefairrt":
					if artemisstatefairrt is not TruthVarValue entry, now artemisstatefairrt is TruthVarValue entry;
				-- "AT_Diego":
					if AT_Diego is not TruthVarValue entry, now AT_Diego is TruthVarValue entry;
				-- "AT_Jimmy":
					if AT_Jimmy is not TruthVarValue entry, now AT_Jimmy is TruthVarValue entry;
				-- "AT_Lisa":
					if AT_Lisa is not TruthVarValue entry, now AT_Lisa is TruthVarValue entry;
				-- "AT_Marks":
					if AT_Marks is not TruthVarValue entry, now AT_Marks is TruthVarValue entry;
				-- "AT_Matt":
					if AT_Matt is not TruthVarValue entry, now AT_Matt is TruthVarValue entry;
				-- "AT_Mouse":
					if AT_Mouse is not TruthVarValue entry, now AT_Mouse is TruthVarValue entry;
				-- "AT_Patrol":
					if AT_Patrol is not TruthVarValue entry, now AT_Patrol is TruthVarValue entry;
				-- "at_patrol_01":
					if at_patrol_01 is not TruthVarValue entry, now at_patrol_01 is TruthVarValue entry;
				-- "AT_Paula":
					if AT_Paula is not TruthVarValue entry, now AT_Paula is TruthVarValue entry;
				-- "AT_Philip":
					if AT_Philip is not TruthVarValue entry, now AT_Philip is TruthVarValue entry;
				-- "AT_Qytat":
					if AT_Qytat is not TruthVarValue entry, now AT_Qytat is TruthVarValue entry;
				-- "AT_Repair":
					if AT_Repair is not TruthVarValue entry, now AT_Repair is TruthVarValue entry;
				-- "AT_RLD":
					if AT_RLD is not TruthVarValue entry, now AT_RLD is TruthVarValue entry;
				-- "AT_Sandra":
					if AT_Sandra is not TruthVarValue entry, now AT_Sandra is TruthVarValue entry;
				-- "AT_Sarah":
					if AT_Sarah is not TruthVarValue entry, now AT_Sarah is TruthVarValue entry;
				-- "AT_Snow":
					if AT_Snow is not TruthVarValue entry, now AT_Snow is TruthVarValue entry;
				-- "AT_Stella":
					if AT_Stella is not TruthVarValue entry, now AT_Stella is TruthVarValue entry;
				-- "AT_Sven":
					if AT_Sven is not TruthVarValue entry, now AT_Sven is TruthVarValue entry;
				-- "autofeatloading":
					if autofeatloading is not TruthVarValue entry, now autofeatloading is TruthVarValue entry;
				-- "BastetSexOrTalk":
					if BastetSexOrTalk is not TruthVarValue entry, now BastetSexOrTalk is TruthVarValue entry;
				-- "bcplayroomlast":
					if bcplayroomlast is not TruthVarValue entry, now bcplayroomlast is TruthVarValue entry;
				-- "bcseenhugeorca":
					if bcseenhugeorca is not TruthVarValue entry, now bcseenhugeorca is TruthVarValue entry;
				-- "bcseenkingchair":
					if bcseenkingchair is not TruthVarValue entry, now bcseenkingchair is TruthVarValue entry;
				-- "bcseenkingknight":
					if bcseenkingknight is not TruthVarValue entry, now bcseenkingknight is TruthVarValue entry;
				-- "bcseenplayroom":
					if bcseenplayroom is not TruthVarValue entry, now bcseenplayroom is TruthVarValue entry;
				-- "bcseenpunchingpillars":
					if bcseenpunchingpillars is not TruthVarValue entry, now bcseenpunchingpillars is TruthVarValue entry;
				-- "bcseenthroneroom":
					if bcseenthroneroom is not TruthVarValue entry, now bcseenthroneroom is TruthVarValue entry;
				-- "bcswordplay":
					if bcswordplay is not TruthVarValue entry, now bcswordplay is TruthVarValue entry;
				-- "beachrape":
					if beachrape is not TruthVarValue entry, now beachrape is TruthVarValue entry;
				-- "beauceronmet":
					if beauceronmet is not TruthVarValue entry, now beauceronmet is TruthVarValue entry;
				-- "birthedwhelp":
					if birthedwhelp is not TruthVarValue entry, now birthedwhelp is TruthVarValue entry;
				-- "blanchetalk1":
					if blanchetalk1 is not TruthVarValue entry, now blanchetalk1 is TruthVarValue entry;
				-- "blanchetalk2":
					if blanchetalk2 is not TruthVarValue entry, now blanchetalk2 is TruthVarValue entry;
				-- "blanchetalk3":
					if blanchetalk3 is not TruthVarValue entry, now blanchetalk3 is TruthVarValue entry;
				-- "BlindMode":
					if BlindMode is not TruthVarValue entry, now BlindMode is TruthVarValue entry;
				-- "blindmode":
					if BlindMode is not TruthVarValue entry, now BlindMode is TruthVarValue entry;
				-- "bopseen":
					if bopseen is not TruthVarValue entry, now bopseen is TruthVarValue entry;
				-- "BorisArtemistalk":
					if BorisArtemistalk is not TruthVarValue entry, now BorisArtemistalk is TruthVarValue entry;
				-- "boundrecover":
					if boundrecover is not TruthVarValue entry, now boundrecover is TruthVarValue entry;
				-- "boundstate":
					if boundstate is not TruthVarValue entry, now boundstate is TruthVarValue entry;
				-- "bradfordstory1":
					if bradfordstory1 is not TruthVarValue entry, now bradfordstory1 is TruthVarValue entry;
				-- "bradfordstory2":
					if bradfordstory2 is not TruthVarValue entry, now bradfordstory2 is TruthVarValue entry;
				-- "bradfordstory3":
					if bradfordstory3 is not TruthVarValue entry, now bradfordstory3 is TruthVarValue entry;
				-- "bradfordstory4":
					if bradfordstory4 is not TruthVarValue entry, now bradfordstory4 is TruthVarValue entry;
				-- "brookeandrewtalk":
					if brookeandrewtalk is not TruthVarValue entry, now brookeandrewtalk is TruthVarValue entry;
				-- "busterstory1":
					if busterstory1 is not TruthVarValue entry, now busterstory1 is TruthVarValue entry;
				-- "busterstory2":
					if busterstory2 is not TruthVarValue entry, now busterstory2 is TruthVarValue entry;
				-- "ButterflyForeplay":
					if ButterflyForeplay is not TruthVarValue entry, now ButterflyForeplay is TruthVarValue entry;
				-- "ButterflyHasNegligee":
					if ButterflyHasNegligee is not TruthVarValue entry, now ButterflyHasNegligee is TruthVarValue entry;
				-- "ButterflyLikesYou":
					if ButterflyLikesYou is not TruthVarValue entry, now ButterflyLikesYou is TruthVarValue entry;
				-- "ButterflyLove":
					if ButterflyLove is not TruthVarValue entry, now ButterflyLove is TruthVarValue entry;
				-- "ButterflyNegligeeTorn":
					if ButterflyNegligeeTorn is not TruthVarValue entry, now ButterflyNegligeeTorn is TruthVarValue entry;
				-- "ButterflyPantiesFound":
					if ButterflyPantiesFound is not TruthVarValue entry, now ButterflyPantiesFound is TruthVarValue entry;
				-- "ButterflyPregnant":
					if ButterflyPregnant is not TruthVarValue entry, now ButterflyPregnant is TruthVarValue entry;
				-- "ButterflyProcreated":
					if ButterflyProcreated is not TruthVarValue entry, now ButterflyProcreated is TruthVarValue entry;
				-- "ButterflyRevenge":
					if ButterflyRevenge is not TruthVarValue entry, now ButterflyRevenge is TruthVarValue entry;
				-- "callovi":
					if callovi is not TruthVarValue entry, now callovi is TruthVarValue entry;
				-- "cclosttarget":
					if cclosttarget is not TruthVarValue entry, now cclosttarget is TruthVarValue entry;
				-- "cheetah_mpreg":
					if cheetah_mpreg is not TruthVarValue entry, now cheetah_mpreg is TruthVarValue entry;
				-- "chindem":
					if chindem is not TruthVarValue entry, now chindem is TruthVarValue entry;
				-- "christysausage":
					if christysausage is not TruthVarValue entry, now christysausage is TruthVarValue entry;
				-- "ClassPaymentAccepted":
					if ClassPaymentAccepted is not TruthVarValue entry, now ClassPaymentAccepted is TruthVarValue entry;
				-- "cuptrick":
					if cuptrick is not TruthVarValue entry, now cuptrick is TruthVarValue entry;
				-- "demonBruteBountyState":
					if demonBruteBountyState is not TruthVarValue entry, now demonBruteBountyState is TruthVarValue entry;
				-- "DemonFox_Apologized":
					if DemonFox_Apologized is not TruthVarValue entry, now DemonFox_Apologized is TruthVarValue entry;
				-- "DemonFox_Encountered":
					if DemonFox_Encountered is not TruthVarValue entry, now DemonFox_Encountered is TruthVarValue entry;
				-- "DemonFox_PlayerDefeated":
					if DemonFox_PlayerDefeated is not TruthVarValue entry, now DemonFox_PlayerDefeated is TruthVarValue entry;
				-- "DemonFox_PlayerFled":
					if DemonFox_PlayerFled is not TruthVarValue entry, now DemonFox_PlayerFled is TruthVarValue entry;
				-- "DemonFox_PlayerSubmitted":
					if DemonFox_PlayerSubmitted is not TruthVarValue entry, now DemonFox_PlayerSubmitted is TruthVarValue entry;
				-- "DemonFox_PlayerWon":
					if DemonFox_PlayerWon is not TruthVarValue entry, now DemonFox_PlayerWon is TruthVarValue entry;
				-- "DemonFox_PlayerWon_Fucked":
					if DemonFox_PlayerWon_Fucked is not TruthVarValue entry, now DemonFox_PlayerWon_Fucked is TruthVarValue entry;
				-- "DemonFoxRead":
					if DemonFoxRead is not TruthVarValue entry, now DemonFoxRead is TruthVarValue entry;
				-- "dobieanal":
					if dobieanal is not TruthVarValue entry, now dobieanal is TruthVarValue entry;
				-- "DoranAnnoyed":
					if DoranAnnoyed is not TruthVarValue entry, now DoranAnnoyed is TruthVarValue entry;
				-- "DoranAutofired":
					if DoranAutofired is not TruthVarValue entry, now DoranAutofired is TruthVarValue entry;
				-- "DoranAutofireDiscussed":
					if DoranAutofireDiscussed is not TruthVarValue entry, now DoranAutofireDiscussed is TruthVarValue entry;
				-- "DoranCumFilled":
					if DoranCumFilled is not TruthVarValue entry, now DoranCumFilled is TruthVarValue entry;
				-- "DoranFirstTalk":
					if DoranFirstTalk is not TruthVarValue entry, now DoranFirstTalk is TruthVarValue entry;
				-- "DoranInternal":
					if DoranInternal is not TruthVarValue entry, now DoranInternal is TruthVarValue entry;
				-- "DoranPlayerBlueballing":
					if DoranPlayerBlueballing is not TruthVarValue entry, now DoranPlayerBlueballing is TruthVarValue entry;
				-- "DoranPlayerCumFilled":
					if DoranPlayerCumFilled is not TruthVarValue entry, now DoranPlayerCumFilled is TruthVarValue entry;
				-- "DoranPlayerGenderRegard":
					if DoranPlayerGenderRegard is not TruthVarValue entry, now DoranPlayerGenderRegard is TruthVarValue entry;
				-- "DoranRefusedSex":
					if DoranRefusedSex is not TruthVarValue entry, now DoranRefusedSex is TruthVarValue entry;
				-- "DoranSelfGender":
					if DoranSelfGender is not TruthVarValue entry, now DoranSelfGender is TruthVarValue entry;
				-- "drutah_msg1":
					if drutah_msg1 is not TruthVarValue entry, now drutah_msg1 is TruthVarValue entry;
				-- "duckyactive":
					if duckyactive is not TruthVarValue entry, now duckyactive is TruthVarValue entry;
				-- "ebheat_msg":
					if ebheat_msg is not TruthVarValue entry, now ebheat_msg is TruthVarValue entry;
				-- "ebneuterswitch":
					if ebneuterswitch is not TruthVarValue entry, now ebneuterswitch is TruthVarValue entry;
				-- "enduring":
					if enduring is not TruthVarValue entry, now enduring is TruthVarValue entry;
				-- "eprodused":
					if eprodused is not TruthVarValue entry, now eprodused is TruthVarValue entry;
				-- "facecheck":
					if facecheck is not TruthVarValue entry, now facecheck is TruthVarValue entry;
				-- "fangsidney":
					if fangsidney is not TruthVarValue entry, now fangsidney is TruthVarValue entry;
				-- "FangToy":
					if FangToy is not TruthVarValue entry, now FangToy is TruthVarValue entry;
				-- "fangvelos1":
					if fangvelos1 is not TruthVarValue entry, now fangvelos1 is TruthVarValue entry;
				-- "featherready":
					if featherready is not TruthVarValue entry, now featherready is TruthVarValue entry;
				-- "feline_pride_defeat":
					if feline_pride_defeat is not TruthVarValue entry, now feline_pride_defeat is TruthVarValue entry;
				-- "FFSDUBM":
					if FFSDUBM is not TruthVarValue entry, now FFSDUBM is TruthVarValue entry;
				-- "firebreathready":
					if firebreathready is not TruthVarValue entry, now firebreathready is TruthVarValue entry;
				-- "firstgarg":
					if firstgarg is not TruthVarValue entry, now firstgarg is TruthVarValue entry;
				-- "floatertaken":
					if floatertaken is not TruthVarValue entry, now floatertaken is TruthVarValue entry;
				-- "flotmarked":
					if flotmarked is not TruthVarValue entry, now flotmarked is TruthVarValue entry;
				-- "Francoismixcleaned":
					if Francoismixcleaned is not TruthVarValue entry, now Francoismixcleaned is TruthVarValue entry;
				-- "Francoistalk1":
					if Francoistalk1 is not TruthVarValue entry, now Francoistalk1 is TruthVarValue entry;
				-- "fsnakevalid":
					if fsnakevalid is not TruthVarValue entry, now fsnakevalid is TruthVarValue entry;
				-- "garrettinfo1":
					if garrettinfo1 is not TruthVarValue entry, now garrettinfo1 is TruthVarValue entry;
				-- "gobdem":
					if gobdem is not TruthVarValue entry, now gobdem is TruthVarValue entry;
				-- "grhouse":
					if grhouse is not TruthVarValue entry, now grhouse is TruthVarValue entry;
				-- "gsd_attack":
					if gsd_attack is not TruthVarValue entry, now gsd_attack is TruthVarValue entry;
				-- "gsd_fled":
					if gsd_fled is not TruthVarValue entry, now gsd_fled is TruthVarValue entry;
				-- "gsd_male":
					if gsd_male is not TruthVarValue entry, now gsd_male is TruthVarValue entry;
				-- "gsd_slut":
					if gsd_slut is not TruthVarValue entry, now gsd_slut is TruthVarValue entry;
				-- "gsd_special":
					if gsd_special is not TruthVarValue entry, now gsd_special is TruthVarValue entry;
				-- "HadGusBackgroundTalk":
					if HadGusBackgroundTalk is not TruthVarValue entry, now HadGusBackgroundTalk is TruthVarValue entry;
				-- "hadiyahyg":
					if hadiyahyg is not TruthVarValue entry, now hadiyahyg is TruthVarValue entry;
				-- "HardMode":
					if HardMode is not TruthVarValue entry, now HardMode is TruthVarValue entry;
				-- "Hardmode":
					if HardMode is not TruthVarValue entry, now HardMode is TruthVarValue entry;
				-- "heat enabled":
					if heat enabled is not TruthVarValue entry, now heat enabled is TruthVarValue entry;
				-- "heatturnskipper":
					if heatturnskipper is not TruthVarValue entry, now heatturnskipper is TruthVarValue entry;
				-- "hobo-food-gift":
					if hobo-food-gift is not TruthVarValue entry, now hobo-food-gift is TruthVarValue entry;
				-- "hobo-grmilk":
					if hobo-grmilk is not TruthVarValue entry, now hobo-grmilk is TruthVarValue entry;
				-- "hobo-libidosupp":
					if hobo-libidosupp is not TruthVarValue entry, now hobo-libidosupp is TruthVarValue entry;
				-- "hobo-water-gift":
					if hobo-water-gift is not TruthVarValue entry, now hobo-water-gift is TruthVarValue entry;
				-- "honeygiven":
					if honeygiven is not TruthVarValue entry, now honeygiven is TruthVarValue entry;
				-- "houndfromhell":
					if houndfromhell is not TruthVarValue entry, now houndfromhell is TruthVarValue entry;
				-- "hvoreoffer":
					if hvoreoffer is not TruthVarValue entry, now hvoreoffer is TruthVarValue entry;
				-- "hydraheadregrowth":
					if hydraheadregrowth is not TruthVarValue entry, now hydraheadregrowth is TruthVarValue entry;
				-- "HyenaMatVore":
					if HyenaMatVore is not TruthVarValue entry, now HyenaMatVore is TruthVarValue entry;
				-- "icarusrim":
					if icarusrim is not TruthVarValue entry, now icarusrim is TruthVarValue entry;
				-- "icarusscene1":
					if icarusscene1 is not TruthVarValue entry, now icarusscene1 is TruthVarValue entry;
				-- "icarusscene2":
					if icarusscene2 is not TruthVarValue entry, now icarusscene2 is TruthVarValue entry;
				-- "impregnatevalid":
					if impregnatevalid is not TruthVarValue entry, now impregnatevalid is TruthVarValue entry;
				-- "inasituation":
					if inasituation is not TruthVarValue entry, now inasituation is TruthVarValue entry;
				-- "inheat":
					if inheat is not TruthVarValue entry, now inheat is TruthVarValue entry;
				-- "insectlarva":
					if insectlarva is not TruthVarValue entry, now insectlarva is TruthVarValue entry;
				-- "internalCockbypass":
					if internalCockbypass is not TruthVarValue entry, now internalCockbypass is TruthVarValue entry;
				-- "internalBallsbypass":
					if internalBallsbypass is not TruthVarValue entry, now internalBallsbypass is TruthVarValue entry;
				-- "isHellhound":
					if isHellhound is not TruthVarValue entry, now isHellhound is TruthVarValue entry;
				-- "ishunting":
					if ishunting is not TruthVarValue entry, now ishunting is TruthVarValue entry;
				-- "joannadogsaved":
					if joannadogsaved is not TruthVarValue entry, now joannadogsaved is TruthVarValue entry;
				-- "karahbtalk":
					if karahbtalk is not TruthVarValue entry, now karahbtalk is TruthVarValue entry;
				-- "kristenmsg1":
					if kristenmsg1 is not TruthVarValue entry, now kristenmsg1 is TruthVarValue entry;
				-- "kristenmsg2":
					if kristenmsg2 is not TruthVarValue entry, now kristenmsg2 is TruthVarValue entry;
				-- "kristenmsg3":
					if kristenmsg3 is not TruthVarValue entry, now kristenmsg3 is TruthVarValue entry;
				-- "kristenmsg4":
					if kristenmsg4 is not TruthVarValue entry, now kristenmsg4 is TruthVarValue entry;
				-- "kristenmsg5":
					if kristenmsg5 is not TruthVarValue entry, now kristenmsg5 is TruthVarValue entry;
				-- "kristentf3fuck":
					if kristentf3fuck is not TruthVarValue entry, now kristentf3fuck is TruthVarValue entry;
				-- "ktcockmatch":
					if ktcockmatch is not TruthVarValue entry, now ktcockmatch is TruthVarValue entry;
				-- "KyrverthItemStealable":
					if KyrverthItemStealable is not TruthVarValue entry, now KyrverthItemStealable is TruthVarValue entry;
				-- "KyrverthItemTaken":
					if KyrverthItemTaken is not TruthVarValue entry, now KyrverthItemTaken is TruthVarValue entry;
				-- "KyrverthQuestHairGiven":
					if KyrverthQuestHairGiven is not TruthVarValue entry, now KyrverthQuestHairGiven is TruthVarValue entry;
				-- "KyrverthUsedArtifact":
					if KyrverthUsedArtifact is not TruthVarValue entry, now KyrverthUsedArtifact is TruthVarValue entry;
				-- "LarissaTailed":
					if LarissaTailed is not TruthVarValue entry, now LarissaTailed is TruthVarValue entry;
				-- "LarissaWinged":
					if LarissaWinged is not TruthVarValue entry, now LarissaWinged is TruthVarValue entry;
				-- "LastTurnDay":
					if LastTurnDay is not TruthVarValue entry, now LastTurnDay is TruthVarValue entry;
				-- "latexErmineBountyState":
					if latexErmineBountyState is not TruthVarValue entry, now latexErmineBountyState is TruthVarValue entry;
				-- "latexhuskymode":
					if latexhuskymode is not TruthVarValue entry, now latexhuskymode is TruthVarValue entry;
				-- "leodinner":
					if leodinner is not TruthVarValue entry, now leodinner is TruthVarValue entry;
				-- "Leonardcabinet":
					if Leonardcabinet is not TruthVarValue entry, now Leonardcabinet is TruthVarValue entry;
				-- "Leonardcaraway":
					if Leonardcaraway is not TruthVarValue entry, now Leonardcaraway is TruthVarValue entry;
				-- "Leonardwrdesk":
					if Leonardwrdesk is not TruthVarValue entry, now Leonardwrdesk is TruthVarValue entry;
				-- "leopocketwatch":
					if leopocketwatch is not TruthVarValue entry, now leopocketwatch is TruthVarValue entry;
				-- "leoshadowmet":
					if leoshadowmet is not TruthVarValue entry, now leoshadowmet is TruthVarValue entry;
				-- "LindseyMPregDetected":
					if LindseyMPregDetected is not TruthVarValue entry, now LindseyMPregDetected is TruthVarValue entry;
				-- "lindseyws":
					if lindseyws is not TruthVarValue entry, now lindseyws is TruthVarValue entry;
				-- "maleHound":
					if maleHound is not TruthVarValue entry, now maleHound is TruthVarValue entry;
				-- "mchristyanal":
					if mchristyanal is not TruthVarValue entry, now mchristyanal is TruthVarValue entry;
				-- "mchristybottom":
					if mchristybottom is not TruthVarValue entry, now mchristybottom is TruthVarValue entry;
				-- "mchristytop":
					if mchristytop is not TruthVarValue entry, now mchristytop is TruthVarValue entry;
				-- "mdstaffface":
					if mdstaffface is not TruthVarValue entry, now mdstaffface is TruthVarValue entry;
				-- "medeapanda":
					if medeapanda is not TruthVarValue entry, now medeapanda is TruthVarValue entry;
				-- "medeapill":
					if medeapill is not TruthVarValue entry, now medeapill is TruthVarValue entry;
				-- "medeaub":
					if medeaub is not TruthVarValue entry, now medeaub is TruthVarValue entry;
				-- "Meredith_anal":
					if Meredith_anal is not TruthVarValue entry, now Meredith_anal is TruthVarValue entry;
				-- "Meredith_Colleen_fun1":
					if Meredith_Colleen_fun1 is not TruthVarValue entry, now Meredith_Colleen_fun1 is TruthVarValue entry;
				-- "Meredith_Vanessa_fun1":
					if Meredith_Vanessa_fun1 is not TruthVarValue entry, now Meredith_Vanessa_fun1 is TruthVarValue entry;
				-- "Meredith_Vanessa_fun2":
					if Meredith_Vanessa_fun2 is not TruthVarValue entry, now Meredith_Vanessa_fun2 is TruthVarValue entry;
				-- "messypigaltorgasm":
					if messypigaltorgasm is not TruthVarValue entry, now messypigaltorgasm is TruthVarValue entry;
				-- "MFSDUBM":
					if MFSDUBM is not TruthVarValue entry, now MFSDUBM is TruthVarValue entry;
				-- "MKunleashed":
					if MKunleashed is not TruthVarValue entry, now MKunleashed is TruthVarValue entry;
				-- "mlamiaboobmash":
					if mlamiaboobmash is not TruthVarValue entry, now mlamiaboobmash is TruthVarValue entry;
				-- "mlamiamet":
					if mlamiamet is not TruthVarValue entry, now mlamiamet is TruthVarValue entry;
				-- "monsterhit":
					if monsterhit is not TruthVarValue entry, now monsterhit is TruthVarValue entry;
				-- "MoreauDiscount":
					if MoreauDiscount is not TruthVarValue entry, now MoreauDiscount is TruthVarValue entry;
				-- "MoreauPaymentAccepted":
					if MoreauPaymentAccepted is not TruthVarValue entry, now MoreauPaymentAccepted is TruthVarValue entry;
				-- "mpreghijack":
					if mpreghijack is not TruthVarValue entry, now mpreghijack is TruthVarValue entry;
				-- "mre04":
					if mre04 is not TruthVarValue entry, now mre04 is TruthVarValue entry;
				-- "msnakevalid":
					if msnakevalid is not TruthVarValue entry, now msnakevalid is TruthVarValue entry;
				-- "muggerison":
					if muggerison is not TruthVarValue entry, now muggerison is TruthVarValue entry;
				-- "nagawarning":
					if nagawarning is not TruthVarValue entry, now nagawarning is TruthVarValue entry;
				-- "NavCheckReturn":
					if NavCheckReturn is not TruthVarValue entry, now NavCheckReturn is TruthVarValue entry;
				-- "ndmLisa":
					if ndmLisa is not TruthVarValue entry, now ndmLisa is TruthVarValue entry;
				-- "nmformswitch":
					if nmformswitch is not TruthVarValue entry, now nmformswitch is TruthVarValue entry;
				-- "NoHealMode":
					if NoHealMode is not TruthVarValue entry, now NoHealMode is TruthVarValue entry;
				-- "nohealmode":
					if NoHealMode is not TruthVarValue entry, now NoHealMode is TruthVarValue entry;
				-- "nosquirrelanal":
					if nosquirrelanal is not TruthVarValue entry, now nosquirrelanal is TruthVarValue entry;
				-- "obliging":
					if obliging is not TruthVarValue entry, now obliging is TruthVarValue entry;
				-- "onyxhappytalk":
					if onyxhappytalk is not TruthVarValue entry, now onyxhappytalk is TruthVarValue entry;
				-- "onyxsmra":
					if onyxsmra is not TruthVarValue entry, now onyxsmra is TruthVarValue entry;
				-- "onyxsmro":
					if onyxsmro is not TruthVarValue entry, now onyxsmro is TruthVarValue entry;
				-- "onyxsmrv":
					if onyxsmrv is not TruthVarValue entry, now onyxsmrv is TruthVarValue entry;
				-- "ovipregalways":
					if ovipregalways is not TruthVarValue entry, now ovipregalways is TruthVarValue entry;
				-- "ovipregmedeatalk":
					if ovipregmedeatalk is not TruthVarValue entry, now ovipregmedeatalk is TruthVarValue entry;
				-- "ovipregnant":
					if ovipregnant is not TruthVarValue entry, now ovipregnant is TruthVarValue entry;
				-- "pewtertorsosuppress":
					if pewtertorsosuppress is not TruthVarValue entry, now pewtertorsosuppress is TruthVarValue entry;
				-- "PlayerPigBodied":
					if PlayerPigBodied is not TruthVarValue entry, now PlayerPigBodied is TruthVarValue entry;
				-- "ppatt":
					if ppatt is not TruthVarValue entry, now ppatt is TruthVarValue entry;
				-- "pr_task01":
					if pr_task01 is not TruthVarValue entry, now pr_task01 is TruthVarValue entry;
				-- "pr_task02":
					if pr_task02 is not TruthVarValue entry, now pr_task02 is TruthVarValue entry;
				-- "pr_task03":
					if pr_task03 is not TruthVarValue entry, now pr_task03 is TruthVarValue entry;
				-- "pr_task04":
					if pr_task04 is not TruthVarValue entry, now pr_task04 is TruthVarValue entry;
				-- "preghijack":
					if preghijack is not TruthVarValue entry, now preghijack is TruthVarValue entry;
				-- "rabbitified":
					if rabbitified is not TruthVarValue entry, now rabbitified is TruthVarValue entry;
				-- "rambjvirg":
					if rambjvirg is not TruthVarValue entry, now rambjvirg is TruthVarValue entry;
				-- "ramslut":
					if ramslut is not TruthVarValue entry, now ramslut is TruthVarValue entry;
				-- "RestoreMode":
					if RestoreMode is not TruthVarValue entry, now RestoreMode is TruthVarValue entry;
				-- "rkrcheck":
					if rkrcheck is not TruthVarValue entry, now rkrcheck is TruthVarValue entry;
				-- "rlingfound":
					if rlingfound is not TruthVarValue entry, now rlingfound is TruthVarValue entry;
				-- "roughing":
					if roughing is not TruthVarValue entry, now roughing is TruthVarValue entry;
				-- "rowing":
					if rowing is not TruthVarValue entry, now rowing is TruthVarValue entry;
				-- "sa_otteress":
					if sa_otteress is not TruthVarValue entry, now sa_otteress is TruthVarValue entry;
				-- "sa_redvixen":
					if sa_redvixen is not TruthVarValue entry, now sa_redvixen is TruthVarValue entry;
				-- "sa_wusky":
					if sa_wusky is not TruthVarValue entry, now sa_wusky is TruthVarValue entry;
				-- "saberKittyBountyState":
					if saberKittyBountyState is not TruthVarValue entry, now saberKittyBountyState is TruthVarValue entry;
				-- "samformtalk":
					if samformtalk is not TruthVarValue entry, now samformtalk is TruthVarValue entry;
				-- "sangenreg":
					if sangenreg is not TruthVarValue entry, now sangenreg is TruthVarValue entry;
				-- "SarahTehuantl":
					if SarahTehuantl is not TruthVarValue entry, now SarahTehuantl is TruthVarValue entry;
				-- "sblzephyr":
					if sblzephyr is not TruthVarValue entry, now sblzephyr is TruthVarValue entry;
				-- "SerenityVore":
					if SerenityVore is not TruthVarValue entry, now SerenityVore is TruthVarValue entry;
				-- "sidneyanal":
					if sidneyanal is not TruthVarValue entry, now sidneyanal is TruthVarValue entry;
				-- "sidneyformtalk":
					if sidneyformtalk is not TruthVarValue entry, now sidneyformtalk is TruthVarValue entry;
				-- "sidneytalk1":
					if sidneytalk1 is not TruthVarValue entry, now sidneytalk1 is TruthVarValue entry;
				-- "sidneytalk2":
					if sidneytalk2 is not TruthVarValue entry, now sidneytalk2 is TruthVarValue entry;
				-- "sidneytalk3":
					if sidneytalk3 is not TruthVarValue entry, now sidneytalk3 is TruthVarValue entry;
				-- "sidneytalk4":
					if sidneytalk4 is not TruthVarValue entry, now sidneytalk4 is TruthVarValue entry;
				-- "sierramale":
					if sierramale is not TruthVarValue entry, now sierramale is TruthVarValue entry;
				-- "sierrapure":
					if sierrapure is not TruthVarValue entry, now sierrapure is TruthVarValue entry;
				-- "skipcockchange":
					if skipcockchange is not TruthVarValue entry, now skipcockchange is TruthVarValue entry;
				-- "skipretaliate":
					if skipretaliate is not TruthVarValue entry, now skipretaliate is TruthVarValue entry;
				-- "spidergirlBountyState":
					if spidergirlBountyState is not TruthVarValue entry, now spidergirlBountyState is TruthVarValue entry;
				-- "ssbpg":
					if ssbpg is not TruthVarValue entry, now ssbpg is TruthVarValue entry;
				-- "ssgbii":
					if ssgbii is not TruthVarValue entry, now ssgbii is TruthVarValue entry;
				-- "ssgpd":
					if ssgpd is not TruthVarValue entry, now ssgpd is TruthVarValue entry;
				-- "sshh":
					if sshh is not TruthVarValue entry, now sshh is TruthVarValue entry;
				-- "ssmb":
					if ssmb is not TruthVarValue entry, now ssmb is TruthVarValue entry;
				-- "ssos":
					if ssos is not TruthVarValue entry, now ssos is TruthVarValue entry;
				-- "ssxpa":
					if ssxpa is not TruthVarValue entry, now ssxpa is TruthVarValue entry;
				-- "stellapsurv":
					if stellapsurv is not TruthVarValue entry, now stellapsurv is TruthVarValue entry;
				-- "sugarglidernote":
					if sugarglidernote is not TruthVarValue entry, now sugarglidernote is TruthVarValue entry;
				-- "sugferretjoke":
					if sugferretjoke is not TruthVarValue entry, now sugferretjoke is TruthVarValue entry;
				-- "Susanoversize":
					if Susanoversize is not TruthVarValue entry, now Susanoversize is TruthVarValue entry;
				-- "SvenStory1":
					if SvenStory1 is not TruthVarValue entry, now SvenStory1 is TruthVarValue entry;
				-- "Terminatorsleep":
					if Terminatorsleep is not TruthVarValue entry, now Terminatorsleep is TruthVarValue entry;
				-- "TerminatorSleepActivated":
					if TerminatorSleepActivated is not TruthVarValue entry, now TerminatorSleepActivated is TruthVarValue entry;
				-- "thmpregdetect":
					if thmpregdetect is not TruthVarValue entry, now thmpregdetect is TruthVarValue entry;
				-- "TomeEventPending":
					if TomeEventPending is not TruthVarValue entry, now TomeEventPending is TruthVarValue entry;
				-- "toystoreoverride":
					if toystoreoverride is not TruthVarValue entry, now toystoreoverride is TruthVarValue entry;
				-- "toystoreseen":
					if toystoreseen is not TruthVarValue entry, now toystoreseen is TruthVarValue entry;
				-- "ts_warrior":
					if ts_warrior is not TruthVarValue entry, now ts_warrior is TruthVarValue entry;
				-- "tsw_victory":
					if tsw_victory is not TruthVarValue entry, now tsw_victory is TruthVarValue entry;
				-- "twistedPimpBountyState":
					if twistedPimpBountyState is not TruthVarValue entry, now twistedPimpBountyState is TruthVarValue entry;
				-- "twistfsdfeedmemory":
					if twistfsdfeedmemory is not TruthVarValue entry, now twistfsdfeedmemory is TruthVarValue entry;
				-- "TyrTraining":
					if TyrTraining is not TruthVarValue entry, now TyrTraining is TruthVarValue entry;
				-- "ubspecial1":
					if ubspecial1 is not TruthVarValue entry, now ubspecial1 is TruthVarValue entry;
				-- "utahmet":
					if utahmet is not TruthVarValue entry, now utahmet is TruthVarValue entry;
				-- "vampiric":
					if vampiric is not TruthVarValue entry, now vampiric is TruthVarValue entry;
				-- "velosapology":
					if velosapology is not TruthVarValue entry, now velosapology is TruthVarValue entry;
				-- "velosfleepenalty":
					if velosfleepenalty is not TruthVarValue entry, now velosfleepenalty is TruthVarValue entry;
				-- "velosheadstalk":
					if velosheadstalk is not TruthVarValue entry, now velosheadstalk is TruthVarValue entry;
				-- "velosparasitetalk":
					if velosparasitetalk is not TruthVarValue entry, now velosparasitetalk is TruthVarValue entry;
				-- "velossaved":
					if velossaved is not TruthVarValue entry, now velossaved is TruthVarValue entry;
				-- "velossavedtalk":
					if velossavedtalk is not TruthVarValue entry, now velossavedtalk is TruthVarValue entry;
				-- "velossavedyes":
					if velossavedyes is not TruthVarValue entry, now velossavedyes is TruthVarValue entry;
				-- "vgeckoboost":
					if vgeckoboost is not TruthVarValue entry, now vgeckoboost is TruthVarValue entry;
				-- "vorespecial1":
					if vorespecial1 is not TruthVarValue entry, now vorespecial1 is TruthVarValue entry;
				-- "weakwilled":
					if weakwilled is not TruthVarValue entry, now weakwilled is TruthVarValue entry;
				-- "WerewolfWatching":
					if WerewolfWatching is not TruthVarValue entry, now WerewolfWatching is TruthVarValue entry;
				-- "wrcurseactivity":
					if wrcurseactivity is not TruthVarValue entry, now wrcurseactivity is TruthVarValue entry;
				-- "wrdinoskel":
					if wrdinoskel is not TruthVarValue entry, now wrdinoskel is TruthVarValue entry;
				-- "wrwolfseen":
					if wrwolfseen is not TruthVarValue entry, now wrwolfseen is TruthVarValue entry;
				-- "yolandakeyfob":
					if yolandakeyfob is not TruthVarValue entry, now yolandakeyfob is TruthVarValue entry;
				-- "yolandaqytat":
					if yolandaqytat is not TruthVarValue entry, now yolandaqytat is TruthVarValue entry;
				-- "yolandatreasure":
					if yolandatreasure is not TruthVarValue entry, now yolandatreasure is TruthVarValue entry;
				-- "zigorcycle":
					if zigorcycle is not TruthVarValue entry, now zigorcycle is TruthVarValue entry;
				-- "zigorhadiyaquest":
					if zigorhadiyaquest is not TruthVarValue entry, now zigorhadiyaquest is TruthVarValue entry;
				-- "zpc_inzone":
					if zpc_inzone is not TruthVarValue entry, now zpc_inzone is TruthVarValue entry;
			[
			if debug is at level 10:
				say "DEBUG -> VarName '[TruthVarName entry]' restored to '[TruthVarValue entry]'.";
			]
	else:
		say "No Truth Save File Found!";

to VariableIndexedTextLoad:
	if the File of IndexedTextSave exists:
		say "Restoring Indexed Texts...";
		read File of IndexedTextSave into the Table of GameIndexedTexts;
		repeat with x running from 1 to the number of filled rows in the Table of GameIndexedTexts:
			if there is no IndexedTextVarValue in row x of the Table of GameIndexedTexts, next;
			choose row x in the Table of GameIndexedTexts;
			[
			if debug is at level 10:
				say "Restoring IndexedText [IndexedTextVarName entry].";
			]
			if IndexedTextVarName entry is:
				-- "bcupsize":
					if bcupsize is not IndexedTextVarValue entry, now bcupsize is IndexedTextVarValue entry;
				-- "bmagic":
					if bmagic is not IndexedTextVarValue entry, now bmagic is IndexedTextVarValue entry;
				-- "cupsize":
					if cupsize is not IndexedTextVarValue entry, now cupsize is IndexedTextVarValue entry;
			[
			if debug is at level 10:
				say "DEBUG -> VarName '[IndexedTextVarName entry]' restored to '[IndexedTextVarValue entry]'.";
			]
	else:
		say "No IndexedText Save File Found!";

to VariableTextListLoad:
	if the File of TextListSave exists:
		say "Restoring lists of text...";
		read File of TextListSave into the Table of GameTextLists;
		truncate Childrenbodies to 0 entries; [cleaning out the old data]
		truncate Childrenfaces to 0 entries; [cleaning out the old data]
		truncate Childrenskins to 0 entries; [cleaning out the old data]
		truncate Dolphinlist to 0 entries; [cleaning out the old data]
		truncate lbcomplist to 0 entries; [cleaning out the old data]
		truncate ndmlist to 0 entries; [cleaning out the old data]
		truncate StoredSluts_Female to 0 entries; [cleaning out the old data]
		truncate StoredSluts_Male to 0 entries; [cleaning out the old data]
		truncate StoredSluts_Other to 0 entries; [cleaning out the old data]
		repeat with x running from 1 to the number of filled rows in the Table of GameTextLists:
			if there is no TextListVarValue in row x of the Table of GameTextLists, next;
			choose row x in the Table of GameTextLists;
			if TextListVarName entry is:
				-- "Childrenbodies":
					add TextListVarValue entry to Childrenbodies;
				-- "Childrenfaces":
					add TextListVarValue entry to Childrenfaces;
				-- "Childrenskins":
					add TextListVarValue entry to Childrenskins;
				-- "Dolphinlist":
					add TextListVarValue entry to Dolphinlist;
				-- "lbcomplist":
					add TextListVarValue entry to lbcompList;
				-- "ndmlist":
					add TextListVarValue entry to ndmList;
				-- "StoredSluts_Female":
					add TextListVarValue entry to StoredSluts_Female;
				-- "StoredSluts_Male":
					add TextListVarValue entry to StoredSluts_Male;
				-- "StoredSluts_Other":
					add TextListVarValue entry to StoredSluts_Other;
			[
			if debug is at level 10:
				say "DEBUG -> [x]: Added '[TextListVarValue entry]' to TextList [TextListVarName entry].";
			]
	else:
		say "No TextList Save File Found!";

to VariableNumberListLoad:
	if the File of NumberListSave exists:
		say "Restoring lists of numbers...";
		read File of NumberListSave into the Table of GameNumberLists;
		truncate AlexandraNPC to 0 entries; [cleaning out the old data]
		truncate bookcollection to 0 entries; [cleaning out the old data]
		truncate campuswander to 0 entries; [cleaning out the old data]
		truncate Francois_Discovered to 0 entries; [cleaning out the old data]
		truncate Francois_Undiscovered to 0 entries; [cleaning out the old data]
		truncate leodenlist to 0 entries; [cleaning out the old data]
		truncate leoparklist to 0 entries; [cleaning out the old data]
		truncate mrevents to 0 entries; [cleaning out the old data]
		truncate pfpclist to 0 entries; [cleaning out the old data]
		truncate velospostmusings to 0 entries; [cleaning out the old data]
		repeat with x running from 1 to the number of filled rows in the Table of GameNumberLists:
			if there is no NumberListVarValue in row x of the Table of GameNumberLists, next;
			choose row x in the Table of GameNumberLists;
			if NumberListVarName entry is:
				-- "AlexandraNPC":
					add NumberListVarValue entry to AlexandraNPC;
				-- "bookcollection":
					add NumberListVarValue entry to bookcollection;
				-- "campuswander":
					add NumberListVarValue entry to campuswander;
				-- "Francois_Discovered":
					add NumberListVarValue entry to Francois_Discovered;
				-- "Francois_Undiscovered":
					add NumberListVarValue entry to Francois_Undiscovered;
				-- "leodenlist":
					add NumberListVarValue entry to leodenList;
				-- "leoparklist":
					add NumberListVarValue entry to leoparkList;
				-- "mrevents":
					add NumberListVarValue entry to mrevents;
				-- "pfpclist":
					add NumberListVarValue entry to pfpcList;
				-- "velospostmusings":
					add NumberListVarValue entry to velospostmusings;
			[
			if debug is at level 10:
				say "DEBUG -> [x]: Added '[NumberListVarValue entry]' to NumberList [NumberListVarName entry].";
			]
	else:
		say "No NumberList Save File Found!";

Story Skipper Loose Variables ends here.
