Version 1 of Resting by Core Mechanics begins here.

Section 0 - Variables

roughing is a truth state that varies.  roughing is usually false.
sleepHijack is a number variable. [This is a flag for whether your sleep has been hijacked.]
FrozenNeeds is a truth state that varies. FrozenNeeds is usually false.	[Flag marking whether or not needs and time are frozen during dreaming.]

[				sleepHijack					]
[0 = Nothing, you have a dreamless rest		]
[1 = Dream sequence							]
[2 = Hijacked by a character				]

Section 1 - Functions

Chapter 0 - Definitions of commands

Resting is an action applying to nothing.
understand "Rest" as resting.
understand "use cot" as resting.

Chapter 1 - Resting functions

check resting:
	now roughing is false;
	if caffeinehigh of player > 0:
		say "You try to settle down to rest, but you are filled with manic, hyperactive energy and unable to rest.  Your body just won't settle down and any time to try to relax, you find yourself only thinking of going out and looking for more soda to drink.";
		stop the action;
	if location of player is Palomino or location of player is Private Booths:
		say "Why are you even trying to sleep here?  Everyone's partying like it's the end of the world.";
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
	else if "Roughing It" is listed in feats of player:
		say "You hunker down somewhere secluded for a quick nap.";
		now roughing is true;
	else:
		say "You have nothing to rest on.";
		stop the action;
	[if companion of player is not rubber tigress:]
	if sleepHijack is 0:
		if ( there is a dangerous door in the location of the player or the location of player is fasttravel ) and location of player is not sleepsafe:
			let l be a random visible dangerous door;
			if l is not nothing, now battleground is the marea of l;
			if l is nothing, now battleground is "Outside";	[***]
			say "...";
			attempttowait;
			let intodds be 3;
			if "Bad Luck" is listed in feats of player, increase intodds by 1;
			if a random chance of intodds in 20 succeeds:
				say "...but your nap is interrupted by the arrival of a creature.";
				fight;
				stop the action;
			else:
				say "...and you thankfully complete your nap in peace.";
		else if roughing is true:
			say "You are thankfully able to complete your nap in peace.";

carry out resting:
	if sleepHijack is 2:
		SleepHijackedCharacter;
	else if sleepHijack is 1:
		say "Nightmares plague you during your resting. When you wake up you still feel tired.";
	Rest;
	follow the turnpass rule;
	follow the player injury rule;
	say "You are [descr]([hp of player]/[maxhp of player]).";

To Rest:
	let num1 be maxhp of the player divided by 4;
	let num2 be ( ( stamina of the player * 3 ) / 2 ) + level of the player;
	if cot is owned or cot is present or the player is in the Bunker or silk hammock is owned or silk hammock is present:
		if num1 >= num2, increase hp of player by num1;		[best value chosen]
		if num2 > num1, increase hp of player by num2;
	else if "Roughing It" is listed in feats of player:
		increase hp of player by ( num1 + num2 ) / 2;		[average value chosen]
	else:		[accessible only when events induce resting]
		if num1 <= num2, increase hp of player by num1;		[lowest value chosen]
		if num2 < num1, increase hp of player by num2;
		
Chapter 2 - Hijacked resting scenes

To SleepHijackedCharacter:
	if companion of player is rubber tigress:
		artemisnap;
		if nohealmode is true:
			increase hp of player by (level of rubber tigress) / 3;	[grants additional rest]
		else:
			increase hp of player by (level of rubber tigress) / 2;	[grants additional rest]
	else if tds_pl is 1:
		if tds_dl is 0:
			TDS_FirstDream;
		else if tds_dl > 0:
			TDS_RepeatDream;

Section 2 - Dream commands

To DreamInit:
	now command prompt is "[DreamPrompt]";
	
To say DreamPrompt:
	say "REMOVE ME";
	
To StopDream:
	say "REMOVE ME";
	now the command prompt is "[promptsay]";

Section 3 - Debug commands
			
Section 4 - Deprecated Code

[  --old version - to be removed--
	if cot is owned:
		say "You pull out your cot and lay it out before resting for a while.";
		continue the action;
	else if cot is present:
		say "You rest on the cot.";
		continue the action;
	else if the player is in the bunker:
		say "You rest on one of the cots available.";
		continue the action;
	else if "Roughing It" is listed in feats of player:
		say "You hunker down somewhere secluded for a quick nap...";
		if there is a dangerous door in the location of the player:
			if a random chance of 3 in 20 succeeds:
				say "...but your nap is interrupted by the arrival of a creature.";
				fight;
				stop the action;
			else:
				say "...and you complete your nap in peace.";
				continue the action;
		else:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "...and you complete your nap in peace.";
			continue the action;
	say "You have nothing to rest on.";
	stop the action;
]
		
Resting ends here.