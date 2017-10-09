Science by Nuku Valente begins here.

When play begins:
	repeat with x running through research:
		now x is a part of the nerd	;

Book - Science Advisor

Nerd is a person. "A science advisor awaits your attention. They have a name, but most just call them the [bold type]nerd[roman type]. Perhaps you want to discuss [bold type]research[roman type].".
Nerd is in Village center.
The description of nerd is "[science advisor of tribe of player]".

After examining the nerd:
	if progress of current of nerd < cost of current of nerd:
		say "Current Research Topic: [current of nerd]([progress of current of nerd]/[cost of current of nerd])";
	say "[line break]To begin a new topic, type [bold type]research (topic)[roman type].";
	say "Type [bold type]research[roman type] alone to see available topics.";

Nerding is an action applying to nothing.
Understand "nerd" as nerding.

check nerding:
	say "The nerd is a person, not an action. You could try looking at them?(look nerd)" instead;

Part - Change Topics

Researchlist is an action applying to nothing.
Understand "Research" as researchlist.

Check researchlist:
	if nerd is not visible, say "You need your trusty ner, er, science advisor, to conduct matters of research." instead;

carry out researchlist:
	say "Available Topics: [no line break]";
	repeat with x running through valid research:
		if x is complete and x is definite, next;
		LineBreak;
		say "[x]([progress of x]/[cost of x])[if x is indefinite](Level: [level of x])[end if][if current of nerd is x](Current Topic)[end if][no line break]";
	say "To begin a new topic, type [bold type]research (topic)[roman type].";

Researching is an action applying to one thing.
Understand "Research [research]" as researching.

Check researching:
	if nerd is not visible, say "You need your trusty ner, er, science advisor, to conduct matters of research." instead;
	if noun is complete and noun is definite, say "You seem to have already completed that topic." instead;
	if noun is current of nerd, say "Your advisor assures you that it is already being worked on as hard as it can be. Maybe if we had more scientists?" instead;

Carry out researching:
	say "[description of noun]";
	say "[line break]Begin?";
	if the player consents:
		now current of nerd is noun;
		say "You begin researching [noun].";
	else:
		say "Aborted.";


Book - Define Research

A Research is a kind of thing.
A Research has a text called Description.
A Research has a rule called validation.
The validation of a Research is usually Warvailable rule.
A Research has a number called progress.
A Research has a number called cost.
A Research has a rule called Completion.
The completion of a research is usually nothing rule;
A research has a text called perk.
A research can be indefinite or definite.
A research is usually definite.
A research has a number called level.

This is the nothing rule:
	do nothing;

Definition: A Research (called J) is valid:
	follow the validation of J;
	if rule succeeded:
		yes;
	else:
		no;

Definition: A Research (called J) is complete:
	if level of J > 0, yes;
	if progress of J >= cost of J:
		yes;
	else:
		if the printed name of J is listed in perks of tribe of player:
			yes;
		else:
			no;


Part 2 - Research Topics

The nerd has a research called current.
cur is a text that varies.

Local Survey is a Research.
The description of it is "Surveying our immediate surroundings will better prepare us for the unexpected(Perception +5%)".
The cost of it is 30.
The completion of it is Local Survey Rule.

This is the local survey rule:
	now perception of tribe of player is ( perception of tribe of player * 105 ) / 100;
	say "The perception of your tribe is now [perception of tribe of player]";

An everyturn rule(this is the SCIENCE rule):
	if science of tribe of player is less than 1, continue the action; [ No research without research points ]
	if current of nerd is complete and current of nerd is not indefinite:
		say "Your current research topic is complete. You should pick a new one.";
		continue the action;
	let foragers be workers of researcher;
	increase foragers by 1; [The nerd is always there. They love you!]
	[First check for easy to grab salvage, will become more scarce over time]
	let x be a random number from 80 to 120; [mild variance]
	increase x by (Intelligence of tribe of player) / 5;
	if "Brilliant" is listed in perks of tribe of player:
		increase x by 20;
	now x is x * foragers * 2;
	now x is x / 100;
	let z be x;
	if z is greater than science of tribe of player:
		now z is the science of tribe of player;
	if x is greater than 0: [ There is science to be done ]
		if z is greater than 0:
			say "Your science advances: +[z]";
			increase progress of current of nerd by z;
			if progress of current of nerd is greater than cost of current of nerd:
				say ". [bold type][current of nerd][roman type] is complete!";
				follow the completion of current of nerd;
				if the perk of current of nerd is not "":
					add the perk of current of nerd to perks of tribe of player;
			decrease science of tribe of player by z;
			if current of nerd is indefinite and progress of current of nerd > cost of current of nerd:
				say " Research continues on [current of nerd].";
				now progress of current of nerd is 0;
				now cost of current of nerd is cost of current of nerd * 2;
				increase level of current of nerd by 1;
		now x is x / 2;
		if x is less than 1, now x is 1;
		increase science of tribe of player by x;



Farming is a research.
The description of it is "Farming the land can be a source of valuable food and/or trade goods. It takes far fewer people to farm food than it does to forage.".
The cost of it is 50.
It is indefinite.

Ranching is a research.
The description of it is "Why go hunt wild animals when you can herd and tend to your own?".
The validation of it is ranchvalidation rule.
The cost of it is 100.

This is the ranchvalidation rule:
	if hunting is complete, rule succeeds;
	rule fails;

Hunting is a research.
The description of it is "Hunting techniques allow for efficient exploiting of animal resources on your lands, producing more food and/or trade goods.".
The cost of it is 50.
It is indefinite.


Science ends here.
