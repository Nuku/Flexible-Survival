Version 1 of Sleeptimer by Core Mechanics begins here.
[ Version 1.0 - Initial file - Speedlover ]

Terminatorsleep is a truth state that varies. Terminatorsleep is usually false.
TerminatorSleepActivated is a truth state that varies. TerminatorSleepActivated is usually false. [For the cheat in Settings Menus.i7x, this way you only lose score once when you toggle on/off insomniac]
Sleeptimercount is a number that varies. Sleeptimercount is usually 0.
WellRestedTimer is a number that varies. WellRestedTimer is usually 0.

an everyturn rule:
	if Terminatorsleep is false: [Cheat not activated, player gets tired.]
		if "Well Rested" is listed in feats of Player: [They have slept recently, reduce/remove feat.]
			if WellRestedTimer <= 0:
				FeatLoss "Well Rested";
				say "     It has been a while since you last rested and any benefit you gained from it is now gone. You have lost the 'Well Rested' Feat, and all stats have decreased by 2 as a result.";
				StatChange "Strength" by -2;
				StatChange "Dexterity" by -2;
				StatChange "Stamina" by -2;
				StatChange "Charisma" by -2;
				StatChange "Intelligence" by -2;
				StatChange "Perception" by -2;
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

[player rests: [Do not uncomment. Placed inside resting code of story.ni]
	if Sleeptimercount >= 10: [Player is on the brink of collapse, sleeping for just one turn isn't going to fix them]
		if silk hammock is owned or silk hammock is present:
			decrease Sleeptimercount by 6;
		else:
			decrease Sleeptimercount by 5;
	else if Sleeptimercount <= 9: [Player is tired, and will wake up refreshed with the well rested feat.]
		if silk hammock is owned or silk hammock is present:
			Sleeptimercount is now -1;
		else:
			Sleeptimercount is now 0;
		FeatGain "Well Rested";'
		say "     Well Rested - All stats increased by 2!";
		increase strength of Player by 2;
		increase dexterity of Player by 2;
		increase stamina of Player by 2;
		increase charisma of Player by 2;
		increase intelligence of Player by 2;
		increase perception of Player by 2;
		now WellRestedTimer is 6;]

Sleeptimer ends here.
