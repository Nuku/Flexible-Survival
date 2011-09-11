Entertainers by Maw begins here.

Public Relations is a research.
The cost of it is 60.
The description of it is "Our people are bored. We should encourage the arts to entertain them.".

Entertainer is a job.
The validation of Entertainer is the entertainvailable rule.
The maximum of Entertainer is maxentertainer rule.

This is the maxentertainer rule:
	now max of entertainer is population of tribe of player / 5;
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
	let x be a number;
	now x is 0 plus (workers of entertainer);
	if population of tribe of player is 0, stop the action;
	now x is x divided by (population of tribe of player); [Keeps it at a fraction of a whole number, so 1-20 would be max . If 5% of population is entertainment, +1 moral.]
	if "Theatre" is listed in perks of tribe of player:
		now x is x multiplied by 2; [Not yet implemented]
	now x is x times 20;
	if x is greater than 0: [Public Relations Success]
		if x is less than 1, now x is 1;
		say "[if x is less than 5] Your entertainers yeild a bonus of +[x] morale for your tribe.[otherwise]With an excellent team of entertainers working alongside eachother, your people have gained an outstanding +[x] morale!";
		increase morale of tribe of player by x;


Entertainers ends here.
