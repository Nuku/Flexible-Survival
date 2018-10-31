Version 1 of Definitions by Core Mechanics begins here.
[Version 1 - by Dys, adds Definitions for checking the sizes of NPCs and the player]

[Size check functions]
[Is x smaller than y?]
Definition: A person (called x) is smaller than player:
	if scalevalue of x < scalevalue of player, yes;
	no;

[Is x larger than y?]
Definition: A person (called x) is larger than player:
	if scalevalue of x > scalevalue of player, yes;
	no;

[Are x and y equalsized?]
Definition: A person (called x) is equalsized with player:
	if scalevalue of x is scalevalue of player, yes;
	no;

[State checks]
[Does the person have boobs?]
Definition: A person (called x) is breasted:
	if breasts of x > 0 and breast size of x > 0, yes;
	no;

Definition: A situation (called x) is available:
	if sarea of x is "Nowhere", no; [not findable through exploration/hunting]
	if x is inactive, no; [for banning]
	if x is resolved, no; [the player has played through these]
	if x is not PrereqComplete, no;
	if x is close:
		if score < minscore of x:
			no;
		else if hardmode is true:
			yes;
		else if the level of x < (the level of the player plus levelwindow plus 1):
			yes;
	no;

Definition: A situation (called x) is PrereqComplete:
	if PrereqCompanion of x is not nothing and PrereqCompanion of x is not companion of player, no;
	if Prereq1ResolvedMandatory of x is true and Prereq1 of x is not resolved, no;
	if Resolution of Prereq1 of x is not listed in Prereq1Resolution of x, no;
	if Prereq2ResolvedMandatory of x is true and Prereq2 of x is not resolved, no;
	if Resolution of Prereq2 of x is not listed in Prereq2Resolution of x, no;
	if Prereq3ResolvedMandatory of x is true and Prereq3 of x is not resolved, no;
	if Resolution of Prereq3 of x is not listed in Prereq3Resolution of x, no;
	yes;

Definition: A situation (called x) is close:
	if ( sarea of x exactly matches the text battleground, case insensitively ) or ( battleground is "Outside" and ( the sarea of x is "Allzones" or the sarea of x is "allzones" ) ):
		yes;
	no;

Definition: A scavevent (called x) is scavable:
	if ( sarea of x exactly matches the text battleground, case insensitively ) or ( sarea of x is "Allzones" or the sarea of x is "allzones" ):
		if score < minscore of x:
			no;
		else if hardmode is true:
			yes;
		else if the level of x < (the level of the player plus levelwindow plus 1):
			yes;
	no;

Definition: A grab object (called x) is wielded:
	if weapon object of player is x, yes;
	no;

Definition: A grab object (called x) is unwieldy:		[applies to armaments only]
	if grab object is journal, no;
	if the absolute value of ( scalevalue of player - objsize of x ) > 1, yes;
	no;

A person can be defaultnamed. A person is usually defaultnamed.

Definition: A person (called x) is defaultnamed:
	if name of player is "Player", yes;
	no;

A person can be submissive. A person is usually not submissive.

Definition: A person (called x) is submissive:
	if "Submissive" is listed in feats of x, yes;
	no;

A person can be dominant. A person is usually not dominant.

Definition: A person (called x) is dominant:
	if "Dominant" is listed in feats of x, yes;
	no;

A person can be kinky. A person is usually not kinky.

Definition: A person (called x) is kinky:
	if "Kinky" is listed in feats of x, yes;
	no;

A person can be twistcapped. A person is usually not twistcapped.

Definition: A person (called x) is twistcapped:
	if "Twisted Capacity" is listed in feats of x, yes;
	no;

A person can be MProN. A person is usually not MProN.

Definition: A person (called x) is MProN:
	if PronounSet of x is "Male", yes;
	no;

A person can be FProN. A person is usually not FProN.

Definition: A person (called x) is FProN:
	if PronounSet of x is "Female", yes;
	no;

A person can be HProN. A person is usually not HProN.

Definition: A person (called x) is HProN:
	if PronounSet of x is "Herm", yes;
	no;

A person can be NProN. A person is usually not NProN.

Definition: A person (called x) is NProN:
	if PronounSet of x is "Neuter", yes;
	no;

A person can be internal. A person is usually not internal.

internalbypass is a truth state that varies. internalbypass is usually false.

Definition: A person (called x) is internal:
	if cockname of x is listed in infections of internallist and internalbypass is false, yes;
	no;

a person can be knotted. a person is usually not knotted.

Definition: A person (called x) is knotted:
	if cockname of player is listed in infections of knotlist, yes;
	no;

a person can be barbed. a person is usually not barbed.

Definition: A person (called x) is barbed:
	if cockname of player is listed in infections of BarbedCocklist, yes;
	no;

a person can be flared. a person is usually not flared.

Definition: A person (called x) is flared:
	if cockname of player is listed in infections of Bluntlist, yes;
	no;

Definition: A person (called x) is perminfected:
	if ( JackalManTF > 0 or JackalBoyTF > 0 ) or nightmaretf > 0 or HellHoundlevel > 0 or ( wrcursestatus >= 7 and wrcursestatus < 100 ), yes;
	no;

Definition: A person (called x) is pure:
	if bodyname of x is facename of x:
		if bodyname of x is tailname of x:
			if bodyname of x is skinname of x:
				if bodyname of x is cockname of x:
					yes;
	no;

Definition: A person (called x) is purehuman:
	if bodyname of player is "Human" or bodyname of player is "Herm Human":
		if facename of player is "Human" or facename of player is "Herm Human":
			if tailname of player is "Human" or tailname of player is "Herm Human":
				if skinname of player is "Human" or skinname of player is "Herm Human":
					if cockname of player is "Human" or cockname of player is "Herm Human":
						yes;
	no;

Definition: A person (called x) is male:			[note: this is both male and herm]
	if cocks of x > 0, yes;

Definition: A person (called x) is puremale:
	if cocks of x > 0 and cunts of x is 0, yes;

Definition: A person (called x) is female:			[note: this is both female and herm]
	if cunts of x > 0, yes;

Definition: A person (called x) is purefemale:
	if cunts of x > 0 and cocks of x is 0, yes;

Definition: A person (called x) is herm:
	if cocks of x > 0 and cunts of x > 0, yes;

Definition: A person (called x) is neuter:
	if cocks of x is 0 and cunts of x is 0, yes;

A person can be booked. A person can be bunkered. A person is usually not booked. A person is usually not bunkered.

Definition: A person (Called x) is booked:
	If x is the player, no;
	If x is Trixie, no;
	if x is Velos, no;
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
	if the location of x is Garden, yes;
	if the location of x is Sitting Area, yes;
	if the location of x is Garden View, yes;
	if the location of x is Darkened Alcove, yes;
	if the location of x is Attic, yes;
	if x is Zoe:
		if "Saved" is listed in Traits of Zoe, yes;
			[if Rabbit Tagger is resolved,] [What is this?][ yes; ][Zoe is absent during the day, but we need the booked to be true for the room description.]
	no;

Definition: A person (Called x) is bunkered:
	If x is the player, no;
	if x is Velos, no;
	if the location of x is Bunker, yes;
	if the location of x is Communal Shower, yes;
	if the location of x is Underground Restroom, yes;
	if the location of x is Maintenance Closet, yes;
	no;

Definition: A person (called x) is CockFitsInPlayerPussy:
	if "Twisted Capacity" is listed in the feats of player, yes;
	if cock length of x > cunt length of player + 1, no; [some stretching allowed]
	yes;

Definition: A person (called x) is CuntFitsForPlayerCock:
	if cock length of player > cunt length of x + 1, no; [some stretching allowed]
	yes;

Definition: A person (called x) is PlayerCumLoadInflates: [yes = inflation; can be adapted for any kind of inflation (egg, enema, etc.)]
	if ScaleValue of x is 1 and cock width of player >= 6, yes;
	if ScaleValue of x is 2 and cock width of player >= 12, yes;
	if ScaleValue of x is 3 and cock width of player >= 16, yes;
	if ScaleValue of x is 4 and cock width of player >= 25, yes;
	if cock width of player >= 32, yes;
	no;

Definition: A person (called x) is CumLoadInflatesPlayer: [yes = inflation; can be adapted for any kind of inflation (egg, enema, etc.)]
	if ScaleValue of player is 1 and cock width of x >= 6, yes;
	if ScaleValue of player is 2 and cock width of x >= 12, yes;
	if ScaleValue of player is 3 and cock width of x >= 16, yes;
	if ScaleValue of player is 4 and cock width of x >= 25, yes;
	if cock width of x >= 32, yes;
	no;

Definition: A person (called x) is barefoot:
	let FeetItem be a grab object;
	now FeetItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "feet":
			now FeetItem is z;
	if FeetItem is journal: [already naked]
		yes;
	else:
		no;

Definition: A person (called x) is barecrotch:
	let WaistItem be a grab object;
	now WaistItem is journal;
	let CrotchItem be a grab object;
	now CrotchItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is journal and CrotchItem is journal: [already naked]
		yes;
	else:
		no;

Definition: A person (called x) is barechest:
	let ChestItem be a grab object;
	now ChestItem is journal;
	let BodyItem be a grab object;
	now BodyItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "chest":
			now ChestItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "Body":
			now BodyItem is z;
	if ChestItem is journal and BodyItem is journal: [already naked]
		yes;
	else:
		no;

Definition: A person (called x) is naked:
	if x is barecrotch and x is barechest and x is barefoot:
		yes;
	else:
		no;

Definition: A person (called x) is MuzzleFaced:
	if facename of x is listed in Equinelist or facename of x is listed in Vulpinelist or facename of x is listed in Caninelist, yes;
	else, no;

Definition: A person (called x) is FeralBodied:
	if bodyname of x is listed in Feral, yes;
	else, no;

Definitions ends here.
