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
Definition: A person (called x) is MuzzleFaced:
	if facename of x is listed in { "test" }, yes;
	no;

Definition: A person (called x) is FeralBodied:
	if bodyname of x is listed in { "test" }, yes;
	no;

Definitions ends here.
