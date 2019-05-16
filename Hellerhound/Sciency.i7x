Sciency by Hellerhound begins here.


Researchers is a research.
the description of it is "It is not enough to prepare for today. We must teach our people to prepare for tomorrow. This research will let us train them to be scientists.".
the cost of it is 50.


Researcher is a job.
The validation of researcher is the researchvailable rule.
the maximum of researcher is maxresearcher rule.

this is the maxresearcher rule:
	let x be 0;
	if researchers is complete:
		increase x by 4;
	if "Brilliant" is listed in perks of tribe of Player:
		increase x by 1;
		now x is ( x * 5 ) / 4;
	now max of researcher is x;

this is the researchvailable rule:
	if researchers is complete or "Brilliant" is listed in perks of tribe of Player:
		rule succeeds;
	else:
		rule fails;



Sciency ends here.
