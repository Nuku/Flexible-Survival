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
	repeat with x running from 1 to the number of filled rows in the Table of GameVariableIDs:
		choose row x in the Table of GameVariableIDs;
		now CurrentVariableName is Name Entry;
		if debugactive is 1:
			say "Stashing variable [CurrentVariableName].";
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
	write File of NumberSave from the Table of GameNumbers; [freshly made table gets saved to file]
	write File of TruthSave from the Table of GameTruths; [freshly made table gets saved to file]
	write File of IndexedTextSave from the Table of GameIndexedTexts; [freshly made table gets saved to file]
	write File of TextListSave from the Table of GameTextLists; [freshly made table gets saved to file]
	write File of NumberListSave from the Table of GameNumberLists; [freshly made table gets saved to file]

to TextVariableSave:
	choose blank row in Table of GameTexts;
	now TextVarName entry is CurrentVariableName;
	if CurrentVariableName is:
		-- "battleground":
			now TextVarValue entry is battleground;
		-- "bcfinalchairform":
			now TextVarValue entry is bcfinalchairform;
		-- "bcfinalpillarform":
			now TextVarValue entry is bcfinalpillarform;
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
		-- "ButterflyBabyBodyName":
			now TextVarValue entry is ButterflyBabyBodyName;
		-- "ButterflyBabyCockName":
			now TextVarValue entry is ButterflyBabyCockName;
		-- "ButterflyBabyFaceName":
			now TextVarValue entry is ButterflyBabyFaceName;
		-- "ButterflyBabySkinName":
			now TextVarValue entry is ButterflyBabySkinName;
		-- "ButterflyBabyTailName":
			now TextVarValue entry is ButterflyBabyTailName;
		-- "ButterflyBreastDesc":
			now TextVarValue entry is ButterflyBreastDesc;
		-- "ButterflyTummy":
			now TextVarValue entry is ButterflyTummy;
		-- "cockdata":
			now TextVarValue entry is cockdata;
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
		-- "headdata":
			now TextVarValue entry is headdata;
		-- "HighestPlayerStat":
			now TextVarValue entry is HighestPlayerStat;
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
		-- "larmdata":
			now TextVarValue entry is larmdata;
		-- "llegdata":
			now TextVarValue entry is llegdata;
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
		-- "rarmdata":
			now TextVarValue entry is rarmdata;
		-- "ridemessage":
			now TextVarValue entry is ridemessage;
		-- "rlegdata":
			now TextVarValue entry is rlegdata;
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
		-- "tempGorillaName1":
			now TextVarValue entry is tempGorillaName1;
		-- "tempGorillaName2":
			now TextVarValue entry is tempGorillaName2;
		-- "torsodata":
			now TextVarValue entry is torsodata;
		-- "ubpreg":
			now TextVarValue entry is ubpreg;
		-- "VikingKidShape":
			now TextVarValue entry is VikingKidShape;
		-- "weaselcolor":
			now TextVarValue entry is weaselcolor;
		-- "wolvloc":
			now TextVarValue entry is wolvloc;
		-- "wrbody":
			now TextVarValue entry is wrbody;
		-- "wrbodydesc":
			now TextVarValue entry is wrbodydesc;
		-- "wrbodyname":
			now TextVarValue entry is wrbodyname;
		-- "wrbodytype":
			now TextVarValue entry is wrbodytype;
		-- "wrcock":
			now TextVarValue entry is wrcock;
		-- "wrcockname":
			now TextVarValue entry is wrcockname;
		-- "wrface":
			now TextVarValue entry is wrface;
		-- "wrfacename":
			now TextVarValue entry is wrfacename;
		-- "wrskin":
			now TextVarValue entry is wrskin;
		-- "wrskinname":
			now TextVarValue entry is wrskinname;
		-- "wrtail":
			now TextVarValue entry is wrtail;
		-- "wrtailname":
			now TextVarValue entry is wrtailname;

to NumberVariableSave:
	choose blank row in Table of GameNumbers;
	now NumberVarName entry is CurrentVariableName;
	if CurrentVariableName is:
		-- "AbandonedRoomStatus":
			now NumberVarValue entry is AbandonedRoomStatus;
		-- "absorb":
			now NumberVarValue entry is absorb;
		-- "acquaintedWithHanu":
			now NumberVarValue entry is acquaintedWithHanu;
		-- "acquaintedWithWukong":
			now NumberVarValue entry is acquaintedWithWukong;
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
		-- "artleopardfight":
			now NumberVarValue entry is artleopardfight;
		-- "AtticusCounter":
			now NumberVarValue entry is AtticusCounter;
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
		-- "Azari_Corruption":
			now NumberVarValue entry is Azari_Corruption;
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
		-- "bcending":
			now NumberVarValue entry is bcending;
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
		-- "breastdata":
			now NumberVarValue entry is breastdata;
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
		-- "campuswanderfight":
			now NumberVarValue entry is campuswanderfight;
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
		-- "CarlShower":
			now NumberVarValue entry is CarlShower;
		-- "CassandraFucked":
			now NumberVarValue entry is CassandraFucked;
		-- "catadiff":
			now NumberVarValue entry is catadiff;
		-- "catafire":
			now NumberVarValue entry is catafire;
		-- "catdogstate":
			now NumberVarValue entry is catdogstate;
		-- "CatgirlFucked":
			now NumberVarValue entry is CatgirlFucked;
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
		-- "cerbfight":
			now NumberVarValue entry is cerbfight;
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
		-- "choclabfight":
			now NumberVarValue entry is choclabfight;
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
		-- "compressedcock":
			now NumberVarValue entry is compressedcock;
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
		-- "cougarfight":
			now NumberVarValue entry is cougarfight;
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
		-- "darkdays":
			now NumberVarValue entry is darkdays;
		-- "DavidBrutusMarcVar":
			now NumberVarValue entry is DavidBrutusMarcVar;
		-- "DavidBunkerEntry":
			now NumberVarValue entry is DavidBunkerEntry;
		-- "DavidSarahInteraction":
			now NumberVarValue entry is DavidSarahInteraction;
		-- "DBCaptureQuestVar":
			now NumberVarValue entry is DBCaptureQuestVar;
		-- "deerconsent":
			now NumberVarValue entry is deerconsent;
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
		-- "DianaRelationship":
			now NumberVarValue entry is DianaRelationship;
		-- "DianaTransformationProgress":
			now NumberVarValue entry is DianaTransformationProgress;
		-- "didsubmit":
			now NumberVarValue entry is didsubmit;
		-- "DiegoBitched":
			now NumberVarValue entry is DiegoBitched;
		-- "DiegoButtSlut":
			now NumberVarValue entry is DiegoButtSlut;
		-- "DiegoChanged":
			now NumberVarValue entry is DiegoChanged;
		-- "DiegoFucked":
			now NumberVarValue entry is DiegoFucked;
		-- "Diegotalk":
			now NumberVarValue entry is Diegotalk;
		-- "DiegoTricked":
			now NumberVarValue entry is DiegoTricked;
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
		-- "dolcastlefight":
			now NumberVarValue entry is dolcastlefight;
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
		-- "dolphinflatablefight":
			now NumberVarValue entry is dolphinflatablefight;
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
		-- "EweFucked":
			now NumberVarValue entry is EweFucked;
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
		-- "FeralWolfdefeat":
			now NumberVarValue entry is FeralWolfdefeat;
		-- "FeralWolfSpecialFightNumber":
			now NumberVarValue entry is FeralWolfSpecialFightNumber;
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
		-- "fightstatus":
			now NumberVarValue entry is fightstatus;
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
		-- "FionaCarlStatus":
			now NumberVarValue entry is FionaCarlStatus;
		-- "FionaFangStatus":
			now NumberVarValue entry is FionaFangStatus;
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
		-- "Freefeats":
			now NumberVarValue entry is Freefeats;
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
		-- "glshiftstart":
			now NumberVarValue entry is glshiftstart;
		-- "glstart":
			now NumberVarValue entry is glstart;
		-- "gobgender":
			now NumberVarValue entry is gobgender;
		-- "goblinfight":
			now NumberVarValue entry is goblinfight;
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
		-- "gotsword":
			now NumberVarValue entry is gotsword;
		-- "gotwhip":
			now NumberVarValue entry is gotwhip;
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
		-- "GryphPlotTracking":
			now NumberVarValue entry is GryphPlotTracking;
		-- "gsd_encounters":
			now NumberVarValue entry is gsd_encounters;
		-- "gsd_pet":
			now NumberVarValue entry is gsd_pet;
		-- "gsd_var":
			now NumberVarValue entry is gsd_var;
		-- "gsexit":
			now NumberVarValue entry is gsexit;
		-- "gsgl":
			now NumberVarValue entry is gsgl;
		-- "gsgt":
			now NumberVarValue entry is gsgt;
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
		-- "gsms":
			now NumberVarValue entry is gsms;
		-- "gspg":
			now NumberVarValue entry is gspg;
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
		-- "harpyfight":
			now NumberVarValue entry is harpyfight;
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
		-- "HG_Stage":
			now NumberVarValue entry is HG_Stage;
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
		-- "horsefight":
			now NumberVarValue entry is horsefight;
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
		-- "KoballoonSexBadEnd":
			now NumberVarValue entry is KoballoonSexBadEnd;
		-- "koboldgangmet":
			now NumberVarValue entry is koboldgangmet;
		-- "koboldgangsubs":
			now NumberVarValue entry is koboldgangsubs;
		-- "Koghhstatus":
			now NumberVarValue entry is Koghhstatus;
		-- "KorvinSubmitCounter":
			now NumberVarValue entry is KorvinSubmitCounter;
		-- "kpstatus":
			now NumberVarValue entry is kpstatus;
		-- "KTO":
			now NumberVarValue entry is KTO;
		-- "KTP":
			now NumberVarValue entry is KTP;
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
		-- "lastCarlSarahInteraction":
			now NumberVarValue entry is lastCarlSarahInteraction;
		-- "LastCatgirlFuck":
			now NumberVarValue entry is LastCatgirlFuck;
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
		-- "LastDiegoTricked":
			now NumberVarValue entry is LastDiegoTricked;
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
		-- "lbfight":
			now NumberVarValue entry is lbfight;
		-- "LectureCheck":
			now NumberVarValue entry is LectureCheck;
		-- "Leonardtimer":
			now NumberVarValue entry is Leonardtimer;
		-- "leosupplies":
			now NumberVarValue entry is leosupplies;
		-- "lessontime":
			now NumberVarValue entry is lessontime;
		-- "Levelwindow":
			now NumberVarValue entry is Levelwindow;
		-- "lgnumber":
			now NumberVarValue entry is lgnumber;
		-- "libfight":
			now NumberVarValue entry is libfight;
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
		-- "looknow":
			now NumberVarValue entry is looknow;
		-- "Lost":
			now NumberVarValue entry is Lost;
		-- "losttoalphahusky":
			now NumberVarValue entry is losttoalphahusky;
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
		-- "minilabfight":
			now NumberVarValue entry is minilabfight;
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
		-- "monhitbonus":
			now NumberVarValue entry is monhitbonus;
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
		-- "mqfightresult":
			now NumberVarValue entry is mqfightresult;
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
		-- "NewGraphicsInteger":
			now NumberVarValue entry is NewGraphicsInteger;
		-- "NewGraphicsRatio":
			now NumberVarValue entry is NewGraphicsRatio;
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
		-- "OgreMeetings":
			now NumberVarValue entry is OgreMeetings;
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
		-- "OrcSpecialFightNumber":
			now NumberVarValue entry is OrcSpecialFightNumber;
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
		-- "peachtreefight":
			now NumberVarValue entry is peachtreefight;
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
		-- "prankevent":
			now NumberVarValue entry is prankevent;
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
		-- "RamFucked":
			now NumberVarValue entry is RamFucked;
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
		-- "Resevquest":
			now NumberVarValue entry is Resevquest;
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
		-- "rondafight":
			now NumberVarValue entry is rondafight;
		-- "rondahosp":
			now NumberVarValue entry is rondahosp;
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
		-- "ScottyRelationship":
			now NumberVarValue entry is ScottyRelationship;
		-- "scufflecount":
			now NumberVarValue entry is scufflecount;
		-- "sdbook":
			now NumberVarValue entry is sdbook;
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
		-- "ShadowBeastEventState":
			now NumberVarValue entry is ShadowBeastEventState;
		-- "shadowy":
			now NumberVarValue entry is shadowy;
		-- "SharkFountainCounter":
			now NumberVarValue entry is SharkFountainCounter;
		-- "shiftable":
			now NumberVarValue entry is shiftable;
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
		-- "skipturnblocker":
			now NumberVarValue entry is skipturnblocker;
		-- "skrp":
			now NumberVarValue entry is skrp;
		-- "Skunk_type":
			now NumberVarValue entry is Skunk_type;
		-- "skunkbeaststatus":
			now NumberVarValue entry is skunkbeaststatus;
		-- "skunkfight":
			now NumberVarValue entry is skunkfight;
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
		-- "snowbatfight":
			now NumberVarValue entry is snowbatfight;
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
		-- "spiritlove":
			now NumberVarValue entry is spiritlove;
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
		-- "stripbarcounter":
			now NumberVarValue entry is stripbarcounter;
		-- "strongbacked":
			now NumberVarValue entry is strongbacked;
		-- "struggleatt":
			now NumberVarValue entry is struggleatt;
		-- "sugarferretfight":
			now NumberVarValue entry is sugarferretfight;
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
		-- "TehuantlTimer":
			now NumberVarValue entry is TehuantlTimer;
		-- "TempClearBypass":
			now NumberVarValue entry is TempClearBypass;
		-- "tempGorillaGender":
			now NumberVarValue entry is tempGorillaGender;
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
		-- "veggiegardenfight":
			now NumberVarValue entry is veggiegardenfight;
		-- "VentDomSize":
			now NumberVarValue entry is VentDomSize;
		-- "VentFluidAmount":
			now NumberVarValue entry is VentFluidAmount;
		-- "VentFoxContentLevel":
			now NumberVarValue entry is VentFoxContentLevel;
		-- "VentFoxEncounterCount":
			now NumberVarValue entry is VentFoxEncounterCount;
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
		-- "Vinetrapped":
			now NumberVarValue entry is Vinetrapped;
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
		-- "waterworks":
			now NumberVarValue entry is waterworks;
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
		-- "wolffight":
			now NumberVarValue entry is wolffight;
		-- "wolfhermdefeat":
			now NumberVarValue entry is wolfhermdefeat;
		-- "wolfhermvictory":
			now NumberVarValue entry is wolfhermvictory;
		-- "WolfHorseMallCouple":
			now NumberVarValue entry is WolfHorseMallCouple;
		-- "wolvfightresult":
			now NumberVarValue entry is wolvfightresult;
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
		-- "Azari_Met":
			now TruthVarValue entry is Azari_Met;
		-- "BastetSexOrTalk":
			now TruthVarValue entry is BastetSexOrTalk;
		-- "bcduofightfled":
			now TruthVarValue entry is bcduofightfled;
		-- "bcduofightlost":
			now TruthVarValue entry is bcduofightlost;
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
		-- "blanchefight":
			now TruthVarValue entry is blanchefight;
		-- "blanchetalk1":
			now TruthVarValue entry is blanchetalk1;
		-- "blanchetalk2":
			now TruthVarValue entry is blanchetalk2;
		-- "blanchetalk3":
			now TruthVarValue entry is blanchetalk3;
		-- "blindmode":
			now TruthVarValue entry is blindmode;
		-- "bloblost":
			now TruthVarValue entry is bloblost;
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
		-- "graphics":
			now TruthVarValue entry is graphics;
		-- "grhouse":
			now TruthVarValue entry is grhouse;
		-- "gsbm":
			now TruthVarValue entry is gsbm;
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
		-- "gshep_scarscene":
			now TruthVarValue entry is gshep_scarscene;
		-- "gshm":
			now TruthVarValue entry is gshm;
		-- "gsnhm":
			now TruthVarValue entry is gsnhm;
		-- "HadGusBackgroundTalk":
			now TruthVarValue entry is HadGusBackgroundTalk;
		-- "hadiyahyg":
			now TruthVarValue entry is hadiyahyg;
		-- "Hardmode":
			now TruthVarValue entry is Hardmode;
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
		-- "hydraheadcheck1":
			now TruthVarValue entry is hydraheadcheck1;
		-- "hydraheadcheck2":
			now TruthVarValue entry is hydraheadcheck2;
		-- "hydraheadcheck3":
			now TruthVarValue entry is hydraheadcheck3;
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
		-- "internalbypass":
			now TruthVarValue entry is internalbypass;
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
		-- "micaelastory1":
			now TruthVarValue entry is micaelastory1;
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
		-- "NewGraphics":
			now TruthVarValue entry is NewGraphics;
		-- "NewGraphicsDebugMode":
			now TruthVarValue entry is NewGraphicsDebugMode;
		-- "NewGraphicsOpened":
			now TruthVarValue entry is NewGraphicsOpened;
		-- "nmformswitch":
			now TruthVarValue entry is nmformswitch;
		-- "nohealmode":
			now TruthVarValue entry is nohealmode;
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
		-- "playercanub":
			now TruthVarValue entry is playercanub;
		-- "playercanvore":
			now TruthVarValue entry is playercanvore;
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
		-- "showlocale":
			now TruthVarValue entry is showlocale;
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
		-- "TentacleRead":
			now TruthVarValue entry is TentacleRead;
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
		-- "violinspritefight":
			now TruthVarValue entry is violinspritefight;
		-- "voreloss":
			now TruthVarValue entry is voreloss;
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
		-- "wrknifefight":
			now TruthVarValue entry is wrknifefight;
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
		-- "lbcomplist":
			if the number of entries in lbcomplist is not 0:
				repeat with y running from 1 to the number of entries in lbcomplist:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of lbcomplist;
		-- "ndmlist":
			if the number of entries in ndmlist is not 0:
				repeat with y running from 1 to the number of entries in ndmlist:
					choose a blank row in the table of GameTextLists;
					now TextListVarName entry is CurrentVariableName;
					now TextListVarValue entry is entry y of ndmlist;

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
					now NumberListVarValue entry is entry y of leodenlist;
		-- "leoparklist":
			if the number of entries in leoparklist is not 0:
				repeat with y running from 1 to the number of entries in leoparklist:
					choose a blank row in the table of GameNumberLists;
					now NumberListVarName entry is CurrentVariableName;
					now NumberListVarValue entry is entry y of leoparklist;
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
					now NumberListVarValue entry is entry y of pfpclist;
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
			choose row x in the Table of GameTexts;
			if debugactive is 1:
				say "Restoring text [TextVarName entry].";
			if TextVarName entry is:
				-- "battleground":
					now battleground is TextVarValue entry;
				-- "bcfinalchairform":
					now bcfinalchairform is TextVarValue entry;
				-- "bcfinalpillarform":
					now bcfinalpillarform is TextVarValue entry;
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
				-- "ButterflyBabyBodyName":
					now ButterflyBabyBodyName is TextVarValue entry;
				-- "ButterflyBabyCockName":
					now ButterflyBabyCockName is TextVarValue entry;
				-- "ButterflyBabyFaceName":
					now ButterflyBabyFaceName is TextVarValue entry;
				-- "ButterflyBabySkinName":
					now ButterflyBabySkinName is TextVarValue entry;
				-- "ButterflyBabyTailName":
					now ButterflyBabyTailName is TextVarValue entry;
				-- "ButterflyBreastDesc":
					now ButterflyBreastDesc is TextVarValue entry;
				-- "ButterflyTummy":
					now ButterflyTummy is TextVarValue entry;
				-- "cockdata":
					now cockdata is TextVarValue entry;
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
				-- "headdata":
					now headdata is TextVarValue entry;
				-- "HighestPlayerStat":
					now HighestPlayerStat is TextVarValue entry;
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
				-- "larmdata":
					now larmdata is TextVarValue entry;
				-- "llegdata":
					now llegdata is TextVarValue entry;
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
				-- "rarmdata":
					now rarmdata is TextVarValue entry;
				-- "ridemessage":
					now ridemessage is TextVarValue entry;
				-- "rlegdata":
					now rlegdata is TextVarValue entry;
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
				-- "tempGorillaName1":
					now tempGorillaName1 is TextVarValue entry;
				-- "tempGorillaName2":
					now tempGorillaName2 is TextVarValue entry;
				-- "torsodata":
					now torsodata is TextVarValue entry;
				-- "ubpreg":
					now ubpreg is TextVarValue entry;
				-- "VikingKidShape":
					now VikingKidShape is TextVarValue entry;
				-- "weaselcolor":
					now weaselcolor is TextVarValue entry;
				-- "wolvloc":
					now wolvloc is TextVarValue entry;
				-- "wrbody":
					now wrbody is TextVarValue entry;
				-- "wrbodydesc":
					now wrbodydesc is TextVarValue entry;
				-- "wrbodyname":
					now wrbodyname is TextVarValue entry;
				-- "wrbodytype":
					now wrbodytype is TextVarValue entry;
				-- "wrcock":
					now wrcock is TextVarValue entry;
				-- "wrcockname":
					now wrcockname is TextVarValue entry;
				-- "wrface":
					now wrface is TextVarValue entry;
				-- "wrfacename":
					now wrfacename is TextVarValue entry;
				-- "wrskin":
					now wrskin is TextVarValue entry;
				-- "wrskinname":
					now wrskinname is TextVarValue entry;
				-- "wrtail":
					now wrtail is TextVarValue entry;
				-- "wrtailname":
					now wrtailname is TextVarValue entry;
			if debugactive is 1:
				say "DEBUG -> VarName '[TextVarName entry]' restored to '[TextVarValue entry]'.";
	else:
		say "No Text Save File Found!";

to VariableNumberLoad:
	if the File of NumberSave exists:
		say "Restoring Numbers...";
		read File of NumberSave into the Table of GameNumbers;
		repeat with x running from 1 to the number of filled rows in the Table of GameNumbers:
			choose row x in the Table of GameNumbers;
			if debugactive is 1:
				say "Restoring Number [NumberVarName entry].";
			if NumberVarName entry is:
				-- "AbandonedRoomStatus":
					now AbandonedRoomStatus is numberVarValue entry;
				-- "absorb":
					now absorb is numberVarValue entry;
				-- "acquaintedWithHanu":
					now acquaintedWithHanu is numberVarValue entry;
				-- "acquaintedWithWukong":
					now acquaintedWithWukong is numberVarValue entry;
				-- "addedlibido":
					now addedlibido is numberVarValue entry;
				-- "afsmread":
					now afsmread is numberVarValue entry;
				-- "aidKenaz":
					now aidKenaz is numberVarValue entry;
				-- "AlanaRelationship":
					now AlanaRelationship is numberVarValue entry;
				-- "AlexandraAmySex":
					now AlexandraAmySex is numberVarValue entry;
				-- "AlexandraBackstory":
					now AlexandraBackstory is numberVarValue entry;
				-- "AlexandraBrutusInteraction":
					now AlexandraBrutusInteraction is numberVarValue entry;
				-- "AlexandraBrutusPups":
					now AlexandraBrutusPups is numberVarValue entry;
				-- "AlexandraCarlInteraction":
					now AlexandraCarlInteraction is numberVarValue entry;
				-- "AlexandraCarlPups":
					now AlexandraCarlPups is numberVarValue entry;
				-- "AlexandraCreampieCount":
					now AlexandraCreampieCount is numberVarValue entry;
				-- "AlexandraEricInteraction":
					now AlexandraEricInteraction is numberVarValue entry;
				-- "AlexandraFangPups":
					now AlexandraFangPups is numberVarValue entry;
				-- "AlexandraGrowingPups":
					now AlexandraGrowingPups is numberVarValue entry;
				-- "AlexandraKorvinInteraction":
					now AlexandraKorvinInteraction is numberVarValue entry;
				-- "AlexandraKorvinPups":
					now AlexandraKorvinPups is numberVarValue entry;
				-- "AlexandraPlayerPups":
					now AlexandraPlayerPups is numberVarValue entry;
				-- "AlexandraPregCount":
					now AlexandraPregCount is numberVarValue entry;
				-- "AlexandraPupDaddy":
					now AlexandraPupDaddy is numberVarValue entry;
				-- "AlexandraSarahInteraction":
					now AlexandraSarahInteraction is numberVarValue entry;
				-- "alexbrunch":
					now alexbrunch is numberVarValue entry;
				-- "alexdiego":
					now alexdiego is numberVarValue entry;
				-- "alexleeinfo":
					now alexleeinfo is numberVarValue entry;
				-- "AlexProgress":
					now AlexProgress is numberVarValue entry;
				-- "AlexTalk":
					now AlexTalk is numberVarValue entry;
				-- "Alpha Wolfdefeat":
					now Alpha Wolfdefeat is numberVarValue entry;
				-- "Alphahuskypet":
					now Alphahuskypet is numberVarValue entry;
				-- "alphawolfbeaten":
					now alphawolfbeaten is numberVarValue entry;
				-- "altattackmade":
					now altattackmade is numberVarValue entry;
				-- "AmirRelationship":
					now AmirRelationship is numberVarValue entry;
				-- "AmmyAffection":
					now AmmyAffection is numberVarValue entry;
				-- "AmmyLastEvent":
					now AmmyLastEvent is numberVarValue entry;
				-- "AmuranAwoken":
					now AmuranAwoken is numberVarValue entry;
				-- "AmyMaturityCounter":
					now AmyMaturityCounter is numberVarValue entry;
				-- "AmyNewPuppies":
					now AmyNewPuppies is numberVarValue entry;
				-- "AmyShyness":
					now AmyShyness is numberVarValue entry;
				-- "anallevel":
					now anallevel is numberVarValue entry;
				-- "AnatomyCourse":
					now AnatomyCourse is numberVarValue entry;
				-- "AngieAroused":
					now AngieAroused is numberVarValue entry;
				-- "AngieHappy":
					now AngieHappy is numberVarValue entry;
				-- "AngieTalk":
					now AngieTalk is numberVarValue entry;
				-- "AngryHorguth":
					now AngryHorguth is numberVarValue entry;
				-- "anubisrequest":
					now anubisrequest is numberVarValue entry;
				-- "AptAid":
					now AptAid is numberVarValue entry;
				-- "ArcherFucked":
					now ArcherFucked is numberVarValue entry;
				-- "ArenaBattleCounter":
					now ArenaBattleCounter is numberVarValue entry;
				-- "AresDannyEncounters":
					now AresDannyEncounters is numberVarValue entry;
				-- "artattempt":
					now artattempt is numberVarValue entry;
				-- "artleopardfight":
					now artleopardfight is numberVarValue entry;
				-- "AtticusCounter":
					now AtticusCounter is numberVarValue entry;
				-- "auto2entry":
					now auto2entry is numberVarValue entry;
				-- "autoattackmode":
					now autoattackmode is numberVarValue entry;
				-- "autogender":
					now autogender is numberVarValue entry;
				-- "automaticcombatcheck":
					now automaticcombatcheck is numberVarValue entry;
				-- "automatonending":
					now automatonending is numberVarValue entry;
				-- "avoidance":
					now avoidance is numberVarValue entry;
				-- "Awesome_boredom":
					now Awesome_boredom is numberVarValue entry;
				-- "Awesome_counter":
					now Awesome_counter is numberVarValue entry;
				-- "Awesome_forcesex":
					now Awesome_forcesex is numberVarValue entry;
				-- "Awesome_noreward":
					now Awesome_noreward is numberVarValue entry;
				-- "Awesome_sex":
					now Awesome_sex is numberVarValue entry;
				-- "AxelLastBJ":
					now AxelLastBJ is numberVarValue entry;
				-- "AxelRelationship":
					now AxelRelationship is numberVarValue entry;
				-- "Azari_Corruption":
					now Azari_Corruption is numberVarValue entry;
				-- "AzraelRelationship":
					now AzraelRelationship is numberVarValue entry;
				-- "balloversize":
					now balloversize is numberVarValue entry;
				-- "bananapeeled":
					now bananapeeled is numberVarValue entry;
				-- "bargainbinusagetotal":
					now bargainbinusagetotal is numberVarValue entry;
				-- "BarnabasRelationship":
					now BarnabasRelationship is numberVarValue entry;
				-- "BarryFurSuspicion":
					now BarryFurSuspicion is numberVarValue entry;
				-- "BarryMotive":
					now BarryMotive is numberVarValue entry;
				-- "BastetApproval":
					now BastetApproval is numberVarValue entry;
				-- "BastetSexBattleCount":
					now BastetSexBattleCount is numberVarValue entry;
				-- "battleitem":
					now battleitem is numberVarValue entry;
				-- "bcending":
					now bcending is numberVarValue entry;
				-- "bclatearrival":
					now bclatearrival is numberVarValue entry;
				-- "bcuntethered":
					now bcuntethered is numberVarValue entry;
				-- "beatgrnymph":
					now beatgrnymph is numberVarValue entry;
				-- "beatsatyr":
					now beatsatyr is numberVarValue entry;
				-- "beatSatyress":
					now beatSatyress is numberVarValue entry;
				-- "BeforeCombat":
					now BeforeCombat is numberVarValue entry;
				-- "BehaviorandCustoms":
					now BehaviorandCustoms is numberVarValue entry;
				-- "Bevkitty":
					now Bevkitty is numberVarValue entry;
				-- "Bevtalk":
					now Bevtalk is numberVarValue entry;
				-- "bikedest":
					now bikedest is numberVarValue entry;
				-- "BjornRelationship":
					now BjornRelationship is numberVarValue entry;
				-- "BlissDrugTrip":
					now BlissDrugTrip is numberVarValue entry;
				-- "blotintense":
					now blotintense is numberVarValue entry;
				-- "bluechaffrape":
					now bluechaffrape is numberVarValue entry;
				-- "boatfound":
					now boatfound is numberVarValue entry;
				-- "BodyRelationship":
					now BodyRelationship is numberVarValue entry;
				-- "BoghrimHuntingTrip":
					now BoghrimHuntingTrip is numberVarValue entry;
				-- "BoghrimMet":
					now BoghrimMet is numberVarValue entry;
				-- "bonelust":
					now bonelust is numberVarValue entry;
				-- "bonusattack":
					now bonusattack is numberVarValue entry;
				-- "bookfound":
					now bookfound is numberVarValue entry;
				-- "boosterfeats":
					now boosterfeats is numberVarValue entry;
				-- "bopdefeated":
					now bopdefeated is numberVarValue entry;
				-- "bopsongcount":
					now bopsongcount is numberVarValue entry;
				-- "borisfucked":
					now borisfucked is numberVarValue entry;
				-- "Borismate":
					now Borismate is numberVarValue entry;
				-- "Borisquest":
					now Borisquest is numberVarValue entry;
				-- "boristalk":
					now boristalk is numberVarValue entry;
				-- "boundcounter":
					now boundcounter is numberVarValue entry;
				-- "boundmod":
					now boundmod is numberVarValue entry;
				-- "boundmod2":
					now boundmod2 is numberVarValue entry;
				-- "boundsegment":
					now boundsegment is numberVarValue entry;
				-- "Bovine_type":
					now Bovine_type is numberVarValue entry;
				-- "bradfordbounty":
					now bradfordbounty is numberVarValue entry;
				-- "bradfordBountyNum":
					now bradfordBountyNum is numberVarValue entry;
				-- "bradfordstory":
					now bradfordstory is numberVarValue entry;
				-- "breastdata":
					now breastdata is numberVarValue entry;
				-- "BrennanRelationship":
					now BrennanRelationship is numberVarValue entry;
				-- "BrianOral":
					now BrianOral is numberVarValue entry;
				-- "BrianRelationship":
					now BrianRelationship is numberVarValue entry;
				-- "BrianVisit":
					now BrianVisit is numberVarValue entry;
				-- "BridgetPowellEventVar":
					now BridgetPowellEventVar is numberVarValue entry;
				-- "brookeanal":
					now brookeanal is numberVarValue entry;
				-- "BrutusAmySex":
					now BrutusAmySex is numberVarValue entry;
				-- "BrutusEscalationTimer":
					now BrutusEscalationTimer is numberVarValue entry;
				-- "BryceFucked":
					now BryceFucked is numberVarValue entry;
				-- "BryonyBearFuckWatched":
					now BryonyBearFuckWatched is numberVarValue entry;
				-- "bsextimer":
					now bsextimer is numberVarValue entry;
				-- "BullMaster":
					now BullMaster is numberVarValue entry;
				-- "BullTerrierSiblingsVar":
					now BullTerrierSiblingsVar is numberVarValue entry;
				-- "bunnyjocknosex":
					now bunnyjocknosex is numberVarValue entry;
				-- "ButterflyBabyGestation":
					now ButterflyBabyGestation is numberVarValue entry;
				-- "ButterflyEncounters":
					now ButterflyEncounters is numberVarValue entry;
				-- "ButterflyRaped":
					now ButterflyRaped is numberVarValue entry;
				-- "ByronRelationship":
					now ByronRelationship is numberVarValue entry;
				-- "CampBravoWomenAllowed":
					now CampBravoWomenAllowed is numberVarValue entry;
				-- "CampusCoupleRelationship":
					now CampusCoupleRelationship is numberVarValue entry;
				-- "CampusLoversProgressTurn":
					now CampusLoversProgressTurn is numberVarValue entry;
				-- "CampusLoversTrackingVariable":
					now CampusLoversTrackingVariable is numberVarValue entry;
				-- "campuswanderfight":
					now campuswanderfight is numberVarValue entry;
				-- "candytalk":
					now candytalk is numberVarValue entry;
				-- "CandyUrikInteraction":
					now CandyUrikInteraction is numberVarValue entry;
				-- "CaneFurSuspicion":
					now CaneFurSuspicion is numberVarValue entry;
				-- "CaneMotive":
					now CaneMotive is numberVarValue entry;
				-- "cannonprep":
					now cannonprep is numberVarValue entry;
				-- "CaptiveBreederEncounter":
					now CaptiveBreederEncounter is numberVarValue entry;
				-- "CarlAmySex":
					now CarlAmySex is numberVarValue entry;
				-- "CarlEricaInteraction":
					now CarlEricaInteraction is numberVarValue entry;
				-- "CarlEricInteraction":
					now CarlEricInteraction is numberVarValue entry;
				-- "CarlLibraryEntry":
					now CarlLibraryEntry is numberVarValue entry;
				-- "CarlSarahInteraction":
					now CarlSarahInteraction is numberVarValue entry;
				-- "CarlSarahSex":
					now CarlSarahSex is numberVarValue entry;
				-- "CarlShower":
					now CarlShower is numberVarValue entry;
				-- "CassandraFucked":
					now CassandraFucked is numberVarValue entry;
				-- "catadiff":
					now catadiff is numberVarValue entry;
				-- "catafire":
					now catafire is numberVarValue entry;
				-- "catdogstate":
					now catdogstate is numberVarValue entry;
				-- "CatgirlFucked":
					now CatgirlFucked is numberVarValue entry;
				-- "catnum":
					now catnum is numberVarValue entry;
				-- "CatsVSDogsCounter":
					now CatsVSDogsCounter is numberVarValue entry;
				-- "cboyEricSarahInteraction":
					now cboyEricSarahInteraction is numberVarValue entry;
				-- "cclosscount":
					now cclosscount is numberVarValue entry;
				-- "ccmiss":
					now ccmiss is numberVarValue entry;
				-- "CellDoorStatus":
					now CellDoorStatus is numberVarValue entry;
				-- "CellFourVisits":
					now CellFourVisits is numberVarValue entry;
				-- "centaurmate":
					now centaurmate is numberVarValue entry;
				-- "CenterVisits":
					now CenterVisits is numberVarValue entry;
				-- "centrallib":
					now centrallib is numberVarValue entry;
				-- "cerberusarousal":
					now cerberusarousal is numberVarValue entry;
				-- "cerbfight":
					now cerbfight is numberVarValue entry;
				-- "cerbmaulcount":
					now cerbmaulcount is numberVarValue entry;
				-- "cfgmode":
					now cfgmode is numberVarValue entry;
				-- "charcounter":
					now charcounter is numberVarValue entry;
				-- "chargeup":
					now chargeup is numberVarValue entry;
				-- "ChaseMarking":
					now ChaseMarking is numberVarValue entry;
				-- "ChaseOffspring":
					now ChaseOffspring is numberVarValue entry;
				-- "ChasePetplay":
					now ChasePetplay is numberVarValue entry;
				-- "ChasePetplayTraining":
					now ChasePetplayTraining is numberVarValue entry;
				-- "ChaseSexCounter":
					now ChaseSexCounter is numberVarValue entry;
				-- "CheerleaderFirstEncounter":
					now CheerleaderFirstEncounter is numberVarValue entry;
				-- "Cheesecakemode":
					now Cheesecakemode is numberVarValue entry;
				-- "cheetahmate":
					now cheetahmate is numberVarValue entry;
				-- "choclabfight":
					now choclabfight is numberVarValue entry;
				-- "ChrisPlayerOffspring":
					now ChrisPlayerOffspring is numberVarValue entry;
				-- "Christyquest":
					now Christyquest is numberVarValue entry;
				-- "churchenter":
					now churchenter is numberVarValue entry;
				-- "clearnomore":
					now clearnomore is numberVarValue entry;
				-- "CliveFuck":
					now CliveFuck is numberVarValue entry;
				-- "CloudKnowledge":
					now CloudKnowledge is numberVarValue entry;
				-- "CocoRelationship":
					now CocoRelationship is numberVarValue entry;
				-- "ColleenAlpha":
					now ColleenAlpha is numberVarValue entry;
				-- "ColleenCollared":
					now ColleenCollared is numberVarValue entry;
				-- "ColleenFound":
					now ColleenFound is numberVarValue entry;
				-- "ColleenSarahInteraction":
					now ColleenSarahInteraction is numberVarValue entry;
				-- "ColleenSlut":
					now ColleenSlut is numberVarValue entry;
				-- "ColleenSpray":
					now ColleenSpray is numberVarValue entry;
				-- "ColleenTalk":
					now ColleenTalk is numberVarValue entry;
				-- "CollegeLibraryBrutusEncounter":
					now CollegeLibraryBrutusEncounter is numberVarValue entry;
				-- "CollegeLibraryRyouseiEncounter":
					now CollegeLibraryRyouseiEncounter is numberVarValue entry;
				-- "colliedefeat":
					now colliedefeat is numberVarValue entry;
				-- "combat abort":
					now combat abort is numberVarValue entry;
				-- "compressedcock":
					now compressedcock is numberVarValue entry;
				-- "ConclaveKnowledge":
					now ConclaveKnowledge is numberVarValue entry;
				-- "ConfSvenEricInteraction":
					now ConfSvenEricInteraction is numberVarValue entry;
				-- "consortinsight":
					now consortinsight is numberVarValue entry;
				-- "ContainmentBarrierEncounters":
					now ContainmentBarrierEncounters is numberVarValue entry;
				-- "coonsex":
					now coonsex is numberVarValue entry;
				-- "coonstatus":
					now coonstatus is numberVarValue entry;
				-- "CorbinKidCounter":
					now CorbinKidCounter is numberVarValue entry;
				-- "CorbinPregCounter":
					now CorbinPregCounter is numberVarValue entry;
				-- "CorbinPregnancy":
					now CorbinPregnancy is numberVarValue entry;
				-- "corrvicchange1":
					now corrvicchange1 is numberVarValue entry;
				-- "corrvicchange2":
					now corrvicchange2 is numberVarValue entry;
				-- "cougarfight":
					now cougarfight is numberVarValue entry;
				-- "CouraFriendDevelopments":
					now CouraFriendDevelopments is numberVarValue entry;
				-- "CouraVirginity":
					now CouraVirginity is numberVarValue entry;
				-- "CowBully":
					now CowBully is numberVarValue entry;
				-- "CoyoteTricks":
					now CoyoteTricks is numberVarValue entry;
				-- "CuckooWatched":
					now CuckooWatched is numberVarValue entry;
				-- "cumgirlfed":
					now cumgirlfed is numberVarValue entry;
				-- "cuntsmall":
					now cuntsmall is numberVarValue entry;
				-- "daisyimpreg":
					now daisyimpreg is numberVarValue entry;
				-- "Daisytalk":
					now Daisytalk is numberVarValue entry;
				-- "Dam":
					now Dam is numberVarValue entry;
				-- "damagein":
					now damagein is numberVarValue entry;
				-- "damageout":
					now damageout is numberVarValue entry;
				-- "DariusLostItems":
					now DariusLostItems is numberVarValue entry;
				-- "darkdays":
					now darkdays is numberVarValue entry;
				-- "DavidBrutusMarcVar":
					now DavidBrutusMarcVar is numberVarValue entry;
				-- "DavidBunkerEntry":
					now DavidBunkerEntry is numberVarValue entry;
				-- "DavidSarahInteraction":
					now DavidSarahInteraction is numberVarValue entry;
				-- "DBCaptureQuestVar":
					now DBCaptureQuestVar is numberVarValue entry;
				-- "deerconsent":
					now deerconsent is numberVarValue entry;
				-- "Delaymilcount":
					now Delaymilcount is numberVarValue entry;
				-- "demandIndex":
					now demandIndex is numberVarValue entry;
				-- "DemonBruteStatus":
					now DemonBruteStatus is numberVarValue entry;
				-- "DemonFoxInteractions":
					now DemonFoxInteractions is numberVarValue entry;
				-- "DemonFoxStatus":
					now DemonFoxStatus is numberVarValue entry;
				-- "dentedbikecount":
					now dentedbikecount is numberVarValue entry;
				-- "DianaRelationship":
					now DianaRelationship is numberVarValue entry;
				-- "DianaTransformationProgress":
					now DianaTransformationProgress is numberVarValue entry;
				-- "didsubmit":
					now didsubmit is numberVarValue entry;
				-- "DiegoBitched":
					now DiegoBitched is numberVarValue entry;
				-- "DiegoButtSlut":
					now DiegoButtSlut is numberVarValue entry;
				-- "DiegoChanged":
					now DiegoChanged is numberVarValue entry;
				-- "DiegoFucked":
					now DiegoFucked is numberVarValue entry;
				-- "Diegotalk":
					now Diegotalk is numberVarValue entry;
				-- "DiegoTricked":
					now DiegoTricked is numberVarValue entry;
				-- "dinonest":
					now dinonest is numberVarValue entry;
				-- "dnfightresult":
					now dnfightresult is numberVarValue entry;
				-- "dobielibido":
					now dobielibido is numberVarValue entry;
				-- "dobieresist":
					now dobieresist is numberVarValue entry;
				-- "DoctorMouseProgress":
					now DoctorMouseProgress is numberVarValue entry;
				-- "dogfoodcount":
					now dogfoodcount is numberVarValue entry;
				-- "doggyboned":
					now doggyboned is numberVarValue entry;
				-- "doggyness":
					now doggyness is numberVarValue entry;
				-- "dolcastlefight":
					now dolcastlefight is numberVarValue entry;
				-- "dolinfloss":
					now dolinfloss is numberVarValue entry;
				-- "dollfound":
					now dollfound is numberVarValue entry;
				-- "dolphinbundle":
					now dolphinbundle is numberVarValue entry;
				-- "dolphinconsent":
					now dolphinconsent is numberVarValue entry;
				-- "dolphindefeat":
					now dolphindefeat is numberVarValue entry;
				-- "dolphinflatablefight":
					now dolphinflatablefight is numberVarValue entry;
				-- "dolphinmode":
					now dolphinmode is numberVarValue entry;
				-- "dolphintricked":
					now dolphintricked is numberVarValue entry;
				-- "dolphinwantmate":
					now dolphinwantmate is numberVarValue entry;
				-- "donkeywomanbeaten":
					now donkeywomanbeaten is numberVarValue entry;
				-- "donkeywomanfucked":
					now donkeywomanfucked is numberVarValue entry;
				-- "DoranAutofireIntensity":
					now DoranAutofireIntensity is numberVarValue entry;
				-- "DoranBallModStatus":
					now DoranBallModStatus is numberVarValue entry;
				-- "DoranDiscussion_var1":
					now DoranDiscussion_var1 is numberVarValue entry;
				-- "DoranDiscussionExit":
					now DoranDiscussionExit is numberVarValue entry;
				-- "DoranDiscussionExit2":
					now DoranDiscussionExit2 is numberVarValue entry;
				-- "DoranDiscussionProgress":
					now DoranDiscussionProgress is numberVarValue entry;
				-- "DoranDominanceTopic":
					now DoranDominanceTopic is numberVarValue entry;
				-- "DoranFoodTimer":
					now DoranFoodTimer is numberVarValue entry;
				-- "DoranFoodType":
					now DoranFoodType is numberVarValue entry;
				-- "DoranGenderTopic":
					now DoranGenderTopic is numberVarValue entry;
				-- "DoranLastBallMod":
					now DoranLastBallMod is numberVarValue entry;
				-- "DoranLastDiscussion":
					now DoranLastDiscussion is numberVarValue entry;
				-- "DoranLastInternalMod":
					now DoranLastInternalMod is numberVarValue entry;
				-- "DoranLastTitMod":
					now DoranLastTitMod is numberVarValue entry;
				-- "DoranModificationDiscussed":
					now DoranModificationDiscussed is numberVarValue entry;
				-- "DoranNeutralRole":
					now DoranNeutralRole is numberVarValue entry;
				-- "DoranRimmingStatus":
					now DoranRimmingStatus is numberVarValue entry;
				-- "DoranRole":
					now DoranRole is numberVarValue entry;
				-- "DoranRoleIntensity":
					now DoranRoleIntensity is numberVarValue entry;
				-- "DoranRoleplayInSession":
					now DoranRoleplayInSession is numberVarValue entry;
				-- "DoranRP_var1":
					now DoranRP_var1 is numberVarValue entry;
				-- "DoranRP_var2":
					now DoranRP_var2 is numberVarValue entry;
				-- "DoranRP_var3":
					now DoranRP_var3 is numberVarValue entry;
				-- "DoranRP_var4":
					now DoranRP_var4 is numberVarValue entry;
				-- "DoranRPRevealRegard":
					now DoranRPRevealRegard is numberVarValue entry;
				-- "DoranSelfBlueballing":
					now DoranSelfBlueballing is numberVarValue entry;
				-- "DoranTitModStatus":
					now DoranTitModStatus is numberVarValue entry;
				-- "DoranVoreDischarge":
					now DoranVoreDischarge is numberVarValue entry;
				-- "DoranVoreDuration":
					now DoranVoreDuration is numberVarValue entry;
				-- "DoranVoreStatus":
					now DoranVoreStatus is numberVarValue entry;
				-- "dragonessfuck":
					now dragonessfuck is numberVarValue entry;
				-- "dragontaurcatch":
					now dragontaurcatch is numberVarValue entry;
				-- "dragontype":
					now dragontype is numberVarValue entry;
				-- "Drinkserved":
					now Drinkserved is numberVarValue entry;
				-- "dronevict":
					now dronevict is numberVarValue entry;
				-- "DVtaurcatch":
					now DVtaurcatch is numberVarValue entry;
				-- "DylanFucked":
					now DylanFucked is numberVarValue entry;
				-- "DylanSucked":
					now DylanSucked is numberVarValue entry;
				-- "eagledefeatnum":
					now eagledefeatnum is numberVarValue entry;
				-- "ebgatorcarrying":
					now ebgatorcarrying is numberVarValue entry;
				-- "ebgatord":
					now ebgatord is numberVarValue entry;
				-- "ebgatorhijack":
					now ebgatorhijack is numberVarValue entry;
				-- "ebheat_egg":
					now ebheat_egg is numberVarValue entry;
				-- "ebwhelphijack":
					now ebwhelphijack is numberVarValue entry;
				-- "ec_fullcount":
					now ec_fullcount is numberVarValue entry;
				-- "eggplanted":
					now eggplanted is numberVarValue entry;
				-- "EgyptianRiddle":
					now EgyptianRiddle is numberVarValue entry;
				-- "ElainePregnant":
					now ElainePregnant is numberVarValue entry;
				-- "Electricprodstatus":
					now Electricprodstatus is numberVarValue entry;
				-- "ElfEncounters":
					now ElfEncounters is numberVarValue entry;
				-- "ElfRimming":
					now ElfRimming is numberVarValue entry;
				-- "emap":
					now emap is numberVarValue entry;
				-- "embervicsex":
					now embervicsex is numberVarValue entry;
				-- "EnrollmentTokens":
					now EnrollmentTokens is numberVarValue entry;
				-- "eprecharge":
					now eprecharge is numberVarValue entry;
				-- "eptarget":
					now eptarget is numberVarValue entry;
				-- "equinoiddefeat":
					now equinoiddefeat is numberVarValue entry;
				-- "equinoidstatus":
					now equinoidstatus is numberVarValue entry;
				-- "EricAnalCounter":
					now EricAnalCounter is numberVarValue entry;
				-- "EricFleeingCountdown":
					now EricFleeingCountdown is numberVarValue entry;
				-- "EricOffspringCount":
					now EricOffspringCount is numberVarValue entry;
				-- "EricOrcPillMpreg":
					now EricOrcPillMpreg is numberVarValue entry;
				-- "EricPregCount":
					now EricPregCount is numberVarValue entry;
				-- "EricPregTimer":
					now EricPregTimer is numberVarValue entry;
				-- "EricSarahInteraction":
					now EricSarahInteraction is numberVarValue entry;
				-- "EricVirginityTaken":
					now EricVirginityTaken is numberVarValue entry;
				-- "erminecolor":
					now erminecolor is numberVarValue entry;
				-- "EweFucked":
					now EweFucked is numberVarValue entry;
				-- "Fancyaroused":
					now Fancyaroused is numberVarValue entry;
				-- "fancyffcount":
					now fancyffcount is numberVarValue entry;
				-- "Fancyfucked":
					now Fancyfucked is numberVarValue entry;
				-- "fancymfcount":
					now fancymfcount is numberVarValue entry;
				-- "Fancyquest":
					now Fancyquest is numberVarValue entry;
				-- "Fancytalk":
					now Fancytalk is numberVarValue entry;
				-- "fangcount":
					now fangcount is numberVarValue entry;
				-- "FangDashRel":
					now FangDashRel is numberVarValue entry;
				-- "FangSarahInteraction":
					now FangSarahInteraction is numberVarValue entry;
				-- "FangWS":
					now FangWS is numberVarValue entry;
				-- "fashionfight":
					now fashionfight is numberVarValue entry;
				-- "Featqualified":
					now Featqualified is numberVarValue entry;
				-- "featunlock":
					now featunlock is numberVarValue entry;
				-- "Feline_attached":
					now Feline_attached is numberVarValue entry;
				-- "Feline_encountered":
					now Feline_encountered is numberVarValue entry;
				-- "Feline_meow":
					now Feline_meow is numberVarValue entry;
				-- "feline_status":
					now feline_status is numberVarValue entry;
				-- "Feline_type":
					now Feline_type is numberVarValue entry;
				-- "FelinoidRescued":
					now FelinoidRescued is numberVarValue entry;
				-- "FelixSaved":
					now FelixSaved is numberVarValue entry;
				-- "fellforward":
					now fellforward is numberVarValue entry;
				-- "femalecatHP":
					now femalecatHP is numberVarValue entry;
				-- "femonyxq":
					now femonyxq is numberVarValue entry;
				-- "FeralBirths":
					now FeralBirths is numberVarValue entry;
				-- "FeralMuttDominance":
					now FeralMuttDominance is numberVarValue entry;
				-- "FeralMuttFurColorNumber":
					now FeralMuttFurColorNumber is numberVarValue entry;
				-- "FeralWolfdefeat":
					now FeralWolfdefeat is numberVarValue entry;
				-- "FeralWolfSpecialFightNumber":
					now FeralWolfSpecialFightNumber is numberVarValue entry;
				-- "ferretvisit":
					now ferretvisit is numberVarValue entry;
				-- "fertiletime":
					now fertiletime is numberVarValue entry;
				-- "ffrivalry":
					now ffrivalry is numberVarValue entry;
				-- "fgryphon_TFcount":
					now fgryphon_TFcount is numberVarValue entry;
				-- "fightoutcome":
					now fightoutcome is numberVarValue entry;
				-- "fightstatus":
					now fightstatus is numberVarValue entry;
				-- "Fin":
					now Fin is numberVarValue entry;
				-- "findablestairs":
					now findablestairs is numberVarValue entry;
				-- "Findfirefighter":
					now Findfirefighter is numberVarValue entry;
				-- "findwires":
					now findwires is numberVarValue entry;
				-- "FinnTrackingProgress":
					now FinnTrackingProgress is numberVarValue entry;
				-- "FionaCarlStatus":
					now FionaCarlStatus is numberVarValue entry;
				-- "FionaFangStatus":
					now FionaFangStatus is numberVarValue entry;
				-- "firebreathcount":
					now firebreathcount is numberVarValue entry;
				-- "FireSpritemode":
					now FireSpritemode is numberVarValue entry;
				-- "FirstAtlantisVisit":
					now FirstAtlantisVisit is numberVarValue entry;
				-- "FirstDescOuter":
					now FirstDescOuter is numberVarValue entry;
				-- "FirstMannequinTalk":
					now FirstMannequinTalk is numberVarValue entry;
				-- "fixedgens":
					now fixedgens is numberVarValue entry;
				-- "flotintense":
					now flotintense is numberVarValue entry;
				-- "fonyxanalcount":
					now fonyxanalcount is numberVarValue entry;
				-- "fonyxvagcount":
					now fonyxvagcount is numberVarValue entry;
				-- "foodcount":
					now foodcount is numberVarValue entry;
				-- "foodneed":
					now foodneed is numberVarValue entry;
				-- "foodvendor":
					now foodvendor is numberVarValue entry;
				-- "foodwaterbonus":
					now foodwaterbonus is numberVarValue entry;
				-- "ForcedBreederslutBoyTF":
					now ForcedBreederslutBoyTF is numberVarValue entry;
				-- "ForcedBreederslutTF":
					now ForcedBreederslutTF is numberVarValue entry;
				-- "foundparts":
					now foundparts is numberVarValue entry;
				-- "FoxMasterEncounters":
					now FoxMasterEncounters is numberVarValue entry;
				-- "frankmalesex":
					now frankmalesex is numberVarValue entry;
				-- "franksex":
					now franksex is numberVarValue entry;
				-- "FratPartyRecruiterProgression":
					now FratPartyRecruiterProgression is numberVarValue entry;
				-- "frbatbeaten":
					now frbatbeaten is numberVarValue entry;
				-- "freecred":
					now freecred is numberVarValue entry;
				-- "Freefeats":
					now Freefeats is numberVarValue entry;
				-- "FriesianRelationship":
					now FriesianRelationship is numberVarValue entry;
				-- "fsdbias":
					now fsdbias is numberVarValue entry;
				-- "fsddom":
					now fsddom is numberVarValue entry;
				-- "fsdfeedmemory":
					now fsdfeedmemory is numberVarValue entry;
				-- "FSDOPEN":
					now FSDOPEN is numberVarValue entry;
				-- "fsdsub":
					now fsdsub is numberVarValue entry;
				-- "fsnovel":
					now fsnovel is numberVarValue entry;
				-- "FuckedByRazorbackBoar":
					now FuckedByRazorbackBoar is numberVarValue entry;
				-- "FuckedBySpartan":
					now FuckedBySpartan is numberVarValue entry;
				-- "FYDM":
					now FYDM is numberVarValue entry;
				-- "FYDTBMM":
					now FYDTBMM is numberVarValue entry;
				-- "gameplay":
					now gameplay is numberVarValue entry;
				-- "gardenveg":
					now gardenveg is numberVarValue entry;
				-- "GarthRelationship":
					now GarthRelationship is numberVarValue entry;
				-- "gascloud":
					now gascloud is numberVarValue entry;
				-- "gatorconsent":
					now gatorconsent is numberVarValue entry;
				-- "gatordefeat":
					now gatordefeat is numberVarValue entry;
				-- "gazellesbeaten":
					now gazellesbeaten is numberVarValue entry;
				-- "gb_gatling_chance":
					now gb_gatling_chance is numberVarValue entry;
				-- "gb_gatling_counter":
					now gb_gatling_counter is numberVarValue entry;
				-- "gb_gun":
					now gb_gun is numberVarValue entry;
				-- "gb_hair":
					now gb_hair is numberVarValue entry;
				-- "generationConflictFlag":
					now generationConflictFlag is numberVarValue entry;
				-- "generatorfixing":
					now generatorfixing is numberVarValue entry;
				-- "GertyQuest":
					now GertyQuest is numberVarValue entry;
				-- "GertyRelationship":
					now GertyRelationship is numberVarValue entry;
				-- "gettinglee":
					now gettinglee is numberVarValue entry;
				-- "giantheight":
					now giantheight is numberVarValue entry;
				-- "GibsonRelationship":
					now GibsonRelationship is numberVarValue entry;
				-- "ginafucked":
					now ginafucked is numberVarValue entry;
				-- "Ginaslut":
					now Ginaslut is numberVarValue entry;
				-- "Ginatalk":
					now Ginatalk is numberVarValue entry;
				-- "givingupton":
					now givingupton is numberVarValue entry;
				-- "GloryFate":
					now GloryFate is numberVarValue entry;
				-- "glshiftstart":
					now glshiftstart is numberVarValue entry;
				-- "glstart":
					now glstart is numberVarValue entry;
				-- "gobgender":
					now gobgender is numberVarValue entry;
				-- "goblinfight":
					now goblinfight is numberVarValue entry;
				-- "GooColossusProgress":
					now GooColossusProgress is numberVarValue entry;
				-- "GordonApprehended":
					now GordonApprehended is numberVarValue entry;
				-- "GordonFurSuspicion":
					now GordonFurSuspicion is numberVarValue entry;
				-- "GordonMotive":
					now GordonMotive is numberVarValue entry;
				-- "GorillasMember":
					now GorillasMember is numberVarValue entry;
				-- "GorillasMemberQuestCounter":
					now GorillasMemberQuestCounter is numberVarValue entry;
				-- "GorillasRep":
					now GorillasRep is numberVarValue entry;
				-- "gotcatares":
					now gotcatares is numberVarValue entry;
				-- "gotsword":
					now gotsword is numberVarValue entry;
				-- "gotwhip":
					now gotwhip is numberVarValue entry;
				-- "grantbitch":
					now grantbitch is numberVarValue entry;
				-- "grantfucked":
					now grantfucked is numberVarValue entry;
				-- "grantsex":
					now grantsex is numberVarValue entry;
				-- "granttalk":
					now granttalk is numberVarValue entry;
				-- "GreenTumbTurn":
					now GreenTumbTurn is numberVarValue entry;
				-- "gryphoncomforted":
					now gryphoncomforted is numberVarValue entry;
				-- "GryphonessKnowpreg":
					now GryphonessKnowpreg is numberVarValue entry;
				-- "GryphPlotTracking":
					now GryphPlotTracking is numberVarValue entry;
				-- "gsd_encounters":
					now gsd_encounters is numberVarValue entry;
				-- "gsd_pet":
					now gsd_pet is numberVarValue entry;
				-- "gsd_var":
					now gsd_var is numberVarValue entry;
				-- "gsexit":
					now gsexit is numberVarValue entry;
				-- "gsgl":
					now gsgl is numberVarValue entry;
				-- "gsgt":
					now gsgt is numberVarValue entry;
				-- "gshep_bed_scene":
					now gshep_bed_scene is numberVarValue entry;
				-- "gshep_fights":
					now gshep_fights is numberVarValue entry;
				-- "gshep_inactive":
					now gshep_inactive is numberVarValue entry;
				-- "gshep_postfight":
					now gshep_postfight is numberVarValue entry;
				-- "gshep_sexscene":
					now gshep_sexscene is numberVarValue entry;
				-- "GShepLastScene":
					now GShepLastScene is numberVarValue entry;
				-- "gshepsquad":
					now gshepsquad is numberVarValue entry;
				-- "gsms":
					now gsms is numberVarValue entry;
				-- "gspg":
					now gspg is numberVarValue entry;
				-- "GusTalkProgress":
					now GusTalkProgress is numberVarValue entry;
				-- "hadiyafucked":
					now hadiyafucked is numberVarValue entry;
				-- "hagfeat":
					now hagfeat is numberVarValue entry;
				-- "halodestroyed":
					now halodestroyed is numberVarValue entry;
				-- "Haroldaroused":
					now Haroldaroused is numberVarValue entry;
				-- "Haroldfucked":
					now Haroldfucked is numberVarValue entry;
				-- "Haroldtalk":
					now Haroldtalk is numberVarValue entry;
				-- "Harpyconsent":
					now Harpyconsent is numberVarValue entry;
				-- "Harpydefeat":
					now Harpydefeat is numberVarValue entry;
				-- "harpyfight":
					now harpyfight is numberVarValue entry;
				-- "hasgills":
					now hasgills is numberVarValue entry;
				-- "HasParts":
					now HasParts is numberVarValue entry;
				-- "hawkmanbeaten":
					now hawkmanbeaten is numberVarValue entry;
				-- "HayatoHunger":
					now HayatoHunger is numberVarValue entry;
				-- "HBMR":
					now HBMR is numberVarValue entry;
				-- "hdform":
					now hdform is numberVarValue entry;
				-- "hdmode":
					now hdmode is numberVarValue entry;
				-- "hdog":
					now hdog is numberVarValue entry;
				-- "heatdrive":
					now heatdrive is numberVarValue entry;
				-- "HeatedPoodle":
					now HeatedPoodle is numberVarValue entry;
				-- "heatform":
					now heatform is numberVarValue entry;
				-- "heatlevel":
					now heatlevel is numberVarValue entry;
				-- "HelenPregnant":
					now HelenPregnant is numberVarValue entry;
				-- "hellgatherquest":
					now hellgatherquest is numberVarValue entry;
				-- "hellHoundLevel":
					now hellHoundLevel is numberVarValue entry;
				-- "HelpKenazOut":
					now HelpKenazOut is numberVarValue entry;
				-- "HermaidSub":
					now HermaidSub is numberVarValue entry;
				-- "hermlvconsent":
					now hermlvconsent is numberVarValue entry;
				-- "hermlvmeet":
					now hermlvmeet is numberVarValue entry;
				-- "hfgbread":
					now hfgbread is numberVarValue entry;
				-- "HG_Flashback_Turns":
					now HG_Flashback_Turns is numberVarValue entry;
				-- "HG_Stage":
					now HG_Stage is numberVarValue entry;
				-- "hgryphon_TGcount":
					now hgryphon_TGcount is numberVarValue entry;
				-- "hgryphonwin":
					now hgryphonwin is numberVarValue entry;
				-- "hgsqc":
					now hgsqc is numberVarValue entry;
				-- "hijackgestation":
					now hijackgestation is numberVarValue entry;
				-- "hobo-food-reminder":
					now hobo-food-reminder is numberVarValue entry;
				-- "hobo-grmilkhelp":
					now hobo-grmilkhelp is numberVarValue entry;
				-- "hobo-journal":
					now hobo-journal is numberVarValue entry;
				-- "hobo-medical":
					now hobo-medical is numberVarValue entry;
				-- "hobo-medical-gift":
					now hobo-medical-gift is numberVarValue entry;
				-- "hobo-water-reminder":
					now hobo-water-reminder is numberVarValue entry;
				-- "Homarusearch":
					now Homarusearch is numberVarValue entry;
				-- "Homarusearching":
					now Homarusearching is numberVarValue entry;
				-- "Homarutalk":
					now Homarutalk is numberVarValue entry;
				-- "horsefight":
					now horsefight is numberVarValue entry;
				-- "hospbattlelost":
					now hospbattlelost is numberVarValue entry;
				-- "hospcountdown":
					now hospcountdown is numberVarValue entry;
				-- "hospfight":
					now hospfight is numberVarValue entry;
				-- "hospnav":
					now hospnav is numberVarValue entry;
				-- "hospquest":
					now hospquest is numberVarValue entry;
				-- "hospstairs":
					now hospstairs is numberVarValue entry;
				-- "hpF of Sylvia":
					now hpF of Sylvia is numberVarValue entry;
				-- "hpM of Sylvia":
					now hpM of Sylvia is numberVarValue entry;
				-- "hsrp":
					now hsrp is numberVarValue entry;
				-- "huntfeat":
					now huntfeat is numberVarValue entry;
				-- "hvorecount":
					now hvorecount is numberVarValue entry;
				-- "hvorelevel":
					now hvorelevel is numberVarValue entry;
				-- "hydraheadcount":
					now hydraheadcount is numberVarValue entry;
				-- "hydramaulcount":
					now hydramaulcount is numberVarValue entry;
				-- "hyenaintel":
					now hyenaintel is numberVarValue entry;
				-- "hyenastabledeal":
					now hyenastabledeal is numberVarValue entry;
				-- "HyenaTrailing":
					now HyenaTrailing is numberVarValue entry;
				-- "HYG":
					now HYG is numberVarValue entry;
				-- "hypernull":
					now hypernull is numberVarValue entry;
				-- "HyperSerumTracker":
					now HyperSerumTracker is numberVarValue entry;
				-- "icarus_cbt":
					now icarus_cbt is numberVarValue entry;
				-- "icarus_cumstuff":
					now icarus_cumstuff is numberVarValue entry;
				-- "icarus_lastpred":
					now icarus_lastpred is numberVarValue entry;
				-- "IcarusAmySex":
					now IcarusAmySex is numberVarValue entry;
				-- "icarussex6_variant":
					now icarussex6_variant is numberVarValue entry;
				-- "impalamode":
					now impalamode is numberVarValue entry;
				-- "ImpPlayerMarkingTurn":
					now ImpPlayerMarkingTurn is numberVarValue entry;
				-- "inafight":
					now inafight is numberVarValue entry;
				-- "incubusnosex":
					now incubusnosex is numberVarValue entry;
				-- "InflatableOtterSuitBindStage":
					now InflatableOtterSuitBindStage is numberVarValue entry;
				-- "InflatableOtterSuitMode":
					now InflatableOtterSuitMode is numberVarValue entry;
				-- "infvulpstate":
					now infvulpstate is numberVarValue entry;
				-- "invcolumns":
					now invcolumns is numberVarValue entry;
				-- "invlinklistfilled":
					now invlinklistfilled is numberVarValue entry;
				-- "isTwinHere":
					now isTwinHere is numberVarValue entry;
				-- "JackalBoyTF":
					now JackalBoyTF is numberVarValue entry;
				-- "JackalManTF":
					now JackalManTF is numberVarValue entry;
				-- "JaksEncounters":
					now JaksEncounters is numberVarValue entry;
				-- "jamesfed":
					now jamesfed is numberVarValue entry;
				-- "jamessex":
					now jamessex is numberVarValue entry;
				-- "Janicearoused":
					now Janicearoused is numberVarValue entry;
				-- "Janicequest":
					now Janicequest is numberVarValue entry;
				-- "Janicetalk":
					now Janicetalk is numberVarValue entry;
				-- "JayMarkRelationship":
					now JayMarkRelationship is numberVarValue entry;
				-- "jbfound":
					now jbfound is numberVarValue entry;
				-- "jdigup":
					now jdigup is numberVarValue entry;
				-- "JennaRelationship":
					now JennaRelationship is numberVarValue entry;
				-- "Jenniferfucked":
					now Jenniferfucked is numberVarValue entry;
				-- "Jenniferpregnant":
					now Jenniferpregnant is numberVarValue entry;
				-- "Jenniferwolves":
					now Jenniferwolves is numberVarValue entry;
				-- "JewelHeistCaught":
					now JewelHeistCaught is numberVarValue entry;
				-- "joannaharoldtalk":
					now joannaharoldtalk is numberVarValue entry;
				-- "joannaoffernum":
					now joannaoffernum is numberVarValue entry;
				-- "joannatalk":
					now joannatalk is numberVarValue entry;
				-- "junknum":
					now junknum is numberVarValue entry;
				-- "JustinRelationship":
					now JustinRelationship is numberVarValue entry;
				-- "kangaroodefeat":
					now kangaroodefeat is numberVarValue entry;
				-- "KatyaDildoTaken":
					now KatyaDildoTaken is numberVarValue entry;
				-- "KatyaRelationship":
					now KatyaRelationship is numberVarValue entry;
				-- "KatyaResistance":
					now KatyaResistance is numberVarValue entry;
				-- "keepbody":
					now keepbody is numberVarValue entry;
				-- "keepcock":
					now keepcock is numberVarValue entry;
				-- "keepface":
					now keepface is numberVarValue entry;
				-- "keepskin":
					now keepskin is numberVarValue entry;
				-- "keeptail":
					now keeptail is numberVarValue entry;
				-- "Kenazaroused":
					now Kenazaroused is numberVarValue entry;
				-- "Kenazdes":
					now Kenazdes is numberVarValue entry;
				-- "Kenaztalk":
					now Kenaztalk is numberVarValue entry;
				-- "keycollection":
					now keycollection is numberVarValue entry;
				-- "KinksandFetishes":
					now KinksandFetishes is numberVarValue entry;
				-- "Kitsunearoused":
					now Kitsunearoused is numberVarValue entry;
				-- "Kitsunetalk":
					now Kitsunetalk is numberVarValue entry;
				-- "kittyness":
					now kittyness is numberVarValue entry;
				-- "knightcrestnum":
					now knightcrestnum is numberVarValue entry;
				-- "KoballoonLossCounter":
					now KoballoonLossCounter is numberVarValue entry;
				-- "KoballoonMet":
					now KoballoonMet is numberVarValue entry;
				-- "KoballoonSexBadEnd":
					now KoballoonSexBadEnd is numberVarValue entry;
				-- "koboldgangmet":
					now koboldgangmet is numberVarValue entry;
				-- "koboldgangsubs":
					now koboldgangsubs is numberVarValue entry;
				-- "Koghhstatus":
					now Koghhstatus is numberVarValue entry;
				-- "KorvinSubmitCounter":
					now KorvinSubmitCounter is numberVarValue entry;
				-- "kpstatus":
					now kpstatus is numberVarValue entry;
				-- "KTO":
					now KTO is numberVarValue entry;
				-- "KTP":
					now KTP is numberVarValue entry;
				-- "ktspeciesbonus":
					now ktspeciesbonus is numberVarValue entry;
				-- "KurtEvent":
					now KurtEvent is numberVarValue entry;
				-- "KurtRelationship":
					now KurtRelationship is numberVarValue entry;
				-- "KyleRelationship":
					now KyleRelationship is numberVarValue entry;
				-- "KyrverthMaleBoning":
					now KyrverthMaleBoning is numberVarValue entry;
				-- "KyrverthQuestGiven":
					now KyrverthQuestGiven is numberVarValue entry;
				-- "KyrverthStage":
					now KyrverthStage is numberVarValue entry;
				-- "KyrverthTimer":
					now KyrverthTimer is numberVarValue entry;
				-- "labhost":
					now labhost is numberVarValue entry;
				-- "labtimerA":
					now labtimerA is numberVarValue entry;
				-- "labtimerB":
					now labtimerB is numberVarValue entry;
				-- "lairconsent":
					now lairconsent is numberVarValue entry;
				-- "LampVariable":
					now LampVariable is numberVarValue entry;
				-- "LarissaBodycat":
					now LarissaBodycat is numberVarValue entry;
				-- "LarissaLastTF":
					now LarissaLastTF is numberVarValue entry;
				-- "LarissaOldgender":
					now LarissaOldgender is numberVarValue entry;
				-- "LarissTFcost":
					now LarissTFcost is numberVarValue entry;
				-- "larvacounter":
					now larvacounter is numberVarValue entry;
				-- "larvaegg":
					now larvaegg is numberVarValue entry;
				-- "larvaexpel":
					now larvaexpel is numberVarValue entry;
				-- "larvalaid":
					now larvalaid is numberVarValue entry;
				-- "last_infvulp_airhead":
					now last_infvulp_airhead is numberVarValue entry;
				-- "lastABEncounter":
					now lastABEncounter is numberVarValue entry;
				-- "lastAlexandraPast":
					now lastAlexandraPast is numberVarValue entry;
				-- "lastAlexandraSarahInteraction":
					now lastAlexandraSarahInteraction is numberVarValue entry;
				-- "lastAmySpotted":
					now lastAmySpotted is numberVarValue entry;
				-- "lastAndreTalk":
					now lastAndreTalk is numberVarValue entry;
				-- "LastAngieLearned":
					now LastAngieLearned is numberVarValue entry;
				-- "lastArtemisglomp":
					now lastArtemisglomp is numberVarValue entry;
				-- "lastArtemisplay":
					now lastArtemisplay is numberVarValue entry;
				-- "LastAtlantisCenterWalkin":
					now LastAtlantisCenterWalkin is numberVarValue entry;
				-- "lastbcchair":
					now lastbcchair is numberVarValue entry;
				-- "lastbcduobeaten":
					now lastbcduobeaten is numberVarValue entry;
				-- "lastBodyShopEvent":
					now lastBodyShopEvent is numberVarValue entry;
				-- "lastbookshelves":
					now lastbookshelves is numberVarValue entry;
				-- "lastBrennanWolfScene":
					now lastBrennanWolfScene is numberVarValue entry;
				-- "LastCampusWalkin":
					now LastCampusWalkin is numberVarValue entry;
				-- "lastCandyfucked":
					now lastCandyfucked is numberVarValue entry;
				-- "lastCandyUrikInteraction":
					now lastCandyUrikInteraction is numberVarValue entry;
				-- "LastCandyWalkin":
					now LastCandyWalkin is numberVarValue entry;
				-- "lastCarlEricInteraction":
					now lastCarlEricInteraction is numberVarValue entry;
				-- "lastCarlSarahInteraction":
					now lastCarlSarahInteraction is numberVarValue entry;
				-- "LastCatgirlFuck":
					now LastCatgirlFuck is numberVarValue entry;
				-- "lastcheetahturns":
					now lastcheetahturns is numberVarValue entry;
				-- "lastChristyfucked":
					now lastChristyfucked is numberVarValue entry;
				-- "lastchurchattempt":
					now lastchurchattempt is numberVarValue entry;
				-- "lastColleenSarahInteraction":
					now lastColleenSarahInteraction is numberVarValue entry;
				-- "lastconfession":
					now lastconfession is numberVarValue entry;
				-- "lastConfSvenEricInteraction":
					now lastConfSvenEricInteraction is numberVarValue entry;
				-- "lastDavidSarahInteraction":
					now lastDavidSarahInteraction is numberVarValue entry;
				-- "Lastdelaymilitary":
					now Lastdelaymilitary is numberVarValue entry;
				-- "lastdenevent":
					now lastdenevent is numberVarValue entry;
				-- "LastDiegoTricked":
					now LastDiegoTricked is numberVarValue entry;
				-- "lastdobiemess":
					now lastdobiemess is numberVarValue entry;
				-- "LastDrinkserved":
					now LastDrinkserved is numberVarValue entry;
				-- "lastDrMousefucked":
					now lastDrMousefucked is numberVarValue entry;
				-- "lastEricSarahInteraction":
					now lastEricSarahInteraction is numberVarValue entry;
				-- "lastFangSarahInteraction":
					now lastFangSarahInteraction is numberVarValue entry;
				-- "lastFelixTalk":
					now lastFelixTalk is numberVarValue entry;
				-- "lastfgryphon_TF":
					now lastfgryphon_TF is numberVarValue entry;
				-- "lastfightround":
					now lastfightround is numberVarValue entry;
				-- "lastflowersmell":
					now lastflowersmell is numberVarValue entry;
				-- "Lastfoodrun":
					now Lastfoodrun is numberVarValue entry;
				-- "lastfsdfeeding":
					now lastfsdfeeding is numberVarValue entry;
				-- "Lastgameplay":
					now Lastgameplay is numberVarValue entry;
				-- "lastgardenveg":
					now lastgardenveg is numberVarValue entry;
				-- "lastGuardBeg":
					now lastGuardBeg is numberVarValue entry;
				-- "LastHelenTalk":
					now LastHelenTalk is numberVarValue entry;
				-- "LastHelpKenazOut":
					now LastHelpKenazOut is numberVarValue entry;
				-- "lasthgryphon_TG":
					now lasthgryphon_TG is numberVarValue entry;
				-- "LastImpMeeting":
					now LastImpMeeting is numberVarValue entry;
				-- "lastinvfoundindex":
					now lastinvfoundindex is numberVarValue entry;
				-- "LastJaksEncounter":
					now LastJaksEncounter is numberVarValue entry;
				-- "LastJenniferSoda":
					now LastJenniferSoda is numberVarValue entry;
				-- "lastjoannajuice":
					now lastjoannajuice is numberVarValue entry;
				-- "Lastjournaluse":
					now Lastjournaluse is numberVarValue entry;
				-- "LastKenazdes":
					now LastKenazdes is numberVarValue entry;
				-- "lastleomidcoitus":
					now lastleomidcoitus is numberVarValue entry;
				-- "lastlibrarybrowse":
					now lastlibrarybrowse is numberVarValue entry;
				-- "lastLilithTalk":
					now lastLilithTalk is numberVarValue entry;
				-- "LastLockerroomTrioMeet":
					now LastLockerroomTrioMeet is numberVarValue entry;
				-- "lastMallInteriorScene":
					now lastMallInteriorScene is numberVarValue entry;
				-- "Lastmarefed":
					now Lastmarefed is numberVarValue entry;
				-- "LastMarketWalkin":
					now LastMarketWalkin is numberVarValue entry;
				-- "Lastmidnightmimiced":
					now Lastmidnightmimiced is numberVarValue entry;
				-- "lastmilking":
					now lastmilking is numberVarValue entry;
				-- "lastMKoutcome":
					now lastMKoutcome is numberVarValue entry;
				-- "LastMoreauPartSale":
					now LastMoreauPartSale is numberVarValue entry;
				-- "lastNadiaSpotted":
					now lastNadiaSpotted is numberVarValue entry;
				-- "lastoctofight":
					now lastoctofight is numberVarValue entry;
				-- "lastorcabeat":
					now lastorcabeat is numberVarValue entry;
				-- "lastPaulahealing":
					now lastPaulahealing is numberVarValue entry;
				-- "Lastpigfed":
					now Lastpigfed is numberVarValue entry;
				-- "lastPolicePatrol":
					now lastPolicePatrol is numberVarValue entry;
				-- "lastpolicerepair":
					now lastpolicerepair is numberVarValue entry;
				-- "lastpoolgame":
					now lastpoolgame is numberVarValue entry;
				-- "lastpubvisit":
					now lastpubvisit is numberVarValue entry;
				-- "lastrandomharold":
					now lastrandomharold is numberVarValue entry;
				-- "lastRaneEricInteraction":
					now lastRaneEricInteraction is numberVarValue entry;
				-- "lastratdartthrow":
					now lastratdartthrow is numberVarValue entry;
				-- "lastratvisit":
					now lastratvisit is numberVarValue entry;
				-- "LastResidentialWalkin":
					now LastResidentialWalkin is numberVarValue entry;
				-- "LastRiddle":
					now LastRiddle is numberVarValue entry;
				-- "Lastriddlesphinx":
					now Lastriddlesphinx is numberVarValue entry;
				-- "lastRyouseiDavidInteraction":
					now lastRyouseiDavidInteraction is numberVarValue entry;
				-- "lastRyouseiEricInteraction":
					now lastRyouseiEricInteraction is numberVarValue entry;
				-- "lastSallyfucked":
					now lastSallyfucked is numberVarValue entry;
				-- "lastsealfight":
					now lastsealfight is numberVarValue entry;
				-- "lastSeptusfucked":
					now lastSeptusfucked is numberVarValue entry;
				-- "lastShowerUse":
					now lastShowerUse is numberVarValue entry;
				-- "Lastskunkfuck":
					now Lastskunkfuck is numberVarValue entry;
				-- "LastSlutslavefucked":
					now LastSlutslavefucked is numberVarValue entry;
				-- "lastSlutslavelearned":
					now lastSlutslavelearned is numberVarValue entry;
				-- "lastSnowStarGiven":
					now lastSnowStarGiven is numberVarValue entry;
				-- "laststellamove":
					now laststellamove is numberVarValue entry;
				-- "lastSvendrink":
					now lastSvendrink is numberVarValue entry;
				-- "LastTehuantlCarlScene":
					now LastTehuantlCarlScene is numberVarValue entry;
				-- "LastTehuantlKorvinScene":
					now LastTehuantlKorvinScene is numberVarValue entry;
				-- "lasttentaclebattleoutcome":
					now lasttentaclebattleoutcome is numberVarValue entry;
				-- "lastThomasTalk":
					now lastThomasTalk is numberVarValue entry;
				-- "LastTimothymilked":
					now LastTimothymilked is numberVarValue entry;
				-- "lastTomeInteraction":
					now lastTomeInteraction is numberVarValue entry;
				-- "Lasttreasurehunt":
					now Lasttreasurehunt is numberVarValue entry;
				-- "LastTSEvent":
					now LastTSEvent is numberVarValue entry;
				-- "lastturn":
					now lastturn is numberVarValue entry;
				-- "lastUrikEricInteraction":
					now lastUrikEricInteraction is numberVarValue entry;
				-- "Lastvixenposing":
					now Lastvixenposing is numberVarValue entry;
				-- "Lastwaterrun":
					now Lastwaterrun is numberVarValue entry;
				-- "LastWerewolfFuck":
					now LastWerewolfFuck is numberVarValue entry;
				-- "lastworkout":
					now lastworkout is numberVarValue entry;
				-- "LastXerxesTalk":
					now LastXerxesTalk is numberVarValue entry;
				-- "laundryProgress":
					now laundryProgress is numberVarValue entry;
				-- "lavalamplick":
					now lavalamplick is numberVarValue entry;
				-- "lbfight":
					now lbfight is numberVarValue entry;
				-- "LectureCheck":
					now LectureCheck is numberVarValue entry;
				-- "Leonardtimer":
					now Leonardtimer is numberVarValue entry;
				-- "leosupplies":
					now leosupplies is numberVarValue entry;
				-- "lessontime":
					now lessontime is numberVarValue entry;
				-- "Levelwindow":
					now Levelwindow is numberVarValue entry;
				-- "lgnumber":
					now lgnumber is numberVarValue entry;
				-- "libfight":
					now libfight is numberVarValue entry;
				-- "libidomemory":
					now libidomemory is numberVarValue entry;
				-- "libstealth":
					now libstealth is numberVarValue entry;
				-- "libsuppcount":
					now libsuppcount is numberVarValue entry;
				-- "libvis":
					now libvis is numberVarValue entry;
				-- "lilianabathsex":
					now lilianabathsex is numberVarValue entry;
				-- "LilithKidCounter":
					now LilithKidCounter is numberVarValue entry;
				-- "LilithPregCounter":
					now LilithPregCounter is numberVarValue entry;
				-- "LilithPregnancy":
					now LilithPregnancy is numberVarValue entry;
				-- "lisaartemiscount1":
					now lisaartemiscount1 is numberVarValue entry;
				-- "lisaartemiscount2":
					now lisaartemiscount2 is numberVarValue entry;
				-- "Lisacheat":
					now Lisacheat is numberVarValue entry;
				-- "littlelostskunk":
					now littlelostskunk is numberVarValue entry;
				-- "lizgirlangry":
					now lizgirlangry is numberVarValue entry;
				-- "lizgirlimpreg":
					now lizgirlimpreg is numberVarValue entry;
				-- "lizgirlinheat":
					now lizgirlinheat is numberVarValue entry;
				-- "lizgirlmarked":
					now lizgirlmarked is numberVarValue entry;
				-- "LockerroomTrioRelationship":
					now LockerroomTrioRelationship is numberVarValue entry;
				-- "LoganCommand":
					now LoganCommand is numberVarValue entry;
				-- "LOK":
					now LOK is numberVarValue entry;
				-- "longboatfind":
					now longboatfind is numberVarValue entry;
				-- "looknow":
					now looknow is numberVarValue entry;
				-- "Lost":
					now Lost is numberVarValue entry;
				-- "losttoalphahusky":
					now losttoalphahusky is numberVarValue entry;
				-- "LostToZebra":
					now LostToZebra is numberVarValue entry;
				-- "loversbench":
					now loversbench is numberVarValue entry;
				-- "lustadjust":
					now lustadjust is numberVarValue entry;
				-- "lustatt":
					now lustatt is numberVarValue entry;
				-- "lwcounter":
					now lwcounter is numberVarValue entry;
				-- "MalakhiRelationship":
					now MalakhiRelationship is numberVarValue entry;
				-- "malecatHP":
					now malecatHP is numberVarValue entry;
				-- "mammoth_cv_count":
					now mammoth_cv_count is numberVarValue entry;
				-- "marefed":
					now marefed is numberVarValue entry;
				-- "margaydancecount":
					now margaydancecount is numberVarValue entry;
				-- "margaymet":
					now margaymet is numberVarValue entry;
				-- "margayubed":
					now margayubed is numberVarValue entry;
				-- "MarkedSeraphisCum":
					now MarkedSeraphisCum is numberVarValue entry;
				-- "MarketVisits":
					now MarketVisits is numberVarValue entry;
				-- "mateable":
					now mateable is numberVarValue entry;
				-- "matriarchdefeated":
					now matriarchdefeated is numberVarValue entry;
				-- "matriarchowned":
					now matriarchowned is numberVarValue entry;
				-- "mattcollection":
					now mattcollection is numberVarValue entry;
				-- "mattintel":
					now mattintel is numberVarValue entry;
				-- "mdasslevel":
					now mdasslevel is numberVarValue entry;
				-- "mdmaxlossscene":
					now mdmaxlossscene is numberVarValue entry;
				-- "mdrakeanal":
					now mdrakeanal is numberVarValue entry;
				-- "mdrakebeaten":
					now mdrakebeaten is numberVarValue entry;
				-- "mdrakeloss":
					now mdrakeloss is numberVarValue entry;
				-- "mdrakeoversized":
					now mdrakeoversized is numberVarValue entry;
				-- "medeaget":
					now medeaget is numberVarValue entry;
				-- "MenuRiddleNumber":
					now MenuRiddleNumber is numberVarValue entry;
				-- "metalskin":
					now metalskin is numberVarValue entry;
				-- "micaela_bf":
					now micaela_bf is numberVarValue entry;
				-- "MichaelGholeMeetings":
					now MichaelGholeMeetings is numberVarValue entry;
				-- "Midnightmimiced":
					now Midnightmimiced is numberVarValue entry;
				-- "midnightsighted":
					now midnightsighted is numberVarValue entry;
				-- "MiltonRelationship":
					now MiltonRelationship is numberVarValue entry;
				-- "minilabfight":
					now minilabfight is numberVarValue entry;
				-- "missskip":
					now missskip is numberVarValue entry;
				-- "MiyukiRelationship":
					now MiyukiRelationship is numberVarValue entry;
				-- "MKloss":
					now MKloss is numberVarValue entry;
				-- "MKmet":
					now MKmet is numberVarValue entry;
				-- "MKwin":
					now MKwin is numberVarValue entry;
				-- "mlamiabeaten":
					now mlamiabeaten is numberVarValue entry;
				-- "mlamialoss":
					now mlamialoss is numberVarValue entry;
				-- "MMC":
					now MMC is numberVarValue entry;
				-- "MMP":
					now MMP is numberVarValue entry;
				-- "mondodgebonus":
					now mondodgebonus is numberVarValue entry;
				-- "monhitbonus":
					now monhitbonus is numberVarValue entry;
				-- "monmindbonus":
					now monmindbonus is numberVarValue entry;
				-- "monstercom":
					now monstercom is numberVarValue entry;
				-- "monsterHP":
					now monsterHP is numberVarValue entry;
				-- "monstermemory":
					now monstermemory is numberVarValue entry;
				-- "monsterpoison":
					now monsterpoison is numberVarValue entry;
				-- "monsterpowerup":
					now monsterpowerup is numberVarValue entry;
				-- "Mooed":
					now Mooed is numberVarValue entry;
				-- "Mooing":
					now Mooing is numberVarValue entry;
				-- "Mothdefeat":
					now Mothdefeat is numberVarValue entry;
				-- "mothgirlnosex":
					now mothgirlnosex is numberVarValue entry;
				-- "mousecounter":
					now mousecounter is numberVarValue entry;
				-- "mousecurse":
					now mousecurse is numberVarValue entry;
				-- "mousefucked":
					now mousefucked is numberVarValue entry;
				-- "mouseintel":
					now mouseintel is numberVarValue entry;
				-- "mousespot":
					now mousespot is numberVarValue entry;
				-- "mousevic":
					now mousevic is numberVarValue entry;
				-- "MovingOrwell":
					now MovingOrwell is numberVarValue entry;
				-- "mpregcount":
					now mpregcount is numberVarValue entry;
				-- "mqcountdown":
					now mqcountdown is numberVarValue entry;
				-- "mqfightresult":
					now mqfightresult is numberVarValue entry;
				-- "mqpickup":
					now mqpickup is numberVarValue entry;
				-- "mqstatus":
					now mqstatus is numberVarValue entry;
				-- "mre01":
					now mre01 is numberVarValue entry;
				-- "mre02":
					now mre02 is numberVarValue entry;
				-- "MSStorageVisited":
					now MSStorageVisited is numberVarValue entry;
				-- "MTP":
					now MTP is numberVarValue entry;
				-- "mtrp":
					now mtrp is numberVarValue entry;
				-- "MulAnalAcceptance":
					now MulAnalAcceptance is numberVarValue entry;
				-- "multicunt":
					now multicunt is numberVarValue entry;
				-- "MurderMystery":
					now MurderMystery is numberVarValue entry;
				-- "MushroomCaveVisited":
					now MushroomCaveVisited is numberVarValue entry;
				-- "MYDAM":
					now MYDAM is numberVarValue entry;
				-- "MYDGM":
					now MYDGM is numberVarValue entry;
				-- "MYDTBMM":
					now MYDTBMM is numberVarValue entry;
				-- "myseread":
					now myseread is numberVarValue entry;
				-- "NadiaChickCounter":
					now NadiaChickCounter is numberVarValue entry;
				-- "NadiaDescription":
					now NadiaDescription is numberVarValue entry;
				-- "NadiaFertilityCounter":
					now NadiaFertilityCounter is numberVarValue entry;
				-- "NadiaintCounter":
					now NadiaintCounter is numberVarValue entry;
				-- "NadiaPregCounter1":
					now NadiaPregCounter1 is numberVarValue entry;
				-- "NadiaPregCounter2":
					now NadiaPregCounter2 is numberVarValue entry;
				-- "NadiaPregCounter3":
					now NadiaPregCounter3 is numberVarValue entry;
				-- "NadiaPregVisibility":
					now NadiaPregVisibility is numberVarValue entry;
				-- "nanitemeter":
					now nanitemeter is numberVarValue entry;
				-- "NatalieFucked":
					now NatalieFucked is numberVarValue entry;
				-- "ndmhigh":
					now ndmhigh is numberVarValue entry;
				-- "NerdMeetings":
					now NerdMeetings is numberVarValue entry;
				-- "NermineAroused":
					now NermineAroused is numberVarValue entry;
				-- "NermineBukkakeTurn":
					now NermineBukkakeTurn is numberVarValue entry;
				-- "NermineFeat":
					now NermineFeat is numberVarValue entry;
				-- "NermineFennecTurn":
					now NermineFennecTurn is numberVarValue entry;
				-- "NermineFucked":
					now NermineFucked is numberVarValue entry;
				-- "Nerminehelpstatus":
					now Nerminehelpstatus is numberVarValue entry;
				-- "nerminepackage":
					now nerminepackage is numberVarValue entry;
				-- "nerminepackagematt":
					now nerminepackagematt is numberVarValue entry;
				-- "NermineQuest":
					now NermineQuest is numberVarValue entry;
				-- "NermineTalk":
					now NermineTalk is numberVarValue entry;
				-- "NESProgress":
					now NESProgress is numberVarValue entry;
				-- "nesteddino":
					now nesteddino is numberVarValue entry;
				-- "NewGraphicsInteger":
					now NewGraphicsInteger is numberVarValue entry;
				-- "NewGraphicsRatio":
					now NewGraphicsRatio is numberVarValue entry;
				-- "NGRP":
					now NGRP is numberVarValue entry;
				-- "nightcheck":
					now nightcheck is numberVarValue entry;
				-- "Nightmaremastery":
					now Nightmaremastery is numberVarValue entry;
				-- "Nightmareslavery":
					now Nightmareslavery is numberVarValue entry;
				-- "nightmaretf":
					now nightmaretf is numberVarValue entry;
				-- "no_AlexandraNPC":
					now no_AlexandraNPC is numberVarValue entry;
				-- "no_AlexandraTask":
					now no_AlexandraTask is numberVarValue entry;
				-- "noamazoniansex":
					now noamazoniansex is numberVarValue entry;
				-- "noanimebabesex":
					now noanimebabesex is numberVarValue entry;
				-- "nobeaversex":
					now nobeaversex is numberVarValue entry;
				-- "nobirdofparadisesex":
					now nobirdofparadisesex is numberVarValue entry;
				-- "nobluechaffinchsex":
					now nobluechaffinchsex is numberVarValue entry;
				-- "nocandycoonsex":
					now nocandycoonsex is numberVarValue entry;
				-- "nochinchillasex":
					now nochinchillasex is numberVarValue entry;
				-- "nodonkeywomansex":
					now nodonkeywomansex is numberVarValue entry;
				-- "noeaglesex":
					now noeaglesex is numberVarValue entry;
				-- "noelksex":
					now noelksex is numberVarValue entry;
				-- "nofponysex":
					now nofponysex is numberVarValue entry;
				-- "nogiraffesex":
					now nogiraffesex is numberVarValue entry;
				-- "nogunbunnysex":
					now nogunbunnysex is numberVarValue entry;
				-- "nohawkmansex":
					now nohawkmansex is numberVarValue entry;
				-- "nohgryphonsex":
					now nohgryphonsex is numberVarValue entry;
				-- "NoIntroduction":
					now NoIntroduction is numberVarValue entry;
				-- "nolatexerminesex":
					now nolatexerminesex is numberVarValue entry;
				-- "noocelotbtsex":
					now noocelotbtsex is numberVarValue entry;
				-- "noocelotldsex":
					now noocelotldsex is numberVarValue entry;
				-- "nopiratesharksex":
					now nopiratesharksex is numberVarValue entry;
				-- "noplionsex":
					now noplionsex is numberVarValue entry;
				-- "nopoodlesex":
					now nopoodlesex is numberVarValue entry;
				-- "nosnowmeowsex":
					now nosnowmeowsex is numberVarValue entry;
				-- "nosugarglidersex":
					now nosugarglidersex is numberVarValue entry;
				-- "noteddybearsex":
					now noteddybearsex is numberVarValue entry;
				-- "notrashcoonsex":
					now notrashcoonsex is numberVarValue entry;
				-- "novicsex":
					now novicsex is numberVarValue entry;
				-- "NPCintCounter":
					now NPCintCounter is numberVarValue entry;
				-- "nsgained":
					now nsgained is numberVarValue entry;
				-- "numOfBountiesLeft":
					now numOfBountiesLeft is numberVarValue entry;
				-- "numwater":
					now numwater is numberVarValue entry;
				-- "ocelotchoice":
					now ocelotchoice is numberVarValue entry;
				-- "ocelotsize":
					now ocelotsize is numberVarValue entry;
				-- "OfficeGirlsDominance":
					now OfficeGirlsDominance is numberVarValue entry;
				-- "OfficeGirlsFriendship":
					now OfficeGirlsFriendship is numberVarValue entry;
				-- "OgreMeetings":
					now OgreMeetings is numberVarValue entry;
				-- "OliverRelationship":
					now OliverRelationship is numberVarValue entry;
				-- "Onyxboislut":
					now Onyxboislut is numberVarValue entry;
				-- "onyxdma":
					now onyxdma is numberVarValue entry;
				-- "onyxdmc":
					now onyxdmc is numberVarValue entry;
				-- "onyxdmra":
					now onyxdmra is numberVarValue entry;
				-- "onyxfinale":
					now onyxfinale is numberVarValue entry;
				-- "onyxlapdance":
					now onyxlapdance is numberVarValue entry;
				-- "Onyxmareslut":
					now Onyxmareslut is numberVarValue entry;
				-- "orcadom":
					now orcadom is numberVarValue entry;
				-- "orcafdom":
					now orcafdom is numberVarValue entry;
				-- "orcaintense":
					now orcaintense is numberVarValue entry;
				-- "OrcFemSpecialFightNumber":
					now OrcFemSpecialFightNumber is numberVarValue entry;
				-- "OrcSlaverCaptureTime":
					now OrcSlaverCaptureTime is numberVarValue entry;
				-- "OrcSlaverStatus":
					now OrcSlaverStatus is numberVarValue entry;
				-- "OrcSpecialFightNumber":
					now OrcSpecialFightNumber is numberVarValue entry;
				-- "Otterconsent":
					now Otterconsent is numberVarValue entry;
				-- "Otterdefeat":
					now Otterdefeat is numberVarValue entry;
				-- "OttoForm":
					now OttoForm is numberVarValue entry;
				-- "ovipreglevel":
					now ovipreglevel is numberVarValue entry;
				-- "partner1Choice":
					now partner1Choice is numberVarValue entry;
				-- "partner2Choice":
					now partner2Choice is numberVarValue entry;
				-- "patrooms":
					now patrooms is numberVarValue entry;
				-- "peachtreefight":
					now peachtreefight is numberVarValue entry;
				-- "peacockcontrol":
					now peacockcontrol is numberVarValue entry;
				-- "Peacocked":
					now Peacocked is numberVarValue entry;
				-- "pepped":
					now pepped is numberVarValue entry;
				-- "peppereyes":
					now peppereyes is numberVarValue entry;
				-- "PericlesRelationship":
					now PericlesRelationship is numberVarValue entry;
				-- "petchance":
					now petchance is numberVarValue entry;
				-- "pethitbonus":
					now pethitbonus is numberVarValue entry;
				-- "pewterassocc":
					now pewterassocc is numberVarValue entry;
				-- "pewterassvar1":
					now pewterassvar1 is numberVarValue entry;
				-- "pewterassvar2":
					now pewterassvar2 is numberVarValue entry;
				-- "pewterbodycap":
					now pewterbodycap is numberVarValue entry;
				-- "pewterbodyocc":
					now pewterbodyocc is numberVarValue entry;
				-- "pewtercockocc":
					now pewtercockocc is numberVarValue entry;
				-- "pewtercockvar1":
					now pewtercockvar1 is numberVarValue entry;
				-- "pewtercockvar2":
					now pewtercockvar2 is numberVarValue entry;
				-- "pewtercuntocc":
					now pewtercuntocc is numberVarValue entry;
				-- "pewtercuntvar1":
					now pewtercuntvar1 is numberVarValue entry;
				-- "pewtercuntvar2":
					now pewtercuntvar2 is numberVarValue entry;
				-- "pewtergenitalcap":
					now pewtergenitalcap is numberVarValue entry;
				-- "pewterheadcap":
					now pewterheadcap is numberVarValue entry;
				-- "pewterheadocc":
					now pewterheadocc is numberVarValue entry;
				-- "pewterheadvar1":
					now pewterheadvar1 is numberVarValue entry;
				-- "pewterheadvar2":
					now pewterheadvar2 is numberVarValue entry;
				-- "pewterheadvar3":
					now pewterheadvar3 is numberVarValue entry;
				-- "pfptype":
					now pfptype is numberVarValue entry;
				-- "PhilipMudWrestleCount":
					now PhilipMudWrestleCount is numberVarValue entry;
				-- "PhilipWrestleEnd":
					now PhilipWrestleEnd is numberVarValue entry;
				-- "piercesave":
					now piercesave is numberVarValue entry;
				-- "piercestatus":
					now piercestatus is numberVarValue entry;
				-- "piercingquest":
					now piercingquest is numberVarValue entry;
				-- "Pigfed":
					now Pigfed is numberVarValue entry;
				-- "Pigfucked":
					now Pigfucked is numberVarValue entry;
				-- "piginitiation":
					now piginitiation is numberVarValue entry;
				-- "pitbullgender":
					now pitbullgender is numberVarValue entry;
				-- "plantdefeat":
					now plantdefeat is numberVarValue entry;
				-- "plantwin":
					now plantwin is numberVarValue entry;
				-- "playercrestnum":
					now playercrestnum is numberVarValue entry;
				-- "PlayerInformed":
					now PlayerInformed is numberVarValue entry;
				-- "playermetalskin":
					now playermetalskin is numberVarValue entry;
				-- "playerpoison":
					now playerpoison is numberVarValue entry;
				-- "playon":
					now playon is numberVarValue entry;
				-- "pldamagebonus":
					now pldamagebonus is numberVarValue entry;
				-- "pldodgebonus":
					now pldodgebonus is numberVarValue entry;
				-- "plfleebonus":
					now plfleebonus is numberVarValue entry;
				-- "plhitbonus":
					now plhitbonus is numberVarValue entry;
				-- "plionvic":
					now plionvic is numberVarValue entry;
				-- "plionvored":
					now plionvored is numberVarValue entry;
				-- "plmindbonus":
					now plmindbonus is numberVarValue entry;
				-- "plnatarmor":
					now plnatarmor is numberVarValue entry;
				-- "PLRLooted":
					now PLRLooted is numberVarValue entry;
				-- "plushleoloss":
					now plushleoloss is numberVarValue entry;
				-- "plweaknatarmor":
					now plweaknatarmor is numberVarValue entry;
				-- "policerepair":
					now policerepair is numberVarValue entry;
				-- "PoliceStationTwelveInfpop":
					now PoliceStationTwelveInfpop is numberVarValue entry;
				-- "PoliceStationTwelvePopulation":
					now PoliceStationTwelvePopulation is numberVarValue entry;
				-- "poodleapproved":
					now poodleapproved is numberVarValue entry;
				-- "PoseidonRelationship":
					now PoseidonRelationship is numberVarValue entry;
				-- "PowerUpDrugTrip":
					now PowerUpDrugTrip is numberVarValue entry;
				-- "pquest":
					now pquest is numberVarValue entry;
				-- "pr_completion":
					now pr_completion is numberVarValue entry;
				-- "prankevent":
					now prankevent is numberVarValue entry;
				-- "pregtype":
					now pregtype is numberVarValue entry;
				-- "provingstallionhood":
					now provingstallionhood is numberVarValue entry;
				-- "psycheadjust":
					now psycheadjust is numberVarValue entry;
				-- "pubvisit":
					now pubvisit is numberVarValue entry;
				-- "purfeat":
					now purfeat is numberVarValue entry;
				-- "quitter":
					now quitter is numberVarValue entry;
				-- "rabbitfucked":
					now rabbitfucked is numberVarValue entry;
				-- "rabbitmulticock":
					now rabbitmulticock is numberVarValue entry;
				-- "rabbitsibling":
					now rabbitsibling is numberVarValue entry;
				-- "rachelfuck":
					now rachelfuck is numberVarValue entry;
				-- "RamFucked":
					now RamFucked is numberVarValue entry;
				-- "ramlosstick":
					now ramlosstick is numberVarValue entry;
				-- "ramtraining":
					now ramtraining is numberVarValue entry;
				-- "ramvar":
					now ramvar is numberVarValue entry;
				-- "RandallBradRelationship":
					now RandallBradRelationship is numberVarValue entry;
				-- "RandomItemPick":
					now RandomItemPick is numberVarValue entry;
				-- "RaneDeedsTracker":
					now RaneDeedsTracker is numberVarValue entry;
				-- "RareQuesting":
					now RareQuesting is numberVarValue entry;
				-- "ratdartcount":
					now ratdartcount is numberVarValue entry;
				-- "RazorbackBoarEvents":
					now RazorbackBoarEvents is numberVarValue entry;
				-- "ReceptionistTalk":
					now ReceptionistTalk is numberVarValue entry;
				-- "recoverchance":
					now recoverchance is numberVarValue entry;
				-- "Recoveredhardware":
					now Recoveredhardware is numberVarValue entry;
				-- "RegChaseHelp":
					now RegChaseHelp is numberVarValue entry;
				-- "Researchbypass":
					now Researchbypass is numberVarValue entry;
				-- "ResidentialVisits":
					now ResidentialVisits is numberVarValue entry;
				-- "restaurantpig":
					now restaurantpig is numberVarValue entry;
				-- "restoration":
					now restoration is numberVarValue entry;
				-- "riddlesphinx":
					now riddlesphinx is numberVarValue entry;
				-- "Riddlewin":
					now Riddlewin is numberVarValue entry;
				-- "rodhosp":
					now rodhosp is numberVarValue entry;
				-- "RomanceBooksFound":
					now RomanceBooksFound is numberVarValue entry;
				-- "rondafight":
					now rondafight is numberVarValue entry;
				-- "rondahosp":
					now rondahosp is numberVarValue entry;
				-- "rsc":
					now rsc is numberVarValue entry;
				-- "RTWinCounter":
					now RTWinCounter is numberVarValue entry;
				-- "RyanFucked":
					now RyanFucked is numberVarValue entry;
				-- "RyouseiDavidInteraction":
					now RyouseiDavidInteraction is numberVarValue entry;
				-- "RyouseiEricInteraction":
					now RyouseiEricInteraction is numberVarValue entry;
				-- "RyouseiHayato":
					now RyouseiHayato is numberVarValue entry;
				-- "RyouseiRane":
					now RyouseiRane is numberVarValue entry;
				-- "RyouseiXerxes":
					now RyouseiXerxes is numberVarValue entry;
				-- "sabtoothed":
					now sabtoothed is numberVarValue entry;
				-- "sabtoothedmatt":
					now sabtoothedmatt is numberVarValue entry;
				-- "SandySaved":
					now SandySaved is numberVarValue entry;
				-- "SarahCured":
					now SarahCured is numberVarValue entry;
				-- "SarahPregnant":
					now SarahPregnant is numberVarValue entry;
				-- "SarahPups":
					now SarahPups is numberVarValue entry;
				-- "SarahShower":
					now SarahShower is numberVarValue entry;
				-- "SarahSlut":
					now SarahSlut is numberVarValue entry;
				-- "SarahTalk":
					now SarahTalk is numberVarValue entry;
				-- "SatisfiedTanuki":
					now SatisfiedTanuki is numberVarValue entry;
				-- "SatyressStage":
					now SatyressStage is numberVarValue entry;
				-- "SatyrFratPartyStage":
					now SatyrFratPartyStage is numberVarValue entry;
				-- "SatyrFratRichardRelationship":
					now SatyrFratRichardRelationship is numberVarValue entry;
				-- "scaledr":
					now scaledr is numberVarValue entry;
				-- "scopnum":
					now scopnum is numberVarValue entry;
				-- "ScottyRelationship":
					now ScottyRelationship is numberVarValue entry;
				-- "scufflecount":
					now scufflecount is numberVarValue entry;
				-- "sdbook":
					now sdbook is numberVarValue entry;
				-- "SeraphisContent":
					now SeraphisContent is numberVarValue entry;
				-- "SeraphisNeedy":
					now SeraphisNeedy is numberVarValue entry;
				-- "SeraphisRelationship":
					now SeraphisRelationship is numberVarValue entry;
				-- "SerenityHunger":
					now SerenityHunger is numberVarValue entry;
				-- "SethFucked":
					now SethFucked is numberVarValue entry;
				-- "SethTempleNumber":
					now SethTempleNumber is numberVarValue entry;
				-- "sextablerun":
					now sextablerun is numberVarValue entry;
				-- "sgtimer":
					now sgtimer is numberVarValue entry;
				-- "sgtmarkstalk":
					now sgtmarkstalk is numberVarValue entry;
				-- "ShadowBeastEventState":
					now ShadowBeastEventState is numberVarValue entry;
				-- "shadowy":
					now shadowy is numberVarValue entry;
				-- "SharkFountainCounter":
					now SharkFountainCounter is numberVarValue entry;
				-- "shiftable":
					now shiftable is numberVarValue entry;
				-- "sierramem":
					now sierramem is numberVarValue entry;
				-- "SilverToken":
					now SilverToken is numberVarValue entry;
				-- "sirenfight":
					now sirenfight is numberVarValue entry;
				-- "SizeEnvyTracker":
					now SizeEnvyTracker is numberVarValue entry;
				-- "SkarnothLibraryEntry":
					now SkarnothLibraryEntry is numberVarValue entry;
				-- "SkarnothMasterSlave":
					now SkarnothMasterSlave is numberVarValue entry;
				-- "skipturnblocker":
					now skipturnblocker is numberVarValue entry;
				-- "skrp":
					now skrp is numberVarValue entry;
				-- "Skunk_type":
					now Skunk_type is numberVarValue entry;
				-- "skunkbeaststatus":
					now skunkbeaststatus is numberVarValue entry;
				-- "skunkfight":
					now skunkfight is numberVarValue entry;
				-- "skunkfucked":
					now skunkfucked is numberVarValue entry;
				-- "skunkmulticock":
					now skunkmulticock is numberVarValue entry;
				-- "skunkready":
					now skunkready is numberVarValue entry;
				-- "skunksister":
					now skunksister is numberVarValue entry;
				-- "skunkspot":
					now skunkspot is numberVarValue entry;
				-- "SlaveRaidEncounters":
					now SlaveRaidEncounters is numberVarValue entry;
				-- "Sleeptimercount":
					now Sleeptimercount is numberVarValue entry;
				-- "slutfucked":
					now slutfucked is numberVarValue entry;
				-- "Slutratcor":
					now Slutratcor is numberVarValue entry;
				-- "SlutRatDenPoolTable":
					now SlutRatDenPoolTable is numberVarValue entry;
				-- "SlutRatDenVisitTimes":
					now SlutRatDenVisitTimes is numberVarValue entry;
				-- "SlutratSub":
					now SlutratSub is numberVarValue entry;
				-- "Slutslavefucked":
					now Slutslavefucked is numberVarValue entry;
				-- "Slutslavelearned":
					now Slutslavelearned is numberVarValue entry;
				-- "Slutslavetalk":
					now Slutslavetalk is numberVarValue entry;
				-- "smf":
					now smf is numberVarValue entry;
				-- "snakecap":
					now snakecap is numberVarValue entry;
				-- "snakedomm":
					now snakedomm is numberVarValue entry;
				-- "snakehijack":
					now snakehijack is numberVarValue entry;
				-- "snakehijacktimer":
					now snakehijacktimer is numberVarValue entry;
				-- "snakeocc":
					now snakeocc is numberVarValue entry;
				-- "snakesubm":
					now snakesubm is numberVarValue entry;
				-- "SnowAmySex":
					now SnowAmySex is numberVarValue entry;
				-- "snowbatfight":
					now snowbatfight is numberVarValue entry;
				-- "SnowmeowSoldierStatus":
					now SnowmeowSoldierStatus is numberVarValue entry;
				-- "Soldierhorsetf":
					now Soldierhorsetf is numberVarValue entry;
				-- "solsticefsex":
					now solsticefsex is numberVarValue entry;
				-- "solsticemsex":
					now solsticemsex is numberVarValue entry;
				-- "SonnyFood":
					now SonnyFood is numberVarValue entry;
				-- "SonnyQuest":
					now SonnyQuest is numberVarValue entry;
				-- "SonnyRelationship":
					now SonnyRelationship is numberVarValue entry;
				-- "SpidertaurRelationship":
					now SpidertaurRelationship is numberVarValue entry;
				-- "spiritlove":
					now spiritlove is numberVarValue entry;
				-- "Spriteconsent":
					now Spriteconsent is numberVarValue entry;
				-- "Spritedefeat":
					now Spritedefeat is numberVarValue entry;
				-- "SquadEncounters":
					now SquadEncounters is numberVarValue entry;
				-- "squidcolor":
					now squidcolor is numberVarValue entry;
				-- "squirefeature":
					now squirefeature is numberVarValue entry;
				-- "squirrelfucked":
					now squirrelfucked is numberVarValue entry;
				-- "squirrelspot":
					now squirrelspot is numberVarValue entry;
				-- "ssstash":
					now ssstash is numberVarValue entry;
				-- "Stablesearchstatus":
					now Stablesearchstatus is numberVarValue entry;
				-- "staircaselocation":
					now staircaselocation is numberVarValue entry;
				-- "Started":
					now Started is numberVarValue entry;
				-- "statuequest":
					now statuequest is numberVarValue entry;
				-- "steriletime":
					now steriletime is numberVarValue entry;
				-- "Stevenfood":
					now Stevenfood is numberVarValue entry;
				-- "StevenFuckcount":
					now StevenFuckcount is numberVarValue entry;
				-- "Stevenmm":
					now Stevenmm is numberVarValue entry;
				-- "Stevenremoved":
					now Stevenremoved is numberVarValue entry;
				-- "StevenSwayed":
					now StevenSwayed is numberVarValue entry;
				-- "Steventrust":
					now Steventrust is numberVarValue entry;
				-- "Stevenwater":
					now Stevenwater is numberVarValue entry;
				-- "StewartLocationCounter":
					now StewartLocationCounter is numberVarValue entry;
				-- "StewartRelationship":
					now StewartRelationship is numberVarValue entry;
				-- "stiffedpayment":
					now stiffedpayment is numberVarValue entry;
				-- "strangebottledrink":
					now strangebottledrink is numberVarValue entry;
				-- "stripbarcounter":
					now stripbarcounter is numberVarValue entry;
				-- "strongbacked":
					now strongbacked is numberVarValue entry;
				-- "struggleatt":
					now struggleatt is numberVarValue entry;
				-- "sugarferretfight":
					now sugarferretfight is numberVarValue entry;
				-- "supermarketcount":
					now supermarketcount is numberVarValue entry;
				-- "survfeat":
					now survfeat is numberVarValue entry;
				-- "Susanfirsttime":
					now Susanfirsttime is numberVarValue entry;
				-- "SvenAmySex":
					now SvenAmySex is numberVarValue entry;
				-- "SvenCandyMsg":
					now SvenCandyMsg is numberVarValue entry;
				-- "SylviaConv":
					now SylviaConv is numberVarValue entry;
				-- "SylviaTrapVar":
					now SylviaTrapVar is numberVarValue entry;
				-- "SylviaVirginCheck":
					now SylviaVirginCheck is numberVarValue entry;
				-- "Targetturns":
					now Targetturns is numberVarValue entry;
				-- "tatsave":
					now tatsave is numberVarValue entry;
				-- "tatstatus":
					now tatstatus is numberVarValue entry;
				-- "tattoohunter":
					now tattoohunter is numberVarValue entry;
				-- "TawnyaFurSuspicion":
					now TawnyaFurSuspicion is numberVarValue entry;
				-- "TawnyaMotive":
					now TawnyaMotive is numberVarValue entry;
				-- "tcopfight":
					now tcopfight is numberVarValue entry;
				-- "teddyvored":
					now teddyvored is numberVarValue entry;
				-- "TehuantlKorvinRelationship":
					now TehuantlKorvinRelationship is numberVarValue entry;
				-- "TehuantlSnowStatus":
					now TehuantlSnowStatus is numberVarValue entry;
				-- "TehuantlStatus":
					now TehuantlStatus is numberVarValue entry;
				-- "TehuantlTimer":
					now TehuantlTimer is numberVarValue entry;
				-- "TempClearBypass":
					now TempClearBypass is numberVarValue entry;
				-- "tempGorillaGender":
					now tempGorillaGender is numberVarValue entry;
				-- "templust":
					now templust is numberVarValue entry;
				-- "tempnum":
					now tempnum is numberVarValue entry;
				-- "tempnum2":
					now tempnum2 is numberVarValue entry;
				-- "tempthirst":
					now tempthirst is numberVarValue entry;
				-- "TentacleInteractions":
					now TentacleInteractions is numberVarValue entry;
				-- "tentaclerape":
					now tentaclerape is numberVarValue entry;
				-- "TentacleStatus":
					now TentacleStatus is numberVarValue entry;
				-- "tentsubmit":
					now tentsubmit is numberVarValue entry;
				-- "thabread":
					now thabread is numberVarValue entry;
				-- "ThomasPregnancy":
					now ThomasPregnancy is numberVarValue entry;
				-- "ThomasQuestVar":
					now ThomasQuestVar is numberVarValue entry;
				-- "ThomasSaved":
					now ThomasSaved is numberVarValue entry;
				-- "ThunderTrackingVariable":
					now ThunderTrackingVariable is numberVarValue entry;
				-- "tightfitcount":
					now tightfitcount is numberVarValue entry;
				-- "tigressclient":
					now tigressclient is numberVarValue entry;
				-- "tigressfucked":
					now tigressfucked is numberVarValue entry;
				-- "tigresswinner":
					now tigresswinner is numberVarValue entry;
				-- "TimekeepingVar":
					now TimekeepingVar is numberVarValue entry;
				-- "timetillrampage":
					now timetillrampage is numberVarValue entry;
				-- "Timothyfucked":
					now Timothyfucked is numberVarValue entry;
				-- "tmapfound":
					now tmapfound is numberVarValue entry;
				-- "tmonster":
					now tmonster is numberVarValue entry;
				-- "TomeFound":
					now TomeFound is numberVarValue entry;
				-- "TomeInfluence":
					now TomeInfluence is numberVarValue entry;
				-- "TomeInfluenceTimer":
					now TomeInfluenceTimer is numberVarValue entry;
				-- "TomeInteractions":
					now TomeInteractions is numberVarValue entry;
				-- "TomeTimer":
					now TomeTimer is numberVarValue entry;
				-- "Treasurefound":
					now Treasurefound is numberVarValue entry;
				-- "treasurehunt":
					now treasurehunt is numberVarValue entry;
				-- "triclamped":
					now triclamped is numberVarValue entry;
				-- "triclampedmatt":
					now triclampedmatt is numberVarValue entry;
				-- "TritonRelationship":
					now TritonRelationship is numberVarValue entry;
				-- "TryoutScore":
					now TryoutScore is numberVarValue entry;
				-- "TSEventCounter":
					now TSEventCounter is numberVarValue entry;
				-- "tsw_fsd":
					now tsw_fsd is numberVarValue entry;
				-- "tsw_relationship":
					now tsw_relationship is numberVarValue entry;
				-- "tti_scene":
					now tti_scene is numberVarValue entry;
				-- "ttIcarus":
					now ttIcarus is numberVarValue entry;
				-- "ttransform":
					now ttransform is numberVarValue entry;
				-- "Turns":
					now Turns is numberVarValue entry;
				-- "turns in heat":
					now turns in heat is numberVarValue entry;
				-- "TwelveLaborsStage":
					now TwelveLaborsStage is numberVarValue entry;
				-- "twpimpbeaten":
					now twpimpbeaten is numberVarValue entry;
				-- "twpimploss":
					now twpimploss is numberVarValue entry;
				-- "Tyraffection":
					now Tyraffection is numberVarValue entry;
				-- "TyrDefeated":
					now TyrDefeated is numberVarValue entry;
				-- "Tyrtalk":
					now Tyrtalk is numberVarValue entry;
				-- "ubchoice":
					now ubchoice is numberVarValue entry;
				-- "ubcount":
					now ubcount is numberVarValue entry;
				-- "UBlevel":
					now UBlevel is numberVarValue entry;
				-- "UrikEricInteraction":
					now UrikEricInteraction is numberVarValue entry;
				-- "UrsineDefeatCount":
					now UrsineDefeatCount is numberVarValue entry;
				-- "UtahGender":
					now UtahGender is numberVarValue entry;
				-- "valhosp":
					now valhosp is numberVarValue entry;
				-- "ValPregCounter":
					now ValPregCounter is numberVarValue entry;
				-- "ValPregnancy":
					now ValPregnancy is numberVarValue entry;
				-- "Valtalk":
					now Valtalk is numberVarValue entry;
				-- "veggiegardenfight":
					now veggiegardenfight is numberVarValue entry;
				-- "VentDomSize":
					now VentDomSize is numberVarValue entry;
				-- "VentFluidAmount":
					now VentFluidAmount is numberVarValue entry;
				-- "VentFoxContentLevel":
					now VentFoxContentLevel is numberVarValue entry;
				-- "VentFoxEncounterCount":
					now VentFoxEncounterCount is numberVarValue entry;
				-- "VentFoxLastFed":
					now VentFoxLastFed is numberVarValue entry;
				-- "VentFoxRelationship":
					now VentFoxRelationship is numberVarValue entry;
				-- "VentOviAmount":
					now VentOviAmount is numberVarValue entry;
				-- "VentSubSize":
					now VentSubSize is numberVarValue entry;
				-- "VentWSAmount":
					now VentWSAmount is numberVarValue entry;
				-- "vetcheater":
					now vetcheater is numberVarValue entry;
				-- "vgeckoanal":
					now vgeckoanal is numberVarValue entry;
				-- "vgeckobeaten":
					now vgeckobeaten is numberVarValue entry;
				-- "vgeckoloss":
					now vgeckoloss is numberVarValue entry;
				-- "VictoryOverDaBull":
					now VictoryOverDaBull is numberVarValue entry;
				-- "VikingKidCounter":
					now VikingKidCounter is numberVarValue entry;
				-- "VikingKidGender":
					now VikingKidGender is numberVarValue entry;
				-- "VikingPregCounter":
					now VikingPregCounter is numberVarValue entry;
				-- "VikingPregnancy":
					now VikingPregnancy is numberVarValue entry;
				-- "VikingRelationship":
					now VikingRelationship is numberVarValue entry;
				-- "VikingSpartanWar":
					now VikingSpartanWar is numberVarValue entry;
				-- "VikingUltimatum":
					now VikingUltimatum is numberVarValue entry;
				-- "VikingWar":
					now VikingWar is numberVarValue entry;
				-- "Vinetrapped":
					now Vinetrapped is numberVarValue entry;
				-- "violinfound":
					now violinfound is numberVarValue entry;
				-- "vixcountdown":
					now vixcountdown is numberVarValue entry;
				-- "vixentaurcatch":
					now vixentaurcatch is numberVarValue entry;
				-- "vixgender":
					now vixgender is numberVarValue entry;
				-- "vorechoice":
					now vorechoice is numberVarValue entry;
				-- "vorecount":
					now vorecount is numberVarValue entry;
				-- "vorelevel":
					now vorelevel is numberVarValue entry;
				-- "vpostmusenum":
					now vpostmusenum is numberVarValue entry;
				-- "waiterhater":
					now waiterhater is numberVarValue entry;
				-- "WallStanding":
					now WallStanding is numberVarValue entry;
				-- "WarLossCounter":
					now WarLossCounter is numberVarValue entry;
				-- "WarriorChrisDominance":
					now WarriorChrisDominance is numberVarValue entry;
				-- "WarriorChrisPlayerFucked":
					now WarriorChrisPlayerFucked is numberVarValue entry;
				-- "wasfertile":
					now wasfertile is numberVarValue entry;
				-- "wasfertilef":
					now wasfertilef is numberVarValue entry;
				-- "washerenest":
					now washerenest is numberVarValue entry;
				-- "wassterile":
					now wassterile is numberVarValue entry;
				-- "wassterilef":
					now wassterilef is numberVarValue entry;
				-- "watercount":
					now watercount is numberVarValue entry;
				-- "waterneed":
					now waterneed is numberVarValue entry;
				-- "weaselcount":
					now weaselcount is numberVarValue entry;
				-- "WellRestedTimer":
					now WellRestedTimer is numberVarValue entry;
				-- "werewolfcostumenosex":
					now werewolfcostumenosex is numberVarValue entry;
				-- "WerewolfRelationship":
					now WerewolfRelationship is numberVarValue entry;
				-- "whelpspotnum":
					now whelpspotnum is numberVarValue entry;
				-- "WhiptailLossCount":
					now WhiptailLossCount is numberVarValue entry;
				-- "WhoringExperience":
					now WhoringExperience is numberVarValue entry;
				-- "WineFound":
					now WineFound is numberVarValue entry;
				-- "wolffight":
					now wolffight is numberVarValue entry;
				-- "wolfhermdefeat":
					now wolfhermdefeat is numberVarValue entry;
				-- "wolfhermvictory":
					now wolfhermvictory is numberVarValue entry;
				-- "WolfHorseMallCouple":
					now WolfHorseMallCouple is numberVarValue entry;
				-- "wolvfightresult":
					now wolvfightresult is numberVarValue entry;
				-- "workoutprice":
					now workoutprice is numberVarValue entry;
				-- "wrcurseholdback":
					now wrcurseholdback is numberVarValue entry;
				-- "wrcurseMoffatt":
					now wrcurseMoffatt is numberVarValue entry;
				-- "wrcurseNermine":
					now wrcurseNermine is numberVarValue entry;
				-- "wrcursestart":
					now wrcursestart is numberVarValue entry;
				-- "wrcursestatus":
					now wrcursestatus is numberVarValue entry;
				-- "wrdaycycle":
					now wrdaycycle is numberVarValue entry;
				-- "wrestlechance":
					now wrestlechance is numberVarValue entry;
				-- "wrestlingwolfdefeat":
					now wrestlingwolfdefeat is numberVarValue entry;
				-- "wrlastNermine":
					now wrlastNermine is numberVarValue entry;
				-- "wrmode":
					now wrmode is numberVarValue entry;
				-- "wrscalevalue":
					now wrscalevalue is numberVarValue entry;
				-- "wrwolfanal":
					now wrwolfanal is numberVarValue entry;
				-- "wrwolfbeaten":
					now wrwolfbeaten is numberVarValue entry;
				-- "WSlevel":
					now WSlevel is numberVarValue entry;
				-- "wwheal":
					now wwheal is numberVarValue entry;
				-- "wyvernbias":
					now wyvernbias is numberVarValue entry;
				-- "WYVGEN":
					now WYVGEN is numberVarValue entry;
				-- "wyvkin1att":
					now wyvkin1att is numberVarValue entry;
				-- "wyvkin1gen":
					now wyvkin1gen is numberVarValue entry;
				-- "wyvkin1lib":
					now wyvkin1lib is numberVarValue entry;
				-- "wyvkin2att":
					now wyvkin2att is numberVarValue entry;
				-- "wyvkin2gen":
					now wyvkin2gen is numberVarValue entry;
				-- "wyvkin2lib":
					now wyvkin2lib is numberVarValue entry;
				-- "wyvkin3att":
					now wyvkin3att is numberVarValue entry;
				-- "wyvkin3gen":
					now wyvkin3gen is numberVarValue entry;
				-- "wyvkin3lib":
					now wyvkin3lib is numberVarValue entry;
				-- "wyvkin4att":
					now wyvkin4att is numberVarValue entry;
				-- "wyvkin4gen":
					now wyvkin4gen is numberVarValue entry;
				-- "wyvkin4lib":
					now wyvkin4lib is numberVarValue entry;
				-- "wyvkinassign":
					now wyvkinassign is numberVarValue entry;
				-- "wyvkinatt":
					now wyvkinatt is numberVarValue entry;
				-- "wyvkinocc":
					now wyvkinocc is numberVarValue entry;
				-- "WYVLEV":
					now WYVLEV is numberVarValue entry;
				-- "wyvorgyroll":
					now wyvorgyroll is numberVarValue entry;
				-- "WYVSF":
					now WYVSF is numberVarValue entry;
				-- "yamatdom":
					now yamatdom is numberVarValue entry;
				-- "ydcolor":
					now ydcolor is numberVarValue entry;
				-- "YDSF":
					now YDSF is numberVarValue entry;
				-- "ymgmode":
					now ymgmode is numberVarValue entry;
				-- "ZebraLossCount":
					now ZebraLossCount is numberVarValue entry;
				-- "ZekeRelationship":
					now ZekeRelationship is numberVarValue entry;
				-- "zephyrpests":
					now zephyrpests is numberVarValue entry;
				-- "zephyrtask":
					now zephyrtask is numberVarValue entry;
				-- "ZieraFucked":
					now ZieraFucked is numberVarValue entry;
				-- "zigseat":
					now zigseat is numberVarValue entry;
				-- "zpc_Zc":
					now zpc_Zc is numberVarValue entry;
			if debugactive is 1:
				say "DEBUG -> VarName '[NumberVarName entry]' restored to '[NumberVarValue entry]'.";
	else:
		say "No Number Save File Found!";

to VariableTruthLoad:
	if the File of TruthSave exists:
		say "Restoring Truths...";
		read File of TruthSave into the Table of GameTruths;
		repeat with x running from 1 to the number of filled rows in the Table of GameTruths:
			choose row x in the Table of GameTruths;
			if debugactive is 1:
				say "Restoring Truth [TruthVarName entry].";
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
				-- "Azari_Met":
					now Azari_Met is TruthVarValue entry;
				-- "BastetSexOrTalk":
					now BastetSexOrTalk is TruthVarValue entry;
				-- "bcduofightfled":
					now bcduofightfled is TruthVarValue entry;
				-- "bcduofightlost":
					now bcduofightlost is TruthVarValue entry;
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
				-- "blanchefight":
					now blanchefight is TruthVarValue entry;
				-- "blanchetalk1":
					now blanchetalk1 is TruthVarValue entry;
				-- "blanchetalk2":
					now blanchetalk2 is TruthVarValue entry;
				-- "blanchetalk3":
					now blanchetalk3 is TruthVarValue entry;
				-- "blindmode":
					now blindmode is TruthVarValue entry;
				-- "bloblost":
					now bloblost is TruthVarValue entry;
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
				-- "fangvelos1":
					now fangvelos1 is TruthVarValue entry;
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
				-- "graphics":
					now graphics is TruthVarValue entry;
				-- "grhouse":
					now grhouse is TruthVarValue entry;
				-- "gsbm":
					now gsbm is TruthVarValue entry;
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
				-- "gshep_scarscene":
					now gshep_scarscene is TruthVarValue entry;
				-- "gshm":
					now gshm is TruthVarValue entry;
				-- "gsnhm":
					now gsnhm is TruthVarValue entry;
				-- "HadGusBackgroundTalk":
					now HadGusBackgroundTalk is TruthVarValue entry;
				-- "hadiyahyg":
					now hadiyahyg is TruthVarValue entry;
				-- "Hardmode":
					now Hardmode is TruthVarValue entry;
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
				-- "hydraheadcheck1":
					now hydraheadcheck1 is TruthVarValue entry;
				-- "hydraheadcheck2":
					now hydraheadcheck2 is TruthVarValue entry;
				-- "hydraheadcheck3":
					now hydraheadcheck3 is TruthVarValue entry;
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
				-- "internalbypass":
					now internalbypass is TruthVarValue entry;
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
				-- "micaelastory1":
					now micaelastory1 is TruthVarValue entry;
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
				-- "NewGraphics":
					now NewGraphics is TruthVarValue entry;
				-- "NewGraphicsDebugMode":
					now NewGraphicsDebugMode is TruthVarValue entry;
				-- "NewGraphicsOpened":
					now NewGraphicsOpened is TruthVarValue entry;
				-- "nmformswitch":
					now nmformswitch is TruthVarValue entry;
				-- "nohealmode":
					now nohealmode is TruthVarValue entry;
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
				-- "pewtertorsosuppress":
					now pewtertorsosuppress is TruthVarValue entry;
				-- "playercanub":
					now playercanub is TruthVarValue entry;
				-- "playercanvore":
					now playercanvore is TruthVarValue entry;
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
				-- "showlocale":
					now showlocale is TruthVarValue entry;
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
				-- "TentacleRead":
					now TentacleRead is TruthVarValue entry;
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
				-- "ubspecial1":
					now ubspecial1 is TruthVarValue entry;
				-- "utahmet":
					now utahmet is TruthVarValue entry;
				-- "vampiric":
					now vampiric is TruthVarValue entry;
				-- "velosapology":
					now velosapology is TruthVarValue entry;
				-- "velosfleepenalty":
					now velosfleepenalty is TruthVarValue entry;
				-- "velosheadstalk":
					now velosheadstalk is TruthVarValue entry;
				-- "velosparasitetalk":
					now velosparasitetalk is TruthVarValue entry;
				-- "velossaved":
					now velossaved is TruthVarValue entry;
				-- "velossavedtalk":
					now velossavedtalk is TruthVarValue entry;
				-- "velossavedyes":
					now velossavedyes is TruthVarValue entry;
				-- "vgeckoboost":
					now vgeckoboost is TruthVarValue entry;
				-- "violinspritefight":
					now violinspritefight is TruthVarValue entry;
				-- "voreloss":
					now voreloss is TruthVarValue entry;
				-- "vorespecial1":
					now vorespecial1 is TruthVarValue entry;
				-- "weakwilled":
					now weakwilled is TruthVarValue entry;
				-- "WerewolfWatching":
					now WerewolfWatching is TruthVarValue entry;
				-- "wrcurseactivity":
					now wrcurseactivity is TruthVarValue entry;
				-- "wrdinoskel":
					now wrdinoskel is TruthVarValue entry;
				-- "wrknifefight":
					now wrknifefight is TruthVarValue entry;
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
			if debugactive is 1:
				say "DEBUG -> VarName '[TruthVarName entry]' restored to '[TruthVarValue entry]'.";
	else:
		say "No Truth Save File Found!";

to VariableIndexedTextLoad:
	if the File of IndexedTextSave exists:
		say "Restoring Indexed Texts...";
		read File of IndexedTextSave into the Table of GameIndexedTexts;
		repeat with x running from 1 to the number of filled rows in the Table of GameIndexedTexts:
			choose row x in the Table of GameIndexedTexts;
			if debugactive is 1:
				say "Restoring IndexedText [IndexedTextVarName entry].";
			if IndexedTextVarName entry is:
				-- "bcupsize":
					now bcupsize is IndexedTextVarValue entry;
				-- "bmagic":
					now bmagic is IndexedTextVarValue entry;
				-- "cupsize":
					now cupsize is IndexedTextVarValue entry;
			if debugactive is 1:
				say "DEBUG -> VarName '[IndexedTextVarName entry]' restored to '[IndexedTextVarValue entry]'.";
	else:
		say "No IndexedText Save File Found!";

to VariableTextListLoad:
	if the File of TextListSave exists:
		say "Restoring lists of text...";
		read File of TextListSave into the Table of GameTextLists;
		truncate Childrenbodies to 0 entries; [cleaning out the old data]
		truncate Childrenfaces to 0 entries; [cleaning out the old data]
		truncate Childrenskins to 0 entries; [cleaning out the old data]
		truncate lbcomplist to 0 entries; [cleaning out the old data]
		truncate ndmlist to 0 entries; [cleaning out the old data]
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
				-- "lbcomplist":
					add TextListVarValue entry to lbcomplist;
				-- "ndmlist":
					add TextListVarValue entry to ndmlist;
			if debugactive is 1:
				say "DEBUG -> [x]: Added '[TextListVarValue entry]' to TextList [TextListName].";
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
					add NumberListVarValue entry to leodenlist;
				-- "leoparklist":
					add NumberListVarValue entry to leoparklist;
				-- "mrevents":
					add NumberListVarValue entry to mrevents;
				-- "pfpclist":
					add NumberListVarValue entry to pfpclist;
				-- "velospostmusings":
					add NumberListVarValue entry to velospostmusings;
			if debugactive is 1:
				say "DEBUG -> [x]: Added '[NumberListVarValue entry]' to NumberList [NumberListName].";
	else:
		say "No NumberList Save File Found!";

Story Skipper Loose Variables ends here.
