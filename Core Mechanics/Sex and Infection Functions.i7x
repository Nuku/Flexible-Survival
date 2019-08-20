Sex and Infection Functions by Core Mechanics begins here.
[Version 1 - Pulled Together into its own file]
"Basic Functions for Sex, Sexual Changes and Infections of the Flexible Survival game"

Definition: A person (called x) is FullyNewTypeInfected:
	if HeadName of x is "", no;
	if TorsoName of x is "", no;
	if BackName of x is "", no;
	if ArmsName of x is "", no;
	if LegsName of x is "", no;
	if AssName of x is "", no;
	if TailName of x is "", no;
	if CockName of x is "", no;
	if CuntName of x is "", no;
	yes;

to decide if (x - a person) has a body of (i - a text):
	if TorsoName of x is i, decide yes;
	if BodyName of x is i, decide yes;
	decide no;

to decide which text is GetSpeciesName from (N - a text):
	if N is not "" and there is a Name of N in the Table of Random Critters:
		choose a row with Name of N in the Table of Random Critters;
		if Species Name entry is not "":
			decide on Species Name entry;
		else:
			decide on N;
	decide on ""; [Name not found or N is empty - Return "" as a failsafe]

to remove manhood from ( x - a person ):
	now Cock Count of x is 0;
	now Cock Length of x is 0;
	now Ball Size of x is 0;

to remove womanhood from ( x - a person ):
	now Cunt Count of x is 0;
	now Cunt Depth of x is 0;
	now Cunt Tightness of x is 0;

[compares genitals and returns a number for the result]
[ > 0 - x is either a pure male or a herm and the cock is longer ]
[ = 0 - x is either a neuter or a herm and cock length and cunt depth are the same ]
[ < 0 - x is either a pure female or a herm and the cunt is deeper ]
to decide which number is compare genitals of ( x - a person ):
	if x is puremale, decide on Cock Length of x;
	if x is neuter, decide on 0;
	if x is purefemale, decide on 0 - Cunt Depth of x;
	[x is a herm:]
	decide on Cock Length of x - Cunt Depth of x;

[
[ Example for later use. e. g.: if GetBallSize of Player > 4: ]
to decide which number is GetBallSize of ( x - a person ):
	if x is male, decide on Ball Size of x;
	decide on 0;
]

to SetInfectionsOf ( Target - a person ) to infections of ( Source - a person):
	if Source is Player and Player is not FullyNewTypeInfected:
		now HeadName of Target is FaceName of Source;
		now TorsoName of Target is BodyName of Source;
		now BackName of Target is BodyName of Source;
		now ArmsName of Target is BodyName of Source;
		now LegsName of Target is BodyName of Source;
		now AssName of Target is TailName of Source;
		now TailName of Target is TailName of Source;
		now HeadSpeciesName of Target is FaceSpeciesName of Source;
		now TorsoSpeciesName of Target is BodySpeciesName of Source;
		now BackSpeciesName of Target is BodySpeciesName of Source;
		now ArmsSpeciesName of Target is BodySpeciesName of Source;
		now LegsSpeciesName of Target is BodySpeciesName of Source;
		now AssSpeciesName of Target is TailSpeciesName of Source;
		now TailSpeciesName of Target is TailSpeciesName of Source;
	else:
		now HeadName of Target is HeadName of Source;
		now TorsoName of Target is TorsoName of Source;
		now BackName of Target is BackName of Source;
		now ArmsName of Target is ArmsName of Source;
		now LegsName of Target is LegsName of Source;
		now AssName of Target is AssName of Source;
		now TailName of Target is TailName of Source;
		now HeadSpeciesName of Target is HeadSpeciesName of Source;
		now TorsoSpeciesName of Target is TorsoSpeciesName of Source;
		now BackSpeciesName of Target is BackSpeciesName of Source;
		now ArmsSpeciesName of Target is ArmsSpeciesName of Source;
		now LegsSpeciesName of Target is LegsSpeciesName of Source;
		now AssSpeciesName of Target is AssSpeciesName of Source;
		now TailSpeciesName of Target is TailSpeciesName of Source;

to SetInfectionsOf ( Target - a person ) to ( Infection - a text ):
	if there is no Name of Infection in the Table of Random Critters:
		say "ERROR: Attempted to set the targets infection to '[Infection]'. Please report this on the FS Discord.[line break]";
		stop the action;
	let InfectionSpeciesName be GetSpeciesName from Infection;
	now HeadName of Target is Infection;
	now TorsoName of Target is Infection;
	now BackName of Target is Infection;
	now ArmsName of Target is Infection;
	now LegsName of Target is Infection;
	now AssName of Target is Infection;
	now TailName of Target is Infection;
	now HeadSpeciesName of Target is InfectionSpeciesName;
	now TorsoSpeciesName of Target is InfectionSpeciesName;
	now BackSpeciesName of Target is InfectionSpeciesName;
	now ArmsSpeciesName of Target is InfectionSpeciesName;
	now LegsSpeciesName of Target is InfectionSpeciesName;
	now AssSpeciesName of Target is InfectionSpeciesName;
	now TailSpeciesName of Target is InfectionSpeciesName;

Sex and Infection Functions ends here.
