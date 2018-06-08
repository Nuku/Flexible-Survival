Entertainers by Maw begins here.

Public Relations is a research.
The cost of it is 60.
The description of it is "Our people are bored. We should encourage the arts to entertain them.".

Entertainer is a job.
The validation of Entertainer is the entertainvailable rule.
The maximum of Entertainer is maxentertainer rule.

This is the maxentertainer rule:
	now max of entertainer is population of tribe of player / 10;
	let x be 100;
	if "Charming" is listed in perks of tribe of player:
		increase x by 25;
	if "Fun Loving" is listed in perks of tribe of player:
		increase x by 25;
	now max of entertainer is ( max of entertainer * x ) / 100;


This is the entertainvailable rule:
	if public relations is complete:
		rule succeeds;
	rule fails;

An everyturn rule(this is the entertainer rule):
	if the remainder after dividing turns by 4 is not 0, continue the action;
	if workers of entertainer is 0, stop the action;
	let foragers be workers of entertainer;
	let x be a random number from 80 to 120;
	if Novelstudies is 2:
		increase x by 20;
	if "Theatre" is listed in perks of tribe of player:
		increase x by 20; [Not yet implemented]
	now x is foragers * 20 * x;
	now x is x divided by (population of tribe of player); [Keeps it at a fraction of a whole number, so 1-20 would be max. If 5% of population is entertainment, +1 moral.]
	if x > 0: [Public Relations Success]
		if x < 1, now x is 1;
		say "[if x < 5]Your entertainers yield a bonus of +[x] morale for your tribe.[else]With an excellent team of entertainers working alongside each other, your people have gained an outstanding +[x] morale![end if]";
		increase morale of tribe of player by x;


Entertainers ends here.
