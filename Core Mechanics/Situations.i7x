Version 1 of Situations by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

A situation is a kind of thing.
A situation can be resolved or unresolved. A situation is usually unresolved. [resolved = player has done this event, will not encounter it again]
A situation can be active or inactive. A situation is usually active. [inactive = event is not yet activated, used for later entries in a chain of events]
A situation has a text called ResolveFunction. ResolveFunction of a situation is usually "[ResolveError]". [the ResolveFunction contains the actual text of the situation]
A situation has a number called Resolution. [this is the "memory" of a situation - used to 'save' intermediate stages, and the final outcome so one can refer back to what the player did]
A situation has a situation called Prereq1. [prerequisite event that has to be done first before the current one can come up]
A situation has a truth state called Prereq1ResolvedMandatory. Prereq1ResolvedMandatory of a situation is usually true. [does prerequisite event need to be resolved? used if the prerequisite is still open, but you still want to check against one of the intermediate resolution stages (see one line below)]
A situation has a list of numbers called Prereq1Resolution. Prereq1Resolution is usually { 0 }. [specific resolution state that the prerequisite event must be in so the current can come up - fill like this { 0, 1, 2, ...}]
A situation has a situation called Prereq2. [prerequisite event that has to be done first before the current one can come up]
A situation has a truth state called Prereq2ResolvedMandatory. Prereq2ResolvedMandatory of a situation is usually true. [does prerequisite event need to be resolved? used if the prerequisite is still open, but you still want to check against one of the intermediate resolution stages (see one line below)]
A situation has a list of numbers called Prereq2Resolution. Prereq2Resolution is usually { 0 }. [specific resolution state that the prerequisite event must be in so the current can come up - fill like this { 0, 1, 2, ...}]
A situation has a situation called Prereq3. [prerequisite event that has to be done first before the current one can come up]
A situation has a truth state called Prereq3ResolvedMandatory. Prereq3ResolvedMandatory of a situation is usually true. [does prerequisite event need to be resolved? used if the prerequisite is still open, but you still want to check against one of the intermediate resolution stages (see one line below)]
A situation has a list of numbers called Prereq3Resolution. Prereq3Resolution is usually { 0 }. [specific resolution state that the prerequisite event must be in so the current can come up - fill like this { 0, 1, 2, ...}]
A situation has an object called PrereqCompanion. [this needs to be the pet object of the specific companion - for example, Korvin has the companion object 'gshep', used like so: "PrereqCompanion of Dog Meets Dog is gshep."]
A situation has a text called PrereqTime. The PrereqTime of a situation is usually "Any". [valid options are "Any", "Day" and "Night"]
[TODO: Add PrereqNavpoint]
A situation has a text called sarea. Sarea of a situation is usually "Outside".
A situation has a number called level. The level of a situation is usually 0. [minimum level to encounter randomly]
A situation has a number called minscore. The minscore of a situation is usually -2147483648.
A featset is a kind of thing.
inasituation is a truth state that varies. inasituation is normally false. [used to bypass standard combat start / win / loss messages when fighting a creature]
Does the player mean examining a situation: it is very unlikely.

to say ResolveError:
	say "ERROR: The situation that caused this message to appear is not properly set up. Please report the situation and this message on the Flexible Survival Discord Server!";

PlaceholderSituation is a situation.
PlaceholderSituation is resolved. [needs to always be resolved]
ResolveFunction of PlaceholderSituation is "[ResolveEvent PlaceholderSituation]".

to say ResolveEvent PlaceholderSituation:
	say "This is the placeholder situation. How did you see this?";

Definition: A situation (called x) is available:
	if sarea of x is "Nowhere", no; [not findable through exploration/hunting]
	if x is inactive, no; [for banning]
	if x is resolved, no; [the player has played through these]
	if x is not PrereqComplete, no;
	if x is close:
		if score < minscore of x:
			no;
		else if HardMode is true:
			yes;
		else if the level of x < (level of Player + 1):
			yes;
	no;

Definition: A situation (called x) is WalkinAvailable:
	if x is inactive, no; [for banning]
	if x is resolved, no; [the player has played through these]
	if x is not PrereqComplete, no; [prereqcompanion, time and situations]
	if level of x > (level of Player + 1), no; [nothing more than one level higher than the player]
	yes;

Definition: A situation (called x) is PrereqComplete:
	if PrereqCompanion of x is not nothing and PrereqCompanion of x is not listed in companionList of Player, no;
	if PrereqTime of x is not "Any" and ((PrereqTime of x is "Day" and Daytimer is night) or (PrereqTime of x is "Night" and Daytimer is day)), no;
	if Prereq1ResolvedMandatory of x is true and Prereq1 of x is not resolved, no;
	if Resolution of Prereq1 of x is not listed in Prereq1Resolution of x, no;
	if Prereq2ResolvedMandatory of x is true and Prereq2 of x is not resolved, no;
	if Resolution of Prereq2 of x is not listed in Prereq2Resolution of x, no;
	if Prereq3ResolvedMandatory of x is true and Prereq3 of x is not resolved, no;
	if Resolution of Prereq3 of x is not listed in Prereq3Resolution of x, no;
	yes;

Definition: A situation (called x) is close:
	if ( sarea of x exactly matches the text battleground, case insensitively ) or ( (battleground is "Outside" or battleground is "High" or battleground is "Capitol" or battleground is "Park" or battleground is "Forest" or battleground is "Beach") and ( Sarea of x is "Allzones" or Sarea of x is "allzones" ) ):
		yes;
	no;

Definition: A scavevent (called x) is scavable:
	if ( sarea of x exactly matches the text battleground, case insensitively ) or ( (battleground is "Outside" or battleground is "High" or battleground is "Capitol" or battleground is "Park" or battleground is "Forest" or battleground is "Beach") and ( sarea of x is "Allzones" or Sarea of x is "allzones" ) ):
		if score < minscore of x:
			no;
		else if HardMode is true:
			yes;
		else if the level of x < (level of Player + 1):
			yes;
	no;




CurrentWalkinEvent_ConditionsMet is a truth state that varies. CurrentWalkinEvent_ConditionsMet is usually false. [@Tag:NotSaved]
CurrentWalkinEvent_WalkArrival is a truth state that varies. CurrentWalkinEvent_WalkArrival is usually false. [@Tag:NotSaved]
CurrentWalkinEvent_NavArrival is a truth state that varies. CurrentWalkinEvent_NavArrival is usually false. [@Tag:NotSaved]

Table of NavInEvents
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"ExampleEvent"	ExampleEvent	"[EventConditions_ExampleEvent]"	Grey Abbey Library	2500	2	100
with 1000 blank rows

Table of WalkInEvents
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"ExampleEvent"	ExampleEvent	"[EventConditions_ExampleEvent]"	Grey Abbey Library	2500	2	100
with 1000 blank rows


[ Priority Examples                                                                            ]
[  1 - ASAP, Life or Death Situations (NOT REPEATABLE!)                                        ]
[  2 - NPC has some pressing concerns (NOT REPEATABLE!)                                        ]
[  3 - Standard Story progression, not urgent (NOT REPEATABLE!)                                ]
[  4 - Repeatable Interaction/Sex Events (MINIMUM 8 turns cooldown, include % chance)          ]
[  5 - Low Priority Filler (SHORT, just to keep a location looking active )                    ]

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"ExampleEvent"	ExampleEvent	"[EventConditions_ExampleEvent]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"ExampleEvent"	ExampleEvent	"[EventConditions_ExampleEvent]"	Grey Abbey Library	2500	2	100

to say EventConditions_ExampleEvent:
	if 1 > 0: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
ExampleEvent	"ExampleEvent"

ExampleEvent is a situation.
ResolveFunction of ExampleEvent is "[ResolveEvent ExampleEvent]".
Sarea of ExampleEvent is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]
[
Prereq1 of ExampleEvent is Situation1. [prerequisite event that has to be done first before the current one can come up]
Prereq1ResolvedMandatory of ExampleEvent is true. [does prerequisite event need to be resolved?]
Prereq1Resolution of ExampleEvent is { 0 }. [specific resolution state that the prerequisite event must be in so the current can come up - fill like this { 0, 1, 2, ...}]
]
PrereqCompanion of ExampleEvent is Cute Crab.
PrereqTime of ExampleEvent is "Day".
Level of ExampleEvent is 1. [minimum level to encounter randomly]

to say ResolveEvent ExampleEvent:
	if DebugLevel > 4:
		say "     DEBUG: This is the resolve text of the ExampleEvent.";
		if CurrentWalkinEvent_WalkArrival is true:
			say "     DEBUG: The Player walked into this event.";
		else if CurrentWalkinEvent_NavArrival is true:
			say "     DEBUG: The Player Nav'd into this event.";

to WalkInEvent_Check:
	let CurrentRoom be the location;
	now CurrentWalkinEvent_WalkArrival is false; [reset]
	now CurrentWalkinEvent_NavArrival is false; [reset]
	if DebugLevel > 4:
		say "     DEBUG: Starting to check [CurrentRoom] for walkinevents.";
	if there is an EventRoom of CurrentRoom in the Table of WalkinEvents: [only proceed if there are actually WalkinEvents for this room]
		sort Table of WalkinEvents in Random order;
		sort Table of WalkinEvents in Priority order;
		if DebugLevel > 4:
			say "     DEBUG: Sorted Table of WalkinEvents.";
		repeat with X running from 1 to number of filled rows in Table of WalkinEvents:
			choose row X from the Table of WalkinEvents;
			now CurrentWalkinEvent_ConditionsMet is false; [reset]
			if DebugLevel > 4:
				say "     DEBUG: Checking Row [X].";
			if EventRoom entry is not CurrentRoom, next; [skipping past any event that does not match the current room]
			if EventObject entry is not WalkinAvailable, next; [resolved/inactive/not prereqcomplete events are skipped]
			if LastEncounterTurn entry - turns <= CoolDownTurns entry, next;
			say "[EventConditions entry]";
			if CurrentWalkinEvent_ConditionsMet is false, next;
			if DebugLevel > 4:
				say "     DEBUG: CurrentWalkinEvent_ConditionsMet true.";
			if a random chance of EncounterPercentage entry in 100 succeeds:
				now LastEncounterTurn entry is turns;
				now CurrentWalkinEvent_WalkArrival is true; [Player walked into the event, vs Nav'ing to it]
				say "[ResolveFunction of EventObject entry]";
				break;
			else:
				next;
	else:
		if DebugLevel > 4:
			say "     DEBUG: No WalkInEvents found in [CurrentRoom].";


to NavInEvent_Check (NavTarget - a room):
	if DebugLevel > 4:
		say "     DEBUG: Starting to check [NavTarget] for NavInEvents.";
	now CurrentWalkinEvent_WalkArrival is false; [reset]
	now CurrentWalkinEvent_NavArrival is false; [reset]
	if there is an EventRoom of NavTarget in the Table of NavInEvents: [only proceed if there are actually NavInEvents for this room]
		sort Table of NavInEvents in Random order;
		sort Table of NavInEvents in Priority order;
		if DebugLevel > 4:
			say "     DEBUG: Sorted Table of NavInEvents.";
		repeat with X running from 1 to number of filled rows in Table of NavInEvents:
			choose row X from the Table of NavInEvents;
			now CurrentWalkinEvent_ConditionsMet is false;
			if DebugLevel > 4:
				say "     DEBUG: Checking Row [X].";
			if EventRoom entry is not fasttravel:
				say "     ERROR: Non-Fasttravel room [X] entered for a NavInEvent. Please report this on the FS Discord to be fixed!";
			if EventRoom entry is not NavTarget, next; [skipping past any event that does not match the current room]
			if EventObject entry is not WalkinAvailable, next; [resolved/inactive/not prereqcomplete events are skipped]
			if LastEncounterTurn entry - turns <= CoolDownTurns entry, next;
			say "[EventConditions entry]";
			if CurrentWalkinEvent_ConditionsMet is false, next;
			if DebugLevel > 4:
				say "     DEBUG: CurrentWalkinEvent_ConditionsMet true.";
			if a random chance of EncounterPercentage entry in 100 succeeds:
				now LastEncounterTurn entry is turns;
				now CurrentWalkinEvent_NavArrival is true; [Player Nav'd into the event, vs walking to it]
				say "[ResolveFunction of EventObject entry]";
				break;
			else:
				next;
	else:
		if DebugLevel > 4:
			say "     DEBUG: No NavInEvents found in [NavTarget].";


to say LibraryEntry_NavOrWalk:
	if CurrentWalkinEvent_NavArrival is true: [Player nav'd in]
		say "     As you arrive at the library and step into the building, ";
	else:
		say "     As you walk up to the front entrance of the library, ";

[--------------------------------------------------------------------------------]

[Prepared code for copying to update old events:]

[
Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"ExampleEvent"	ExampleEvent	"[EventConditions_ExampleEvent]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"ExampleEvent"	ExampleEvent	"[EventConditions_ExampleEvent]"	Grey Abbey Library	2500	2	100

to say EventConditions_ExampleEvent:
	if 1 > 0: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
ExampleEvent	"ExampleEvent"

ExampleEvent is a situation.
ResolveFunction of ExampleEvent is "[ResolveEvent ExampleEvent]".
Sarea of ExampleEvent is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent ExampleEvent:

]

Situations ends here.
