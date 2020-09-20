Version 1 of Scavenging by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]


A scavevent is a kind of situation.

Part 1 - Untargeted Scavenging

ScavengingAction is an action applying to nothing.

understand "Scavenge" as ScavengingAction.
understand "Scav" as ScavengingAction.

check ScavengingAction:
	if location of Player is not fasttravel, say "You can only scavenge from quick travel points." instead;

carry out ScavengingAction:
	let x be a random visible dangerous door;
	if x is not nothing:
		now battleground is marea of x;
	else:
		now battleground is "Outside";
	say "You set out in the desperate search of food and water.";
	let the bonus be (( Perception of Player minus 10 ) divided by 2);
	if "Survivalist" is listed in feats of Player, increase bonus by 4;
	if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 10: ";
	if dice plus bonus > 9:
		now inasituation is true;
		if a random chance of 3 in 4 succeeds:
			say "[ResolveFunction of Potential Resources]";
		else:
			now tempnum is 1;
			let L be a random available scavevent;
			If L is not nothing:
				say "[one of]During your search for supplies, you end up at[or]Searching systematically for resources, you locate[or]Following signs of recent activity, you end up at[or]Doing a slow circuit while scavenging, you manage to find[or]Wandering around aimlessly in search of supplies, you locate[at random] [L].";
				say "[ResolveFunction of L]";
			else if L is nothing:
				say "[ResolveFunction of Potential Resources]";
		now inasituation is false;
		say "[line break]";
	else:
		say "Your search turns up empty.";
	now inasituation is false;
	if battleground is "", now battleground is "Outside";
	let z be 7;
	if "Stealthy" is listed in feats of Player, decrease z by 2;
	if "Bad Luck" is listed in feats of Player, increase z by 1;
	randomfightchance;
	follow turnpass rule;

Part 2 - Targeted Scavenging (nonfunctional)

tscavenging is an action applying to one topic.
Scavengetarget is an indexed text that varies.[@Tag:NotSaved]

[
understand "Scavenge [text]" as tscavenging.
understand "Scav [text]" as tscavenging.
]

check tscavenging:
	if location of Player is not fasttravel, say "You can only scavenge from quick travel points." instead;
	if BlindMode is true, say "You're playing in blind-mode, so hunting is not allowed - even scavenge-hunting. You'll have to try scavenging normally to find what you seek." instead;

Carry out tscavenging:
	now scavengetarget is the topic understood;
	try ScavengingAction;
	now scavengetarget is "";


Scavenging ends here.
