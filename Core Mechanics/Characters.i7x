Version 1 of Characters by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

Part 0 - Variables

Things have a text called scent.
Lusting is a text that varies. [used in the brain description rule]
descr is a text that varies. [usually filled with various description snippets in all sorts of situations]
sh-descr is a text that varies.
cupsize is an indexed text that varies. Cupsize is "ABCDEFGHIJKLMNOPQRSTUVWXYZ".

Part 1 - Declarations

Chapter 1 - Persons

[ Person is already pre-defined, we're only attaching variables to it here ]

[ base stats of any character - used for the Player and pets, mostly unused in NPC (so anything can be stashed in them) ]
A person has a number called HP. [ current HP - only used for Player; stash variable in NPC ]
A person has a number called MaxHP. [ maximum HP - only used for Player; stash variable in NPC ]
A person has a number called Energy. [ alcohol level of the player; stash variable in NPC ]
A person has a number called XP.
A person has a number called Level.
A person has a number called Strength.
A person has a number called Dexterity.
A person has a number called Stamina.
A person has a number called Charisma.
A person has a number called Intelligence.
A person has a number called Perception.
A person has a number called Hunger.
A person has a number called Thirst.
A person has a number called Morale.
A person has a number called Lust. [ currently unused for the player; stash variable in NPC ]
A person has a number called Libido.
A person has a number called Loyalty.
A person has a number called Humanity.
A person has a number called Affection. [TODO: remember to include these in export/import when turning them on]
A person has a number called Depravity.
A person has a number called SubVsDom. [range from -100 (sub) to 0 (vers) to +100 (dom)]
A person has a number called Weapon damage. Weapon damage is usually 4.
A person has a number called Armor.
A person has a number called Capacity.
A person has a number called ImpregTimer.
A person has a number called OffspringCount.

[ body numerical variables for all characters ]
A person has a number called Body Weight. Body Weight is usually 5.
A person has a number called Body Definition. Body Definition is usually 5.
A person has a number called Androginity. Androginity is usually 5.
A person has a number called scalevalue. The scalevalue is usually 3.						[value for body size]

A person has a number called Mouth Length. Mouth Length is usually 5.
A person has a number called Mouth Circumference. Mouth Circumference is usually 3.
A person has a number called Tongue Length. Tongue Length is usually 3.
A person has a number called Breast Size. Breast Size is usually 0.
A person has a number called Nipple Count. Nipple Count is usually 2.
A person has a number called PlayerLastSize. PlayerLastSize is usually 3. [size of the player during the last meeting]
[
A person has a number called lastDrug. lastDrug is usually 2500.[@Tag:NotSaved][last drug use of the character - combined variable for all drugs (alcohol, nicotine, bliss, ...)]
]
A person has a number called SleepRhythm. [day/night bias]

[ genital variables for all persons ]
A person has a number called Cock Count. Cock Count is usually 0.
A person has a number called Cock Girth. Cock Girth is usually 7.
A person has a number called Cock Length. Cock Length is usually 6.
A person has a number called Ball Count. Ball Count is usually 2.
A person has a number called Ball Size. Ball Size is usually 3.
A person has a number called Cunt Count. Cunt Count is usually 0.
A person has a number called Cunt Depth. Cunt Depth is usually 9.
A person has a number called Cunt Tightness. Cunt Tightness is usually 5.
A person has a number called Clit Size. Clit Size is usually 3.
A person has a number called Asshole Depth. Asshole Depth is usually 9.
A person has a number called Asshole Tightness. Asshole Tightness is usually 2.

A person has a text called linkaction.
A person has a text called MainInfection. MainInfection is usually "Human". [just to have something valid in this, the variable should be overwritten for every NPC]
A person has a text called ImpregFunction. ImpregFunction is usually "".[@Tag:NotSaved][just to have something valid in this, the variable should be overwritten for every NPC]
A person has a text called LastSexualPartner.[@Tag:NotSaved]
A person has a text called FirstAnalPartner.
A person has a text called FirstVaginalPartner.
A person has a text called FirstOralPartner.
A person has a text called FirstPenilePartner.
A person has a text called Cock Size Desc.
A person has a text called Cunt Size Desc.
A person has a text called Breast Size Desc.
A person has a text called Short Breast Size Desc.
A person has a text called Originalgender. Originalgender is usually "Undefined". [original gender of the pre-transform person]

[player interaction variables]
A person has a truth state called PlayerMet. PlayerMet is usually false.
A person has a truth state called PlayerRomanced. PlayerRomanced is usually false.
A person has a truth state called PlayerFriended. PlayerFriended is usually false.
A person has a truth state called PlayerControlled. PlayerControlled is usually false.
A person has a truth state called PlayerFucked. PlayerFucked is usually false.
A person has a text called PlayerOriginalgender. PlayerOriginalGender is usually "Undefined". [first meeting gender with the player]
A person has a text called PlayerLastGender. PlayerLastGender is usually "Undefined". [gender of the player during the last meeting]
A person has a text called PlayerLastBodytype. PlayerLastBodytype is usually "Undefined". [bodytype of the player during the last meeting]


A person has a truth state called OralVirgin. OralVirgin is usually true.
A person has a truth state called Virgin. Virgin is usually true.
A person has a truth state called AnalVirgin. AnalVirgin is usually true.
A person has a truth state called PenileVirgin. PenileVirgin is usually true. [not saved till new infection system update]
A person has a truth state called SexuallyExperienced. SexuallyExperienced is usually false. [not saved till new infection system update]
A person has a truth state called TwistedCapacity. TwistedCapacity is usually false. [not saved till new infection system update]
A person has a truth state called Sterile. Sterile is usually false. [not saved till new infection system update]
A person has a truth state called Sleeping. Sleeping is usually false. [should not be saved? unless someone wants to make sleeping beauty]

A person has a list of text called conversation.
A person has a list of text called Traits. [list of traits/memories, invisible to the player]

A person can be a trader.



Chapter 2 - The Player Object

[ Player is predefined in Inform7, we're giving it more variables here ]

Section 1 - Basics

Player has text called name. The name of Player is usually "Player".

Player has a text called weapon. Weapon is usually "[one of]your quick wit[or]your fists[or]a quick kick[or]your body[or]some impromptu wrestling[or]an unarmed strike[at random]".
Player has a text called weapon type. Weapon type is usually "Melee".
Player has a grab object called weapon object. A weapon object is usually journal.
The invent of Player is { "journal" }. [starting item]

The player is wearing a backpack. Description of the backpack is "A backpack, full of stuff. To look inside, type [bold type]item[roman type] To look at an item, type [bold type]look (item name)[roman type] To use an item, type [bold type]use (item name)[roman type]. Do you see something in the room you want to take with you? Type [bold type]grab (item name)[roman type] to snatch it up.".

The player is wearing a watch.

instead of examining a watch:
	say "Time Remaining: [( turns minus targetturns ) divided by 8] days, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] hours. It is currently [time of day].";

Player has a list of text called Feats. [list of feats, visible to Player]
Player has a list of text called EncounteredEnemies. [running list of all creatures encountered]
Player has a list of text called BlockList. [blocked infections]
Player has a list of text called invent. [unused, originally part of the cobbled together replacement inventory system; replaced by the table of game objects "carried" entry]
Player has a list of text called vials. [running list of all vials Player has amassed]
Player has a list of text called tapes. [running list of all video tapes Player has massed]
Player has a list of text called AnalVirginitiesTaken. [trophy list - enable display once the sex aftermath function has been spread to most infections]
Player has a list of text called VirginitiesTaken. [trophy list - enable display once the sex aftermath function has been spread to most infections]
Player has a list of text called OralVirginitiesTaken. [trophy list - enable display once the sex aftermath function has been spread to most infections]
Player has a list of text called PenileVirginitiesTaken. [trophy list - enable display once the sex aftermath function has been spread to most infections]
Player has a list of text called OpenQuests. [for use if we ever get the quest list to work]
Player has a list of text called CompletedQuests. [for use if we ever get the quest list to work]
Player has a number called OralPussyGiven.
Player has a number called OralPussyTaken.
Player has a number called OralCockGiven.
Player has a number called OralCockTaken.
Player has a number called AssFuckGiven.
Player has a number called AssFuckTaken.
Player has a number called PussyFuckGiven.
Player has a number called PussyFuckTaken.
Player has a number called BehaviorCount_Breeder.
Player has a number called BehaviorCount_Lover.
Player has a number called BehaviorCount_Rapist.
Player has a number called BehaviorCount_Nice.
Player has a number called BehaviorCount_Cruel.
Player has a number called BehaviorCount_Vore.

to say Player name:
	if name of Player is "Player":
		say("Alias D");
	else:
		say("[name of Player]");

Section 2 - Body Parts

[old style body parts - to be phased out once all infections follow the expanded set]
Player has a text called bodydesc. The bodydesc is usually "[one of]average[or]normal[or]unchanged[at random]". [adjective for body type/appearance]
Player has a text called bodytype. The bodytype is usually "human". [broad adjective for species]
Player has a text called skin. Skin is usually "smooth".
Player has a text called Cock. Cock is usually "[one of]normal[or]flesh-toned[or]uninfected[or]human[at random]".
Player has a text called face. Face is usually "charmingly human".
Player has a text called tail. tail is usually "".
Player has a text called body. Body is usually "charmingly human".
Player has a text called BodyName. BodyName is usually "Human".
Player has a text called FaceName. FaceName is usually "Human".
Player has a text called SkinName. SkinName is usually "Human".
Player has a text called CockName. CockName is usually "Human".
Player has a text called TailName. TailName is usually "Human".
Player has a text called bodySpeciesName. BodySpeciesName is usually "Human".
Player has a text called faceSpeciesName. FaceSpeciesName is usually "Human".
Player has a text called skinSpeciesName. SkinSpeciesName is usually "Human".
Player has a text called cockSpeciesName. cockSpeciesName is usually "Human".
Player has a text called tailSpeciesName. TailSpeciesName is usually "Human".

[Parts: head, torso, back, arms, legs, ass, tail, cock, cunt]
[expanded set of Player specific infection parts]
Player has a text called HeadName. HeadName is usually "Human".
Player has a text called HeadSpeciesName. HeadSpeciesName is usually "Human".
Player has a text called Head Description. Head Description is usually "a typical human".
Player has a text called Head Adjective. Head Adjective is usually "human".
Player has a text called Head Skin Adjective. Head Skin Adjective is usually "".
Player has a text called Head Color. Head Color is usually "fair".
Player has a text called Head Adornments. Head Adornments is usually "".
Player has a number called Hair Length. Hair Length is usually 2.
Player has a number called Body Hair Length. Body Hair Length is usually 2.
Player has a text called Hair Shape. Hair Shape is usually "straight".
Player has a text called Hair Color. Hair Color is usually "red".
Player has a text called Hair Style. Hair Style is usually "buzzcut".
Player has a text called Beard Style. Beard Style is usually "".
Player has a text called Eye Color. Eye Color is usually "green".
Player has a text called Eye Adjective. Eye Adjective is usually "round".
Player has a text called Tongue Adjective. Tongue Adjective is usually "average".
Player has a text called Tongue Color. Tongue Color is usually "pink".
Player has a text called TorsoName. TorsoName is usually "Human".
Player has a text called TorsoSpeciesName. TorsoSpeciesName is usually "Human".
Player has a text called Torso Description. Torso Description is usually "that of a regular human".
Player has a text called Torso Adjective. Torso Adjective is usually "human".
Player has a text called Torso Skin Adjective. Torso Skin Adjective is usually "".
Player has a text called Torso Color. Torso Color is usually "fair".
Player has a text called Torso Pattern. Torso Pattern is usually "".
Player has a text called Breast Adjective. Breast Adjective is usually "perky".
Player has a text called Torso Adornments. Torso Adornments is usually "".
Player has a text called Nipple Color. Nipple Color is usually "light brown".
Player has a text called Nipple Shape. Nipple Shape is usually "oval".
Player has a text called BackName. BackName is usually "Human".
Player has a text called BackSpeciesName. BackSpeciesName is usually "Human".
Player has a text called Back Adornments. Back Adornments is usually "".
Player has a text called Back Skin Adjective. Back Skin Adjective is usually "".
Player has a text called Back Color. Back Color is usually "fair".
Player has a text called ArmsName. ArmsName is usually "Human".
Player has a text called ArmsSpeciesName. ArmsSpeciesName is usually "Human".
Player has a text called Arms Description. Arms Description is usually "those of a regular human".
Player has a text called Arms Skin Adjective. Arms Skin Adjective is usually "".
Player has a text called Arms Color. Arms Color is usually "fair".
Player has a text called Locomotion. Locomotion is usually "bipedal".
Player has a text called LegsName. LegsName is usually "Human".
Player has a text called LegsSpeciesName. LegsSpeciesName is usually "Human".
Player has a text called Legs Description. Legs Description is usually "that of a regular human, reaching all the way to the ground".
Player has a text called Legs Skin Adjective. Legs Skin Adjective is usually "".
Player has a text called Legs Color. Legs Color is usually "fair".
Player has a text called AssName. AssName is usually "Human".
Player has a text called AssSpeciesName. AssSpeciesName is usually "Human".
Player has a text called Ass Description. Ass Description is usually "ass".
Player has a text called Ass Skin Adjective. Ass Skin Adjective is usually "".
Player has a text called Ass Color. Ass Color is usually "fair".
Player has a number called Ass Width. Ass Width is usually 3.
Player has a text called TailName. TailName is usually "Human".
Player has a text called TailSpeciesName. TailSpeciesName is usually "Human".
Player has a text called Tail Description. Tail Description is usually "".
Player has a text called Tail Skin Adjective. Tail Skin Adjective is usually "".
Player has a text called Tail Color. Tail Color is usually "fair".
Player has a text called Asshole Color. Asshole Color is usually "pink".
Player has a text called CockName. CockName is usually "Human".
Player has a text called CockSpeciesName. CockSpeciesName is usually "Human".
Player has a text called Cock Description. Cock Description is usually "is that of a regular human, complete with an uncut foreskin".
Player has a text called Cock Adjective. Cock Adjective is usually "human".
Player has a text called Cock Color. Cock Color is usually "tanned".
Player has a text called Ball Description. Ball Description is usually "balls in a wrinkled, low-hanging sack".
Player has a text called CuntName. CuntName is usually "Human".
Player has a text called CuntSpeciesName. CuntSpeciesName is usually "Human".
Player has a text called Cunt Description. Cunt Description is usually "human in shape, with delicate nether lips and a clit at the top".
Player has a text called Cunt Adjective. Cunt Adjective is usually "human".
Player has a text called Cunt Color. Cunt Color is usually "pink".

Chapter 3 - Creatures

A creature is a kind of person.
A creature has a text called Name. Name is usually "".
A creature has a text called BodyName. BodyName is usually "Human".
A creature has a text called FaceName. FaceName is usually "Human".
A creature has a text called SkinName. SkinName is usually "Human".
A creature has a text called CockName. CockName is usually "Human".
A creature has a text called TailName. TailName is usually "Human".
A creature has a text called bodySpeciesName. BodySpeciesName is usually "Human".
A creature has a text called faceSpeciesName. FaceSpeciesName is usually "Human".
A creature has a text called skinSpeciesName. SkinSpeciesName is usually "Human".
A creature has a text called cockSpeciesName. cockSpeciesName is usually "Human".
A creature has a text called tailSpeciesName. TailSpeciesName is usually "Human".
A creature has a text called HeadName. HeadName is usually "Human".
A creature has a text called TorsoName. TorsoName is usually "Human".
A creature has a text called BackName. BackName is usually "Human".
A creature has a text called ArmsName. ArmsName is usually "Human".
A creature has a text called LegsName. LegsName is usually "Human".
A creature has a text called AssName. AssName is usually "Human".
A creature has a text called TailName. TailName is usually "Human".
A creature has a text called CockName. CockName is usually "Human".
A creature has a text called CuntName. CuntName is usually "Human".
A creature has a text called HeadSpeciesName. HeadSpeciesName is usually "Human".
A creature has a text called TorsoSpeciesName. TorsoSpeciesName is usually "Human".
A creature has a text called BackSpeciesName. BackSpeciesName is usually "Human".
A creature has a text called ArmsSpeciesName. ArmsSpeciesName is usually "Human".
A creature has a text called LegsSpeciesName. LegsSpeciesName is usually "Human".
A creature has a text called AssSpeciesName. AssSpeciesName is usually "Human".
A creature has a text called TailSpeciesName. TailSpeciesName is usually "Human".
A creature has a text called CockSpeciesName. CockSpeciesName is usually "Human".
A creature has a text called CuntSpeciesName. CuntSpeciesName is usually "Human".


Part 2 - Definitions

Chapter 0 - General

A person can be defaultnamed. A person is usually defaultnamed.

Definition: A person (called x) is defaultnamed:
	if name of Player is "Player", yes;
	no;

A person can be asleep. A person is usually not asleep.

Definition: A person (called x) is asleep:
	if Sleeping of x is true, yes;
	no;

Chapter 1 - Equipment Based

Definition: A person (called x) is barefoot:
	repeat with z running through equipped equipment:
		if slot of z is "feet":
			no;
	yes;

Definition: A person (called x) is barecrotch:
	repeat with z running through equipped equipment:
		if slot of z is "waist" or slot of z is "legs" or slot of z is "crotch":
			no;
	yes;

Definition: A person (called x) is barechest:
	repeat with z running through equipped equipment:
		if slot of z is "body" or slot of z is "back" or slot of z is "chest" or slot of z is "breast":
			if placement of z is "body", no;
	yes;

Definition: A person (called x) is naked:
	if x is barecrotch and x is barechest and x is barefoot:
		yes;
	else:
		no;

Definition: A person (called x) is gimpy:
	if gimp mask is equipped:
		yes;
	else:
		no;

Chapter 2 - Location Based

A person can be collected. A person is usually not collected.

Definition: A person (Called x) is collected:
	If x is booked, yes;
	if x is bunkered, yes;
	no;

A person can be booked. A person is usually not booked.

Definition: A person (Called x) is booked:
	If x is Trixie, no;
	if x is Velos, no;
	if x is Help Book, no;
	if the location of x is Grey Abbey Library, yes;
	if the location of x is Grey Abbey 2F, yes;
	if the location of x is Half-Renovated Room, yes;
	if the location of x is Breakroom, yes;
	if the location of x is Pantry, yes;
	if the location of x is Computer Lab, yes;
	if the location of x is Back Of The Library, yes;
	if the location of x is Makeshift Rec Room, yes;
	if the location of x is Courtyard, yes;
	if the location of x is Large Shed, yes;
	if the location of x is Grey Abbey Garden, yes;
	if the location of x is Sitting Area, yes;
	if the location of x is Garden View, yes;
	if the location of x is Darkened Alcove, yes;
	if the location of x is Attic, yes;
	if x is Zoe:
		if "Saved" is listed in Traits of Zoe, yes; [Zoe is absent during the day, but we need the booked to be true for the room description.]
	no;

A person can be bunkered. A person is usually not bunkered.

Definition: A person (Called x) is bunkered:
	If x is Trixie, no;
	if x is Velos, no;
	if x is Help Book, no;
	if the location of x is Bunker, yes;
	if the location of x is Communal Shower, yes;
	if the location of x is Underground Restroom, yes;
	if the location of x is Maintenance Storeroom, yes;
	no;

A person can be slutstored. A person is usually not slutstored.

Definition: A person (Called x) is slutstored:
	if printed name of x is listed in StoredSluts_Female, yes;
	if printed name of x is listed in StoredSluts_Male, yes;
	if printed name of x is listed in StoredSluts_Other, yes;
	no;

Chapter 3 - Gender & Sexuality Based

Definition: A person (called x) is male:			[note: this is both male and herm]
	if Cock Count of x > 0, yes;

Definition: A person (called x) is puremale:
	if Cock Count of x > 0 and Cunt Count of x is 0, yes;

Definition: A person (called x) is female:			[note: this is both female and herm]
	if Cunt Count of x > 0, yes;

Definition: A person (called x) is purefemale:
	if Cunt Count of x > 0 and Cock Count of x is 0, yes;

Definition: A person (called x) is herm:
	if Cock Count of x > 0 and Cunt Count of x > 0, yes;

Definition: A person (called x) is neuter:
	if Cock Count of x is 0 and Cunt Count of x is 0, yes;

Definition: A person (called x) is CockFitsInPlayerPussy:
	if "Twisted Capacity" is listed in the feats of Player, yes;
	if Cock Length of x > Cunt Depth of Player + 1, no; [some stretching allowed]
	yes;

Definition: A person (called x) is CuntFitsForPlayerCock:
	if Cock Length of Player > Cunt Depth of x + 1, no; [some stretching allowed]
	yes;

Definition: A person (called x) is PlayerCumLoadInflates: [yes = inflation; can be adapted for any kind of inflation (egg, enema, etc.)]
	if ScaleValue of x is 1 and Ball Size of Player >= 3, yes;
	if ScaleValue of x is 2 and Ball Size of Player >= 4, yes;
	if ScaleValue of x is 3 and Ball Size of Player >= 5, yes;
	if ScaleValue of x is 4 and Ball Size of Player >= 6, yes;
	if Ball Size of Player >= 7, yes;
	no;

Definition: A person (called x) is CumLoadInflatesPlayer: [yes = inflation; can be adapted for any kind of inflation (egg, enema, etc.)]
	if ScaleValue of Player is 1 and Ball Size of x >= 3, yes;
	if ScaleValue of Player is 2 and Ball Size of x >= 4, yes;
	if ScaleValue of Player is 3 and Ball Size of x >= 5, yes;
	if ScaleValue of Player is 4 and Ball Size of x >= 6, yes;
	if Ball Size of x >= 7, yes;
	no;

Definition: A person (called x) is maleinterested:
	if MaleInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is transmaleinterested:
	if TransMaleInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is femaleinterested:
	if FemaleInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is transfemaleinterested:
	if TransFemaleInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is maleherminterested:
	if MaleHermInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is femaleherminterested:
	if FemaleHermInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is pansexual:
	if MaleInterest of x is true and TransMaleInterest of x is true and FemaleInterest of x is true and TransFemaleInterest of x is true and MaleHermInterest of x is true and FemaleHermInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is CoA:
	if "Center of Attention" is listed in feats of x:
		yes;
	else:
		no;

Chapter 4 - Infection Based

Definition: A person (called x) is conformist: [follows the infection in all details - new infection system]
	if "Conformist" is listed in feats of x:
		yes;
	else:
		no;

Definition: A person (called x) is pure:
	if Player is not FullyNewTypeInfected: [player doesn't have all new type parts]
		if BodyName of x is FaceName of x:
			if BodyName of x is TailName of x:
				if BodyName of x is SkinName of x:
					if BodyName of x is CockName of x:
						yes;
		no;
	else:
		if HeadName of x is TorsoName of x:
			if HeadName of x is BackName of x:
				if HeadName of x is ArmsName of x:
					if HeadName of x is LegsName of x:
						if HeadName of x is AssName of x:
							if HeadName of x is TailName of x:
								if HeadName of x is CockName of x:
									if HeadName of x is CuntName of x:
										yes;
		no;

Definition: a person is facially human: [TODO: Update if needed]
	if FaceName of Player is "Human", yes;
	if FaceName of Player is "Herm Human", yes;
	if FaceName of Player is "Pod Person", yes;
	if FaceName of Player is "Siren", yes;
	if FaceName of Player is "Greek Nymph", yes;
	if FaceName of Player is "Spartan Warrior", yes;
	if FaceName of Player is "Helot Manservant", yes;
	if FaceName of Player is "Amazonian", yes;
	if FaceName of Player is "Naiad", yes;
	if FaceName of Player is "Math Teacher", yes;
	if FaceName of Player is "Viking Woman", yes;
	if FaceName of Player is "Knight", yes;
	if FaceName of Player is "Squire", yes;
	if HeadName of Player is "Human", yes;
	if HeadName of Player is "Herm Human", yes;
	if HeadName of Player is "Pod Person", yes;
	if HeadName of Player is "Siren", yes;
	if HeadName of Player is "Greek Nymph", yes;
	if HeadName of Player is "Spartan Warrior", yes;
	if HeadName of Player is "Helot Manservant", yes;
	if HeadName of Player is "Amazonian", yes;
	if HeadName of Player is "Naiad", yes;
	if HeadName of Player is "Math Teacher", yes;
	if HeadName of Player is "Viking Woman", yes;
	if HeadName of Player is "Knight", yes;
	if HeadName of Player is "Squire", yes;
	no;

Definition: a person is skintone human: [TODO: Update if needed]
	if SkinName of Player is "Human", yes;
	if SkinName of Player is "Herm Human", yes;
	if SkinName of Player is "Pod Person", yes;
	if SkinName of Player is "City Sprite", yes;
	if SkinName of Player is "Wood Elf", yes;
	if SkinName of Player is "Elven Hunter", yes;
	if SkinName of Player is "Harpy", yes;
	if SkinName of Player is "Siren", yes;
	if SkinName of Player is "Succubus", yes;
	if SkinName of Player is "Incubus", yes;
	if SkinName of Player is "Greek Nymph", yes;
	if SkinName of Player is "Spartan Warrior", yes;
	if SkinName of Player is "Helot Manservant", yes;
	if SkinName of Player is "Amazonian", yes;
	if SkinName of Player is "Naiad", yes;
	if SkinName of Player is "Caveman", yes;
	if SkinName of Player is "Math Teacher", yes;
	if SkinName of Player is "Viking Woman", yes;
	if SkinName of Player is "Knight", yes;
	if SkinName of Player is "Squire", yes;
	if SkinName of Player is "Gunbunny", yes;
	no;

Definition: a person is bodily human: [TODO: Update if needed]
	if BodyName of Player is "Human", yes;
	if BodyName of Player is "Herm Human", yes;
	if BodyName of Player is "Wood Elf", yes;
	if BodyName of Player is "Elven Hunter", yes;
	if BodyName of Player is "Pod Person", yes;
	if BodyName of Player is "Greek Nymph", yes;
	if BodyName of Player is "Spartan Warrior", yes;
	if BodyName of Player is "Helot Manservant", yes;
	if BodyName of Player is "Amazonian", yes;
	if BodyName of Player is "Naiad", yes;
	if BodyName of Player is "Math Teacher", yes;
	if BodyName of Player is "Viking Woman", yes;
	if BodyName of Player is "Knight", yes;
	if BodyName of Player is "Squire", yes;
	no;

Definition: a person is fully human:
	if person is not facially human, no;
	if person is not skintone human, no;
	if person is not bodily human, no;
	yes;

Definition: A person (called x) is purehuman:
	if Player is not FullyNewTypeInfected: [player doesn't have all new type parts]
		if BodyName of Player is "Human" or BodyName of Player is "Herm Human":
			if FaceName of Player is "Human" or FaceName of Player is "Herm Human":
				if TailName of Player is "Human" or TailName of Player is "Herm Human":
					if SkinName of Player is "Human" or SkinName of Player is "Herm Human":
						if CockName of Player is "Human" or CockName of Player is "Herm Human":
							yes;
		no;
	else:
		if HeadName of Player is "Human" or HeadName of Player is "Herm Human":
			if HeadName of Player is "Human" or TorsoName of Player is "Herm Human":
				if HeadName of Player is "Human" or BackName of Player is "Herm Human":
					if HeadName of Player is "Human" or ArmsName of Player is "Herm Human":
						if HeadName of Player is "Human" or LegsName of Player is "Herm Human":
							if HeadName of Player is "Human" or AssName of Player is "Herm Human":
								if HeadName of Player is "Human" or TailName of Player is "Herm Human":
									if HeadName of Player is "Human" or CockName of Player is "Herm Human":
										if HeadName of Player is "Human" or CuntName of Player is "Herm Human":
											yes;
		no;

Definition: A person (called x) is perminfected:
	if ( JackalManTF > 0 or JackalBoyTF > 0 ) or nightmaretf > 0 or HellHoundlevel > 0 or ( wrcursestatus >= 7 and wrcursestatus < 100 ), yes;
	no;

A person can be internalcock. A person is usually not internalcock.

internalcockbypass is a truth state that varies. internalcockbypass is usually false.

Definition: A person (called x) is internalcock:
	if CockName of x is listed in infections of InternalCockList and internalcockbypass is false, yes;
	no;

A person can be internalBalls. A person is usually not internalBalls.

internalBallsBypass is a truth state that varies. internalBallsBypass is usually false.

Definition: A person (called x) is internalBalls:
	if CockName of x is listed in infections of InternalBallsList and internalBallsBypass is false, yes;
	no;

A person can be sheathed. A person is usually not sheathed.

Definition: A person (called x) is sheathed:
	if CockName of Player is listed in infections of SheathedCockList, yes;
	no;

A person can be knotted. A person is usually not knotted.

Definition: A person (called x) is knotted:
	if CockName of Player is listed in infections of KnottedCockList, yes;
	no;

A person can be barbed. A person is usually not barbed.

Definition: A person (called x) is barbed:
	if CockName of Player is listed in infections of BarbedCockList, yes;
	no;

A person can be blunt. A person is usually not blunt.

Definition: A person (called x) is blunt:
	if CockName of Player is listed in infections of BluntCockList, yes;
	no;

A person can be nocturnal. A person is usually not nocturnal.

Definition: A person (called x) is nocturnal: [as in "can see in low light"]
	if HeadName of x is listed in infections of AquaticList, yes;
	if HeadName of x is listed in infections of CetaceanList, yes;
	if HeadName of x is listed in infections of CervineList, yes;
	if HeadName of x is listed in infections of FelineList, yes;
	if HeadName of x is listed in infections of InsectList, yes;
	if HeadName of x is listed in infections of MachineList, yes;
	if HeadName of x is listed in infections of MustelidList, yes;
	if HeadName of x is listed in infections of PiscineList, yes;
	if HeadName of x is listed in infections of RodentList, yes;
	if HeadName of x is listed in infections of VulpineList, yes;
	if Facename of x is listed in infections of AquaticList, yes;
	if Facename of x is listed in infections of CetaceanList, yes;
	if Facename of x is listed in infections of CervineList, yes;
	if Facename of x is listed in infections of FelineList, yes;
	if Facename of x is listed in infections of InsectList, yes;
	if Facename of x is listed in infections of MachineList, yes;
	if Facename of x is listed in infections of MustelidList, yes;
	if Facename of x is listed in infections of PiscineList, yes;
	if Facename of x is listed in infections of RodentList, yes;
	if Facename of x is listed in infections of VulpineList, yes;
		no;

A person can be keeneyed. A person is usually not keeneyed.

Definition: A person (called x) is keeneyed: [sharpness of view - distance, etc.]
	if HeadName of x is listed in infections of AvianList, yes;
	if HeadName of x is listed in infections of AvianpredList, yes;
	if HeadName of x is listed in infections of MachineList, yes;
	if FaceName of x is listed in infections of AvianList, yes;
	if FaceName of x is listed in infections of AvianpredList, yes;
	if FaceName of x is listed in infections of MachineList, yes;
	no;

A person can be keenscented. A person is usually not keenscented.

Definition: A person (called x) is keenscented: [can smell special information]
	if HeadName of x is listed in infections of CanineList, yes;
	if HeadName of x is listed in infections of FelineList, yes;
	if HeadName of x is listed in infections of MustelidList, yes;
	if HeadName of x is listed in infections of PorcineList, yes;
	if HeadName of x is listed in infections of RodentList, yes;
	if HeadName of x is listed in infections of UrsineList, yes;
	if HeadName of x is listed in infections of VulpineList, yes;
	if FaceName of x is listed in infections of CanineList, yes;
	if FaceName of x is listed in infections of FelineList, yes;
	if FaceName of x is listed in infections of MustelidList, yes;
	if FaceName of x is listed in infections of PorcineList, yes;
	if FaceName of x is listed in infections of RodentList, yes;
	if FaceName of x is listed in infections of UrsineList, yes;
	if FaceName of x is listed in infections of VulpineList, yes;
	no;

A person can be HeadFurred. A person is usually not HeadFurred.

Definition: A person (called x) is HeadFurred:
	if HeadName of Player is listed in infections of BovineList, yes;
	if HeadName of Player is listed in infections of CanineList, yes;
	if HeadName of Player is listed in infections of CervineList, yes;
	if HeadName of Player is listed in infections of EquineList, yes;
	if HeadName of Player is listed in infections of FelineList, yes;
	if HeadName of Player is listed in infections of LeporineList, yes;
	if HeadName of Player is listed in infections of MarsupialList, yes;
	if HeadName of Player is listed in infections of MustelidList, yes;
	if HeadName of Player is listed in infections of PrimateList, yes;
	if HeadName of Player is listed in infections of RodentList, yes;
	if HeadName of Player is listed in infections of UrsineList, yes;
	if HeadName of Player is listed in infections of VulpineList, yes;
	no;

A person can be HeadFeathered. A person is usually not HeadFeathered.

Definition: A person (called x) is HeadFeathered:
	if HeadName of Player is listed in infections of AvianList, yes;
	if HeadName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be HeadScaled. A person is usually not HeadScaled.

Definition: A person (called x) is HeadScaled:
	if HeadName of Player is listed in infections of ReptileList, yes;
	no;

A person can be HeadPlated. A person is usually not HeadPlated.

Definition: A person (called x) is HeadPlated:
	if HeadName of Player is listed in infections of ArachnidList, yes;
	if HeadName of Player is listed in infections of InsectList, yes;
	if HeadName of Player is listed in infections of MachineList, yes;
	no;

A person can be HeadSkinned. A person is usually HeadSkinned.

Definition: A person (called x) is HeadSkinned:
	if HeadName of Player is listed in infections of HybridList, no;
	if x is HeadPlated, no;
	if x is HeadScaled, no;
	if x is HeadFeathered, no;
	if x is HeadFurred, no;
	yes;

A person can be TorsoFurred. A person is usually not TorsoFurred.

Definition: A person (called x) is TorsoFurred:
	if TorsoName of Player is listed in infections of BovineList, yes;
	if TorsoName of Player is listed in infections of CanineList, yes;
	if TorsoName of Player is listed in infections of CervineList, yes;
	if TorsoName of Player is listed in infections of EquineList, yes;
	if TorsoName of Player is listed in infections of FelineList, yes;
	if TorsoName of Player is listed in infections of LeporineList, yes;
	if TorsoName of Player is listed in infections of MarsupialList, yes;
	if TorsoName of Player is listed in infections of MustelidList, yes;
	if TorsoName of Player is listed in infections of PrimateList, yes;
	if TorsoName of Player is listed in infections of RodentList, yes;
	if TorsoName of Player is listed in infections of UrsineList, yes;
	if TorsoName of Player is listed in infections of VulpineList, yes;
	no;

A person can be TorsoFeathered. A person is usually not TorsoFeathered.

Definition: A person (called x) is TorsoFeathered:
	if TorsoName of Player is listed in infections of AvianList, yes;
	if TorsoName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be TorsoScaled. A person is usually not TorsoScaled.

Definition: A person (called x) is TorsoScaled:
	if TorsoName of Player is listed in infections of ReptileList, yes;
	no;

A person can be TorsoPlated. A person is usually not TorsoPlated.

Definition: A person (called x) is TorsoPlated:
	if TorsoName of Player is listed in infections of ArachnidList, yes;
	if TorsoName of Player is listed in infections of InsectList, yes;
	if TorsoName of Player is listed in infections of MachineList, yes;
	no;

A person can be TorsoSkinned. A person is usually TorsoSkinned.

Definition: A person (called x) is TorsoSkinned:
	if TorsoName of Player is listed in infections of HybridList, no;
	if x is TorsoPlated, no;
	if x is TorsoScaled, no;
	if x is TorsoFeathered, no;
	if x is TorsoFurred, no;
	yes;


A person can be ArmsFurred. A person is usually not ArmsFurred.

Definition: A person (called x) is ArmsFurred:
	if ArmsName of Player is listed in infections of BovineList, yes;
	if ArmsName of Player is listed in infections of CanineList, yes;
	if ArmsName of Player is listed in infections of CervineList, yes;
	if ArmsName of Player is listed in infections of EquineList, yes;
	if ArmsName of Player is listed in infections of FelineList, yes;
	if ArmsName of Player is listed in infections of LeporineList, yes;
	if ArmsName of Player is listed in infections of MarsupialList, yes;
	if ArmsName of Player is listed in infections of MustelidList, yes;
	if ArmsName of Player is listed in infections of PrimateList, yes;
	if ArmsName of Player is listed in infections of RodentList, yes;
	if ArmsName of Player is listed in infections of UrsineList, yes;
	if ArmsName of Player is listed in infections of VulpineList, yes;
	no;

A person can be ArmsFeathered. A person is usually not ArmsFeathered.

Definition: A person (called x) is ArmsFeathered:
	if ArmsName of Player is listed in infections of AvianList, yes;
	if ArmsName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be ArmsScaled. A person is usually not ArmsScaled.

Definition: A person (called x) is ArmsScaled:
	if ArmsName of Player is listed in infections of ReptileList, yes;
	no;

A person can be ArmsPlated. A person is usually not ArmsPlated.

Definition: A person (called x) is ArmsPlated:
	if ArmsName of Player is listed in infections of ArachnidList, yes;
	if ArmsName of Player is listed in infections of InsectList, yes;
	if ArmsName of Player is listed in infections of MachineList, yes;
	no;

A person can be ArmsSkinned. A person is usually ArmsSkinned.

Definition: A person (called x) is ArmsSkinned:
	if ArmsName of Player is listed in infections of HybridList, no;
	if x is ArmsPlated, no;
	if x is ArmsScaled, no;
	if x is ArmsFeathered, no;
	if x is ArmsFurred, no;
	yes;

A person can be LegsFurred. A person is usually not LegsFurred.

Definition: A person (called x) is LegsFurred:
	if LegsName of Player is listed in infections of BovineList, yes;
	if LegsName of Player is listed in infections of CanineList, yes;
	if LegsName of Player is listed in infections of CervineList, yes;
	if LegsName of Player is listed in infections of EquineList, yes;
	if LegsName of Player is listed in infections of FelineList, yes;
	if LegsName of Player is listed in infections of LeporineList, yes;
	if LegsName of Player is listed in infections of MarsupialList, yes;
	if LegsName of Player is listed in infections of MustelidList, yes;
	if LegsName of Player is listed in infections of PrimateList, yes;
	if LegsName of Player is listed in infections of RodentList, yes;
	if LegsName of Player is listed in infections of UrsineList, yes;
	if LegsName of Player is listed in infections of VulpineList, yes;
	no;

A person can be LegsFeathered. A person is usually not LegsFeathered.

Definition: A person (called x) is LegsFeathered:
	if LegsName of Player is listed in infections of AvianList, yes;
	if LegsName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be LegsScaled. A person is usually not LegsScaled.

Definition: A person (called x) is LegsScaled:
	if LegsName of Player is listed in infections of ReptileList, yes;
	no;

A person can be LegsPlated. A person is usually not LegsPlated.

Definition: A person (called x) is LegsPlated:
	if LegsName of Player is listed in infections of ArachnidList, yes;
	if LegsName of Player is listed in infections of InsectList, yes;
	if LegsName of Player is listed in infections of MachineList, yes;
	no;

A person can be LegsSkinned. A person is usually LegsSkinned.

Definition: A person (called x) is LegsSkinned:
	if LegsName of Player is listed in infections of HybridList, no;
	if x is LegsPlated, no;
	if x is LegsScaled, no;
	if x is LegsFeathered, no;
	if x is LegsFurred, no;
	yes;


A person can be AssFurred. A person is usually not AssFurred.

Definition: A person (called x) is AssFurred:
	if AssName of Player is listed in infections of BovineList, yes;
	if AssName of Player is listed in infections of CanineList, yes;
	if AssName of Player is listed in infections of CervineList, yes;
	if AssName of Player is listed in infections of EquineList, yes;
	if AssName of Player is listed in infections of FelineList, yes;
	if AssName of Player is listed in infections of LeporineList, yes;
	if AssName of Player is listed in infections of MarsupialList, yes;
	if AssName of Player is listed in infections of MustelidList, yes;
	if AssName of Player is listed in infections of PrimateList, yes;
	if AssName of Player is listed in infections of RodentList, yes;
	if AssName of Player is listed in infections of UrsineList, yes;
	if AssName of Player is listed in infections of VulpineList, yes;
	no;

A person can be AssFeathered. A person is usually not AssFeathered.

Definition: A person (called x) is AssFeathered:
	if AssName of Player is listed in infections of AvianList, yes;
	if AssName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be AssScaled. A person is usually not AssScaled.

Definition: A person (called x) is AssScaled:
	if AssName of Player is listed in infections of ReptileList, yes;
	no;

A person can be AssPlated. A person is usually not AssPlated.

Definition: A person (called x) is AssPlated:
	if AssName of Player is listed in infections of ArachnidList, yes;
	if AssName of Player is listed in infections of InsectList, yes;
	if AssName of Player is listed in infections of MachineList, yes;
	no;

A person can be AssSkinned. A person is usually AssSkinned.

Definition: A person (called x) is AssSkinned:
	if AssName of Player is listed in infections of HybridList, no;
	if x is AssPlated, no;
	if x is AssScaled, no;
	if x is AssFeathered, no;
	if x is AssFurred, no;
	yes;

A person can be TailFurred. A person is usually not TailFurred.

Definition: A person (called x) is TailFurred:
	if TailName of Player is listed in infections of BovineList, yes;
	if TailName of Player is listed in infections of CanineList, yes;
	if TailName of Player is listed in infections of CervineList, yes;
	if TailName of Player is listed in infections of EquineList, yes;
	if TailName of Player is listed in infections of FelineList, yes;
	if TailName of Player is listed in infections of LeporineList, yes;
	if TailName of Player is listed in infections of MarsupialList, yes;
	if TailName of Player is listed in infections of MustelidList, yes;
	if TailName of Player is listed in infections of PrimateList, yes;
	if TailName of Player is listed in infections of RodentList, yes;
	if TailName of Player is listed in infections of UrsineList, yes;
	if TailName of Player is listed in infections of VulpineList, yes;
	no;

A person can be TailFeathered. A person is usually not TailFeathered.

Definition: A person (called x) is TailFeathered:
	if TailName of Player is listed in infections of AvianList, yes;
	if TailName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be TailScaled. A person is usually not TailScaled.

Definition: A person (called x) is TailScaled:
	if TailName of Player is listed in infections of ReptileList, yes;
	no;

A person can be TailPlated. A person is usually not TailPlated.

Definition: A person (called x) is TailPlated:
	if TailName of Player is listed in infections of ArachnidList, yes;
	if TailName of Player is listed in infections of InsectList, yes;
	if TailName of Player is listed in infections of MachineList, yes;
	no;

A person can be TailSkinned. A person is usually TailSkinned.

Definition: A person (called x) is TailSkinned:
	if TailName of Player is listed in infections of HybridList, no;
	if x is TailPlated, no;
	if x is TailScaled, no;
	if x is TailFeathered, no;
	if x is TailFurred, no;
	yes;

A person can be HasHumanHead. A person is usually not HasHumanHead.

Definition: A person (called x) is HasHumanHead:
	if Head Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanTorso. A person is usually not HasHumanTorso.

Definition: A person (called x) is HasHumanTorso:
	if Torso Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanBack. A person is usually not HasHumanBack.

Definition: A person (called x) is HasHumanBack:
	if Back Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanArms. A person is usually not HasHumanArms.

Definition: A person (called x) is HasHumanArms:
	if Arms Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanLegs. A person is usually not HasHumanLegs.

Definition: A person (called x) is HasHumanLegs:
	if Legs Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanAss. A person is usually not HasHumanAss.

Definition: A person (called x) is HasHumanAss:
	if Ass Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanTail. A person is usually not HasHumanTail.

Definition: A person (called x) is HasHumanTail:
	if Tail Skin Adjective of x is not "", no;
	yes;

A person can be HasBeard. A person is usually not HasBeard.

Definition: A person (called x) is HasBeard:
	if Beard Style of x is not "", yes;
	no;

A person can be HasHeadHair. A person is usually not HasHeadHair.

Definition: A person (called x) is HasHeadHair:
	if Hair Length of x > 0, yes;
	no;

A person can be HasHeadAdornments. A person is usually not HasHeadAdornments.

Definition: A person (called x) is HasHeadAdornments:
	if Head Adornments of x is not "", yes;
	no;

A person can be HasBackAdornments. A person is usually not HasBackAdornments.

Definition: A person (called x) is HasBackAdornments:
	if Back Adornments of x is not "", yes;
	no;

A person can be HasTorsoAdornments. A person is usually not HasTorsoAdornments.

Definition: A person (called x) is HasTorsoAdornments:
	if Torso Adornments of x is not "", yes;
	no;

A person can be HasHeadSkinAdjective. A person is usually not HasHeadSkinAdjective.

Definition: A person (called x) is HasHeadSkinAdjective:
	if Head Skin Adjective of x is not "", yes;
	no;

A person can be HasTorsoSkinAdjective. A person is usually not HasTorsoSkinAdjective.

Definition: A person (called x) is HasTorsoSkinAdjective:
	if Torso Skin Adjective of x is not "", yes;
	no;

A person can be HasBackSkinAdjective. A person is usually not HasBackSkinAdjective.

Definition: A person (called x) is HasBackSkinAdjective:
	if Back Skin Adjective of x is not "", yes;
	no;

A person can be HasArmsSkinAdjective. A person is usually not HasArmsSkinAdjective.

Definition: A person (called x) is HasArmsSkinAdjective:
	if Arms Skin Adjective of x is not "", yes;
	no;

A person can be HasLegsSkinAdjective. A person is usually not HasLegsSkinAdjective.

Definition: A person (called x) is HasLegsSkinAdjective:
	if Legs Skin Adjective of x is not "", yes;
	no;


A person can be HasAssSkinAdjective. A person is usually not HasAssSkinAdjective.

Definition: A person (called x) is HasAssSkinAdjective:
	if Ass Skin Adjective of x is not "", yes;
	no;

A person can be HasTailSkinAdjective. A person is usually not HasTailSkinAdjective.

Definition: A person (called x) is HasTailSkinAdjective:
	if Tail Skin Adjective of x is not "", yes;
	no;

A person can be HasTail. A person is usually not HasTail.

Definition: A person (called x) is HasTail:
	if Tail Description of x is not "", yes;
	no;

A person can be octapedal. A person is usually not octapedal.

Definition: A person (called x) is octapedal:
	if Locomotion of x is "octapedal", yes;
	no;

A person can be quadrupedal. A person is usually not quadrupedal.

Definition: A person (called x) is quadrupedal:
	if Locomotion of x is "quadrupedal", yes;
	no;

A person can be bipedal. A person is usually bipedal.

Definition: A person (called x) is bipedal:
	if Locomotion of x is "bipedal", yes;
	no;

A person can be serpentine. A person is usually not serpentine.

Definition: A person (called x) is serpentine:
	if Locomotion of x is "serpentine", yes;
	no;

A person can be sliding. A person is usually not sliding.

Definition: A person (called x) is sliding:
	if Locomotion of x is "sliding", yes;
	no;

Part 3 - Descriptive Elements


to say Body Size Adjective of ( x - a person ):
	if scalevalue of x is 1: [~3 ft in height or less]
		say "tiny";
	else if scalevalue of x is 2: [4-5 ft in height]
		say "small";
	else if scalevalue of x is 3: [5-7 ft in height]
		say "average";
	else if scalevalue of x is 4: [8-12 ft in height]
		say "large";
	else: [12+ ft in height]
		say "huge";

to say Body Adjective of ( x - a person ):
	if Body Weight of x < 4: [low weight group]
		if Body Definition of x < 4: [low muscle group]
			say "skinny";
		else if Body Definition of x < 7: [mid muscle group]
			say "slender";
		else: [high muscle group]
			say "lithe";
	else if Body Weight of x < 7: [mid weight group]
		if Body Definition of x < 4: [low muscle group]
			say "average";
		else if Body Definition of x < 7: [mid muscle group]
			say "fit";
		else: [high muscle group]
			say "muscled";
	else: [high weight group]
		if Body Definition of x < 4: [low muscle group]
			say "pudgy";
		else if Body Definition of x < 7: [mid muscle group]
			say "husky";
		else: [high muscle group]
			say "jacked";

to say Pecs Firmness Adjective of ( x - a person ):
	if Body Weight of x < 4: [low weight group]
		if Body Definition of x < 4: [low muscle group]
			say "bony";
		else if Body Definition of x < 7: [mid muscle group]
			say "soft";
		else: [high muscle group]
			say "firm";
	else if Body Weight of x < 7: [mid weight group]
		if Body Definition of x < 4: [low muscle group]
			say "soft";
		else if Body Definition of x < 7: [mid muscle group]
			say "firm";
		else: [high muscle group]
			say "hard";
	else: [high weight group]
		if Body Definition of x < 4: [low muscle group]
			say "squishy";
		else if Body Definition of x < 7: [mid muscle group]
			say "plyable";
		else: [high muscle group]
			say "rock-hard";

to say Pecs Size Adjective of ( x - a person ):
	if Body Weight of x < 4: [low weight group]
		if Body Definition of x < 4: [low muscle group]
			say "totally flat";
		else if Body Definition of x < 7: [mid muscle group]
			say "flat";
		else: [high muscle group]
			say "flat";
	else if Body Weight of x < 7: [mid weight group]
		if Body Definition of x < 4: [low muscle group]
			say "flat";
		else if Body Definition of x < 7: [mid muscle group]
			say "flat";
		else: [high muscle group]
			say "protruding";
	else: [high weight group]
		if Body Definition of x < 4: [low muscle group]
			say "breast-like";
		else if Body Definition of x < 7: [mid muscle group]
			say "protruding";
		else: [high muscle group]
			say "bulging";

to say Ass Shape Adjective of ( x - a person ):
	if Ass Width of x is 1: [dainty ass]
		if Body Definition of x < 4: [low muscle group]
			say "flat";
		else if Body Definition of x < 7: [mid muscle group]
			say "perky";
		else: [high muscle group]
			say "hard";
	else if Ass Width of x is 2: [small ass]
		if Body Definition of x < 4: [low muscle group]
			say "bouncy";
		else if Body Definition of x < 7: [mid muscle group]
			say "bubble-shaped";
		else: [high muscle group]
			say "firm";
	else if Ass Width of x is 3: [round ass]
		if Body Definition of x < 4: [low muscle group]
			say "wobbly";
		else if Body Definition of x < 7: [mid muscle group]
			say "curvy";
		else: [high muscle group]
			say "squeezable, yet firm";
	else if Ass Width of x is 4: [huge ass]
		if Body Definition of x < 4: [low muscle group]
			say "jiggly";
		else if Body Definition of x < 7: [mid muscle group]
			say "curvacious";
		else: [high muscle group]
			say "squeezable, yet still firm";
	else if Ass Width of x is 5: [enormous ass]
		if Body Definition of x < 4: [low muscle group]
			say "very jiggly";
		else if Body Definition of x < 7: [mid muscle group]
			say "thicc";
		else: [high muscle group]
			say "expansive, yet somewhat firm";

to say Ass Width Adjective of ( x - a person ):
	if Ass Width of X is:
		-- 1:
			say "dainty";
		-- 2:
			say "small";
		-- 3:
			say "round";
		-- 4:
			say "huge";
		-- 5:
			say "enormous";

to say Gender Adjective of ( x - a person ):
	if Androginity of x is:
		-- 1:
			say "hypermasculine";
		-- 2:
			say "[one of]masculine[or]manly[at random]";
		-- 3:
			say "somewhat effeminate";
		-- 4:
			say "effeminate";
		-- 5:
			say "androgynous";
		-- 6:
			say "feminine butch";
		-- 7:
			say "tomboyish";
		-- 8:
			say "[one of]feminine[or]womanly[or]ladylike[at random]";
		-- 9:
			say "hyperfeminine";

to say Body Hair Adjective of ( x - a person ): [used in "He touches your [Body Hair Adjective of Player] chest."]
	if Body Hair Length of x is:
		-- 0:
			say "nonexistent";
		-- 1:
			say "smooth";
		-- 2:
			say "[one of]slightly hairy[or]lightly fuzzed[at random]";
		-- 3:
			say "[one of]somewhat hairy[or]moderately hairy[at random]";
		-- 4:
			say "[one of]hairy[or]thickly fuzzed[at random]";
		-- 5:
			say "[one of]very hairy[or]almost furry[at random]";

to say Body Hair Description of ( x - a person ): [used in "You have a broad, [Torso Color of Player] chest with [Body Hair Description]."]
	if Body Hair Length of x is:
		-- 0:
			say "ERROR: This infection should not show a body hair description! Please report how you saw this on the FS Discord.";
		-- 1:
			say "smooth skin";
		-- 2:
			say "[one of]light body hair[or]a light fuzz of hair[or]a little body hair[at random]";
		-- 3:
			say "[one of]moderate body hair[or]a moderate fuzz of hair[or]a moderate amount of body hair[at random]";
		-- 4:
			say "[one of]heavy body hair[or]thick body hair[or]a large amount of body hair[at random]";
		-- 5:
			say "[one of]furry body hair[or]a whole lot of body hair[or]a fur-like amount of hair[at random]";

to say Limbs Adjective of ( x - a person ):
	if Body Weight of x < 4: [low weight group]
		if body definition of x < 4: [low muscle group]
			say "rail-thin";
		else if Body Definition of x < 7: [mid muscle group]
			say "slender";
		else: [high muscle group]
			say "sinewy";
	else if Body Weight of x < 7: [mid weight group]
		if Body Definition of x < 4: [low muscle group]
			say "average";
		else if body definition of x < 7: [mid muscle group]
			say "firm";
		else: [high muscle group]
			say "muscular";
	else: [high weight group]
		if Body Definition of x < 4: [low muscle group]
			say "flabby";
		else if Body Definition of x < 7: [mid muscle group]
			say "meaty";
		else: [high muscle group]
			say "rippling";


[ TODO - Coding Idea: Body changes at high noon]
[ Hunger < 20: -1 weight; Hunger > 80: +1 weight]
[ Definition - Working out at the fitness studio]

to say Mouth Length Adjective of ( x - a person ):
	if Mouth Length of x < 3: [inches deep]
		say "petite";
	else if Mouth Length of x < 5: [inches deep]
		say "shallow";
	else if Mouth Length of x < 9: [inches deep]
		say "average";
	else if Mouth Length of x < 15: [inches deep]
		say "deep";
	else: [inches deep]
		say "bottomless";

to say Mouth Circumference Adjective of ( x - a person ):
	if Mouth Circumference of x is:
		-- 1:
			say "thin";
		-- 2:
			say "small";
		-- 3:
			say "normal";
		-- 4:
			say "wide";
		-- 5:
			say "gaping";

to say Breast Size Description of ( x - a person ):
	if Breast Size of x is:
		-- 0:
			say "flat";
		-- 1:
			say "A cup";
		-- 2:
			say "B cup";
		-- 3:
			say "C cup";
		-- 4:
			say "D cup";
		-- 5:
			say "DD cup";
		-- 6:
			say "DDD cup";
		-- 7:
			say "DDDD cup";
		-- 8:
			say "H cup";
		-- 9:
			say "I cup";
		-- 10:
			say "J cup";
		-- 11:
			say "K cup";
		-- 12:
			say "L cup";
		-- 13:
			say "M cup";
		-- 14:
			say "N cup";
		-- 15:
			say "O cup";
		-- 16:
			say "P cup";
		-- 17:
			say "Q cup";
		-- 18:
			say "R cup";
		-- 19:
			say "S cup";

to say Asshole Depth Adjective of ( x - a person ):
	if Asshole Depth of x < 3: [inches deep]
		say "petite";
	else if Asshole Depth of x < 5: [inches deep]
		say "shallow";
	else if Asshole Depth of x < 9: [inches deep]
		say "average";
	else if Asshole Depth of x < 15: [inches deep]
		say "deep";
	else: [inches deep]
		say "bottomless";

to say Asshole Tightness Adjective of ( x - a person ):
	if Asshole Tightness of x is:
		-- 1:
			say "extremely tight";
		-- 2:
			say "tight";
		-- 3:
			say "receptive";
		-- 4:
			say "open";
		-- 5:
			say "gaping";

to say Cock Girth Adjective of ( x - a person ):
	if Cock Girth of x is:
		-- 1:
			say "thin";
		-- 2:
			say "slender";
		-- 3:
			say "average";
		-- 4:
			say "thick";
		-- 5:
			say "monstrous";

to say Ball Size Adjective of ( x - a person ):
	if Ball Size of x is:
		-- 0:
			say "nonexistent";
		-- 1:
			say "[one of]acorn-sized[or]gumball-sized[at random]";
		-- 2:
			say "dove egg-sized";
		-- 3:
			say "chicken egg-sized";
		-- 4:
			say "goose-egg sized";
		-- 5:
			say "ostrich-egg sized";
		-- 6:
			say "basketball-sized";
		-- 7:
			say "beachball-sized";

to say Cunt Tightness Adjective of ( x - a person ):
	if Cunt Tightness of x < 4: [inches circumference]
		say "[one of]extremely tight[or]very snug[at random]";
	else if Cunt Tightness of x < 6: [inches circumference]
		say "[one of]tight[or]snug[at random]";
	else if Cunt Tightness of x < 8: [inches circumference]
		say "[one of]receptive[or]well-used[at random]";
	else if Cunt Tightness of x < 11: [inches circumference]
		say "open";
	else: [inches deep]
		say "gaping";

to say Clit Size Adjective of ( x - a person ):
	if Clit Size of x is:
		-- 0:
			say "nonexistent";
		-- 1:
			say "[one of]very small[or]tiny[at random]";
		-- 2:
			say "small";
		-- 3:
			say "[one of]average[or]mid-sized[or]well sized[at random]";
		-- 4:
			say "[one of]large[or]big[or]above average[at random]";
		-- 5:
			say "[one of]very large[or]very big[or]huge[at random]";


This is the brain descr rule:
	if humanity of Player > 90:
		now descr is "[one of]clean[or]pristine[or]perfectly normal[at random][lusting]";
	else if humanity of Player > 70:
		now descr is "[one of]lightly tainted[or]occasionally plagued with odd instinctual[at random][lusting]";
	else if humanity of Player > 30:
		if FaceName of Player is not "Human":
			now descr is "increasingly [faceSpeciesName of Player in lower case] perspective[lusting]";
		else if BodyName of Player is not "Human":
			now descr is "increasingly [bodySpeciesName of Player in lower case] perspective[lusting]";
		else if SkinName of Player is not "Human":
			now descr is "increasingly [skinSpeciesName of Player in lower case] perspective[lusting]";
		else if CockName of Player is not "Human":
			now descr is "increasingly [cockSpeciesName of Player in lower case] perspective[lusting]";
		else if TailName of Player is not "Human":
			now descr is "increasingly [tailSpeciesName of Player in lower case] perspective[lusting]";
		else:
			now descr is "increasingly corrupted perspective[lusting]";
	else:
		now descr is "almost entirely subsumed[lusting]";
	if Libido of Player < 21, now lusting is " thoughts.";
	if Libido of Player > 80:
		let RandomCreature be a random number from 1 to number of entries in EncounteredEnemies of Player;
		now lusting is " thoughts. You are almost entirely subsumed with a random thought of [one of]fucking[or]being fucked by[at random] [a entry RandomCreature of EncounteredEnemies of Player in lower case] [one of]wildly[or]slowly[or]for hours[or]forever[or]until you pass out[at random], the daydream distracting you for half an hour.";
	else if Libido of Player > 40:
		now lusting is " thoughts. You are [one of]distracted by doodling a big breasted monster[or]distracted by doodling a big cocked monster[or]distracted by taking a moment to rub at yourself[at random].";
	else if Libido of Player > 20:
		now lusting is " thoughts. You are riddled with occasionally dirty lapses.";

This is the breast descr rule:
	if Breast Size of Player < 1:
		now descr is "[one of]nonexistent[or]entirely flat[or]manly[at random]";
		now sh-descr is "[one of]nonexistent[or]entirely flat[or]manly[at random]";
	else if Breast Size of Player < 3:
		now descr is "[one of]palmable[or]small[or]dainty[or]slender[or]perky[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]palmable[or]small[or]dainty[or]slender[or]perky[at random]";
	else if Breast Size of Player is 3:
		now descr is "[one of]reasonably-sized[or]average[or]moderate[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]reasonably-sized[or]average[or]moderate[at random]";
	else if Breast Size of Player is 4:
		now descr is "[one of]eye-catching[or]substantive[or]shapely[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]eye-catching[or]substantive[or]shapely[at random]";
	else if Breast Size of Player < 5:
		now descr is "[one of]average-sized[or]normal-sized[or]healthy-sized[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]average-sized[or]normal-sized[or]healthy-sized[at random]";
	else if Breast Size of Player < 7:
		now descr is "[one of]large[or]jiggling[or]well-shaped[or]plump[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]large[or]jiggling[or]well-shaped[or]plump[at random]";
	else if Breast Size of Player < 9:
		now descr is "[one of]massive[or]huge[or]heavy[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]massive[or]huge[or]heavy[at random]";
	else if Breast Size of Player < 12:
		now descr is "[one of]enormous[or]giant[or]hulking[or]head-sized[or]basketball-sized[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]enormous[or]giant[or]hulking[or]head-sized[or]basketball-sized[at random]";
	else:
		now descr is "[one of]gargantuan[or]beachball-sized[or]mountainous[or]colossal[or]gigantic[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]gargantuan[or]beachball-sized[or]mountainous[or]colossal[or]gigantic[at random]";
	now breast size desc of Player is descr;
	now short breast size desc of Player is sh-descr;
	rule succeeds;

This is the cock descr rule:
	if Cock Length of Player < 3:
		now descr is "[one of]tiny[or]very small[or]puny[at random]";
	else if Cock Length of Player < 6:
		now descr is "[one of]smaller than average[or]small[or]below average[at random]";
	else if Cock Length of Player < 8:
		now descr is "[one of]average in size[or]normal-sized[at random]";
	else if Cock Length of Player < 12:
		now descr is "[one of]large[or]sizable[or]well-built[or]longer than average[at random]";
	else if Cock Length of Player is 12:
		now descr is "foot long";
	else if Cock Length of Player < 18:
		now descr is "[one of]huge[or]heavy[or]ponderous[or]massive[or]forearm length[at random]";
	else if Cock Length of Player < 25:
		now descr is "[one of]giant[or]hulking[or]hypertrophied[or]elephantine[or]monstrous[or]towering[at random]";
	else:
		now descr is "[one of]mammoth[or]gigantic[or]colossal[or]titanic[or]third leg[or]devastating[at random]";
	now cock size desc of Player is descr;
	rule succeeds;

to say Balls:
	say "[one of]balls[or]testicles[or]gonads[at random]";

to say Cum Load Size of ( x - a person ):
	if Ball Size of x > 0:
		if Ball Size of x is 1:
			say "[one of]piddling[or]tiny[or]minuscule[or]feeble[or]small[or]meager[at random]";
		else if Ball Size of x is 2:
			say "[one of]average[or]normal-sized[or]fair-sized[or]moderate[or]adequate[or]regular-sized[at random]";
		else if Ball Size of x is 3:
			say "[one of]triple-dose[or]half-cup[or]cupful[or]ample[or]above-average[or]generous[or]sizable[at random]";
		else if Ball Size of x is 4:
			say "[one of]half-liter[or]considerable[or]impressive[or]pint-full[or]copious[or]substantial[or]large[or]abundant[or]plentiful[at random]";
		else if Ball Size of x is 5:
			say "[one of]one-liter[or]flowing[or]heavy[or]quart-sized[or]drenching[or]jumbo[or]whopping[at random]";
		else if Ball Size of x is 6:
			say "[one of]two-liter[or]half-gallon[or]giant[or]huge[or]blasting[or]enormous[or]immense[at random]";
		else if Ball Size of x > 6:
			say "[one of]overflowing[or]bucket-filling[or]excessive[or]gushing[or]massive[at random]";

This is the cunt descr rule:
	if Cunt Depth of Player < 3:
		now descr is "[one of]extremely small[or]puny[at random]";
	else if Cunt Depth of Player < 6:
		now descr is "[one of]smaller than average[or]small[or]below average[at random]";
	else if Cunt Depth of Player < 8:
		now descr is "[one of]average[or]normal-sized[at random]";
	else if Cunt Depth of Player < 12:
		now descr is "[one of]large[or]thick-lipped[or]above average[at random]";
	else if Cunt Depth of Player < 18:
		now descr is "[one of]belly bulgingly huge[or]inhumanly deep[or]forearm length[at random]";
	else if Cunt Depth of Player < 25:
		now descr is "[one of]titanic[or]astonishingly deep[or]elephantine[at random]";
	else:
		now descr is "[one of]cavernous[or]seemingly bottomless[or]canyonlike[at random]";
	now cunt size desc of Player is descr;
	rule succeeds;

Part 4 - Actions

[This is generally not used and bypassed by an "instead of conversing" - talk menus are more useful]
understand "talk to/with/-- [person]" as conversing.
understand "chat with/-- [person]" as conversing.

Conversing is an action applying to one thing.

Check Conversing:
	if the noun is the player, say "I know this is stressful, but talking to yourself will not help." instead;
	if the number of entries in conversation of noun is 0, say "They have nothing to say." instead.

carry out conversing:
	sort conversation of the noun in random order;
	repeat with comment running through conversation of the noun:
		say "     [Noun] says, '[Comment]'[line break]";
		break;


Characters ends here.
