Alpha Fang Scenes by Nuku Valente begins here.
"Adds another scene to Fang"

Every turn when in Grey Abbey Library:
	if fang is not visible, continue the action;
	if hp of fang is 3:
		let x be 0;
	otherwise:
		continue the action;
	let qualify be 0;
	let playerlust be 0;
	let fanglust be 0;
	if lust of player is greater than 60:
		now qualify is 1;
		now playerlust is 1;
	if ( lastFangfucked - turns is greater than ( 19 - hp of Fang ) ):
		now qualify is 1;
		now fanglust is 1;
	if qualify is 0:
		continue the action;
	if fanglust is 1 and playerlust is 0:
		say "[fangrapeplayer]";
		continue the action;
	if fanglust is 1 and playerlust is 1:
		say "[fangmutuallust]";
		continue the action;
	say "[fangplayerlust]";
	
to say fangplayerlust:
	say "Scene to be written.";

to say fangrapeplayer:
	say "Scene to be written.";

to say fangmutallust:
	say "Scene to be written.";
		

Alpha Fang Scenes ends here.
