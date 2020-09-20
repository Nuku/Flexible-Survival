Version 1 of Rest by Core Mechanics begins here.
[ Version 1.0 - Initial file - Speedlover ]


Part 0 - Variables

Terminatorsleep is a truth state that varies. Terminatorsleep is usually false.
TerminatorSleepActivated is a truth state that varies. TerminatorSleepActivated is usually false. [For the cheat in Settings Menus.i7x, this way you only lose score once when you toggle on/off insomniac]
Sleeptimercount is a number that varies. Sleeptimercount is usually 0.
WellRestedTimer is a number that varies. WellRestedTimer is usually 0.
roughing is a truth state that varies. roughing is usually false.

Part 1 - Rest Action

Resting is an action applying to nothing.
understand "Rest" as resting.

check resting:
	now roughing is false;
	if caffeinehigh of Player > 0:
		say "You try to settle down to rest, but you are filled with manic, hyperactive energy and unable to rest. Your body just won't settle down and any time to try to relax, you find yourself only thinking of going out and looking for more soda to drink.";
		stop the action;
	if location of Player is Palomino or location of Player is Private Booths:
		say "Why are you even trying to sleep here? Everyone's partying like it's the end of the world.";
		stop the action;
	if cot is owned:
		say "You pull out your cot and lay it out before resting for a while.";
	else if cot is present:
		say "You rest on the cot.";
	else if the player is in the bunker:
		say "You rest on one of the cots available.";
	else if the player is in Slave Cell 1 or player is in Slave Cell 2:
		say "You rest on the bed in the back of the cell.";
	else if silk hammock is owned or silk hammock is present:
		say "You set up your silken hammock at the next appropriate spot and lie in it, resting for a while.";
	else if sleeping bag is owned or sleeping bag is present:
		say "You roll out the sleeping bag in an appropriate spot and lie in it, resting for a while.";
	else if "Roughing It" is listed in feats of Player:
		say "You hunker down somewhere secluded for a quick nap.";
		now roughing is true;
	else:
		say "You have nothing to rest on.";
		stop the action;
	if rubber tigress is not listed in companionList of Player:
		if ( there is a dangerous door in the location of the player or the location of Player is fasttravel or the earea of location of Player is not "void") and location of Player is not sleepsafe:
			now battleground is "Outside"; [standard setting]
			if the earea of location of Player is not "void":
				now battleground is the earea of location of Player;
			else:
				let l be a random visible dangerous door;
				if l is not nothing, now battleground is the marea of l;
			say "...";
			WaitLineBreak;
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

carry out resting:
	if rubber tigress is listed in companionList of Player:
		artemisnap;
		if NoHealMode is true:
			increase HP of Player by (level of rubber tigress) / 3; [grants additional rest]
		else:
			increase HP of Player by (level of rubber tigress) / 2; [grants additional rest]
	Rest;
	follow the turnpass rule;
	follow the turnpass rule;
	follow the player injury rule;
	say "You are [descr]([HP of Player]/[maxHP of Player]).";

to Rest:
	let num1 be maxHP of Player divided by 4;
	let num2 be ( ( Stamina of Player * 3 ) / 2 ) + Level of Player;
	if cot is owned or cot is present or the player is in Bunker or silk hammock is owned or silk hammock is present:
		if num1 >= num2, increase HP of Player by num1; [best value chosen]
		if num2 > num1, increase HP of Player by num2;
	else if "Roughing It" is listed in feats of Player:
		increase HP of Player by ( num1 + num2 ) / 2; [average value chosen]
	else: [accessible only when events induce resting]
		if num1 <= num2, increase HP of Player by num1; [lowest value chosen]
		if num2 < num1, increase HP of Player by num2;
	if Terminatorsleep is false:
		if Sleeptimercount >= 10: [Player is on the brink of collapse, sleeping for just one turn isn't going to fix them]
			if silk hammock is owned or silk hammock is present:
				decrease Sleeptimercount by 6;
			else:
				decrease Sleeptimercount by 5;
		else if Sleeptimercount <= 9: [Player is tired, and will wake up refreshed with the well rested feat.]
			if silk hammock is owned or silk hammock is present:
				now Sleeptimercount is -2;
			else: [Turnpass rule fires immediately after this and adds 1 to each, so it becomes -1 and 0.]
				now Sleeptimercount is -1;
			if "Well Rested" is not listed in feats of Player:
				FeatGain "Well Rested";
				say "     Well Rested - All stats increased by 2!";
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
				say "     It has been a while since you last rested and any benefit you gained from it is now gone. You have lost the 'Well Rested' Feat, and all stats have decreased by 2 as a result.";
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
				let randomnumber be a random number from 1 to 2;
				if randomnumber is 1:
					say "     Your sluggish body barely responds to your commands, and you can barely think straight with your weary mind. You don't even know how or when you had ended up on the floor. Darkness creeps up on your vision until you finally pass out from exhaustion.";
				if randomnumber is 2:
					say "     You have been awake for too long and haven't had enough sleep, you thought you could tough it out but it all catches up to you. Collapsing to the ground, you fall asleep where you stand.";
				now Sleeptimercount is 3;
				follow the turnpass rule;
				follow the turnpass rule; [Doing this twice adds 2 to sleeptimer count, making sleeptimer up to 5.]
				say "     When you wake up you still feel tired, looking at the sky it looks like 6 hours have passed.";
			else if Sleeptimercount <= 11 and Sleeptimercount >= 6: [Player is getting tired, 6 turns = 18 hours]
				let randomnumber be a random number from 1 to 2;
				if Sleeptimercount is 11:
					say "     Your reflexes are starting to slow and you are struggling to stay awake, maybe you should get some rest before you collapse.";
				else if Sleeptimercount is 10:
					if randomnumber is 1:
						say "     You stifle a yawn and stretch a bit, being awake for so long is really taking a toll on you.";
					else:
						say "     You are exhausted and nearing your limits. You really should get some rest before you collapse.";
				else if Sleeptimercount is 9:
					if randomnumber is 1:
						say "     You are starting to feel weary after a day's worth of exploring. Perhaps you should take a nap.";
					else:
						say "     While taking a break for a second your eyes slowly close. A noise nearby quickly startles you and you look around, before you realize you almost fell asleep.";
				else if Sleeptimercount is 6:
					if randomnumber is 1:
						say "     You slow for a second and yawn, maybe you should rest for a while?";
					else:
						say "     A yawn escapes you, reminding you of your weariness after a day's worth of exploring. Perhaps you should take a nap.";
			increase Sleeptimercount by 1;

Rest ends here.
