Version 1 of Definitions by MinimalBuild begins here.
[Version 1 - by Dys, adds Definitions for checking the sizes of NPCs and the player]

[Size check functions]
[Is x smaller than y?]
Definition: A person (called x) is smaller than player:
	if scalevalue of x < scalevalue of Player, yes;
	no;

[Is x larger than y?]
Definition: A person (called x) is larger than player:
	if scalevalue of x > scalevalue of Player, yes;
	no;

[Are x and y equalsized?]
Definition: A person (called x) is equalsized with player:
	if scalevalue of x is scalevalue of Player, yes;
	no;

[State checks]
[Does the person have boobs?]
Definition: A person (called x) is MuzzleFaced:
	if FaceName of x is listed in { "test" }, yes;
	no;

Definition: A person (called x) is FeralBodied:
	if BodyName of x is listed in { "test" }, yes;
	no;

Definition: A person (called x) is PrivateBreeder:
	if "Private Breeder" is listed in Traits of x, yes;
	no;


Definitions ends here.
