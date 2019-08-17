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
	now HeadName of Target is Infection;
	now TorsoName of Target is Infection;
	now BackName of Target is Infection;
	now ArmsName of Target is Infection;
	now LegsName of Target is Infection;
	now AssName of Target is Infection;
	now TailName of Target is Infection;
	now HeadSpeciesName of Target is Infection;
	now TorsoSpeciesName of Target is Infection;
	now BackSpeciesName of Target is Infection;
	now ArmsSpeciesName of Target is Infection;
	now LegsSpeciesName of Target is Infection;
	now AssSpeciesName of Target is Infection;
	now TailSpeciesName of Target is Infection;

Sex and Infection Functions ends here.
