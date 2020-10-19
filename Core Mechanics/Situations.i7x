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
A situation has an object called PrereqCompanion.
A situation has a text called PrereqTime. The PrereqTime of a situation is usually "Any".
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

Definition: A situation (called x) is PrereqComplete:
	if PrereqCompanion of x is not nothing and PrereqCompanion of x is not listed in companionList of Player, no;
	if PrereqTime is not "Any" and ((PrereqTime is "Day" and Daytimer is night) or (PrereqTime is "Night" and Daytimer is day)), no;
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



Situations ends here.
