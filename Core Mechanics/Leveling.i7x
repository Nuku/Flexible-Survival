Version 1 of Leveling by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

To level up:
	increase level of Player by 1;
	decrease XP of Player by level of Player times 10;
	if "Fast Learner" is listed in feats of Player:
		increase XP of Player by ( level of Player times 2 );
	say "You have gained level [level of Player]! Congratulations!";
	if remainder after dividing level of Player by 2 is 0:
		say "Current stats:[line break]";
		say "Strength: [strength of Player], Dexterity: [dexterity of Player], Stamina: [stamina of Player], Charisma: [Charisma of Player], Intelligence: [intelligence of Player], Perception: [perception of Player][line break]";
		say "[line break]Pick a stat to increase.";
		say "[link]1 - Strength[as]1[end link] - Represents your raw physical might and your ability to deal damage.";
		say "[link]2 - Dexterity[as]2[end link] - Affects your likelihood to hit and dodge.";
		say "[link]3 - Stamina[as]3[end link] - Increases your total health pool and your overall endurance.";
		say "[link]4 - Charisma[as]4[end link] - Deals with social interactions with NPCs and your pets, and affects your morale.";
		say "[link]5 - Intelligence[as]5[end link] - Increases the efficacy of healing medkits, your chances of vial collection (if able) and your success at escaping.";
		say "[link]6 - Perception[as]6[end link] - Influences your success while scavenging and hunting, success with ranged weapons and affects your morale.";
		say "[link]7 - Random[as]7[end link] - Randomize your stat point gain.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 7:
			say "Choice? (1-7)> [run paragraph on]";
			get a number;
		LineBreak;
		if calcnumber is 7:
			now calcnumber is a random number between 1 and 6;
		if calcnumber is 1:
			StatChange "strength" by 1;
		else if calcnumber is 2:
			StatChange "dexterity" by 1;
		else if calcnumber is 3:
			StatChange "stamina" by 1;
		else if calcnumber is 4:
			StatChange "charisma" by 1;
		else if calcnumber is 5:
			StatChange "intelligence" by 1;
		else if calcnumber is 6:
			StatChange "perception" by 1;
	else:
		increase ssstash by 1;
	increase MaxHP of Player by ( stamina of Player minus 10 ) divided by 2;
	[if the player reaches an even number, the StatChange function catches up their "missed" HP by adding level+1 extra]
	increase MaxHP of Player by 2; [static 2 point increase for each level up]
	if "Hardy" is listed in Feats of Player:
		increase MaxHP of Player by 1;
	now HP of Player is MaxHP of Player; [free HP refill]
	if the remainder after dividing Level of Player by 5 is 0 and "Ultimatum" is not listed in feats of Player:
		funfeatget;
	increase score by Level of Player times Level of Player;

Leveling ends here.
