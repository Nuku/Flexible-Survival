Version 1 of Story Skipper Loose Variables by MinimalBuild begins here.

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
	repeat with x running from 1 to the number of filled rows in the Table of GameVariableIDs:
		choose row x in the Table of GameVariableIDs;
		now CurrentVariableName is Name entry;
		if debug is at level 10:
			say "Stashing variable [CurrentVariableName].";
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
		-- "rodhosp":
			now NumberVarValue entry is rodhosp;
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
		-- "hydraheadregrowth":
			now TruthVarValue entry is hydraheadregrowth;
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
		-- "utahmet":
			now TruthVarValue entry is utahmet;
		-- "vampiric":
			now TruthVarValue entry is vampiric;
		-- "vgeckoboost":
			now TruthVarValue entry is vgeckoboost;
		-- "vorespecial1":
			now TruthVarValue entry is vorespecial1;
		-- "weakwilled":
			now TruthVarValue entry is weakwilled;
		-- "WerewolfWatching":
			now TruthVarValue entry is WerewolfWatching;
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
			if there is no TextVarValue in row x of the Table of GameTexts:
				next;
			choose row x in the Table of GameTexts;
			[
			if debug is at level 10:
				say "Restoring text [TextVarName entry].";
			]
			if TextVarName entry is:
				-- "PronounChoice":
					now PronounChoice of Player is TextVarValue entry;
				-- "PetMuttBreed":
					now PetMuttBreed is TextVarValue entry;
				-- "PetMuttName":
					now PetMuttName is TextVarValue entry;
				-- "PetMuttColor":
					now PetMuttColor is TextVarValue entry;
				-- "PetMuttDetailedlook":
					now PetMuttDetailedlook is TextVarValue entry;
				-- "battleground":
					now battleground is TextVarValue entry;
				-- "bcfinalchairform":
					now bcfinalchairform is TextVarValue entry;
				-- "bcfinalpillarform":
					now bcfinalpillarform is TextVarValue entry;
				-- "BlancheNonBinaryMomDad":
					now BlancheNonBinaryMomDad is TextVarValue entry;
				-- "BlancheNonBinaryMommyDaddy":
					now BlancheNonBinaryMommyDaddy is TextVarValue entry;
				-- "BlueDesignator":
					now BlueDesignator is TextVarValue entry;
				-- "bodyselector":
					now bodyselector is TextVarValue entry;
				-- "BodyShopGuaranteedBody":
					now BodyShopGuaranteedBody is TextVarValue entry;
				-- "BodyShopGuaranteedCrotch":
					now BodyShopGuaranteedCrotch is TextVarValue entry;
				-- "BodyShopGuaranteedFace":
					now BodyShopGuaranteedFace is TextVarValue entry;
				-- "BodyShopGuaranteedSkin":
					now BodyShopGuaranteedSkin is TextVarValue entry;
				-- "BodyShopGuaranteedTail":
					now BodyShopGuaranteedTail is TextVarValue entry;
				-- "ButterflyAttire":
					now ButterflyAttire is TextVarValue entry;
				-- "ButterflyBreastDesc":
					now ButterflyBreastDesc is TextVarValue entry;
				-- "ButterflyTummy":
					now ButterflyTummy is TextVarValue entry;
				-- "CorbinImpregnatingCock":
					now CorbinImpregnatingCock is TextVarValue entry;
				-- "descr":
					now descr is TextVarValue entry;
				-- "DoranPlayerRegard":
					now DoranPlayerRegard is TextVarValue entry;
				-- "ElijahChar-A":
					now ElijahChar-A is TextVarValue entry;
				-- "ElijahChar-B":
					now ElijahChar-B is TextVarValue entry;
				-- "ElijahChar-C":
					now ElijahChar-C is TextVarValue entry;
				-- "ElijahChar-D":
					now ElijahChar-D is TextVarValue entry;
				-- "ElijahChar-E":
					now ElijahChar-E is TextVarValue entry;
				-- "ElijahChar-F":
					now ElijahChar-F is TextVarValue entry;
				-- "ElijahChar-G":
					now ElijahChar-G is TextVarValue entry;
				-- "ElijahChar-H":
					now ElijahChar-H is TextVarValue entry;
				-- "ElijahChar-I":
					now ElijahChar-I is TextVarValue entry;
				-- "ElijahChar-J":
					now ElijahChar-J is TextVarValue entry;
				-- "ElijahChar-K":
					now ElijahChar-K is TextVarValue entry;
				-- "ElijahChar-L":
					now ElijahChar-L is TextVarValue entry;
				-- "ElijahChar-M":
					now ElijahChar-M is TextVarValue entry;
				-- "EricCurrentBabyDaddy":
					now EricCurrentBabyDaddy is TextVarValue entry;
				-- "FeralMuttCurrentBreed":
					now FeralMuttCurrentBreed is TextVarValue entry;
				-- "FeralMuttDetailedLook":
					now FeralMuttDetailedLook is TextVarValue entry;
				-- "FeralMuttFurColor":
					now FeralMuttFurColor is TextVarValue entry;
				-- "freefeatfun":
					now freefeatfun is TextVarValue entry;
				-- "freefeatgeneral":
					now freefeatgeneral is TextVarValue entry;
				-- "furdata":
					now furdata is TextVarValue entry;
				-- "gche":
					now gche is TextVarValue entry;
				-- "gchim":
					now gchim is TextVarValue entry;
				-- "gchis":
					now gchis is TextVarValue entry;
				-- "gchishers":
					now gchishers is TextVarValue entry;
				-- "gdragon":
					now gdragon is TextVarValue entry;
				-- "ghe":
					now ghe is TextVarValue entry;
				-- "ghim":
					now ghim is TextVarValue entry;
				-- "ghis":
					now ghis is TextVarValue entry;
				-- "ghishers":
					now ghishers is TextVarValue entry;
				-- "gmasculine":
					now gmasculine is TextVarValue entry;
				-- "hdformname":
					now hdformname is TextVarValue entry;
				-- "headadjdata":
					now headadjdata is TextVarValue entry;
				-- "HighestPlayerStat":
					now HighestPlayerStat is TextVarValue entry;
				-- "Hope-BornDragonName":
					now Hope-BornDragonName is TextVarValue entry;
				-- "horndata":
					now horndata is TextVarValue entry;
				-- "JenniferFirstKidSpecialStat":
					now JenniferFirstKidSpecialStat is TextVarValue entry;
				-- "keychar":
					now keychar is TextVarValue entry;
				-- "LarissaBody":
					now LarissaBody is TextVarValue entry;
				-- "LarissaBodyDesc":
					now LarissaBodyDesc is TextVarValue entry;
				-- "LarissaBodyType":
					now LarissaBodyType is TextVarValue entry;
				-- "LarissaCock":
					now LarissaCock is TextVarValue entry;
				-- "LarissaFace":
					now LarissaFace is TextVarValue entry;
				-- "LarissaFootForm":
					now LarissaFootForm is TextVarValue entry;
				-- "LarissaForm":
					now LarissaForm is TextVarValue entry;
				-- "LarissaGeneralLook":
					now LarissaGeneralLook is TextVarValue entry;
				-- "LarissaHandForm":
					now LarissaHandForm is TextVarValue entry;
				-- "LarissaInfName":
					now LarissaInfName is TextVarValue entry;
				-- "LarissaMouth":
					now LarissaMouth is TextVarValue entry;
				-- "LarissaSkin":
					now LarissaSkin is TextVarValue entry;
				-- "LarissaTail":
					now LarissaTail is TextVarValue entry;
				-- "LarissaTFText":
					now LarissaTFText is TextVarValue entry;
				-- "Lusting":
					now Lusting is TextVarValue entry;
				-- "musicmessage":
					now musicmessage is TextVarValue entry;
				-- "NadiaChar-A":
					now NadiaChar-A is TextVarValue entry;
				-- "NadiaChar-B":
					now NadiaChar-B is TextVarValue entry;
				-- "NadiaChar-C":
					now NadiaChar-C is TextVarValue entry;
				-- "NadiaChar-D":
					now NadiaChar-D is TextVarValue entry;
				-- "NadiaChar-E":
					now NadiaChar-E is TextVarValue entry;
				-- "NadiaChar-F":
					now NadiaChar-F is TextVarValue entry;
				-- "NadiaChar-G":
					now NadiaChar-G is TextVarValue entry;
				-- "NadiaChar-H":
					now NadiaChar-H is TextVarValue entry;
				-- "NadiaChar-I":
					now NadiaChar-I is TextVarValue entry;
				-- "NadiaChar-J":
					now NadiaChar-J is TextVarValue entry;
				-- "NadiaChar-K":
					now NadiaChar-K is TextVarValue entry;
				-- "NadiaChar-L":
					now NadiaChar-L is TextVarValue entry;
				-- "NadiaChar-M":
					now NadiaChar-M is TextVarValue entry;
				-- "pfpbootymark":
					now pfpbootymark is TextVarValue entry;
				-- "pfpcock":
					now pfpcock is TextVarValue entry;
				-- "pfphair":
					now pfphair is TextVarValue entry;
				-- "pfpskin":
					now pfpskin is TextVarValue entry;
				-- "ppcolor":
					now ppcolor is TextVarValue entry;
				-- "PlayerClass":
					now PlayerClass is TextVarValue entry;
				-- "PlayerName":
					now Name of Player is TextVarValue entry;
				-- "sangr":
					now sangr is TextVarValue entry;
				-- "Scenario":
					now Scenario is TextVarValue entry;
				-- "sh-descr":
					now sh-descr is TextVarValue entry;
				-- "siamesegender":
					now siamesegender is TextVarValue entry;
				-- "slutname":
					now slutname is TextVarValue entry;
				-- "StellaNPCInt":
					now StellaNPCInt is TextVarValue entry;
				-- "VikingKidShape":
					now VikingKidShape is TextVarValue entry;
				-- "wolvloc":
					now wolvloc is TextVarValue entry;
				-- "wrbody":
					now wrbody is TextVarValue entry;
				-- "wrbodydesc":
					now wrbodydesc is TextVarValue entry;
				-- "wrBodyName":
					now wrBodyName is TextVarValue entry;
				-- "wrbodytype":
					now wrbodytype is TextVarValue entry;
				-- "wrcock":
					now wrcock is TextVarValue entry;
				-- "wrCockName":
					now wrCockName is TextVarValue entry;
				-- "wrface":
					now wrface is TextVarValue entry;
				-- "wrFaceName":
					now wrFaceName is TextVarValue entry;
				-- "wrskin":
					now wrskin is TextVarValue entry;
				-- "wrSkinName":
					now wrSkinName is TextVarValue entry;
				-- "wrtail":
					now wrtail is TextVarValue entry;
				-- "wrTailName":
					now wrTailName is TextVarValue entry;
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
			[
			if there is no NumberVarValue in row x of the Table of GameNumbers:
				debug at level 4 say "Skipping empty Number [NumberVarName in row x of the Table of GameNumbers].[line break]";
				next;
			]
			choose row x in the Table of GameNumbers;
			[
			if debug is at level 10:
				say "Restoring Number [NumberVarName entry].";
			]
			if NumberVarName entry is:
				-- "featgained":
					now featgained of Player is NumberVarValue entry;
				-- "absorb":
					now absorb is NumberVarValue entry;
				-- "addedlibido":
					now addedlibido is NumberVarValue entry;
				-- "afsmread":
					now afsmread is NumberVarValue entry;
				-- "aidKenaz":
					now aidKenaz is NumberVarValue entry;
				-- "AlanaRelationship":
					now AlanaRelationship is NumberVarValue entry;
				-- "AlexandraAmySex":
					now AlexandraAmySex is NumberVarValue entry;
				-- "AlexandraBackstory":
					now AlexandraBackstory is NumberVarValue entry;
				-- "AlexandraBrutusInteraction":
					now AlexandraBrutusInteraction is NumberVarValue entry;
				-- "AlexandraBrutusPups":
					now AlexandraBrutusPups is NumberVarValue entry;
				-- "AlexandraKarelPups":
					now AlexandraKarelPups is NumberVarValue entry;
				-- "AlexandraIsaacPups":
					now AlexandraIsaacPups is NumberVarValue entry;
				-- "AlexandraFarmhandPups":
					now AlexandraFarmhandPups is NumberVarValue entry;
				-- "AlexandraNelsonPups":
					now AlexandraNelsonPups is NumberVarValue entry;
				-- "AlexandraCarlInteraction":
					now AlexandraCarlInteraction is NumberVarValue entry;
				-- "AlexandraCarlPups":
					now AlexandraCarlPups is NumberVarValue entry;
				-- "AlexandraCreampieCount":
					now AlexandraCreampieCount is NumberVarValue entry;
				-- "AlexandraEricInteraction":
					now AlexandraEricInteraction is NumberVarValue entry;
				-- "AlexandraFangPups":
					now AlexandraFangPups is NumberVarValue entry;
				-- "AlexandraGrowingPups":
					now AlexandraGrowingPups is NumberVarValue entry;
				-- "AlexandraKorvinInteraction":
					now AlexandraKorvinInteraction is NumberVarValue entry;
				-- "AlexandraKorvinPups":
					now AlexandraKorvinPups is NumberVarValue entry;
				-- "AlexandraPlayerPups":
					now AlexandraPlayerPups is NumberVarValue entry;
				-- "AlexandraPregCount":
					now AlexandraPregCount is NumberVarValue entry;
				-- "AlexandraPupDaddy":
					now AlexandraPupDaddy is NumberVarValue entry;
				-- "AlexandraSarahInteraction":
					now AlexandraSarahInteraction is NumberVarValue entry;
				-- "alexbrunch":
					now alexbrunch is NumberVarValue entry;
				-- "alexdiego":
					now alexdiego is NumberVarValue entry;
				-- "alexleeinfo":
					now alexleeinfo is NumberVarValue entry;
				-- "AlexProgress":
					now AlexProgress is NumberVarValue entry;
				-- "AlexTalk":
					now AlexTalk is NumberVarValue entry;
				-- "Alpha Wolfdefeat":
					now Alpha Wolfdefeat is NumberVarValue entry;
				-- "Alphahuskypet":
					now Alphahuskypet is NumberVarValue entry;
				-- "alphawolfbeaten":
					now alphawolfbeaten is NumberVarValue entry;
				-- "altattackmade":
					now altattackmade is NumberVarValue entry;
				-- "AmirRelationship":
					now AmirRelationship is NumberVarValue entry;
				-- "AmmyAffection":
					now AmmyAffection is NumberVarValue entry;
				-- "AmmyLastEvent":
					now AmmyLastEvent is NumberVarValue entry;
				-- "AmuranAwoken":
					now AmuranAwoken is NumberVarValue entry;
				-- "AmyMaturityCounter":
					now AmyMaturityCounter is NumberVarValue entry;
				-- "AmyNewPuppies":
					now AmyNewPuppies is NumberVarValue entry;
				-- "AmyShyness":
					now AmyShyness is NumberVarValue entry;
				-- "anallevel":
					now anallevel is NumberVarValue entry;
				-- "AnatomyCourse":
					now AnatomyCourse is NumberVarValue entry;
				-- "AngieAroused":
					now AngieAroused is NumberVarValue entry;
				-- "AngieHappy":
					now AngieHappy is NumberVarValue entry;
				-- "AngieTalk":
					now AngieTalk is NumberVarValue entry;
				-- "AngryHorguth":
					now AngryHorguth is NumberVarValue entry;
				-- "anubisrequest":
					now anubisrequest is NumberVarValue entry;
				-- "AptAid":
					now AptAid is NumberVarValue entry;
				-- "ArcherFucked":
					now ArcherFucked is NumberVarValue entry;
				-- "ArenaBattleCounter":
					now ArenaBattleCounter is NumberVarValue entry;
				-- "AresDannyEncounters":
					now AresDannyEncounters is NumberVarValue entry;
				-- "artattempt":
					now artattempt is NumberVarValue entry;
				-- "auto2entry":
					now auto2entry is NumberVarValue entry;
				-- "autoattackmode":
					now autoattackmode is NumberVarValue entry;
				-- "autogender":
					now autogender is NumberVarValue entry;
				-- "automaticcombatcheck":
					now automaticcombatcheck is NumberVarValue entry;
				-- "automatonending":
					now automatonending is NumberVarValue entry;
				-- "avoidance":
					now avoidance is NumberVarValue entry;
				-- "Awesome_boredom":
					now Awesome_boredom is NumberVarValue entry;
				-- "Awesome_counter":
					now Awesome_counter is NumberVarValue entry;
				-- "Awesome_forcesex":
					now Awesome_forcesex is NumberVarValue entry;
				-- "Awesome_noreward":
					now Awesome_noreward is NumberVarValue entry;
				-- "Awesome_sex":
					now Awesome_sex is NumberVarValue entry;
				-- "AxelLastBJ":
					now AxelLastBJ is NumberVarValue entry;
				-- "AxelRelationship":
					now AxelRelationship is NumberVarValue entry;
				-- "AzraelRelationship":
					now AzraelRelationship is NumberVarValue entry;
				-- "balloversize":
					now balloversize is NumberVarValue entry;
				-- "bargainbinusagetotal":
					now bargainbinusagetotal is NumberVarValue entry;
				-- "BarnabasRelationship":
					now BarnabasRelationship is NumberVarValue entry;
				-- "BarryFurSuspicion":
					now BarryFurSuspicion is NumberVarValue entry;
				-- "BarryMotive":
					now BarryMotive is NumberVarValue entry;
				-- "BastetApproval":
					now BastetApproval is NumberVarValue entry;
				-- "BastetSexBattleCount":
					now BastetSexBattleCount is NumberVarValue entry;
				-- "battleitem":
					now battleitem is NumberVarValue entry;
				-- "bclatearrival":
					now bclatearrival is NumberVarValue entry;
				-- "bcuntethered":
					now bcuntethered is NumberVarValue entry;
				-- "beatgrnymph":
					now beatgrnymph is NumberVarValue entry;
				-- "beatsatyr":
					now beatsatyr is NumberVarValue entry;
				-- "beatSatyress":
					now beatSatyress is NumberVarValue entry;
				-- "BeforeCombat":
					now BeforeCombat is NumberVarValue entry;
				-- "BehaviorandCustoms":
					now BehaviorandCustoms is NumberVarValue entry;
				-- "Bevkitty":
					now Bevkitty is NumberVarValue entry;
				-- "Bevtalk":
					now Bevtalk is NumberVarValue entry;
				-- "bikedest":
					now bikedest is NumberVarValue entry;
				-- "BjornRelationship":
					now BjornRelationship is NumberVarValue entry;
				-- "BlissDrugTrip":
					now BlissDrugTrip is NumberVarValue entry;
				-- "blotintense":
					now blotintense is NumberVarValue entry;
				-- "bluechaffrape":
					now bluechaffrape is NumberVarValue entry;
				-- "boatfound":
					now boatfound is NumberVarValue entry;
				-- "BodyRelationship":
					now BodyRelationship is NumberVarValue entry;
				-- "BoghrimHuntingTrip":
					now BoghrimHuntingTrip is NumberVarValue entry;
				-- "BoghrimMet":
					now BoghrimMet is NumberVarValue entry;
				-- "bonelust":
					now bonelust is NumberVarValue entry;
				-- "bonusattack":
					now bonusattack is NumberVarValue entry;
				-- "boosterfeats":
					now boosterfeats is NumberVarValue entry;
				-- "bopdefeated":
					now bopdefeated is NumberVarValue entry;
				-- "bopsongcount":
					now bopsongcount is NumberVarValue entry;
				-- "borisfucked":
					now borisfucked is NumberVarValue entry;
				-- "Borismate":
					now Borismate is NumberVarValue entry;
				-- "Borisquest":
					now Borisquest is NumberVarValue entry;
				-- "boristalk":
					now boristalk is NumberVarValue entry;
				-- "boundcounter":
					now boundcounter is NumberVarValue entry;
				-- "boundmod":
					now boundmod is NumberVarValue entry;
				-- "boundmod2":
					now boundmod2 is NumberVarValue entry;
				-- "boundsegment":
					now boundsegment is NumberVarValue entry;
				-- "Bovine_type":
					now Bovine_type is NumberVarValue entry;
				-- "bradfordbounty":
					now bradfordbounty is NumberVarValue entry;
				-- "bradfordBountyNum":
					now bradfordBountyNum is NumberVarValue entry;
				-- "bradfordstory":
					now bradfordstory is NumberVarValue entry;
				-- "BrennanRelationship":
					now BrennanRelationship is NumberVarValue entry;
				-- "BrianOral":
					now BrianOral is NumberVarValue entry;
				-- "BrianRelationship":
					now BrianRelationship is NumberVarValue entry;
				-- "BrianVisit":
					now BrianVisit is NumberVarValue entry;
				-- "BridgetPowellEventVar":
					now BridgetPowellEventVar is NumberVarValue entry;
				-- "brookeanal":
					now brookeanal is NumberVarValue entry;
				-- "BrutusAmySex":
					now BrutusAmySex is NumberVarValue entry;
				-- "BrutusEscalationTimer":
					now BrutusEscalationTimer is NumberVarValue entry;
				-- "BryceFucked":
					now BryceFucked is NumberVarValue entry;
				-- "BryonyBearFuckWatched":
					now BryonyBearFuckWatched is NumberVarValue entry;
				-- "bsextimer":
					now bsextimer is NumberVarValue entry;
				-- "BullMaster":
					now BullMaster is NumberVarValue entry;
				-- "BullTerrierSiblingsVar":
					now BullTerrierSiblingsVar is NumberVarValue entry;
				-- "bunnyjocknosex":
					now bunnyjocknosex is NumberVarValue entry;
				-- "ButterflyBabyGestation":
					now ButterflyBabyGestation is NumberVarValue entry;
				-- "ButterflyEncounters":
					now ButterflyEncounters is NumberVarValue entry;
				-- "ButterflyRaped":
					now ButterflyRaped is NumberVarValue entry;
				-- "ByronRelationship":
					now ByronRelationship is NumberVarValue entry;
				-- "CampBravoWomenAllowed":
					now CampBravoWomenAllowed is NumberVarValue entry;
				-- "CampusCoupleRelationship":
					now CampusCoupleRelationship is NumberVarValue entry;
				-- "CampusLoversProgressTurn":
					now CampusLoversProgressTurn is NumberVarValue entry;
				-- "CampusLoversTrackingVariable":
					now CampusLoversTrackingVariable is NumberVarValue entry;
				-- "candytalk":
					now candytalk is NumberVarValue entry;
				-- "CandyUrikInteraction":
					now CandyUrikInteraction is NumberVarValue entry;
				-- "CaneFurSuspicion":
					now CaneFurSuspicion is NumberVarValue entry;
				-- "CaneMotive":
					now CaneMotive is NumberVarValue entry;
				-- "cannonprep":
					now cannonprep is NumberVarValue entry;
				-- "CaptiveBreederEncounter":
					now CaptiveBreederEncounter is NumberVarValue entry;
				-- "CarlAmySex":
					now CarlAmySex is NumberVarValue entry;
				-- "CarlEricaInteraction":
					now CarlEricaInteraction is NumberVarValue entry;
				-- "CarlEricInteraction":
					now CarlEricInteraction is NumberVarValue entry;
				-- "CarlLibraryEntry":
					now CarlLibraryEntry is NumberVarValue entry;
				-- "CarlSarahInteraction":
					now CarlSarahInteraction is NumberVarValue entry;
				-- "CarlSarahSex":
					now CarlSarahSex is NumberVarValue entry;
				-- "CassandraFucked":
					now CassandraFucked is NumberVarValue entry;
				-- "catdogstate":
					now catdogstate is NumberVarValue entry;
				-- "catnum":
					now catnum is NumberVarValue entry;
				-- "CatsVSDogsCounter":
					now CatsVSDogsCounter is NumberVarValue entry;
				-- "cboyEricSarahInteraction":
					now cboyEricSarahInteraction is NumberVarValue entry;
				-- "cclosscount":
					now cclosscount is NumberVarValue entry;
				-- "ccmiss":
					now ccmiss is NumberVarValue entry;
				-- "CellDoorStatus":
					now CellDoorStatus is NumberVarValue entry;
				-- "CellFourVisits":
					now CellFourVisits is NumberVarValue entry;
				-- "centaurmate":
					now centaurmate is NumberVarValue entry;
				-- "CenterVisits":
					now CenterVisits is NumberVarValue entry;
				-- "centrallib":
					now centrallib is NumberVarValue entry;
				-- "cerberusarousal":
					now cerberusarousal is NumberVarValue entry;
				-- "cerbmaulcount":
					now cerbmaulcount is NumberVarValue entry;
				-- "cfgmode":
					now cfgmode is NumberVarValue entry;
				-- "charcounter":
					now charcounter is NumberVarValue entry;
				-- "chargeup":
					now chargeup is NumberVarValue entry;
				-- "ChaseMarking":
					now ChaseMarking is NumberVarValue entry;
				-- "ChaseOffspring":
					now ChaseOffspring is NumberVarValue entry;
				-- "ChasePetplay":
					now ChasePetplay is NumberVarValue entry;
				-- "ChasePetplayTraining":
					now ChasePetplayTraining is NumberVarValue entry;
				-- "ChaseSexCounter":
					now ChaseSexCounter is NumberVarValue entry;
				-- "CheerleaderFirstEncounter":
					now CheerleaderFirstEncounter is NumberVarValue entry;
				-- "Cheesecakemode":
					now Cheesecakemode is NumberVarValue entry;
				-- "cheetahmate":
					now cheetahmate is NumberVarValue entry;
				-- "ChrisPlayerOffspring":
					now ChrisPlayerOffspring is NumberVarValue entry;
				-- "Christyquest":
					now Christyquest is NumberVarValue entry;
				-- "churchenter":
					now churchenter is NumberVarValue entry;
				-- "clearnomore":
					now clearnomore is NumberVarValue entry;
				-- "CliveFuck":
					now CliveFuck is NumberVarValue entry;
				-- "CloudKnowledge":
					now CloudKnowledge is NumberVarValue entry;
				-- "CocoRelationship":
					now CocoRelationship is NumberVarValue entry;
				-- "ColleenAlpha":
					now ColleenAlpha is NumberVarValue entry;
				-- "ColleenCollared":
					now ColleenCollared is NumberVarValue entry;
				-- "ColleenFound":
					now ColleenFound is NumberVarValue entry;
				-- "ColleenSarahInteraction":
					now ColleenSarahInteraction is NumberVarValue entry;
				-- "ColleenSlut":
					now ColleenSlut is NumberVarValue entry;
				-- "ColleenSpray":
					now ColleenSpray is NumberVarValue entry;
				-- "ColleenTalk":
					now ColleenTalk is NumberVarValue entry;
				-- "CollegeLibraryBrutusEncounter":
					now CollegeLibraryBrutusEncounter is NumberVarValue entry;
				-- "CollegeLibraryRyouseiEncounter":
					now CollegeLibraryRyouseiEncounter is NumberVarValue entry;
				-- "colliedefeat":
					now colliedefeat is NumberVarValue entry;
				-- "combat abort":
					now combat abort is NumberVarValue entry;
				-- "ConclaveKnowledge":
					now ConclaveKnowledge is NumberVarValue entry;
				-- "ConfSvenEricInteraction":
					now ConfSvenEricInteraction is NumberVarValue entry;
				-- "consortinsight":
					now consortinsight is NumberVarValue entry;
				-- "ContainmentBarrierEncounters":
					now ContainmentBarrierEncounters is NumberVarValue entry;
				-- "coonsex":
					now coonsex is NumberVarValue entry;
				-- "coonstatus":
					now coonstatus is NumberVarValue entry;
				-- "CorbinKidCounter":
					now CorbinKidCounter is NumberVarValue entry;
				-- "CorbinPregCounter":
					now CorbinPregCounter is NumberVarValue entry;
				-- "CorbinPregnancy":
					now CorbinPregnancy is NumberVarValue entry;
				-- "corrvicchange1":
					now corrvicchange1 is NumberVarValue entry;
				-- "corrvicchange2":
					now corrvicchange2 is NumberVarValue entry;
				-- "CouraFriendDevelopments":
					now CouraFriendDevelopments is NumberVarValue entry;
				-- "CouraVirginity":
					now CouraVirginity is NumberVarValue entry;
				-- "CowBully":
					now CowBully is NumberVarValue entry;
				-- "CoyoteTricks":
					now CoyoteTricks is NumberVarValue entry;
				-- "CuckooWatched":
					now CuckooWatched is NumberVarValue entry;
				-- "cumgirlfed":
					now cumgirlfed is NumberVarValue entry;
				-- "cuntsmall":
					now cuntsmall is NumberVarValue entry;
				-- "daisyimpreg":
					now daisyimpreg is NumberVarValue entry;
				-- "Daisytalk":
					now Daisytalk is NumberVarValue entry;
				-- "Dam":
					now Dam is NumberVarValue entry;
				-- "damagein":
					now damagein is NumberVarValue entry;
				-- "damageout":
					now damageout is NumberVarValue entry;
				-- "DariusLostItems":
					now DariusLostItems is NumberVarValue entry;
				-- "DavidBrutusMarcVar":
					now DavidBrutusMarcVar is NumberVarValue entry;
				-- "DavidBunkerEntry":
					now DavidBunkerEntry is NumberVarValue entry;
				-- "DavidSarahInteraction":
					now DavidSarahInteraction is NumberVarValue entry;
				-- "DBCaptureQuestVar":
					now DBCaptureQuestVar is NumberVarValue entry;
				-- "Delaymilcount":
					now Delaymilcount is NumberVarValue entry;
				-- "demandIndex":
					now demandIndex is NumberVarValue entry;
				-- "DemonBruteStatus":
					now DemonBruteStatus is NumberVarValue entry;
				-- "DemonFoxInteractions":
					now DemonFoxInteractions is NumberVarValue entry;
				-- "DemonFoxStatus":
					now DemonFoxStatus is NumberVarValue entry;
				-- "dentedbikecount":
					now dentedbikecount is NumberVarValue entry;
				-- "didsubmit":
					now didsubmit is NumberVarValue entry;
				-- "Diegobitched":
					now Diegobitched is NumberVarValue entry;
				-- "DiegoButtSlut":
					now DiegoButtSlut is NumberVarValue entry;
				-- "Diegochanged":
					now Diegochanged is NumberVarValue entry;
				-- "Diegofucked":
					now Diegofucked is NumberVarValue entry;
				-- "dinonest":
					now dinonest is NumberVarValue entry;
				-- "dnfightresult":
					now dnfightresult is NumberVarValue entry;
				-- "dobielibido":
					now dobielibido is NumberVarValue entry;
				-- "dobieresist":
					now dobieresist is NumberVarValue entry;
				-- "DoctorMouseProgress":
					now DoctorMouseProgress is NumberVarValue entry;
				-- "dogfoodcount":
					now dogfoodcount is NumberVarValue entry;
				-- "doggyboned":
					now doggyboned is NumberVarValue entry;
				-- "doggyness":
					now doggyness is NumberVarValue entry;
				-- "dolinfloss":
					now dolinfloss is NumberVarValue entry;
				-- "dollfound":
					now dollfound is NumberVarValue entry;
				-- "dolphinbundle":
					now dolphinbundle is NumberVarValue entry;
				-- "dolphinconsent":
					now dolphinconsent is NumberVarValue entry;
				-- "dolphindefeat":
					now dolphindefeat is NumberVarValue entry;
				-- "dolphinmode":
					now dolphinmode is NumberVarValue entry;
				-- "dolphintricked":
					now dolphintricked is NumberVarValue entry;
				-- "dolphinwantmate":
					now dolphinwantmate is NumberVarValue entry;
				-- "donkeywomanbeaten":
					now donkeywomanbeaten is NumberVarValue entry;
				-- "donkeywomanfucked":
					now donkeywomanfucked is NumberVarValue entry;
				-- "DoranAutofireIntensity":
					now DoranAutofireIntensity is NumberVarValue entry;
				-- "DoranBallModStatus":
					now DoranBallModStatus is NumberVarValue entry;
				-- "DoranDiscussion_var1":
					now DoranDiscussion_var1 is NumberVarValue entry;
				-- "DoranDiscussionExit":
					now DoranDiscussionExit is NumberVarValue entry;
				-- "DoranDiscussionExit2":
					now DoranDiscussionExit2 is NumberVarValue entry;
				-- "DoranDiscussionProgress":
					now DoranDiscussionProgress is NumberVarValue entry;
				-- "DoranDominanceTopic":
					now DoranDominanceTopic is NumberVarValue entry;
				-- "DoranFoodTimer":
					now DoranFoodTimer is NumberVarValue entry;
				-- "DoranFoodType":
					now DoranFoodType is NumberVarValue entry;
				-- "DoranGenderTopic":
					now DoranGenderTopic is NumberVarValue entry;
				-- "DoranLastBallMod":
					now DoranLastBallMod is NumberVarValue entry;
				-- "DoranLastDiscussion":
					now DoranLastDiscussion is NumberVarValue entry;
				-- "DoranLastInternalMod":
					now DoranLastInternalMod is NumberVarValue entry;
				-- "DoranLastTitMod":
					now DoranLastTitMod is NumberVarValue entry;
				-- "DoranModificationDiscussed":
					now DoranModificationDiscussed is NumberVarValue entry;
				-- "DoranNeutralRole":
					now DoranNeutralRole is NumberVarValue entry;
				-- "DoranRimmingStatus":
					now DoranRimmingStatus is NumberVarValue entry;
				-- "DoranRole":
					now DoranRole is NumberVarValue entry;
				-- "DoranRoleIntensity":
					now DoranRoleIntensity is NumberVarValue entry;
				-- "DoranRoleplayInSession":
					now DoranRoleplayInSession is NumberVarValue entry;
				-- "DoranRP_var1":
					now DoranRP_var1 is NumberVarValue entry;
				-- "DoranRP_var2":
					now DoranRP_var2 is NumberVarValue entry;
				-- "DoranRP_var3":
					now DoranRP_var3 is NumberVarValue entry;
				-- "DoranRP_var4":
					now DoranRP_var4 is NumberVarValue entry;
				-- "DoranRPRevealRegard":
					now DoranRPRevealRegard is NumberVarValue entry;
				-- "DoranSelfBlueballing":
					now DoranSelfBlueballing is NumberVarValue entry;
				-- "DoranTitModStatus":
					now DoranTitModStatus is NumberVarValue entry;
				-- "DoranVoreDischarge":
					now DoranVoreDischarge is NumberVarValue entry;
				-- "DoranVoreDuration":
					now DoranVoreDuration is NumberVarValue entry;
				-- "DoranVoreStatus":
					now DoranVoreStatus is NumberVarValue entry;
				-- "dragonessfuck":
					now dragonessfuck is NumberVarValue entry;
				-- "dragontaurcatch":
					now dragontaurcatch is NumberVarValue entry;
				-- "dragontype":
					now dragontype is NumberVarValue entry;
				-- "Drinkserved":
					now Drinkserved is NumberVarValue entry;
				-- "dronevict":
					now dronevict is NumberVarValue entry;
				-- "DVtaurcatch":
					now DVtaurcatch is NumberVarValue entry;
				-- "DylanFucked":
					now DylanFucked is NumberVarValue entry;
				-- "DylanSucked":
					now DylanSucked is NumberVarValue entry;
				-- "eagledefeatnum":
					now eagledefeatnum is NumberVarValue entry;
				-- "ebgatorcarrying":
					now ebgatorcarrying is NumberVarValue entry;
				-- "ebgatord":
					now ebgatord is NumberVarValue entry;
				-- "ebgatorhijack":
					now ebgatorhijack is NumberVarValue entry;
				-- "ebheat_egg":
					now ebheat_egg is NumberVarValue entry;
				-- "ebwhelphijack":
					now ebwhelphijack is NumberVarValue entry;
				-- "ec_fullcount":
					now ec_fullcount is NumberVarValue entry;
				-- "eggplanted":
					now eggplanted is NumberVarValue entry;
				-- "EgyptianRiddle":
					now EgyptianRiddle is NumberVarValue entry;
				-- "ElainePregnant":
					now ElainePregnant is NumberVarValue entry;
				-- "Electricprodstatus":
					now Electricprodstatus is NumberVarValue entry;
				-- "ElfEncounters":
					now ElfEncounters is NumberVarValue entry;
				-- "ElfRimming":
					now ElfRimming is NumberVarValue entry;
				-- "emap":
					now emap is NumberVarValue entry;
				-- "embervicsex":
					now embervicsex is NumberVarValue entry;
				-- "EnrollmentTokens":
					now EnrollmentTokens is NumberVarValue entry;
				-- "eprecharge":
					now eprecharge is NumberVarValue entry;
				-- "eptarget":
					now eptarget is NumberVarValue entry;
				-- "equinoiddefeat":
					now equinoiddefeat is NumberVarValue entry;
				-- "equinoidstatus":
					now equinoidstatus is NumberVarValue entry;
				-- "EricAnalCounter":
					now EricAnalCounter is NumberVarValue entry;
				-- "EricFleeingCountdown":
					now EricFleeingCountdown is NumberVarValue entry;
				-- "EricOffspringCount":
					now EricOffspringCount is NumberVarValue entry;
				-- "EricOrcPillMpreg":
					now EricOrcPillMpreg is NumberVarValue entry;
				-- "EricPregCount":
					now EricPregCount is NumberVarValue entry;
				-- "EricPregTimer":
					now EricPregTimer is NumberVarValue entry;
				-- "EricSarahInteraction":
					now EricSarahInteraction is NumberVarValue entry;
				-- "EricVirginityTaken":
					now EricVirginityTaken is NumberVarValue entry;
				-- "erminecolor":
					now erminecolor is NumberVarValue entry;
				-- "EweFucked":
					now Stamina of Mary is NumberVarValue entry;
				-- "Fancyaroused":
					now Fancyaroused is NumberVarValue entry;
				-- "fancyffcount":
					now fancyffcount is NumberVarValue entry;
				-- "Fancyfucked":
					now Fancyfucked is NumberVarValue entry;
				-- "fancymfcount":
					now fancymfcount is NumberVarValue entry;
				-- "Fancyquest":
					now Fancyquest is NumberVarValue entry;
				-- "Fancytalk":
					now Fancytalk is NumberVarValue entry;
				-- "fangcount":
					now fangcount is NumberVarValue entry;
				-- "FangDashRel":
					now FangDashRel is NumberVarValue entry;
				-- "FangSarahInteraction":
					now FangSarahInteraction is NumberVarValue entry;
				-- "FangWS":
					now FangWS is NumberVarValue entry;
				-- "fashionfight":
					now fashionfight is NumberVarValue entry;
				-- "featunlock":
					now featunlock is NumberVarValue entry;
				-- "Feline_attached":
					now Feline_attached is NumberVarValue entry;
				-- "Feline_encountered":
					now Feline_encountered is NumberVarValue entry;
				-- "Feline_meow":
					now Feline_meow is NumberVarValue entry;
				-- "feline_status":
					now feline_status is NumberVarValue entry;
				-- "Feline_type":
					now Feline_type is NumberVarValue entry;
				-- "FelinoidRescued":
					now FelinoidRescued is NumberVarValue entry;
				-- "FelixSaved":
					now FelixSaved is NumberVarValue entry;
				-- "fellforward":
					now fellforward is NumberVarValue entry;
				-- "femalecatHP":
					now femalecatHP is NumberVarValue entry;
				-- "femonyxq":
					now femonyxq is NumberVarValue entry;
				-- "FeralBirths":
					now FeralBirths is NumberVarValue entry;
				-- "FeralMuttDominance":
					now FeralMuttDominance is NumberVarValue entry;
				-- "FeralMuttFurColorNumber":
					now FeralMuttFurColorNumber is NumberVarValue entry;
				-- "ferretvisit":
					now ferretvisit is NumberVarValue entry;
				-- "fertiletime":
					now fertiletime is NumberVarValue entry;
				-- "ffrivalry":
					now ffrivalry is NumberVarValue entry;
				-- "fgryphon_TFcount":
					now fgryphon_TFcount is NumberVarValue entry;
				-- "fightoutcome":
					now fightoutcome is NumberVarValue entry;
				-- "Fin":
					now Fin is NumberVarValue entry;
				-- "findablestairs":
					now findablestairs is NumberVarValue entry;
				-- "Findfirefighter":
					now Findfirefighter is NumberVarValue entry;
				-- "findwires":
					now findwires is NumberVarValue entry;
				-- "FinnTrackingProgress":
					now FinnTrackingProgress is NumberVarValue entry;
				-- "firebreathcount":
					now firebreathcount is NumberVarValue entry;
				-- "FireSpritemode":
					now FireSpritemode is NumberVarValue entry;
				-- "FirstAtlantisVisit":
					now FirstAtlantisVisit is NumberVarValue entry;
				-- "FirstDescOuter":
					now FirstDescOuter is NumberVarValue entry;
				-- "FirstMannequinTalk":
					now FirstMannequinTalk is NumberVarValue entry;
				-- "fixedgens":
					now fixedgens is NumberVarValue entry;
				-- "flotintense":
					now flotintense is NumberVarValue entry;
				-- "fonyxanalcount":
					now fonyxanalcount is NumberVarValue entry;
				-- "fonyxvagcount":
					now fonyxvagcount is NumberVarValue entry;
				-- "foodcount":
					now foodcount is NumberVarValue entry;
				-- "foodneed":
					now foodneed is NumberVarValue entry;
				-- "foodvendor":
					now foodvendor is NumberVarValue entry;
				-- "foodwaterbonus":
					now foodwaterbonus is NumberVarValue entry;
				-- "ForcedBreederslutBoyTF":
					now ForcedBreederslutBoyTF is NumberVarValue entry;
				-- "ForcedBreederslutTF":
					now ForcedBreederslutTF is NumberVarValue entry;
				-- "foundparts":
					now foundparts is NumberVarValue entry;
				-- "FoxMasterEncounters":
					now FoxMasterEncounters is NumberVarValue entry;
				-- "frankmalesex":
					now frankmalesex is NumberVarValue entry;
				-- "franksex":
					now franksex is NumberVarValue entry;
				-- "FratPartyRecruiterProgression":
					now FratPartyRecruiterProgression is NumberVarValue entry;
				-- "frbatbeaten":
					now frbatbeaten is NumberVarValue entry;
				-- "freecred":
					now freecred is NumberVarValue entry;
				-- "FriesianRelationship":
					now FriesianRelationship is NumberVarValue entry;
				-- "fsdbias":
					now fsdbias is NumberVarValue entry;
				-- "fsddom":
					now fsddom is NumberVarValue entry;
				-- "fsdfeedmemory":
					now fsdfeedmemory is NumberVarValue entry;
				-- "FSDOPEN":
					now FSDOPEN is NumberVarValue entry;
				-- "fsdsub":
					now fsdsub is NumberVarValue entry;
				-- "fsnovel":
					now fsnovel is NumberVarValue entry;
				-- "FuckedByRazorbackBoar":
					now FuckedByRazorbackBoar is NumberVarValue entry;
				-- "FuckedBySpartan":
					now FuckedBySpartan is NumberVarValue entry;
				-- "FYDM":
					now FYDM is NumberVarValue entry;
				-- "FYDTBMM":
					now FYDTBMM is NumberVarValue entry;
				-- "gameplay":
					now gameplay is NumberVarValue entry;
				-- "gardenveg":
					now gardenveg is NumberVarValue entry;
				-- "GarthRelationship":
					now GarthRelationship is NumberVarValue entry;
				-- "gascloud":
					now gascloud is NumberVarValue entry;
				-- "gatorconsent":
					now gatorconsent is NumberVarValue entry;
				-- "gatordefeat":
					now gatordefeat is NumberVarValue entry;
				-- "gazellesbeaten":
					now gazellesbeaten is NumberVarValue entry;
				-- "gb_gatling_chance":
					now gb_gatling_chance is NumberVarValue entry;
				-- "gb_gatling_counter":
					now gb_gatling_counter is NumberVarValue entry;
				-- "gb_gun":
					now gb_gun is NumberVarValue entry;
				-- "gb_hair":
					now gb_hair is NumberVarValue entry;
				-- "generationConflictFlag":
					now generationConflictFlag is NumberVarValue entry;
				-- "generatorfixing":
					now generatorfixing is NumberVarValue entry;
				-- "GertyQuest":
					now GertyQuest is NumberVarValue entry;
				-- "GertyRelationship":
					now GertyRelationship is NumberVarValue entry;
				-- "gettinglee":
					now gettinglee is NumberVarValue entry;
				-- "giantheight":
					now giantheight is NumberVarValue entry;
				-- "GibsonRelationship":
					now GibsonRelationship is NumberVarValue entry;
				-- "ginafucked":
					now ginafucked is NumberVarValue entry;
				-- "Ginaslut":
					now Ginaslut is NumberVarValue entry;
				-- "Ginatalk":
					now Ginatalk is NumberVarValue entry;
				-- "givingupton":
					now givingupton is NumberVarValue entry;
				-- "GloryFate":
					now GloryFate is NumberVarValue entry;
				-- "gobgender":
					now gobgender is NumberVarValue entry;
				-- "GooColossusProgress":
					now GooColossusProgress is NumberVarValue entry;
				-- "GordonApprehended":
					now GordonApprehended is NumberVarValue entry;
				-- "GordonFurSuspicion":
					now GordonFurSuspicion is NumberVarValue entry;
				-- "GordonMotive":
					now GordonMotive is NumberVarValue entry;
				-- "GorillasMember":
					now GorillasMember is NumberVarValue entry;
				-- "GorillasMemberQuestCounter":
					now GorillasMemberQuestCounter is NumberVarValue entry;
				-- "GorillasRep":
					now GorillasRep is NumberVarValue entry;
				-- "grantbitch":
					now grantbitch is NumberVarValue entry;
				-- "grantfucked":
					now grantfucked is NumberVarValue entry;
				-- "grantsex":
					now grantsex is NumberVarValue entry;
				-- "granttalk":
					now granttalk is NumberVarValue entry;
				-- "GreenTumbTurn":
					now GreenTumbTurn is NumberVarValue entry;
				-- "gryphoncomforted":
					now gryphoncomforted is NumberVarValue entry;
				-- "GryphonessKnowpreg":
					now GryphonessKnowpreg is NumberVarValue entry;
				-- "gsd_encounters":
					now gsd_encounters is NumberVarValue entry;
				-- "gsd_pet":
					now gsd_pet is NumberVarValue entry;
				-- "gsd_var":
					now gsd_var is NumberVarValue entry;
				-- "GenderLock":
					now GenderLock is NumberVarValue entry;
				-- "gsgl":
					now GenderLock is NumberVarValue entry;
				-- "gshep_bed_scene":
					now gshep_bed_scene is NumberVarValue entry;
				-- "gshep_fights":
					now gshep_fights is NumberVarValue entry;
				-- "gshep_inactive":
					now gshep_inactive is NumberVarValue entry;
				-- "gshep_postfight":
					now gshep_postfight is NumberVarValue entry;
				-- "gshep_sexscene":
					now gshep_sexscene is NumberVarValue entry;
				-- "GShepLastScene":
					now GShepLastScene is NumberVarValue entry;
				-- "gshepsquad":
					now gshepsquad is NumberVarValue entry;
				-- "GusTalkProgress":
					now GusTalkProgress is NumberVarValue entry;
				-- "hadiyafucked":
					now hadiyafucked is NumberVarValue entry;
				-- "hagfeat":
					now hagfeat is NumberVarValue entry;
				-- "halodestroyed":
					now halodestroyed is NumberVarValue entry;
				-- "Haroldaroused":
					now Haroldaroused is NumberVarValue entry;
				-- "Haroldfucked":
					now Haroldfucked is NumberVarValue entry;
				-- "Haroldtalk":
					now Haroldtalk is NumberVarValue entry;
				-- "Harpyconsent":
					now Harpyconsent is NumberVarValue entry;
				-- "Harpydefeat":
					now Harpydefeat is NumberVarValue entry;
				-- "hasgills":
					now hasgills is NumberVarValue entry;
				-- "HasParts":
					now HasParts is NumberVarValue entry;
				-- "hawkmanbeaten":
					now hawkmanbeaten is NumberVarValue entry;
				-- "HayatoHunger":
					now HayatoHunger is NumberVarValue entry;
				-- "HBMR":
					now HBMR is NumberVarValue entry;
				-- "hdform":
					now hdform is NumberVarValue entry;
				-- "hdmode":
					now hdmode is NumberVarValue entry;
				-- "hdog":
					now hdog is NumberVarValue entry;
				-- "heatdrive":
					now heatdrive is NumberVarValue entry;
				-- "HeatedPoodle":
					now HeatedPoodle is NumberVarValue entry;
				-- "heatform":
					now heatform is NumberVarValue entry;
				-- "heatlevel":
					now heatlevel is NumberVarValue entry;
				-- "HelenPregnant":
					now HelenPregnant is NumberVarValue entry;
				-- "hellgatherquest":
					now hellgatherquest is NumberVarValue entry;
				-- "hellHoundLevel":
					now hellHoundLevel is NumberVarValue entry;
				-- "HelpKenazOut":
					now HelpKenazOut is NumberVarValue entry;
				-- "HermaidSub":
					now HermaidSub is NumberVarValue entry;
				-- "hermlvconsent":
					now hermlvconsent is NumberVarValue entry;
				-- "hermlvmeet":
					now hermlvmeet is NumberVarValue entry;
				-- "hfgbread":
					now hfgbread is NumberVarValue entry;
				-- "HG_Flashback_Turns":
					now HG_Flashback_Turns is NumberVarValue entry;
				-- "hgryphon_TGcount":
					now hgryphon_TGcount is NumberVarValue entry;
				-- "hgryphonwin":
					now hgryphonwin is NumberVarValue entry;
				-- "hgsqc":
					now hgsqc is NumberVarValue entry;
				-- "hijackgestation":
					now hijackgestation is NumberVarValue entry;
				-- "hobo-food-reminder":
					now hobo-food-reminder is NumberVarValue entry;
				-- "hobo-grmilkhelp":
					now hobo-grmilkhelp is NumberVarValue entry;
				-- "hobo-journal":
					now hobo-journal is NumberVarValue entry;
				-- "hobo-medical":
					now hobo-medical is NumberVarValue entry;
				-- "hobo-medical-gift":
					now hobo-medical-gift is NumberVarValue entry;
				-- "hobo-water-reminder":
					now hobo-water-reminder is NumberVarValue entry;
				-- "Homarusearch":
					now Homarusearch is NumberVarValue entry;
				-- "Homarusearching":
					now Homarusearching is NumberVarValue entry;
				-- "Homarutalk":
					now Homarutalk is NumberVarValue entry;
				-- "hospbattlelost":
					now hospbattlelost is NumberVarValue entry;
				-- "hospcountdown":
					now hospcountdown is NumberVarValue entry;
				-- "hospfight":
					now hospfight is NumberVarValue entry;
				-- "hospnav":
					now hospnav is NumberVarValue entry;
				-- "hospquest":
					now hospquest is NumberVarValue entry;
				-- "hospstairs":
					now hospstairs is NumberVarValue entry;
				-- "hpF of Sylvia":
					now hpF of Sylvia is NumberVarValue entry;
				-- "hpM of Sylvia":
					now hpM of Sylvia is NumberVarValue entry;
				-- "hsrp":
					now hsrp is NumberVarValue entry;
				-- "huntfeat":
					now huntfeat is NumberVarValue entry;
				-- "hvorecount":
					now hvorecount is NumberVarValue entry;
				-- "hvorelevel":
					now hvorelevel is NumberVarValue entry;
				-- "hydraheadcount":
					now hydraheadcount is NumberVarValue entry;
				-- "hydramaulcount":
					now hydramaulcount is NumberVarValue entry;
				-- "hyenaintel":
					now hyenaintel is NumberVarValue entry;
				-- "hyenastabledeal":
					now hyenastabledeal is NumberVarValue entry;
				-- "HyenaTrailing":
					now HyenaTrailing is NumberVarValue entry;
				-- "HYG":
					now HYG is NumberVarValue entry;
				-- "hypernull":
					now hypernull is NumberVarValue entry;
				-- "HyperSerumTracker":
					now HyperSerumTracker is NumberVarValue entry;
				-- "icarus_cbt":
					now icarus_cbt is NumberVarValue entry;
				-- "icarus_cumstuff":
					now icarus_cumstuff is NumberVarValue entry;
				-- "icarus_lastpred":
					now icarus_lastpred is NumberVarValue entry;
				-- "IcarusAmySex":
					now IcarusAmySex is NumberVarValue entry;
				-- "icarussex6_variant":
					now icarussex6_variant is NumberVarValue entry;
				-- "impalamode":
					now impalamode is NumberVarValue entry;
				-- "ImpPlayerMarkingTurn":
					now ImpPlayerMarkingTurn is NumberVarValue entry;
				-- "inafight":
					now inafight is NumberVarValue entry;
				-- "incubusnosex":
					now incubusnosex is NumberVarValue entry;
				-- "InflatableOtterSuitBindStage":
					now InflatableOtterSuitBindStage is NumberVarValue entry;
				-- "InflatableOtterSuitMode":
					now InflatableOtterSuitMode is NumberVarValue entry;
				-- "infvulpstate":
					now infvulpstate is NumberVarValue entry;
				-- "invcolumns":
					now invcolumns is NumberVarValue entry;
				-- "invlinklistfilled":
					now invlinklistfilled is NumberVarValue entry;
				-- "isTwinHere":
					now isTwinHere is NumberVarValue entry;
				-- "JaksEncounters":
					now JaksEncounters is NumberVarValue entry;
				-- "jamesfed":
					now jamesfed is NumberVarValue entry;
				-- "jamessex":
					now jamessex is NumberVarValue entry;
				-- "Janicearoused":
					now Janicearoused is NumberVarValue entry;
				-- "Janicequest":
					now Janicequest is NumberVarValue entry;
				-- "Janicetalk":
					now Janicetalk is NumberVarValue entry;
				-- "JayMarkRelationship":
					now JayMarkRelationship is NumberVarValue entry;
				-- "jbfound":
					now jbfound is NumberVarValue entry;
				-- "jdigup":
					now jdigup is NumberVarValue entry;
				-- "JennaRelationship":
					now JennaRelationship is NumberVarValue entry;
				-- "Jenniferfucked":
					now Jenniferfucked is NumberVarValue entry;
				-- "Jenniferpregnant":
					now Jenniferpregnant is NumberVarValue entry;
				-- "Jenniferwolves":
					now Jenniferwolves is NumberVarValue entry;
				-- "JewelHeistCaught":
					now JewelHeistCaught is NumberVarValue entry;
				-- "joannaharoldtalk":
					now joannaharoldtalk is NumberVarValue entry;
				-- "joannaoffernum":
					now joannaoffernum is NumberVarValue entry;
				-- "joannatalk":
					now joannatalk is NumberVarValue entry;
				-- "junknum":
					now junknum is NumberVarValue entry;
				-- "JustinRelationship":
					now JustinRelationship is NumberVarValue entry;
				-- "kangaroodefeat":
					now kangaroodefeat is NumberVarValue entry;
				-- "KatyaDildoTaken":
					now KatyaDildoTaken is NumberVarValue entry;
				-- "KatyaRelationship":
					now KatyaRelationship is NumberVarValue entry;
				-- "KatyaResistance":
					now KatyaResistance is NumberVarValue entry;
				-- "keepbody":
					now keepbody is NumberVarValue entry;
				-- "keepcock":
					now keepcock is NumberVarValue entry;
				-- "keepface":
					now keepface is NumberVarValue entry;
				-- "keepskin":
					now keepskin is NumberVarValue entry;
				-- "keeptail":
					now keeptail is NumberVarValue entry;
				-- "Kenazaroused":
					now Kenazaroused is NumberVarValue entry;
				-- "Kenazdes":
					now Kenazdes is NumberVarValue entry;
				-- "Kenaztalk":
					now Kenaztalk is NumberVarValue entry;
				-- "keycollection":
					now keycollection is NumberVarValue entry;
				-- "KinksandFetishes":
					now KinksandFetishes is NumberVarValue entry;
				-- "Kitsunearoused":
					now Kitsunearoused is NumberVarValue entry;
				-- "Kitsunetalk":
					now Kitsunetalk is NumberVarValue entry;
				-- "kittyness":
					now kittyness is NumberVarValue entry;
				-- "knightcrestnum":
					now knightcrestnum is NumberVarValue entry;
				-- "KoballoonLossCounter":
					now KoballoonLossCounter is NumberVarValue entry;
				-- "KoballoonMet":
					now KoballoonMet is NumberVarValue entry;
				-- "koboldgangmet":
					now koboldgangmet is NumberVarValue entry;
				-- "koboldgangsubs":
					now koboldgangsubs is NumberVarValue entry;
				-- "KoboldScaleColor":
					now KoboldScaleColor is NumberVarValue entry;
				-- "Koghhstatus":
					now Koghhstatus is NumberVarValue entry;
				-- "KorvinSubmitCounter":
					now KorvinSubmitCounter is NumberVarValue entry;
				-- "kpstatus":
					now kpstatus is NumberVarValue entry;
				-- "KTO":
					now KTO is NumberVarValue entry;
				-- "KitsuneEventStage":
					now KitsuneEventStage is NumberVarValue entry;
				-- "ktspeciesbonus":
					now ktspeciesbonus is NumberVarValue entry;
				-- "KurtEvent":
					now KurtEvent is NumberVarValue entry;
				-- "KurtRelationship":
					now KurtRelationship is NumberVarValue entry;
				-- "KyleRelationship":
					now KyleRelationship is NumberVarValue entry;
				-- "KyrverthMaleBoning":
					now KyrverthMaleBoning is NumberVarValue entry;
				-- "KyrverthQuestGiven":
					now KyrverthQuestGiven is NumberVarValue entry;
				-- "KyrverthStage":
					now KyrverthStage is NumberVarValue entry;
				-- "KyrverthTimer":
					now KyrverthTimer is NumberVarValue entry;
				-- "Kyrverthitemget":
					now KyrverthItemGet is NumberVarValue entry;
				-- "KyrverthItemReturned":
					now KyrverthItemReturned is NumberVarValue entry;
				-- "KyrverthNutGrowth":
					now KyrverthNutGrowth is NumberVarValue entry;
				-- "KyrverthSpikeGrowth":
					now KyrverthSpikeGrowth is NumberVarValue entry;
				-- "KyrverthWingType":
					now KyrverthWingType is NumberVarValue entry;
				-- "KyrverthCockType":
					now KyrverthCockType is NumberVarValue entry;
				-- "KyrverthLockoutTimer":
					now KyrverthLockoutTimer is NumberVarValue entry;
				-- "KyrverthEndingTimer":
					now KyrverthEndingTimer is NumberVarValue entry;
				-- "KyrverthBodyChanged":
					now KyrverthBodyChanged is NumberVarValue entry;
				-- "KyrverthPanicWitnessed":
					now KyrverthPanicWitnessed is NumberVarValue entry;
				-- "labhost":
					now labhost is NumberVarValue entry;
				-- "labtimerA":
					now labtimerA is NumberVarValue entry;
				-- "labtimerB":
					now labtimerB is NumberVarValue entry;
				-- "lairconsent":
					now lairconsent is NumberVarValue entry;
				-- "LampVariable":
					now LampVariable is NumberVarValue entry;
				-- "LarissaBodycat":
					now LarissaBodycat is NumberVarValue entry;
				-- "LarissaLastTF":
					now LarissaLastTF is NumberVarValue entry;
				-- "LarissaOldgender":
					now LarissaOldgender is NumberVarValue entry;
				-- "LarissTFcost":
					now LarissTFcost is NumberVarValue entry;
				-- "larvacounter":
					now larvacounter is NumberVarValue entry;
				-- "larvaegg":
					now larvaegg is NumberVarValue entry;
				-- "larvaexpel":
					now larvaexpel is NumberVarValue entry;
				-- "larvalaid":
					now larvalaid is NumberVarValue entry;
				-- "last_infvulp_airhead":
					now last_infvulp_airhead is NumberVarValue entry;
				-- "lastABEncounter":
					now lastABEncounter is NumberVarValue entry;
				-- "lastAlexandraPast":
					now lastAlexandraPast is NumberVarValue entry;
				-- "lastAlexandraSarahInteraction":
					now lastAlexandraSarahInteraction is NumberVarValue entry;
				-- "lastAmySpotted":
					now lastAmySpotted is NumberVarValue entry;
				-- "lastAndreTalk":
					now lastAndreTalk is NumberVarValue entry;
				-- "LastAngieLearned":
					now LastAngieLearned is NumberVarValue entry;
				-- "lastArtemisglomp":
					now lastArtemisglomp is NumberVarValue entry;
				-- "lastArtemisplay":
					now lastArtemisplay is NumberVarValue entry;
				-- "LastAtlantisCenterWalkin":
					now LastAtlantisCenterWalkin is NumberVarValue entry;
				-- "lastbcchair":
					now lastbcchair is NumberVarValue entry;
				-- "lastbcduobeaten":
					now lastbcduobeaten is NumberVarValue entry;
				-- "lastBodyShopEvent":
					now lastBodyShopEvent is NumberVarValue entry;
				-- "lastbookshelves":
					now lastbookshelves is NumberVarValue entry;
				-- "lastBrennanWolfScene":
					now lastBrennanWolfScene is NumberVarValue entry;
				-- "LastCampusWalkin":
					now LastCampusWalkin is NumberVarValue entry;
				-- "lastCandyfucked":
					now lastCandyfucked is NumberVarValue entry;
				-- "lastCandyUrikInteraction":
					now lastCandyUrikInteraction is NumberVarValue entry;
				-- "LastCandyWalkin":
					now LastCandyWalkin is NumberVarValue entry;
				-- "lastCarlEricInteraction":
					now lastCarlEricInteraction is NumberVarValue entry;
				-- "lastCarlKorvinInteraction":
					now lastCarlKorvinInteraction is NumberVarValue entry;
				-- "lastCarlSarahInteraction":
					now lastCarlSarahInteraction is NumberVarValue entry;
				-- "lastcheetahturns":
					now lastcheetahturns is NumberVarValue entry;
				-- "lastChristyfucked":
					now lastChristyfucked is NumberVarValue entry;
				-- "lastchurchattempt":
					now lastchurchattempt is NumberVarValue entry;
				-- "lastColleenSarahInteraction":
					now lastColleenSarahInteraction is NumberVarValue entry;
				-- "lastconfession":
					now lastconfession is NumberVarValue entry;
				-- "lastConfSvenEricInteraction":
					now lastConfSvenEricInteraction is NumberVarValue entry;
				-- "lastDavidSarahInteraction":
					now lastDavidSarahInteraction is NumberVarValue entry;
				-- "Lastdelaymilitary":
					now Lastdelaymilitary is NumberVarValue entry;
				-- "lastdenevent":
					now lastdenevent is NumberVarValue entry;
				-- "lastdobiemess":
					now lastdobiemess is NumberVarValue entry;
				-- "LastDrinkserved":
					now LastDrinkserved is NumberVarValue entry;
				-- "lastDrMousefucked":
					now lastDrMousefucked is NumberVarValue entry;
				-- "lastEricSarahInteraction":
					now lastEricSarahInteraction is NumberVarValue entry;
				-- "lastFangSarahInteraction":
					now lastFangSarahInteraction is NumberVarValue entry;
				-- "lastFelixTalk":
					now lastFelixTalk is NumberVarValue entry;
				-- "lastfgryphon_TF":
					now lastfgryphon_TF is NumberVarValue entry;
				-- "lastfightround":
					now lastfightround is NumberVarValue entry;
				-- "lastflowersmell":
					now lastflowersmell is NumberVarValue entry;
				-- "Lastfoodrun":
					now Lastfoodrun is NumberVarValue entry;
				-- "lastfsdfeeding":
					now lastfsdfeeding is NumberVarValue entry;
				-- "Lastgameplay":
					now Lastgameplay is NumberVarValue entry;
				-- "lastgardenveg":
					now lastgardenveg is NumberVarValue entry;
				-- "lastGuardBeg":
					now lastGuardBeg is NumberVarValue entry;
				-- "LastHelenTalk":
					now LastHelenTalk is NumberVarValue entry;
				-- "LastHelpKenazOut":
					now LastHelpKenazOut is NumberVarValue entry;
				-- "lasthgryphon_TG":
					now lasthgryphon_TG is NumberVarValue entry;
				-- "LastImpMeeting":
					now LastImpMeeting is NumberVarValue entry;
				-- "lastinvfoundindex":
					now lastinvfoundindex is NumberVarValue entry;
				-- "LastJaksEncounter":
					now LastJaksEncounter is NumberVarValue entry;
				-- "LastJenniferSoda":
					now LastJenniferSoda is NumberVarValue entry;
				-- "lastjoannajuice":
					now lastjoannajuice is NumberVarValue entry;
				-- "Lastjournaluse":
					now Lastjournaluse is NumberVarValue entry;
				-- "LastKenazdes":
					now LastKenazdes is NumberVarValue entry;
				-- "lastleomidcoitus":
					now lastleomidcoitus is NumberVarValue entry;
				-- "lastlibrarybrowse":
					now lastlibrarybrowse is NumberVarValue entry;
				-- "lastLilithTalk":
					now lastLilithTalk is NumberVarValue entry;
				-- "LastLockerroomTrioMeet":
					now LastLockerroomTrioMeet is NumberVarValue entry;
				-- "lastMallInteriorScene":
					now lastMallInteriorScene is NumberVarValue entry;
				-- "Lastmarefed":
					now Lastmarefed is NumberVarValue entry;
				-- "LastMarketWalkin":
					now LastMarketWalkin is NumberVarValue entry;
				-- "Lastmidnightmimiced":
					now Lastmidnightmimiced is NumberVarValue entry;
				-- "lastmilking":
					now lastmilking is NumberVarValue entry;
				-- "lastMKoutcome":
					now lastMKoutcome is NumberVarValue entry;
				-- "LastMoreauPartSale":
					now LastMoreauPartSale is NumberVarValue entry;
				-- "lastNadiaSpotted":
					now lastNadiaSpotted is NumberVarValue entry;
				-- "lastoctofight":
					now lastoctofight is NumberVarValue entry;
				-- "lastorcabeat":
					now lastorcabeat is NumberVarValue entry;
				-- "lastPaulahealing":
					now lastPaulahealing is NumberVarValue entry;
				-- "Lastpigfed":
					now Lastpigfed is NumberVarValue entry;
				-- "lastPolicePatrol":
					now lastPolicePatrol is NumberVarValue entry;
				-- "lastpolicerepair":
					now lastpolicerepair is NumberVarValue entry;
				-- "lastpoolgame":
					now lastpoolgame is NumberVarValue entry;
				-- "lastpubvisit":
					now lastpubvisit is NumberVarValue entry;
				-- "lastrandomharold":
					now lastrandomharold is NumberVarValue entry;
				-- "lastRaneEricInteraction":
					now lastRaneEricInteraction is NumberVarValue entry;
				-- "lastratdartthrow":
					now lastratdartthrow is NumberVarValue entry;
				-- "lastratvisit":
					now lastratvisit is NumberVarValue entry;
				-- "LastResidentialWalkin":
					now LastResidentialWalkin is NumberVarValue entry;
				-- "LastRiddle":
					now LastRiddle is NumberVarValue entry;
				-- "Lastriddlesphinx":
					now Lastriddlesphinx is NumberVarValue entry;
				-- "lastRyouseiDavidInteraction":
					now lastRyouseiDavidInteraction is NumberVarValue entry;
				-- "lastRyouseiEricInteraction":
					now lastRyouseiEricInteraction is NumberVarValue entry;
				-- "lastSallyfucked":
					now lastSallyfucked is NumberVarValue entry;
				-- "lastsealfight":
					now lastsealfight is NumberVarValue entry;
				-- "lastSeptusfucked":
					now lastSeptusfucked is NumberVarValue entry;
				-- "lastShowerUse":
					now lastShowerUse is NumberVarValue entry;
				-- "Lastskunkfuck":
					now Lastskunkfuck is NumberVarValue entry;
				-- "LastSlutslavefucked":
					now LastSlutslavefucked is NumberVarValue entry;
				-- "lastSlutslavelearned":
					now lastSlutslavelearned is NumberVarValue entry;
				-- "lastSnowStarGiven":
					now lastSnowStarGiven is NumberVarValue entry;
				-- "laststellamove":
					now laststellamove is NumberVarValue entry;
				-- "lastSvendrink":
					now lastSvendrink is NumberVarValue entry;
				-- "LastTehuantlCarlScene":
					now LastTehuantlCarlScene is NumberVarValue entry;
				-- "LastTehuantlKorvinScene":
					now LastTehuantlKorvinScene is NumberVarValue entry;
				-- "lasttentaclebattleoutcome":
					now lasttentaclebattleoutcome is NumberVarValue entry;
				-- "lastThomasTalk":
					now lastThomasTalk is NumberVarValue entry;
				-- "LastTimothymilked":
					now LastTimothymilked is NumberVarValue entry;
				-- "lastTomeInteraction":
					now lastTomeInteraction is NumberVarValue entry;
				-- "Lasttreasurehunt":
					now Lasttreasurehunt is NumberVarValue entry;
				-- "LastTSEvent":
					now LastTSEvent is NumberVarValue entry;
				-- "lastturn":
					now lastturn is NumberVarValue entry;
				-- "lastUrikEricInteraction":
					now lastUrikEricInteraction is NumberVarValue entry;
				-- "Lastvixenposing":
					now Lastvixenposing is NumberVarValue entry;
				-- "Lastwaterrun":
					now Lastwaterrun is NumberVarValue entry;
				-- "LastWerewolfFuck":
					now LastWerewolfFuck is NumberVarValue entry;
				-- "lastworkout":
					now lastworkout is NumberVarValue entry;
				-- "LastXerxesTalk":
					now LastXerxesTalk is NumberVarValue entry;
				-- "laundryProgress":
					now laundryProgress is NumberVarValue entry;
				-- "lavalamplick":
					now lavalamplick is NumberVarValue entry;
				-- "LectureCheck":
					now LectureCheck is NumberVarValue entry;
				-- "Leonardtimer":
					now Leonardtimer is NumberVarValue entry;
				-- "leosupplies":
					now leosupplies is NumberVarValue entry;
				-- "lessontime":
					now lessontime is NumberVarValue entry;
				-- "lgnumber":
					now lgnumber is NumberVarValue entry;
				-- "libidomemory":
					now libidomemory is NumberVarValue entry;
				-- "libstealth":
					now libstealth is NumberVarValue entry;
				-- "libsuppcount":
					now libsuppcount is NumberVarValue entry;
				-- "libvis":
					now libvis is NumberVarValue entry;
				-- "lilianabathsex":
					now lilianabathsex is NumberVarValue entry;
				-- "LilithKidCounter":
					now LilithKidCounter is NumberVarValue entry;
				-- "LilithPregCounter":
					now LilithPregCounter is NumberVarValue entry;
				-- "LilithPregnancy":
					now LilithPregnancy is NumberVarValue entry;
				-- "lisaartemiscount1":
					now lisaartemiscount1 is NumberVarValue entry;
				-- "lisaartemiscount2":
					now lisaartemiscount2 is NumberVarValue entry;
				-- "Lisacheat":
					now Lisacheat is NumberVarValue entry;
				-- "littlelostskunk":
					now littlelostskunk is NumberVarValue entry;
				-- "lizgirlangry":
					now lizgirlangry is NumberVarValue entry;
				-- "lizgirlimpreg":
					now lizgirlimpreg is NumberVarValue entry;
				-- "lizgirlinheat":
					now lizgirlinheat is NumberVarValue entry;
				-- "lizgirlmarked":
					now lizgirlmarked is NumberVarValue entry;
				-- "LockerroomTrioRelationship":
					now LockerroomTrioRelationship is NumberVarValue entry;
				-- "LoganCommand":
					now LoganCommand is NumberVarValue entry;
				-- "LOK":
					now LOK is NumberVarValue entry;
				-- "longboatfind":
					now longboatfind is NumberVarValue entry;
				-- "Lost":
					now Lost is NumberVarValue entry;
				-- "losttoalphahusky":
					now losttoalphahusky is NumberVarValue entry;
				-- "lostToHorseman":
					now lostToHorseman is NumberVarValue entry;
				-- "LostToZebra":
					now LostToZebra is NumberVarValue entry;
				-- "loversbench":
					now loversbench is NumberVarValue entry;
				-- "lustadjust":
					now lustadjust is NumberVarValue entry;
				-- "lustatt":
					now lustatt is NumberVarValue entry;
				-- "lwcounter":
					now lwcounter is NumberVarValue entry;
				-- "MalakhiRelationship":
					now MalakhiRelationship is NumberVarValue entry;
				-- "malecatHP":
					now malecatHP is NumberVarValue entry;
				-- "mammoth_cv_count":
					now mammoth_cv_count is NumberVarValue entry;
				-- "marefed":
					now marefed is NumberVarValue entry;
				-- "margaydancecount":
					now margaydancecount is NumberVarValue entry;
				-- "margaymet":
					now margaymet is NumberVarValue entry;
				-- "margayubed":
					now margayubed is NumberVarValue entry;
				-- "MarkedSeraphisCum":
					now MarkedSeraphisCum is NumberVarValue entry;
				-- "MarketVisits":
					now MarketVisits is NumberVarValue entry;
				-- "mateable":
					now mateable is NumberVarValue entry;
				-- "matriarchdefeated":
					now matriarchdefeated is NumberVarValue entry;
				-- "matriarchowned":
					now matriarchowned is NumberVarValue entry;
				-- "mattcollection":
					now mattcollection is NumberVarValue entry;
				-- "mattintel":
					now mattintel is NumberVarValue entry;
				-- "mdasslevel":
					now mdasslevel is NumberVarValue entry;
				-- "mdmaxlossscene":
					now mdmaxlossscene is NumberVarValue entry;
				-- "mdrakeanal":
					now mdrakeanal is NumberVarValue entry;
				-- "mdrakebeaten":
					now mdrakebeaten is NumberVarValue entry;
				-- "mdrakeloss":
					now mdrakeloss is NumberVarValue entry;
				-- "mdrakeoversized":
					now mdrakeoversized is NumberVarValue entry;
				-- "medeaget":
					now medeaget is NumberVarValue entry;
				-- "MenuRiddleNumber":
					now MenuRiddleNumber is NumberVarValue entry;
				-- "metalskin":
					now metalskin is NumberVarValue entry;
				-- "micaela_bf":
					now micaela_bf is NumberVarValue entry;
				-- "MichaelGholeMeetings":
					now MichaelGholeMeetings is NumberVarValue entry;
				-- "Midnightmimiced":
					now Midnightmimiced is NumberVarValue entry;
				-- "midnightsighted":
					now midnightsighted is NumberVarValue entry;
				-- "MiltonRelationship":
					now MiltonRelationship is NumberVarValue entry;
				-- "missskip":
					now missskip is NumberVarValue entry;
				-- "MiyukiRelationship":
					now MiyukiRelationship is NumberVarValue entry;
				-- "MKloss":
					now MKloss is NumberVarValue entry;
				-- "MKmet":
					now MKmet is NumberVarValue entry;
				-- "MKwin":
					now MKwin is NumberVarValue entry;
				-- "mlamiabeaten":
					now mlamiabeaten is NumberVarValue entry;
				-- "mlamialoss":
					now mlamialoss is NumberVarValue entry;
				-- "MMC":
					now MMC is NumberVarValue entry;
				-- "MMP":
					now MMP is NumberVarValue entry;
				-- "mondodgebonus":
					now mondodgebonus is NumberVarValue entry;
				-- "monmindbonus":
					now monmindbonus is NumberVarValue entry;
				-- "monstercom":
					now monstercom is NumberVarValue entry;
				-- "monsterHP":
					now monsterHP is NumberVarValue entry;
				-- "monstermemory":
					now monstermemory is NumberVarValue entry;
				-- "monsterpoison":
					now monsterpoison is NumberVarValue entry;
				-- "monsterpowerup":
					now monsterpowerup is NumberVarValue entry;
				-- "Mooed":
					now Mooed is NumberVarValue entry;
				-- "Mooing":
					now Mooing is NumberVarValue entry;
				-- "Mothdefeat":
					now Mothdefeat is NumberVarValue entry;
				-- "mothgirlnosex":
					now mothgirlnosex is NumberVarValue entry;
				-- "mousecounter":
					now mousecounter is NumberVarValue entry;
				-- "mousecurse":
					now mousecurse is NumberVarValue entry;
				-- "mousefucked":
					now mousefucked is NumberVarValue entry;
				-- "mouseintel":
					now mouseintel is NumberVarValue entry;
				-- "mousespot":
					now mousespot is NumberVarValue entry;
				-- "mousevic":
					now mousevic is NumberVarValue entry;
				-- "MovingOrwell":
					now MovingOrwell is NumberVarValue entry;
				-- "mpregcount":
					now mpregcount is NumberVarValue entry;
				-- "mqcountdown":
					now mqcountdown is NumberVarValue entry;
				-- "mqpickup":
					now mqpickup is NumberVarValue entry;
				-- "mqstatus":
					now mqstatus is NumberVarValue entry;
				-- "mre01":
					now mre01 is NumberVarValue entry;
				-- "mre02":
					now mre02 is NumberVarValue entry;
				-- "MSStorageVisited":
					now MSStorageVisited is NumberVarValue entry;
				-- "MTP":
					now MTP is NumberVarValue entry;
				-- "mtrp":
					now mtrp is NumberVarValue entry;
				-- "MulAnalAcceptance":
					now MulAnalAcceptance is NumberVarValue entry;
				-- "multicunt":
					now multicunt is NumberVarValue entry;
				-- "MurderMystery":
					now MurderMystery is NumberVarValue entry;
				-- "MushroomCaveVisited":
					now MushroomCaveVisited is NumberVarValue entry;
				-- "MYDAM":
					now MYDAM is NumberVarValue entry;
				-- "MYDGM":
					now MYDGM is NumberVarValue entry;
				-- "MYDTBMM":
					now MYDTBMM is NumberVarValue entry;
				-- "myseread":
					now myseread is NumberVarValue entry;
				-- "NadiaChickCounter":
					now NadiaChickCounter is NumberVarValue entry;
				-- "NadiaDescription":
					now NadiaDescription is NumberVarValue entry;
				-- "NadiaFertilityCounter":
					now NadiaFertilityCounter is NumberVarValue entry;
				-- "NadiaintCounter":
					now NadiaintCounter is NumberVarValue entry;
				-- "NadiaPregCounter1":
					now NadiaPregCounter1 is NumberVarValue entry;
				-- "NadiaPregCounter2":
					now NadiaPregCounter2 is NumberVarValue entry;
				-- "NadiaPregCounter3":
					now NadiaPregCounter3 is NumberVarValue entry;
				-- "NadiaPregVisibility":
					now NadiaPregVisibility is NumberVarValue entry;
				-- "nanitemeter":
					now nanitemeter is NumberVarValue entry;
				-- "NatalieFucked":
					now NatalieFucked is NumberVarValue entry;
				-- "ndmhigh":
					now ndmhigh is NumberVarValue entry;
				-- "NerdMeetings":
					now NerdMeetings is NumberVarValue entry;
				-- "NermineAroused":
					now NermineAroused is NumberVarValue entry;
				-- "NermineBukkakeTurn":
					now NermineBukkakeTurn is NumberVarValue entry;
				-- "NermineFeat":
					now NermineFeat is NumberVarValue entry;
				-- "NermineFennecTurn":
					now NermineFennecTurn is NumberVarValue entry;
				-- "NermineFucked":
					now NermineFucked is NumberVarValue entry;
				-- "Nerminehelpstatus":
					now Nerminehelpstatus is NumberVarValue entry;
				-- "nerminepackage":
					now nerminepackage is NumberVarValue entry;
				-- "nerminepackagematt":
					now nerminepackagematt is NumberVarValue entry;
				-- "NermineQuest":
					now NermineQuest is NumberVarValue entry;
				-- "NermineTalk":
					now NermineTalk is NumberVarValue entry;
				-- "NESProgress":
					now NESProgress is NumberVarValue entry;
				-- "nesteddino":
					now nesteddino is NumberVarValue entry;
				-- "NGRP":
					now NGRP is NumberVarValue entry;
				-- "nightcheck":
					now nightcheck is NumberVarValue entry;
				-- "Nightmaremastery":
					now Nightmaremastery is NumberVarValue entry;
				-- "Nightmareslavery":
					now Nightmareslavery is NumberVarValue entry;
				-- "nightmaretf":
					now nightmaretf is NumberVarValue entry;
				-- "no_AlexandraNPC":
					now no_AlexandraNPC is NumberVarValue entry;
				-- "no_AlexandraTask":
					now no_AlexandraTask is NumberVarValue entry;
				-- "noamazoniansex":
					now noamazoniansex is NumberVarValue entry;
				-- "noanimebabesex":
					now noanimebabesex is NumberVarValue entry;
				-- "nobeaversex":
					now nobeaversex is NumberVarValue entry;
				-- "nobirdofparadisesex":
					now nobirdofparadisesex is NumberVarValue entry;
				-- "nobluechaffinchsex":
					now nobluechaffinchsex is NumberVarValue entry;
				-- "nocandycoonsex":
					now nocandycoonsex is NumberVarValue entry;
				-- "nochinchillasex":
					now nochinchillasex is NumberVarValue entry;
				-- "nodonkeywomansex":
					now nodonkeywomansex is NumberVarValue entry;
				-- "noeaglesex":
					now noeaglesex is NumberVarValue entry;
				-- "noelksex":
					now noelksex is NumberVarValue entry;
				-- "nofponysex":
					now nofponysex is NumberVarValue entry;
				-- "nogiraffesex":
					now nogiraffesex is NumberVarValue entry;
				-- "nogunbunnysex":
					now nogunbunnysex is NumberVarValue entry;
				-- "nohawkmansex":
					now nohawkmansex is NumberVarValue entry;
				-- "nohgryphonsex":
					now nohgryphonsex is NumberVarValue entry;
				-- "NoIntroduction":
					now NoIntroduction is NumberVarValue entry;
				-- "nolatexerminesex":
					now nolatexerminesex is NumberVarValue entry;
				-- "noocelotbtsex":
					now noocelotbtsex is NumberVarValue entry;
				-- "noocelotldsex":
					now noocelotldsex is NumberVarValue entry;
				-- "nopiratesharksex":
					now nopiratesharksex is NumberVarValue entry;
				-- "noplionsex":
					now noplionsex is NumberVarValue entry;
				-- "nopoodlesex":
					now nopoodlesex is NumberVarValue entry;
				-- "nosnowmeowsex":
					now nosnowmeowsex is NumberVarValue entry;
				-- "nosugarglidersex":
					now nosugarglidersex is NumberVarValue entry;
				-- "noteddybearsex":
					now noteddybearsex is NumberVarValue entry;
				-- "notrashcoonsex":
					now notrashcoonsex is NumberVarValue entry;
				-- "novicsex":
					now novicsex is NumberVarValue entry;
				-- "NPCintCounter":
					now NPCintCounter is NumberVarValue entry;
				-- "nsgained":
					now nsgained is NumberVarValue entry;
				-- "numOfBountiesLeft":
					now numOfBountiesLeft is NumberVarValue entry;
				-- "numwater":
					now numwater is NumberVarValue entry;
				-- "ocelotchoice":
					now ocelotchoice is NumberVarValue entry;
				-- "ocelotsize":
					now ocelotsize is NumberVarValue entry;
				-- "OfficeGirlsDominance":
					now OfficeGirlsDominance is NumberVarValue entry;
				-- "OfficeGirlsFriendship":
					now OfficeGirlsFriendship is NumberVarValue entry;
				-- "OliverRelationship":
					now OliverRelationship is NumberVarValue entry;
				-- "Onyxboislut":
					now Onyxboislut is NumberVarValue entry;
				-- "onyxdma":
					now onyxdma is NumberVarValue entry;
				-- "onyxdmc":
					now onyxdmc is NumberVarValue entry;
				-- "onyxdmra":
					now onyxdmra is NumberVarValue entry;
				-- "onyxfinale":
					now onyxfinale is NumberVarValue entry;
				-- "onyxlapdance":
					now onyxlapdance is NumberVarValue entry;
				-- "Onyxmareslut":
					now Onyxmareslut is NumberVarValue entry;
				-- "orcadom":
					now orcadom is NumberVarValue entry;
				-- "orcafdom":
					now orcafdom is NumberVarValue entry;
				-- "orcaintense":
					now orcaintense is NumberVarValue entry;
				-- "OrcFemSpecialFightNumber":
					now OrcFemSpecialFightNumber is NumberVarValue entry;
				-- "OrcSlaverCaptureTime":
					now OrcSlaverCaptureTime is NumberVarValue entry;
				-- "OrcSlaverStatus":
					now OrcSlaverStatus is NumberVarValue entry;
				-- "Otterconsent":
					now Otterconsent is NumberVarValue entry;
				-- "Otterdefeat":
					now Otterdefeat is NumberVarValue entry;
				-- "OttoForm":
					now OttoForm is NumberVarValue entry;
				-- "ovipreglevel":
					now ovipreglevel is NumberVarValue entry;
				-- "partner1Choice":
					now partner1Choice is NumberVarValue entry;
				-- "partner2Choice":
					now partner2Choice is NumberVarValue entry;
				-- "patrooms":
					now patrooms is NumberVarValue entry;
				-- "peacockcontrol":
					now peacockcontrol is NumberVarValue entry;
				-- "Peacocked":
					now Peacocked is NumberVarValue entry;
				-- "pepped":
					now pepped is NumberVarValue entry;
				-- "peppereyes":
					now peppereyes is NumberVarValue entry;
				-- "PericlesRelationship":
					now PericlesRelationship is NumberVarValue entry;
				-- "petchance":
					now petchance is NumberVarValue entry;
				-- "pethitbonus":
					now pethitbonus is NumberVarValue entry;
				-- "pfptype":
					now pfptype is NumberVarValue entry;
				-- "PhilipMudWrestleCount":
					now PhilipMudWrestleCount is NumberVarValue entry;
				-- "PhilipWrestleEnd":
					now PhilipWrestleEnd is NumberVarValue entry;
				-- "piercesave":
					now piercesave is NumberVarValue entry;
				-- "piercestatus":
					now piercestatus is NumberVarValue entry;
				-- "piercingquest":
					now piercingquest is NumberVarValue entry;
				-- "Pigfed":
					now Pigfed is NumberVarValue entry;
				-- "Pigfucked":
					now Pigfucked is NumberVarValue entry;
				-- "piginitiation":
					now piginitiation is NumberVarValue entry;
				-- "pitbullgender":
					now pitbullgender is NumberVarValue entry;
				-- "plantdefeat":
					now plantdefeat is NumberVarValue entry;
				-- "plantwin":
					now plantwin is NumberVarValue entry;
				-- "playercrestnum":
					now playercrestnum is NumberVarValue entry;
				-- "PlayerInformed":
					now PlayerInformed is NumberVarValue entry;
				-- "playermetalskin":
					now playermetalskin is NumberVarValue entry;
				-- "playerpoison":
					now playerpoison is NumberVarValue entry;
				-- "playon":
					now playon is NumberVarValue entry;
				-- "pldamagebonus":
					now pldamagebonus is NumberVarValue entry;
				-- "pldodgebonus":
					now pldodgebonus is NumberVarValue entry;
				-- "plfleebonus":
					now plfleebonus is NumberVarValue entry;
				-- "plhitbonus":
					now plhitbonus is NumberVarValue entry;
				-- "plionvic":
					now plionvic is NumberVarValue entry;
				-- "plionvored":
					now plionvored is NumberVarValue entry;
				-- "plmindbonus":
					now plmindbonus is NumberVarValue entry;
				-- "plnatarmor":
					now plnatarmor is NumberVarValue entry;
				-- "PLRLooted":
					now PLRLooted is NumberVarValue entry;
				-- "plushleoloss":
					now plushleoloss is NumberVarValue entry;
				-- "plweaknatarmor":
					now plweaknatarmor is NumberVarValue entry;
				-- "policerepair":
					now policerepair is NumberVarValue entry;
				-- "PoliceStationTwelveInfpop":
					now PoliceStationTwelveInfpop is NumberVarValue entry;
				-- "PoliceStationTwelvePopulation":
					now PoliceStationTwelvePopulation is NumberVarValue entry;
				-- "poodleapproved":
					now poodleapproved is NumberVarValue entry;
				-- "PoseidonRelationship":
					now PoseidonRelationship is NumberVarValue entry;
				-- "PowerUpDrugTrip":
					now PowerUpDrugTrip is NumberVarValue entry;
				-- "pquest":
					now pquest is NumberVarValue entry;
				-- "pr_completion":
					now pr_completion is NumberVarValue entry;
				-- "pregtype":
					now pregtype is NumberVarValue entry;
				-- "provingstallionhood":
					now provingstallionhood is NumberVarValue entry;
				-- "psycheadjust":
					now psycheadjust is NumberVarValue entry;
				-- "pubvisit":
					now pubvisit is NumberVarValue entry;
				-- "purfeat":
					now purfeat is NumberVarValue entry;
				-- "quitter":
					now quitter is NumberVarValue entry;
				-- "rabbitfucked":
					now rabbitfucked is NumberVarValue entry;
				-- "rabbitmulticock":
					now rabbitmulticock is NumberVarValue entry;
				-- "rabbitsibling":
					now rabbitsibling is NumberVarValue entry;
				-- "rachelfuck":
					now rachelfuck is NumberVarValue entry;
				-- "RamFucked":
					now Stamina of Leon is NumberVarValue entry;
				-- "ramlosstick":
					now ramlosstick is NumberVarValue entry;
				-- "ramtraining":
					now ramtraining is NumberVarValue entry;
				-- "ramvar":
					now ramvar is NumberVarValue entry;
				-- "RandallBradRelationship":
					now RandallBradRelationship is NumberVarValue entry;
				-- "RandomItemPick":
					now RandomItemPick is NumberVarValue entry;
				-- "RaneDeedsTracker":
					now RaneDeedsTracker is NumberVarValue entry;
				-- "RareQuesting":
					now RareQuesting is NumberVarValue entry;
				-- "ratdartcount":
					now ratdartcount is NumberVarValue entry;
				-- "RazorbackBoarEvents":
					now RazorbackBoarEvents is NumberVarValue entry;
				-- "ReceptionistTalk":
					now ReceptionistTalk is NumberVarValue entry;
				-- "recoverchance":
					now recoverchance is NumberVarValue entry;
				-- "Recoveredhardware":
					now Recoveredhardware is NumberVarValue entry;
				-- "RegChaseHelp":
					now RegChaseHelp is NumberVarValue entry;
				-- "Researchbypass":
					now Researchbypass is NumberVarValue entry;
				-- "ResidentialVisits":
					now ResidentialVisits is NumberVarValue entry;
				-- "restaurantpig":
					now restaurantpig is NumberVarValue entry;
				-- "restoration":
					now restoration is NumberVarValue entry;
				-- "riddlesphinx":
					now riddlesphinx is NumberVarValue entry;
				-- "Riddlewin":
					now Riddlewin is NumberVarValue entry;
				-- "rodhosp":
					now rodhosp is NumberVarValue entry;
				-- "RomanceBooksFound":
					now RomanceBooksFound is NumberVarValue entry;
				-- "rsc":
					now rsc is NumberVarValue entry;
				-- "RTWinCounter":
					now RTWinCounter is NumberVarValue entry;
				-- "RyanFucked":
					now RyanFucked is NumberVarValue entry;
				-- "RyouseiDavidInteraction":
					now RyouseiDavidInteraction is NumberVarValue entry;
				-- "RyouseiEricInteraction":
					now RyouseiEricInteraction is NumberVarValue entry;
				-- "RyouseiHayato":
					now RyouseiHayato is NumberVarValue entry;
				-- "RyouseiRane":
					now RyouseiRane is NumberVarValue entry;
				-- "RyouseiXerxes":
					now RyouseiXerxes is NumberVarValue entry;
				-- "sabtoothed":
					now sabtoothed is NumberVarValue entry;
				-- "sabtoothedmatt":
					now sabtoothedmatt is NumberVarValue entry;
				-- "SandySaved":
					now SandySaved is NumberVarValue entry;
				-- "SarahCured":
					now SarahCured is NumberVarValue entry;
				-- "SarahPregnant":
					now SarahPregnant is NumberVarValue entry;
				-- "SarahPups":
					now SarahPups is NumberVarValue entry;
				-- "SarahShower":
					now SarahShower is NumberVarValue entry;
				-- "SarahSlut":
					now SarahSlut is NumberVarValue entry;
				-- "SarahTalk":
					now SarahTalk is NumberVarValue entry;
				-- "SatisfiedTanuki":
					now SatisfiedTanuki is NumberVarValue entry;
				-- "SatyressStage":
					now SatyressStage is NumberVarValue entry;
				-- "SatyrFratPartyStage":
					now SatyrFratPartyStage is NumberVarValue entry;
				-- "SatyrFratRichardRelationship":
					now SatyrFratRichardRelationship is NumberVarValue entry;
				-- "scaledr":
					now scaledr is NumberVarValue entry;
				-- "scopnum":
					now scopnum is NumberVarValue entry;
				-- "Score":
					now Score is NumberVarValue entry;
				-- "ScottyRelationship":
					now ScottyRelationship is NumberVarValue entry;
				-- "scufflecount":
					now scufflecount is NumberVarValue entry;
				-- "sdbook":
					now sdbook is NumberVarValue entry;
				-- "searchesUtSit":
					now searchesUtSit is NumberVarValue entry;
				-- "SeraphisContent":
					now SeraphisContent is NumberVarValue entry;
				-- "SeraphisNeedy":
					now SeraphisNeedy is NumberVarValue entry;
				-- "SeraphisRelationship":
					now SeraphisRelationship is NumberVarValue entry;
				-- "SerenityHunger":
					now SerenityHunger is NumberVarValue entry;
				-- "SethFucked":
					now SethFucked is NumberVarValue entry;
				-- "SethTempleNumber":
					now SethTempleNumber is NumberVarValue entry;
				-- "sextablerun":
					now sextablerun is NumberVarValue entry;
				-- "sgtimer":
					now sgtimer is NumberVarValue entry;
				-- "sgtmarkstalk":
					now sgtmarkstalk is NumberVarValue entry;
				-- "shadowy":
					now shadowy is NumberVarValue entry;
				-- "SharkFountainCounter":
					now SharkFountainCounter is NumberVarValue entry;
				-- "sierramem":
					now sierramem is NumberVarValue entry;
				-- "SilverToken":
					now SilverToken is NumberVarValue entry;
				-- "sirenfight":
					now sirenfight is NumberVarValue entry;
				-- "SizeEnvyTracker":
					now SizeEnvyTracker is NumberVarValue entry;
				-- "SkarnothLibraryEntry":
					now SkarnothLibraryEntry is NumberVarValue entry;
				-- "SkarnothMasterSlave":
					now SkarnothMasterSlave is NumberVarValue entry;
				-- "SkarnothThongStatus":
					now SkarnothThongStatus is NumberVarValue entry;
				-- "SkarnothDrugStatus":
					now SkarnothDrugStatus is NumberVarValue entry;
				-- "skipturnblocker":
					now skipturnblocker is NumberVarValue entry;
				-- "skrp":
					now skrp is NumberVarValue entry;
				-- "Skunk_type":
					now Skunk_type is NumberVarValue entry;
				-- "skunkbeaststatus":
					now skunkbeaststatus is NumberVarValue entry;
				-- "skunkfucked":
					now skunkfucked is NumberVarValue entry;
				-- "skunkmulticock":
					now skunkmulticock is NumberVarValue entry;
				-- "skunkready":
					now skunkready is NumberVarValue entry;
				-- "skunksister":
					now skunksister is NumberVarValue entry;
				-- "skunkspot":
					now skunkspot is NumberVarValue entry;
				-- "SlaveRaidEncounters":
					now SlaveRaidEncounters is NumberVarValue entry;
				-- "Sleeptimercount":
					now Sleeptimercount is NumberVarValue entry;
				-- "slutfucked":
					now slutfucked is NumberVarValue entry;
				-- "Slutratcor":
					now Slutratcor is NumberVarValue entry;
				-- "SlutRatDenPoolTable":
					now SlutRatDenPoolTable is NumberVarValue entry;
				-- "SlutRatDenVisitTimes":
					now SlutRatDenVisitTimes is NumberVarValue entry;
				-- "SlutratSub":
					now SlutratSub is NumberVarValue entry;
				-- "Slutslavefucked":
					now Slutslavefucked is NumberVarValue entry;
				-- "Slutslavelearned":
					now Slutslavelearned is NumberVarValue entry;
				-- "Slutslavetalk":
					now Slutslavetalk is NumberVarValue entry;
				-- "smf":
					now smf is NumberVarValue entry;
				-- "snakecap":
					now snakecap is NumberVarValue entry;
				-- "snakedomm":
					now snakedomm is NumberVarValue entry;
				-- "snakehijack":
					now snakehijack is NumberVarValue entry;
				-- "snakehijacktimer":
					now snakehijacktimer is NumberVarValue entry;
				-- "snakeocc":
					now snakeocc is NumberVarValue entry;
				-- "snakesubm":
					now snakesubm is NumberVarValue entry;
				-- "SnowAmySex":
					now SnowAmySex is NumberVarValue entry;
				-- "SnowmeowSoldierStatus":
					now SnowmeowSoldierStatus is NumberVarValue entry;
				-- "Soldierhorsetf":
					now Soldierhorsetf is NumberVarValue entry;
				-- "solsticefsex":
					now solsticefsex is NumberVarValue entry;
				-- "solsticemsex":
					now solsticemsex is NumberVarValue entry;
				-- "SonnyFood":
					now SonnyFood is NumberVarValue entry;
				-- "SonnyQuest":
					now SonnyQuest is NumberVarValue entry;
				-- "SonnyRelationship":
					now SonnyRelationship is NumberVarValue entry;
				-- "SpidertaurRelationship":
					now SpidertaurRelationship is NumberVarValue entry;
				-- "Spriteconsent":
					now Spriteconsent is NumberVarValue entry;
				-- "Spritedefeat":
					now Spritedefeat is NumberVarValue entry;
				-- "SquadEncounters":
					now SquadEncounters is NumberVarValue entry;
				-- "squidcolor":
					now squidcolor is NumberVarValue entry;
				-- "squirefeature":
					now squirefeature is NumberVarValue entry;
				-- "squirrelfucked":
					now squirrelfucked is NumberVarValue entry;
				-- "squirrelspot":
					now squirrelspot is NumberVarValue entry;
				-- "ssstash":
					now ssstash is NumberVarValue entry;
				-- "Stablesearchstatus":
					now Stablesearchstatus is NumberVarValue entry;
				-- "staircaselocation":
					now staircaselocation is NumberVarValue entry;
				-- "Started":
					now Started is NumberVarValue entry;
				-- "statuequest":
					now statuequest is NumberVarValue entry;
				-- "steriletime":
					now steriletime is NumberVarValue entry;
				-- "Stevenfood":
					now Stevenfood is NumberVarValue entry;
				-- "StevenFuckcount":
					now StevenFuckcount is NumberVarValue entry;
				-- "Stevenmm":
					now Stevenmm is NumberVarValue entry;
				-- "Stevenremoved":
					now Stevenremoved is NumberVarValue entry;
				-- "StevenSwayed":
					now StevenSwayed is NumberVarValue entry;
				-- "Steventrust":
					now Steventrust is NumberVarValue entry;
				-- "Stevenwater":
					now Stevenwater is NumberVarValue entry;
				-- "StewartLocationCounter":
					now StewartLocationCounter is NumberVarValue entry;
				-- "StewartRelationship":
					now StewartRelationship is NumberVarValue entry;
				-- "stiffedpayment":
					now stiffedpayment is NumberVarValue entry;
				-- "strangebottledrink":
					now strangebottledrink is NumberVarValue entry;
				-- "struggleatt":
					now struggleatt is NumberVarValue entry;
				-- "supermarketcount":
					now supermarketcount is NumberVarValue entry;
				-- "survfeat":
					now survfeat is NumberVarValue entry;
				-- "Susanfirsttime":
					now Susanfirsttime is NumberVarValue entry;
				-- "SvenAmySex":
					now SvenAmySex is NumberVarValue entry;
				-- "SvenCandyMsg":
					now SvenCandyMsg is NumberVarValue entry;
				-- "SylviaConv":
					now SylviaConv is NumberVarValue entry;
				-- "SylviaTrapVar":
					now SylviaTrapVar is NumberVarValue entry;
				-- "SylviaVirginCheck":
					now SylviaVirginCheck is NumberVarValue entry;
				-- "TaniClassMemory":
					now TaniClassMemory is NumberVarValue entry;
				-- "TaniRecommendation":
					now TaniRecommendation is NumberVarValue entry;
				-- "Targetturns":
					now Targetturns is NumberVarValue entry;
				-- "tatsave":
					now tatsave is NumberVarValue entry;
				-- "tatstatus":
					now tatstatus is NumberVarValue entry;
				-- "tattoohunter":
					now tattoohunter is NumberVarValue entry;
				-- "TawnyaFurSuspicion":
					now TawnyaFurSuspicion is NumberVarValue entry;
				-- "TawnyaMotive":
					now TawnyaMotive is NumberVarValue entry;
				-- "tcopfight":
					now tcopfight is NumberVarValue entry;
				-- "teddyvored":
					now teddyvored is NumberVarValue entry;
				-- "TehuantlKorvinRelationship":
					now TehuantlKorvinRelationship is NumberVarValue entry;
				-- "TehuantlSnowStatus":
					now TehuantlSnowStatus is NumberVarValue entry;
				-- "TehuantlStatus":
					now TehuantlStatus is NumberVarValue entry;
				-- "TempClearBypass":
					now TempClearBypass is NumberVarValue entry;
				-- "templust":
					now templust is NumberVarValue entry;
				-- "tempnum":
					now tempnum is NumberVarValue entry;
				-- "tempnum2":
					now tempnum2 is NumberVarValue entry;
				-- "tempthirst":
					now tempthirst is NumberVarValue entry;
				-- "TentacleInteractions":
					now TentacleInteractions is NumberVarValue entry;
				-- "tentaclerape":
					now tentaclerape is NumberVarValue entry;
				-- "TentacleStatus":
					now TentacleStatus is NumberVarValue entry;
				-- "tentsubmit":
					now tentsubmit is NumberVarValue entry;
				-- "thabread":
					now thabread is NumberVarValue entry;
				-- "ThomasPregnancy":
					now ThomasPregnancy is NumberVarValue entry;
				-- "ThomasQuestVar":
					now ThomasQuestVar is NumberVarValue entry;
				-- "ThomasSaved":
					now ThomasSaved is NumberVarValue entry;
				-- "ThunderTrackingVariable":
					now ThunderTrackingVariable is NumberVarValue entry;
				-- "tightfitcount":
					now tightfitcount is NumberVarValue entry;
				-- "tigressclient":
					now tigressclient is NumberVarValue entry;
				-- "tigressfucked":
					now tigressfucked is NumberVarValue entry;
				-- "tigresswinner":
					now tigresswinner is NumberVarValue entry;
				-- "TimekeepingVar":
					now TimekeepingVar is NumberVarValue entry;
				-- "timetillrampage":
					now timetillrampage is NumberVarValue entry;
				-- "Timothyfucked":
					now Timothyfucked is NumberVarValue entry;
				-- "tmapfound":
					now tmapfound is NumberVarValue entry;
				-- "tmonster":
					now tmonster is NumberVarValue entry;
				-- "TomeFound":
					now TomeFound is NumberVarValue entry;
				-- "TomeInfluence":
					now TomeInfluence is NumberVarValue entry;
				-- "TomeInfluenceTimer":
					now TomeInfluenceTimer is NumberVarValue entry;
				-- "TomeInteractions":
					now TomeInteractions is NumberVarValue entry;
				-- "TomeTimer":
					now TomeTimer is NumberVarValue entry;
				-- "Treasurefound":
					now Treasurefound is NumberVarValue entry;
				-- "treasurehunt":
					now treasurehunt is NumberVarValue entry;
				-- "triclamped":
					now triclamped is NumberVarValue entry;
				-- "triclampedmatt":
					now triclampedmatt is NumberVarValue entry;
				-- "TritonRelationship":
					now TritonRelationship is NumberVarValue entry;
				-- "TryoutScore":
					now TryoutScore is NumberVarValue entry;
				-- "TSEventCounter":
					now TSEventCounter is NumberVarValue entry;
				-- "tsw_fsd":
					now tsw_fsd is NumberVarValue entry;
				-- "tsw_relationship":
					now tsw_relationship is NumberVarValue entry;
				-- "tti_scene":
					now tti_scene is NumberVarValue entry;
				-- "ttIcarus":
					now ttIcarus is NumberVarValue entry;
				-- "ttransform":
					now ttransform is NumberVarValue entry;
				-- "Turns":
					now Turns is NumberVarValue entry;
				-- "turns in heat":
					now turns in heat is NumberVarValue entry;
				-- "TwelveLaborsStage":
					now TwelveLaborsStage is NumberVarValue entry;
				-- "twpimpbeaten":
					now twpimpbeaten is NumberVarValue entry;
				-- "twpimploss":
					now twpimploss is NumberVarValue entry;
				-- "Tyraffection":
					now Tyraffection is NumberVarValue entry;
				-- "TyrDefeated":
					now TyrDefeated is NumberVarValue entry;
				-- "Tyrtalk":
					now Tyrtalk is NumberVarValue entry;
				-- "UrikEricInteraction":
					now UrikEricInteraction is NumberVarValue entry;
				-- "UrsineDefeatCount":
					now UrsineDefeatCount is NumberVarValue entry;
				-- "UtahGender":
					now UtahGender is NumberVarValue entry;
				-- "valhosp":
					now valhosp is NumberVarValue entry;
				-- "ValPregCounter":
					now ValPregCounter is NumberVarValue entry;
				-- "ValPregnancy":
					now ValPregnancy is NumberVarValue entry;
				-- "Valtalk":
					now Valtalk is NumberVarValue entry;
				-- "VentDomSize":
					now VentDomSize is NumberVarValue entry;
				-- "VentFluidAmount":
					now VentFluidAmount is NumberVarValue entry;
				-- "VentFoxContentLevel":
					now VentFoxContentLevel is NumberVarValue entry;
				-- "VentFoxLastFed":
					now VentFoxLastFed is NumberVarValue entry;
				-- "VentFoxRelationship":
					now VentFoxRelationship is NumberVarValue entry;
				-- "VentOviAmount":
					now VentOviAmount is NumberVarValue entry;
				-- "VentSubSize":
					now VentSubSize is NumberVarValue entry;
				-- "VentWSAmount":
					now VentWSAmount is NumberVarValue entry;
				-- "vetcheater":
					now vetcheater is NumberVarValue entry;
				-- "vgeckoanal":
					now vgeckoanal is NumberVarValue entry;
				-- "vgeckobeaten":
					now vgeckobeaten is NumberVarValue entry;
				-- "vgeckoloss":
					now vgeckoloss is NumberVarValue entry;
				-- "VictoryOverDaBull":
					now VictoryOverDaBull is NumberVarValue entry;
				-- "VikingKidCounter":
					now VikingKidCounter is NumberVarValue entry;
				-- "VikingKidGender":
					now VikingKidGender is NumberVarValue entry;
				-- "VikingPregCounter":
					now VikingPregCounter is NumberVarValue entry;
				-- "VikingPregnancy":
					now VikingPregnancy is NumberVarValue entry;
				-- "VikingRelationship":
					now VikingRelationship is NumberVarValue entry;
				-- "VikingSpartanWar":
					now VikingSpartanWar is NumberVarValue entry;
				-- "VikingUltimatum":
					now VikingUltimatum is NumberVarValue entry;
				-- "VikingWar":
					now VikingWar is NumberVarValue entry;
				-- "violinfound":
					now violinfound is NumberVarValue entry;
				-- "vixcountdown":
					now vixcountdown is NumberVarValue entry;
				-- "vixentaurcatch":
					now vixentaurcatch is NumberVarValue entry;
				-- "vixgender":
					now vixgender is NumberVarValue entry;
				-- "vorechoice":
					now vorechoice is NumberVarValue entry;
				-- "vorecount":
					now vorecount is NumberVarValue entry;
				-- "vorelevel":
					now vorelevel is NumberVarValue entry;
				-- "vpostmusenum":
					now vpostmusenum is NumberVarValue entry;
				-- "waiterhater":
					now waiterhater is NumberVarValue entry;
				-- "WallyQuestDenial":
					now WallyQuestDenial is NumberVarValue entry;
				-- "WallyOrcFled":
					now WallyOrcFled is NumberVarValue entry;
				-- "InsightGained":
					now InsightGained is NumberVarValue entry;
				-- "WallyTrust":
					now WallyTrust is NumberVarValue entry;
				-- "WallStanding":
					now WallStanding is NumberVarValue entry;
				-- "WarLossCounter":
					now WarLossCounter is NumberVarValue entry;
				-- "WarriorChrisDominance":
					now WarriorChrisDominance is NumberVarValue entry;
				-- "WarriorChrisPlayerFucked":
					now WarriorChrisPlayerFucked is NumberVarValue entry;
				-- "wasfertile":
					now wasfertile is NumberVarValue entry;
				-- "wasfertilef":
					now wasfertilef is NumberVarValue entry;
				-- "washerenest":
					now washerenest is NumberVarValue entry;
				-- "wassterile":
					now wassterile is NumberVarValue entry;
				-- "wassterilef":
					now wassterilef is NumberVarValue entry;
				-- "watercount":
					now watercount is NumberVarValue entry;
				-- "waterneed":
					now waterneed is NumberVarValue entry;
				-- "weaselcount":
					now weaselcount is NumberVarValue entry;
				-- "WellRestedTimer":
					now WellRestedTimer is NumberVarValue entry;
				-- "werewolfcostumenosex":
					now werewolfcostumenosex is NumberVarValue entry;
				-- "WerewolfRelationship":
					now WerewolfRelationship is NumberVarValue entry;
				-- "whelpspotnum":
					now whelpspotnum is NumberVarValue entry;
				-- "WhiptailLossCount":
					now WhiptailLossCount is NumberVarValue entry;
				-- "WhoringExperience":
					now WhoringExperience is NumberVarValue entry;
				-- "WineFound":
					now WineFound is NumberVarValue entry;
				-- "wolfhermdefeat":
					now wolfhermdefeat is NumberVarValue entry;
				-- "wolfhermvictory":
					now wolfhermvictory is NumberVarValue entry;
				-- "WolfHorseMallCouple":
					now WolfHorseMallCouple is NumberVarValue entry;
				-- "workoutprice":
					now workoutprice is NumberVarValue entry;
				-- "wrdaycycle":
					now wrdaycycle is NumberVarValue entry;
				-- "wrestlechance":
					now wrestlechance is NumberVarValue entry;
				-- "wrestlingwolfdefeat":
					now wrestlingwolfdefeat is NumberVarValue entry;
				-- "wrlastNermine":
					now wrlastNermine is NumberVarValue entry;
				-- "wrmode":
					now wrmode is NumberVarValue entry;
				-- "wrscalevalue":
					now wrscalevalue is NumberVarValue entry;
				-- "wrwolfanal":
					now wrwolfanal is NumberVarValue entry;
				-- "wrwolfbeaten":
					now wrwolfbeaten is NumberVarValue entry;
				-- "WSlevel":
					now WSlevel is NumberVarValue entry;
				-- "wwheal":
					now wwheal is NumberVarValue entry;
				-- "wyvernbias":
					now wyvernbias is NumberVarValue entry;
				-- "WYVGEN":
					now WYVGEN is NumberVarValue entry;
				-- "wyvkin1att":
					now wyvkin1att is NumberVarValue entry;
				-- "wyvkin1gen":
					now wyvkin1gen is NumberVarValue entry;
				-- "wyvkin1lib":
					now wyvkin1lib is NumberVarValue entry;
				-- "wyvkin2att":
					now wyvkin2att is NumberVarValue entry;
				-- "wyvkin2gen":
					now wyvkin2gen is NumberVarValue entry;
				-- "wyvkin2lib":
					now wyvkin2lib is NumberVarValue entry;
				-- "wyvkin3att":
					now wyvkin3att is NumberVarValue entry;
				-- "wyvkin3gen":
					now wyvkin3gen is NumberVarValue entry;
				-- "wyvkin3lib":
					now wyvkin3lib is NumberVarValue entry;
				-- "wyvkin4att":
					now wyvkin4att is NumberVarValue entry;
				-- "wyvkin4gen":
					now wyvkin4gen is NumberVarValue entry;
				-- "wyvkin4lib":
					now wyvkin4lib is NumberVarValue entry;
				-- "wyvkinassign":
					now wyvkinassign is NumberVarValue entry;
				-- "wyvkinatt":
					now wyvkinatt is NumberVarValue entry;
				-- "wyvkinocc":
					now wyvkinocc is NumberVarValue entry;
				-- "WYVLEV":
					now WYVLEV is NumberVarValue entry;
				-- "wyvorgyroll":
					now wyvorgyroll is NumberVarValue entry;
				-- "WYVSF":
					now WYVSF is NumberVarValue entry;
				-- "yamatdom":
					now yamatdom is NumberVarValue entry;
				-- "ydcolor":
					now ydcolor is NumberVarValue entry;
				-- "YDSF":
					now YDSF is NumberVarValue entry;
				-- "ymgmode":
					now ymgmode is NumberVarValue entry;
				-- "ZebraLossCount":
					now ZebraLossCount is NumberVarValue entry;
				-- "ZekeRelationship":
					now ZekeRelationship is NumberVarValue entry;
				-- "zephyrpests":
					now zephyrpests is NumberVarValue entry;
				-- "zephyrtask":
					now zephyrtask is NumberVarValue entry;
				-- "ZieraFucked":
					now ZieraFucked is NumberVarValue entry;
				-- "zigseat":
					now zigseat is NumberVarValue entry;
				-- "zpc_Zc":
					now zpc_Zc is NumberVarValue entry;
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
			choose row x in the Table of GameTruths;
			[
			if debug is at level 10:
				say "Restoring Truth [TruthVarName entry].";
			]
			if TruthVarName entry is:
				-- "A_Candy":
					now A_Candy is TruthVarValue entry;
				-- "A_Colleen":
					now A_Colleen is TruthVarValue entry;
				-- "A_David":
					now A_David is TruthVarValue entry;
				-- "A_Elijah":
					now A_Elijah is TruthVarValue entry;
				-- "A_Fang":
					now A_Fang is TruthVarValue entry;
				-- "A_Helen":
					now A_Helen is TruthVarValue entry;
				-- "A_Icarus":
					now A_Icarus is TruthVarValue entry;
				-- "A_Mack":
					now A_Mack is TruthVarValue entry;
				-- "A_Onyx":
					now A_Onyx is TruthVarValue entry;
				-- "A_Philip":
					now A_Philip is TruthVarValue entry;
				-- "A_Sally":
					now A_Sally is TruthVarValue entry;
				-- "A_Sam":
					now A_Sam is TruthVarValue entry;
				-- "A_Sandra":
					now A_Sandra is TruthVarValue entry;
				-- "A_Sarah":
					now A_Sarah is TruthVarValue entry;
				-- "A_Sarah2":
					now A_Sarah2 is TruthVarValue entry;
				-- "A_Snow":
					now A_Snow is TruthVarValue entry;
				-- "A_Solstice":
					now A_Solstice is TruthVarValue entry;
				-- "A_Sven":
					now A_Sven is TruthVarValue entry;
				-- "A_Xerxes":
					now A_Xerxes is TruthVarValue entry;
				-- "Alexandracoffee":
					now Alexandracoffee is TruthVarValue entry;
				-- "alexandragshep1":
					now alexandragshep1 is TruthVarValue entry;
				-- "Alexandrastory":
					now Alexandrastory is TruthVarValue entry;
				-- "Alexandrastory2":
					now Alexandrastory2 is TruthVarValue entry;
				-- "Alexandrastory3":
					now Alexandrastory3 is TruthVarValue entry;
				-- "alphaHuskyBountyState":
					now alphaHuskyBountyState is TruthVarValue entry;
				-- "alphawolfreplaced":
					now alphawolfreplaced is TruthVarValue entry;
				-- "altsealedentrance":
					now altsealedentrance is TruthVarValue entry;
				-- "animal heat":
					now animal heat is TruthVarValue entry;
				-- "animeclubfight":
					now animeclubfight is TruthVarValue entry;
				-- "artemisstatefairrt":
					now artemisstatefairrt is TruthVarValue entry;
				-- "AT_Diego":
					now AT_Diego is TruthVarValue entry;
				-- "AT_Jimmy":
					now AT_Jimmy is TruthVarValue entry;
				-- "AT_Lisa":
					now AT_Lisa is TruthVarValue entry;
				-- "AT_Marks":
					now AT_Marks is TruthVarValue entry;
				-- "AT_Matt":
					now AT_Matt is TruthVarValue entry;
				-- "AT_Mouse":
					now AT_Mouse is TruthVarValue entry;
				-- "AT_Patrol":
					now AT_Patrol is TruthVarValue entry;
				-- "at_patrol_01":
					now at_patrol_01 is TruthVarValue entry;
				-- "AT_Paula":
					now AT_Paula is TruthVarValue entry;
				-- "AT_Philip":
					now AT_Philip is TruthVarValue entry;
				-- "AT_Qytat":
					now AT_Qytat is TruthVarValue entry;
				-- "AT_Repair":
					now AT_Repair is TruthVarValue entry;
				-- "AT_RLD":
					now AT_RLD is TruthVarValue entry;
				-- "AT_Sandra":
					now AT_Sandra is TruthVarValue entry;
				-- "AT_Sarah":
					now AT_Sarah is TruthVarValue entry;
				-- "AT_Snow":
					now AT_Snow is TruthVarValue entry;
				-- "AT_Stella":
					now AT_Stella is TruthVarValue entry;
				-- "AT_Sven":
					now AT_Sven is TruthVarValue entry;
				-- "autofeatloading":
					now autofeatloading is TruthVarValue entry;
				-- "BastetSexOrTalk":
					now BastetSexOrTalk is TruthVarValue entry;
				-- "bcplayroomlast":
					now bcplayroomlast is TruthVarValue entry;
				-- "bcseenhugeorca":
					now bcseenhugeorca is TruthVarValue entry;
				-- "bcseenkingchair":
					now bcseenkingchair is TruthVarValue entry;
				-- "bcseenkingknight":
					now bcseenkingknight is TruthVarValue entry;
				-- "bcseenplayroom":
					now bcseenplayroom is TruthVarValue entry;
				-- "bcseenpunchingpillars":
					now bcseenpunchingpillars is TruthVarValue entry;
				-- "bcseenthroneroom":
					now bcseenthroneroom is TruthVarValue entry;
				-- "bcswordplay":
					now bcswordplay is TruthVarValue entry;
				-- "beachrape":
					now beachrape is TruthVarValue entry;
				-- "beauceronmet":
					now beauceronmet is TruthVarValue entry;
				-- "birthedwhelp":
					now birthedwhelp is TruthVarValue entry;
				-- "blanchetalk1":
					now blanchetalk1 is TruthVarValue entry;
				-- "blanchetalk2":
					now blanchetalk2 is TruthVarValue entry;
				-- "blanchetalk3":
					now blanchetalk3 is TruthVarValue entry;
				-- "BlindMode":
					now BlindMode is TruthVarValue entry;
				-- "blindmode":
					now BlindMode is TruthVarValue entry;
				-- "bopseen":
					now bopseen is TruthVarValue entry;
				-- "BorisArtemistalk":
					now BorisArtemistalk is TruthVarValue entry;
				-- "boundrecover":
					now boundrecover is TruthVarValue entry;
				-- "boundstate":
					now boundstate is TruthVarValue entry;
				-- "bradfordstory1":
					now bradfordstory1 is TruthVarValue entry;
				-- "bradfordstory2":
					now bradfordstory2 is TruthVarValue entry;
				-- "bradfordstory3":
					now bradfordstory3 is TruthVarValue entry;
				-- "bradfordstory4":
					now bradfordstory4 is TruthVarValue entry;
				-- "brookeandrewtalk":
					now brookeandrewtalk is TruthVarValue entry;
				-- "busterstory1":
					now busterstory1 is TruthVarValue entry;
				-- "busterstory2":
					now busterstory2 is TruthVarValue entry;
				-- "ButterflyForeplay":
					now ButterflyForeplay is TruthVarValue entry;
				-- "ButterflyHasNegligee":
					now ButterflyHasNegligee is TruthVarValue entry;
				-- "ButterflyLikesYou":
					now ButterflyLikesYou is TruthVarValue entry;
				-- "ButterflyLove":
					now ButterflyLove is TruthVarValue entry;
				-- "ButterflyNegligeeTorn":
					now ButterflyNegligeeTorn is TruthVarValue entry;
				-- "ButterflyPantiesFound":
					now ButterflyPantiesFound is TruthVarValue entry;
				-- "ButterflyPregnant":
					now ButterflyPregnant is TruthVarValue entry;
				-- "ButterflyProcreated":
					now ButterflyProcreated is TruthVarValue entry;
				-- "ButterflyRevenge":
					now ButterflyRevenge is TruthVarValue entry;
				-- "callovi":
					now callovi is TruthVarValue entry;
				-- "cclosttarget":
					now cclosttarget is TruthVarValue entry;
				-- "cheetah_mpreg":
					now cheetah_mpreg is TruthVarValue entry;
				-- "chindem":
					now chindem is TruthVarValue entry;
				-- "christysausage":
					now christysausage is TruthVarValue entry;
				-- "ClassPaymentAccepted":
					now ClassPaymentAccepted is TruthVarValue entry;
				-- "cuptrick":
					now cuptrick is TruthVarValue entry;
				-- "demonBruteBountyState":
					now demonBruteBountyState is TruthVarValue entry;
				-- "DemonFox_Apologized":
					now DemonFox_Apologized is TruthVarValue entry;
				-- "DemonFox_Encountered":
					now DemonFox_Encountered is TruthVarValue entry;
				-- "DemonFox_PlayerDefeated":
					now DemonFox_PlayerDefeated is TruthVarValue entry;
				-- "DemonFox_PlayerFled":
					now DemonFox_PlayerFled is TruthVarValue entry;
				-- "DemonFox_PlayerSubmitted":
					now DemonFox_PlayerSubmitted is TruthVarValue entry;
				-- "DemonFox_PlayerWon":
					now DemonFox_PlayerWon is TruthVarValue entry;
				-- "DemonFox_PlayerWon_Fucked":
					now DemonFox_PlayerWon_Fucked is TruthVarValue entry;
				-- "DemonFoxRead":
					now DemonFoxRead is TruthVarValue entry;
				-- "dobieanal":
					now dobieanal is TruthVarValue entry;
				-- "DoranAnnoyed":
					now DoranAnnoyed is TruthVarValue entry;
				-- "DoranAutofired":
					now DoranAutofired is TruthVarValue entry;
				-- "DoranAutofireDiscussed":
					now DoranAutofireDiscussed is TruthVarValue entry;
				-- "DoranCumFilled":
					now DoranCumFilled is TruthVarValue entry;
				-- "DoranFirstTalk":
					now DoranFirstTalk is TruthVarValue entry;
				-- "DoranInternal":
					now DoranInternal is TruthVarValue entry;
				-- "DoranPlayerBlueballing":
					now DoranPlayerBlueballing is TruthVarValue entry;
				-- "DoranPlayerCumFilled":
					now DoranPlayerCumFilled is TruthVarValue entry;
				-- "DoranPlayerGenderRegard":
					now DoranPlayerGenderRegard is TruthVarValue entry;
				-- "DoranRefusedSex":
					now DoranRefusedSex is TruthVarValue entry;
				-- "DoranSelfGender":
					now DoranSelfGender is TruthVarValue entry;
				-- "drutah_msg1":
					now drutah_msg1 is TruthVarValue entry;
				-- "duckyactive":
					now duckyactive is TruthVarValue entry;
				-- "ebheat_msg":
					now ebheat_msg is TruthVarValue entry;
				-- "ebneuterswitch":
					now ebneuterswitch is TruthVarValue entry;
				-- "enduring":
					now enduring is TruthVarValue entry;
				-- "eprodused":
					now eprodused is TruthVarValue entry;
				-- "facecheck":
					now facecheck is TruthVarValue entry;
				-- "fangsidney":
					now fangsidney is TruthVarValue entry;
				-- "FangToy":
					now FangToy is TruthVarValue entry;
				-- "featherready":
					now featherready is TruthVarValue entry;
				-- "feline_pride_defeat":
					now feline_pride_defeat is TruthVarValue entry;
				-- "FFSDUBM":
					now FFSDUBM is TruthVarValue entry;
				-- "firebreathready":
					now firebreathready is TruthVarValue entry;
				-- "firstgarg":
					now firstgarg is TruthVarValue entry;
				-- "floatertaken":
					now floatertaken is TruthVarValue entry;
				-- "flotmarked":
					now flotmarked is TruthVarValue entry;
				-- "Francoismixcleaned":
					now Francoismixcleaned is TruthVarValue entry;
				-- "Francoistalk1":
					now Francoistalk1 is TruthVarValue entry;
				-- "fsnakevalid":
					now fsnakevalid is TruthVarValue entry;
				-- "garrettinfo1":
					now garrettinfo1 is TruthVarValue entry;
				-- "gobdem":
					now gobdem is TruthVarValue entry;
				-- "grhouse":
					now grhouse is TruthVarValue entry;
				-- "gsd_attack":
					now gsd_attack is TruthVarValue entry;
				-- "gsd_fled":
					now gsd_fled is TruthVarValue entry;
				-- "gsd_male":
					now gsd_male is TruthVarValue entry;
				-- "gsd_slut":
					now gsd_slut is TruthVarValue entry;
				-- "gsd_special":
					now gsd_special is TruthVarValue entry;
				-- "HadGusBackgroundTalk":
					now HadGusBackgroundTalk is TruthVarValue entry;
				-- "hadiyahyg":
					now hadiyahyg is TruthVarValue entry;
				-- "HardMode":
					now HardMode is TruthVarValue entry;
				-- "Hardmode":
					now HardMode is TruthVarValue entry;
				-- "heat enabled":
					now heat enabled is TruthVarValue entry;
				-- "heatturnskipper":
					now heatturnskipper is TruthVarValue entry;
				-- "hobo-food-gift":
					now hobo-food-gift is TruthVarValue entry;
				-- "hobo-grmilk":
					now hobo-grmilk is TruthVarValue entry;
				-- "hobo-libidosupp":
					now hobo-libidosupp is TruthVarValue entry;
				-- "hobo-water-gift":
					now hobo-water-gift is TruthVarValue entry;
				-- "honeygiven":
					now honeygiven is TruthVarValue entry;
				-- "houndfromhell":
					now houndfromhell is TruthVarValue entry;
				-- "hvoreoffer":
					now hvoreoffer is TruthVarValue entry;
				-- "hydraheadregrowth":
					now hydraheadregrowth is TruthVarValue entry;
				-- "HyenaMatVore":
					now HyenaMatVore is TruthVarValue entry;
				-- "icarusrim":
					now icarusrim is TruthVarValue entry;
				-- "icarusscene1":
					now icarusscene1 is TruthVarValue entry;
				-- "icarusscene2":
					now icarusscene2 is TruthVarValue entry;
				-- "impregnatevalid":
					now impregnatevalid is TruthVarValue entry;
				-- "inasituation":
					now inasituation is TruthVarValue entry;
				-- "inheat":
					now inheat is TruthVarValue entry;
				-- "insectlarva":
					now insectlarva is TruthVarValue entry;
				-- "internalCockbypass":
					now internalCockbypass is TruthVarValue entry;
				-- "internalBallsbypass":
					now internalBallsbypass is TruthVarValue entry;
				-- "isHellhound":
					now isHellhound is TruthVarValue entry;
				-- "ishunting":
					now ishunting is TruthVarValue entry;
				-- "joannadogsaved":
					now joannadogsaved is TruthVarValue entry;
				-- "karahbtalk":
					now karahbtalk is TruthVarValue entry;
				-- "kristenmsg1":
					now kristenmsg1 is TruthVarValue entry;
				-- "kristenmsg2":
					now kristenmsg2 is TruthVarValue entry;
				-- "kristenmsg3":
					now kristenmsg3 is TruthVarValue entry;
				-- "kristenmsg4":
					now kristenmsg4 is TruthVarValue entry;
				-- "kristenmsg5":
					now kristenmsg5 is TruthVarValue entry;
				-- "kristentf3fuck":
					now kristentf3fuck is TruthVarValue entry;
				-- "ktcockmatch":
					now ktcockmatch is TruthVarValue entry;
				-- "KyrverthItemStealable":
					now KyrverthItemStealable is TruthVarValue entry;
				-- "KyrverthItemTaken":
					now KyrverthItemTaken is TruthVarValue entry;
				-- "KyrverthQuestHairGiven":
					now KyrverthQuestHairGiven is TruthVarValue entry;
				-- "KyrverthUsedArtifact":
					now KyrverthUsedArtifact is TruthVarValue entry;
				-- "LarissaTailed":
					now LarissaTailed is TruthVarValue entry;
				-- "LarissaWinged":
					now LarissaWinged is TruthVarValue entry;
				-- "LastTurnDay":
					now LastTurnDay is TruthVarValue entry;
				-- "latexErmineBountyState":
					now latexErmineBountyState is TruthVarValue entry;
				-- "latexhuskymode":
					now latexhuskymode is TruthVarValue entry;
				-- "leodinner":
					now leodinner is TruthVarValue entry;
				-- "Leonardcabinet":
					now Leonardcabinet is TruthVarValue entry;
				-- "Leonardcaraway":
					now Leonardcaraway is TruthVarValue entry;
				-- "Leonardwrdesk":
					now Leonardwrdesk is TruthVarValue entry;
				-- "leopocketwatch":
					now leopocketwatch is TruthVarValue entry;
				-- "leoshadowmet":
					now leoshadowmet is TruthVarValue entry;
				-- "LindseyMPregDetected":
					now LindseyMPregDetected is TruthVarValue entry;
				-- "lindseyws":
					now lindseyws is TruthVarValue entry;
				-- "maleHound":
					now maleHound is TruthVarValue entry;
				-- "mchristyanal":
					now mchristyanal is TruthVarValue entry;
				-- "mchristybottom":
					now mchristybottom is TruthVarValue entry;
				-- "mchristytop":
					now mchristytop is TruthVarValue entry;
				-- "mdstaffface":
					now mdstaffface is TruthVarValue entry;
				-- "medeapanda":
					now medeapanda is TruthVarValue entry;
				-- "medeapill":
					now medeapill is TruthVarValue entry;
				-- "medeaub":
					now medeaub is TruthVarValue entry;
				-- "Meredith_anal":
					now Meredith_anal is TruthVarValue entry;
				-- "Meredith_Colleen_fun1":
					now Meredith_Colleen_fun1 is TruthVarValue entry;
				-- "Meredith_Vanessa_fun1":
					now Meredith_Vanessa_fun1 is TruthVarValue entry;
				-- "Meredith_Vanessa_fun2":
					now Meredith_Vanessa_fun2 is TruthVarValue entry;
				-- "messypigaltorgasm":
					now messypigaltorgasm is TruthVarValue entry;
				-- "MFSDUBM":
					now MFSDUBM is TruthVarValue entry;
				-- "MKunleashed":
					now MKunleashed is TruthVarValue entry;
				-- "mlamiaboobmash":
					now mlamiaboobmash is TruthVarValue entry;
				-- "mlamiamet":
					now mlamiamet is TruthVarValue entry;
				-- "monsterhit":
					now monsterhit is TruthVarValue entry;
				-- "MoreauDiscount":
					now MoreauDiscount is TruthVarValue entry;
				-- "MoreauPaymentAccepted":
					now MoreauPaymentAccepted is TruthVarValue entry;
				-- "mpreghijack":
					now mpreghijack is TruthVarValue entry;
				-- "mre04":
					now mre04 is TruthVarValue entry;
				-- "msnakevalid":
					now msnakevalid is TruthVarValue entry;
				-- "muggerison":
					now muggerison is TruthVarValue entry;
				-- "nagawarning":
					now nagawarning is TruthVarValue entry;
				-- "NavCheckReturn":
					now NavCheckReturn is TruthVarValue entry;
				-- "ndmLisa":
					now ndmLisa is TruthVarValue entry;
				-- "nmformswitch":
					now nmformswitch is TruthVarValue entry;
				-- "NoHealMode":
					now NoHealMode is TruthVarValue entry;
				-- "nohealmode":
					now NoHealMode is TruthVarValue entry;
				-- "nosquirrelanal":
					now nosquirrelanal is TruthVarValue entry;
				-- "obliging":
					now obliging is TruthVarValue entry;
				-- "onyxhappytalk":
					now onyxhappytalk is TruthVarValue entry;
				-- "onyxsmra":
					now onyxsmra is TruthVarValue entry;
				-- "onyxsmro":
					now onyxsmro is TruthVarValue entry;
				-- "onyxsmrv":
					now onyxsmrv is TruthVarValue entry;
				-- "ovipregalways":
					now ovipregalways is TruthVarValue entry;
				-- "ovipregmedeatalk":
					now ovipregmedeatalk is TruthVarValue entry;
				-- "ovipregnant":
					now ovipregnant is TruthVarValue entry;
				-- "PlayerPigBodied":
					now PlayerPigBodied is TruthVarValue entry;
				-- "ppatt":
					now ppatt is TruthVarValue entry;
				-- "pr_task01":
					now pr_task01 is TruthVarValue entry;
				-- "pr_task02":
					now pr_task02 is TruthVarValue entry;
				-- "pr_task03":
					now pr_task03 is TruthVarValue entry;
				-- "pr_task04":
					now pr_task04 is TruthVarValue entry;
				-- "preghijack":
					now preghijack is TruthVarValue entry;
				-- "rabbitified":
					now rabbitified is TruthVarValue entry;
				-- "rambjvirg":
					now rambjvirg is TruthVarValue entry;
				-- "ramslut":
					now ramslut is TruthVarValue entry;
				-- "RestoreMode":
					now RestoreMode is TruthVarValue entry;
				-- "rkrcheck":
					now rkrcheck is TruthVarValue entry;
				-- "rlingfound":
					now rlingfound is TruthVarValue entry;
				-- "roughing":
					now roughing is TruthVarValue entry;
				-- "rowing":
					now rowing is TruthVarValue entry;
				-- "sa_otteress":
					now sa_otteress is TruthVarValue entry;
				-- "sa_redvixen":
					now sa_redvixen is TruthVarValue entry;
				-- "sa_wusky":
					now sa_wusky is TruthVarValue entry;
				-- "saberKittyBountyState":
					now saberKittyBountyState is TruthVarValue entry;
				-- "samformtalk":
					now samformtalk is TruthVarValue entry;
				-- "sangenreg":
					now sangenreg is TruthVarValue entry;
				-- "SarahTehuantl":
					now SarahTehuantl is TruthVarValue entry;
				-- "sblzephyr":
					now sblzephyr is TruthVarValue entry;
				-- "SerenityVore":
					now SerenityVore is TruthVarValue entry;
				-- "sidneyanal":
					now sidneyanal is TruthVarValue entry;
				-- "sidneyformtalk":
					now sidneyformtalk is TruthVarValue entry;
				-- "sidneytalk1":
					now sidneytalk1 is TruthVarValue entry;
				-- "sidneytalk2":
					now sidneytalk2 is TruthVarValue entry;
				-- "sidneytalk3":
					now sidneytalk3 is TruthVarValue entry;
				-- "sidneytalk4":
					now sidneytalk4 is TruthVarValue entry;
				-- "sierramale":
					now sierramale is TruthVarValue entry;
				-- "sierrapure":
					now sierrapure is TruthVarValue entry;
				-- "skipcockchange":
					now skipcockchange is TruthVarValue entry;
				-- "skipretaliate":
					now skipretaliate is TruthVarValue entry;
				-- "spidergirlBountyState":
					now spidergirlBountyState is TruthVarValue entry;
				-- "ssbpg":
					now ssbpg is TruthVarValue entry;
				-- "ssgbii":
					now ssgbii is TruthVarValue entry;
				-- "ssgpd":
					now ssgpd is TruthVarValue entry;
				-- "sshh":
					now sshh is TruthVarValue entry;
				-- "ssmb":
					now ssmb is TruthVarValue entry;
				-- "ssos":
					now ssos is TruthVarValue entry;
				-- "ssxpa":
					now ssxpa is TruthVarValue entry;
				-- "stellapsurv":
					now stellapsurv is TruthVarValue entry;
				-- "sugarglidernote":
					now sugarglidernote is TruthVarValue entry;
				-- "sugferretjoke":
					now sugferretjoke is TruthVarValue entry;
				-- "Susanoversize":
					now Susanoversize is TruthVarValue entry;
				-- "SvenStory1":
					now SvenStory1 is TruthVarValue entry;
				-- "Terminatorsleep":
					now Terminatorsleep is TruthVarValue entry;
				-- "TerminatorSleepActivated":
					now TerminatorSleepActivated is TruthVarValue entry;
				-- "thmpregdetect":
					now thmpregdetect is TruthVarValue entry;
				-- "TomeEventPending":
					now TomeEventPending is TruthVarValue entry;
				-- "toystoreoverride":
					now toystoreoverride is TruthVarValue entry;
				-- "toystoreseen":
					now toystoreseen is TruthVarValue entry;
				-- "ts_warrior":
					now ts_warrior is TruthVarValue entry;
				-- "tsw_victory":
					now tsw_victory is TruthVarValue entry;
				-- "twistedPimpBountyState":
					now twistedPimpBountyState is TruthVarValue entry;
				-- "twistfsdfeedmemory":
					now twistfsdfeedmemory is TruthVarValue entry;
				-- "TyrTraining":
					now TyrTraining is TruthVarValue entry;
				-- "utahmet":
					now utahmet is TruthVarValue entry;
				-- "vampiric":
					now vampiric is TruthVarValue entry;
				-- "vgeckoboost":
					now vgeckoboost is TruthVarValue entry;
				-- "vorespecial1":
					now vorespecial1 is TruthVarValue entry;
				-- "weakwilled":
					now weakwilled is TruthVarValue entry;
				-- "WerewolfWatching":
					now WerewolfWatching is TruthVarValue entry;
				-- "wrdinoskel":
					now wrdinoskel is TruthVarValue entry;
				-- "wrwolfseen":
					now wrwolfseen is TruthVarValue entry;
				-- "yolandakeyfob":
					now yolandakeyfob is TruthVarValue entry;
				-- "yolandaqytat":
					now yolandaqytat is TruthVarValue entry;
				-- "yolandatreasure":
					now yolandatreasure is TruthVarValue entry;
				-- "zigorcycle":
					now zigorcycle is TruthVarValue entry;
				-- "zigorhadiyaquest":
					now zigorhadiyaquest is TruthVarValue entry;
				-- "zpc_inzone":
					now zpc_inzone is TruthVarValue entry;
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
			choose row x in the Table of GameIndexedTexts;
			[
			if debug is at level 10:
				say "Restoring IndexedText [IndexedTextVarName entry].";
			]
			if IndexedTextVarName entry is:
				-- "bcupsize":
					now bcupsize is IndexedTextVarValue entry;
				-- "bmagic":
					now bmagic is IndexedTextVarValue entry;
				-- "cupsize":
					now cupsize is IndexedTextVarValue entry;
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
			choose row x in the Table of GameTextLists;
			let TextListName be TextListVarName entry;
			if TextListName is:
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
				say "DEBUG -> [x]: Added '[TextListVarValue entry]' to TextList [TextListName].";
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
		repeat with x running from 1 to the number of filled rows in the Table of GameNumberLists:
			choose row x in the Table of GameNumberLists;
			let NumberListName be NumberListVarName entry;
			if NumberListName is:
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
			[
			if debug is at level 10:
				say "DEBUG -> [x]: Added '[NumberListVarValue entry]' to NumberList [NumberListName].";
			]
	else:
		say "No NumberList Save File Found!";

Story Skipper Loose Variables ends here.
