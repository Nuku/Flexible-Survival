Version 1 of Sexual Orientation by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

Part 1 - Sexual Orientation Tracking Variables

Player has a truth state called MaleInterest. MaleInterest is usually true.
Player has a truth state called TransMaleInterest. TransMaleInterest is usually true.
Player has a truth state called FemaleInterest. FemaleInterest is usually true.
Player has a truth state called TransFemaleInterest. TransFemaleInterest is usually true.
Player has a truth state called MaleHermInterest. MaleHermInterest is usually true.
Player has a truth state called FemaleHermInterest. FemaleHermInterest is usually true.

Part 2 - Setting Menu

UsePlayerSexualOrientationMenu is an action applying to nothing.
understand "adjust player orientation" as UsePlayerSexualOrientationMenu.

carry out UsePlayerSexualOrientationMenu:
	PlayerSexualOrientationMenu;

to PlayerSexualOrientationMenu:
	now calcnumber is -1;
	let OrientationMenuExit be 0;
	while OrientationMenuExit is 0:
		clear the screen;
		say "[bold type]Interested in (select Yes for all that apply):[roman type][line break]";
		say "(1) [link]Males (cock)[as]1[end link] - [if MaleInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "(2) [link]Trans Males (flat chest, pussy)[as]2[end link] - [if TransMaleInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "(3) [link]Females (pussy)[as]3[end link] - [if FemaleInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "(4) [link]Trans Females (breasts, cock)[as]4[end link] - [if TransFemaleInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "(5) [link]Male Herms (flat chest, cock, pussy)[as]5[end link] - [if MaleHermInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "(6) [link]Female Herms (breasts, cock, pussy)[as]6[end link] - [if FemaleHermInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 2 is 2:
			say "Choice? (0-6)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Entry. Pick from 0 to 6.";
		if calcnumber is 1:
			if MaleInterest of Player is true:
				now MaleInterest of Player is false;
			else if MaleInterest of Player is false:
				now MaleInterest of Player is true;
		else if calcnumber is 2:
			if TransMaleInterest of Player is true:
				now TransMaleInterest of Player is false;
			else if TransMaleInterest of Player is false:
				now TransMaleInterest of Player is true;
		else if calcnumber is 3:
			if FemaleInterest of Player is true:
				now FemaleInterest of Player is false;
			else if FemaleInterest of Player is false:
				now FemaleInterest of Player is true;
		else if calcnumber is 4:
			if TransFemaleInterest of Player is true:
				now TransFemaleInterest of Player is false;
			else if TransFemaleInterest of Player is false:
				now TransFemaleInterest of Player is true;
		else if calcnumber is 5:
			if MaleHermInterest of Player is true:
				now MaleHermInterest of Player is false;
			else if MaleHermInterest of Player is false:
				now MaleHermInterest of Player is true;
		else if calcnumber is 6:
			if FemaleHermInterest of Player is true:
				now FemaleHermInterest of Player is false;
			else if FemaleHermInterest of Player is false:
				now FemaleHermInterest of Player is true;
		else:
			now OrientationMenuExit is 1;


Sexual Orientation ends here.
