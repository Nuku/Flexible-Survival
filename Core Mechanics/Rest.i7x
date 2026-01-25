Version 1 of Rest by Core Mechanics begins here.
[ Version 1.0 - Initial file - Speedlover ]

Part 0 - Variables

Terminatorsleep is a truth state that varies. Terminatorsleep is usually false.
TerminatorSleepActivated is a truth state that varies. TerminatorSleepActivated is usually false. [For the cheat in Settings Menus.i7x, this way you only lose score once when you toggle on/off insomniac]
Sleeptimercount is a number that varies. Sleeptimercount is usually 0.
WellRestedTimer is a number that varies. WellRestedTimer is usually 0.
roughing is a truth state that varies.[@Tag:NotSaved] roughing is usually false.

Part 1 - Rest Action

Resting is an action applying to nothing.
understand "Rest" as resting.

check resting:
	now roughing is false;
	if caffeinehigh of Player > 0:
		say "You try to settle down to rest, but you are filled with manic, hyperactive energy and unable to rest. Your body just won't settle down and any time you try to relax, you find yourself only thinking of going out and looking for more soda to drink.";
		stop the action;
	if location of Player is PALOMINO Dance Club or location of Player is Private Booths:
		say "Why are you even trying to sleep here? Everyone's partying like it's the end of the world.";
		stop the action;
	if silk hammock is owned or silk hammock is present:
		say "You set up your silken hammock at the next appropriate spot and lie in it, resting for a while";
	else if cot is owned:
		say "You pull out your cot and lay it out before resting for a while";
	else if cot is present:
		say "You rest on the cot";
	else if Player is in Bunker or Player is in Police Lockerroom:
		say "You rest on one of the cots available";
	else if the player is in Slave Cell 1 or player is in Slave Cell 2:
		say "You rest on the bed in the back of the cell";
	else if sleeping bag is owned or sleeping bag is present:
		say "You roll out the sleeping bag in an appropriate spot and lie in it, resting for a while";
	else if "Roughing It" is listed in feats of Player:
		say "You hunker down somewhere secluded for a quick nap";
		now roughing is true;
	else:
		say "You have nothing to rest on.";
		stop the action;
	if rubber tigress companion is not listed in companionList of Player:
		say "...";
		if (there is a dangerous door in the location of the player or the location of Player is fasttravel or the earea of location of Player is not "void") and location of Player is not sleepsafe:
			let l be a random visible dangerous door;
			if l is not nothing:
				now battleground is the marea of l;
			else if the earea of location of Player is not "void":
				now battleground is the earea of location of Player;
			else:
				now battleground is "Outside"; [standard setting]
			AttemptToWait;
			let intodds be 3;
			if "Bad Luck" is listed in feats of Player, increase intodds by 1;
			if a random chance of intodds in 20 succeeds:
				say "...but your nap is interrupted by the arrival of a creature.";
				fight;
				stop the action;
			else:
				say "...and you thankfully complete your nap in peace.";
		else if roughing is true:
			say "You are thankfully able to complete your nap in peace.";
	else:
		say ".";

carry out resting:
	if "Player_Breeding_Dom" is listed in Traits of Urik and lastfuck of Urik - turns > 2 and a random chance of 2 in 3 succeeds and ((Urik is collected and Player is collected) or (orc supersized breeder is listed in companionList of Player)):
		Urik_rest_breeding;
		if NoHealMode is true:
			increase HP of Player by (level of orc supersized breeder) / 3; [grants additional rest]
		else:
			increase HP of Player by (level of orc supersized breeder) / 2; [grants additional rest]
	else if rubber tigress companion is listed in companionList of Player:
		artemisnap;
		if NoHealMode is true:
			increase HP of Player by (level of rubber tigress companion) / 3; [grants additional rest]
		else:
			increase HP of Player by (level of rubber tigress companion) / 2; [grants additional rest]
	Rest;
	follow the turnpass rule;
	follow the turnpass rule;
	follow the player injury rule;
	say "You are [descr] ([HP of Player]/[MaxHP of Player]).";

to Rest:
	let num1 be MaxHP of Player divided by 4;
	let num2 be ( ( Stamina of Player * 3 ) / 2 ) + Level of Player;
	if (cot is owned or cot is present) or (silk hammock is owned or silk hammock is present) or (Player is in Bunker or Player is in Police Lockerroom):
		if num2 > num1: [best value chosen]
			increase HP of Player by num2;
		else:
			increase HP of Player by num1;
	else if (sleeping bag is owned or sleeping bag is present) or "Roughing It" is listed in feats of Player or (Player is in Slave Cell 1 or Player is in Slave Cell 2):
		increase HP of Player by ( num1 + num2 ) / 2; [average value chosen]
	else: [accessible only when events induce resting]
		if num2 < num1: [lowest value chosen]
			increase HP of Player by num2;
		else:
			increase HP of Player by num1;
	if HP of Player > MaxHP of Player, now HP of Player is MaxHP of Player;
	if Terminatorsleep is false:
		if Sleeptimercount >= 10: [Player is on the brink of collapse, sleeping for just one turn isn't going to fix them]
			if silk hammock is owned or silk hammock is present:
				decrease Sleeptimercount by 6;
			else:
				decrease Sleeptimercount by 5;
		else: [Player is tired, and will wake up refreshed with the well rested feat.]
			if silk hammock is owned or silk hammock is present:
				now Sleeptimercount is -3;
			else: [Turnpass rule fires immediately after this and adds 2 to each, so it becomes -1 and 0.]
				now Sleeptimercount is -2;
			if "Well Rested" is not listed in feats of Player:
				FeatGain "Well Rested";
				say "     You wake refreshed after a good rest. All stats increased by 2!";
				StatChange "Strength" by 2 silently;
				StatChange "Dexterity" by 2 silently;
				StatChange "Stamina" by 2 silently;
				StatChange "Charisma" by 2 silently;
				StatChange "Intelligence" by 2 silently;
				StatChange "Perception" by 2 silently;
			now WellRestedTimer is 6;

Part 2 - Sleeptimer (the need for rest)

to say Sleepmessage:
	if Terminatorsleep is true or SleepTimerCount < 5:
		say "Rested";
	else if SleepTimerCount < 8:
		say "[link]Spent[as]rest[end link]";
	else if SleepTimerCount < 11:
		say "[link]Tired[as]rest[end link]";
	else:
		say "[link]Beat[as]rest[end link]";

an everyturn rule:
	if Terminatorsleep is false: [Cheat not activated, player gets tired.]
		if "Well Rested" is listed in feats of Player: [They have slept recently, reduce/remove feat.]
			if WellRestedTimer <= 0:
				FeatLoss "Well Rested";
				say "     It has been a while since you last rested and any benefit you gained from it is now gone. You have lost the 'Well Rested' feat, and all stats have decreased by 2 as a result.";
				StatChange "Strength" by -2 silently;
				StatChange "Dexterity" by -2 silently;
				StatChange "Stamina" by -2 silently;
				StatChange "Charisma" by -2 silently;
				StatChange "Intelligence" by -2 silently;
				StatChange "Perception" by -2 silently;
			else:
				decrease WellRestedTimer by 1;
		else: [Not slept recently, getting tired.]
			if Sleeptimercount >= 12: [Player MUST sleep]
				say "[one of]Your sluggish body barely responds to your commands, and you can barely think straight with your weary mind. You don't even know how or when you had ended up on the floor. Darkness creeps up on your vision until you finally pass out from exhaustion[or]You have been awake for too long and haven't had enough sleep, you thought you could tough it out but it all catches up to you. Collapsing to the ground, you fall asleep where you stand[at random].";
				now Sleeptimercount is 3;
				follow the turnpass rule;
				follow the turnpass rule; [Doing this twice adds 2 to sleeptimer count, making sleeptimer up to 5.]
				say "When you wake up you still feel tired. Looking at the sky it looks like 6 hours have passed.";
			else if Sleeptimercount >= 6: [Player is getting tired, 6 turns = 18 hours]
				if Sleeptimercount is 11:
					say "Your reflexes are starting to slow and you are struggling to stay awake. Maybe you should get some rest before you collapse.";
				else if Sleeptimercount is 10:
					say "You [one of]stifle a yawn and stretch a bit. Being awake for so long is really taking a toll on you[or]are exhausted and nearing your limits. You really should get some rest before you collapse[at random].";
				else if Sleeptimercount is 9:
					say "[one of]You are starting to feel weary after a day's worth of exploring. Perhaps you should take a nap[or]While taking a break for a second your eyes slowly close. A noise nearby quickly startles you and you look around, before you realize you almost fell asleep[at random].";
				else if Sleeptimercount is 6:
					say "[one of]You slow for a second and yawn, maybe you should rest for a while?[or]A yawn escapes you, reminding you of your weariness after a day's worth of exploring. Perhaps you should take a nap.[at random]";
			increase Sleeptimercount by 1;

Rest ends here.
