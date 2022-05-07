Version 1 of Dreamcatcher by Qazarar begins here.
[Adds a dreamcatcher item and a system for dream events]

Section 1 - Item Description


Table of Game Objects (continued)
name	desc	weight	object
"dreamcatcher"	"A quaint dreamcatcher"	1	dreamcatcher

dreamcatcher is a grab object. It is not temporary.

instead of sniffing dreamcatcher:
	say "It has a faint, unidentifiable scent that reminds you at once of a warm cup of tea and a cozy pillow.";

Usedesc of dreamcatcher is "[perchance to dream]";

Section 2 - DreamTable

A dreamevent is a kind of thing.
A dreamevent can be resolved or unresolved. A dreamevent is usually unresolved.
A dreamevent can be active or inactive. A dreamevent is usually inactive.
A dreamevent has a text called DreamFunction.

Definition: A dreamevent (called x) is dreamable:
	if x is inactive, no;
	if x is resolved, no;
	yes;

Good Dreams is a dreamevent. [ensures one generic dream is always available]
DreamFunction of Good Dreams is "[DreamEvent Good Dreams]"

[Table of DreamEvents
name(text)	dreamcontents(text)	dreamable(truth state) seen(truth state)
"Good Dreams"	"[GoodDreamsEvent]"	True	False]

Section 3 - Events

Table of GameEventIDs (continued)
Object	Name
Chasing Dreams	"Chasing Dreams"

Chasing Dreams is a situation.
ResolveFunction of Chasing Dreams is "[ResolveEvent Chasing Dreams]".
The level of Chasing Dreams is 5.
Sarea of Chasing Dreams is "Park".

to say ResolveEvent Chasing Dreams:
	project the figure of Diego_face_icon;
	say "     While in the relative wilds of the park, you catch a sight of a particular coyote out of the corner of your eye. Curious, you go to follow and see what [SubjectPro of Diego] is planning this time. You keep a safe distance, hoping that this isn't merely an elaborate plan for yet another trick played on you from the coyote. Intentionally or not, [SubjectPro of Diego] seems to be leading you on a merry chase for a time, until finally when you round a tree, [SubjectPro of Diego] seems to have vanished. The only remaining sign that the coyote you were following might have been here is a simple dreamcatcher laying on the ground, maybe dropped by mistake, maybe left for you to find. Carefully, you pick it up, watching for any apparent tricks, but nothing seems obviously suspicious to you, and you simply pocket the dreamcatcher. Perhaps a trick will reveal itself in the future, but at the moment it seems safe enough.";
	ItemGain dreamcatcher by 1;
	now Chasing Dreams is inactive;
	now Good Dreams is active;

to say DreamEvent Good Dreams:
	say "     As you sleep, you find your mind filled only with gentle dreams, mere fading pleasantries. These good dreams grace you until you wake up, when they disperse to the winds, so easily forgotten in the waking world.";

to say perchance to dream: [checks if you can sleep]
	if caffeinehigh of Player > 0:
		say "You try to settle down to rest, but you are filled with manic, hyperactive energy and unable to rest. Your body just won't settle down and any time to try to relax, you find yourself only thinking of going out and looking for more soda to drink.";
		stop the action;
	if location of Player is Palomino or location of Player is Private Booths:
		say "Why are you even trying to sleep here? Everyone's partying like it's the end of the world.";
		stop the action;
	if cot is owned:
		say "You pull out your cot and lay it out before resting for a while.";
	else if cot is present:
		say "You rest on the cot.";
	else if the player is in the bunker:
		say "You rest on one of the cots available.";
	else if the player is in Slave Cell 1 or player is in Slave Cell 2:
		say "You rest on the bed in the back of the cell.";
	else if silk hammock is owned or silk hammock is present:
		say "You set up your silken hammock at the next appropriate spot and lie in it, resting for a while.";
	else if sleeping bag is owned or sleeping bag is present:
		say "You roll out the sleeping bag in an appropriate spot and lie in it, resting for a while.";
	else:
		say "You have nothing to rest on.";
		stop the action;
	say "[dream a little dream]";

to say dream a little dream: [calls an available dream event]
	if there is an active unresolved dreamevent:
		let L be a random dreamable dreamevent;
		if L is not nothing:
			say "[DreamFunction of L]";
			wait for any key;
	else:
		say "     You toss and turn, but it seems the dreamcatcher is unable to help you rest.";

Dreamcatcher ends here.
