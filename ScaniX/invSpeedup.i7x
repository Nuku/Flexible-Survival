invSpeedup by ScaniX begins here.

Include StopWatch by ScaniX.

OldInventorying is an action applying to nothing.
understand "oldinv" as OldInventorying.
carry out OldInventorying:
	say "-original inventorying-[line break]";
	start stopwatch;
	if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
	sort invent of Player;
	let dseed be 0;
[	let tempname be indexed text;
	repeat with x running from 1 to the number of rows in the table of game objects:
		choose row x in the table of game objects;
		now tempname is Name entry in lower case;
		now sortName entry is tempname;
	sort the table of game objects in sortname order; ]
	let jblouse be 0;
	if demon seed is owned, now dseed is 1;
	if Janice's blouse is owned, now jblouse is 1;
	say "Peeking into your backpack, you see: [if the number of owned grab objects is 0]Nothing[else][line break][end if]";
	if the number of owned grab objects > 0:
		say "[bold type][bracket]U[close bracket][roman type]se, [bold type][bracket]L[close bracket][roman type]ook, [bold type][bracket]S[close bracket][roman type]mell, [bold type][bracket]D[close bracket][roman type]rop, [bold type][bracket]J[close bracket][roman type]unk, [bold type][bracket]X[close bracket][roman type] Junkall, [if the number of trader in the location of the player > 0 or ( Ronda is visible and HP of Ronda is 0 and dseed is 1 ) or ( Kristen is visible and HP of Kristen is 10 and jblouse is 1 ) or ( Christy is visible and carried of super spicy sausage > 0 and HP of Christy > 1 and HP of Christy < 50 )][bold type][bracket]T[close bracket][roman type]rade, [end if][if the number of smither in the location of the player > 0][bold type][bracket]I[close bracket][roman type]mprove, [end if][bold type](*)[roman type] equipped/wielded, [bold type](+)[roman type] improved.";
		let weight be 0;
		let newline be 0;
		repeat with x running from 1 to the number of rows in the table of game objects:
			choose row x in the table of game objects;
			if object entry is owned:
				say "[variable letter spacing][link][bold type]U[roman type][as]use [Name entry][end link]";
				say "|[link][bold type]L[roman type][as]look [Name entry][end link]";
				say "|[link][bold type]S[roman type][as]smell [Name entry][end link]";
				say "|[link][bold type]D[roman type][as]drop [Name entry][end link]";
				say "|[link][bold type]J[roman type][as]junk [Name entry][end link]";
				say "|[link][bold type]X[roman type][as]junkall [Name entry][end link]";
				if trade of object entry is empty:
					let notval be 0;
					if Ronda is visible and HP of Ronda is 0 and Name entry is "demon seed":
						say "|[link][bold type]T[roman type][as]give [Name entry] to Ronda[end link]";
					if Xerxes is visible and lust of Xerxes is 2 and Name entry is "awesome fruit":
						say "|[link][bold type]T[roman type][as]give [Name entry] to Xerxes[end link]";
					if Helen is visible and lust of Helen is 2 and Name entry is "awesomer fruit":
						say "|[link][bold type]T[roman type][as]give [Name entry] to Helen[end link]";
					if Kristen is visible and HP of Kristen is 10 and Name entry is "Janice's blouse":
						say "|[link][bold type]T[roman type][as]give [Name entry] to Kristen[end link]";
					if Christy is visible and HP of Christy > 1 and HP of Christy < 50 and Name entry is "super spicy sausage":
						say "|[link][bold type]T[roman type][as]give [Name entry] to Christy[end link]";
				else if the number of trader in the location of the player > 0:
					let tradeguy be a random trader in the location of the player;
					say "|[link][bracket]T[roman type][as]give [Name entry] to [tradeguy][end link]";
				if ( ( ( object entry is armament or ( object entry is equipment and AC of object entry > 0 and effectiveness of object entry > 0 ) ) and object entry is not improved ) or the Name entry is "nanite collector" ) and the number of smither in the location of the player > 0:
					say "|[link][bracket]I[roman type][as]upgrade [Name entry][end link]";
				if invcolumns > 1:
					say " [fixed letter spacing][Name entry formatted to 24 characters]";
				else:
					say " [fixed letter spacing][Name entry formatted to 24 characters]";
				if object entry is wielded and object entry is armament:
					say " (*)";
				if object entry is equipment and object entry is equipped:
					say " (*)";
				if object entry is improved and ( object entry is armament or object entry is equipment ):
					say " (+)";
				say " x ";
				let number be carried of object entry;
				let weighttxt be text;
				let weightnum be weight entry times number;
				say "[number]([weightnum][if weightnum < 10] [end if] lbs)";
				increase weight by weight entry times number;
				if newline < (invcolumns - 1):
					say "  --  ";
					increase newline by 1;
				else:
					LineBreak;
					now newline is 0;
		if newline > 0, LineBreak;
		say "[variable letter spacing]Total Weight: [weight]/[capacity of Player] lbs";
		if the player is overburdened:
			say ". *OVERBURDENED*[line break]";
		else:
			say ".";
	if scenario is "Researcher" or nanitemeter > 0:
		say "(You may see your collection of vials using [link][bold type]vial inventory[roman type][end link] or [link][bold type]vinv[roman type][end link] for short.)";
	stop stopwatch;

invSpeedup ends here.
