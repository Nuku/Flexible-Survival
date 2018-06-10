Build by Maw begins here.

Part - Change Builds

builds is an action applying to nothing.
Understand "plan" as builds.
Understand "build" as builds.

Check builds:
	if blueprints is not visible, say "You can't check your building designs without... your designs!" instead;

carry out builds:
	say "Available Designs: [no line break]";
	repeat with x running through valid construct:
		if x is complete, next;
		LineBreak;
		say "[x]([progress of x]/[cost of x])[if building of blueprints is x](building construction)[end if][no line break]";
	say "To begin a new build, type [bold type]build (building) at (direction)[roman type].";

constructing is an action applying to one thing and one visible thing.
Understand "Build [any Construct] at [direction]" as constructing.
Understand "Build [any Construct] in [direction]" as constructing.
Understand "Build [any Construct] to [direction]" as constructing.

Check constructing:
	if blueprints is not visible, say "You can't give orders to your builders while you don't have your designs with you!" instead;
	if noun is complete or noun is placed, say "That building has already been constructed" instead;
	if noun is building of blueprints and blueprints is started, say "Your builders stare at you, hammers and two-by-fours in hand, looking about ready to hammer you upside the head with both, 'We are working on it.' Maybe you should hire more builders?" instead;
	if second noun is valid, say "There's something in the way, boss." instead;
	if the second noun is not east and the second noun is not west and the second noun is not north and the second noun is not south, say "What direction? Let's keep it to the basic cardinals." instead;

Carry out constructing:
	say "[description of noun]";
	say "[line break]Construct?";
	if the player consents:
		now building of blueprints is noun;
		now origin of blueprints is location of player;
		now facing of blueprints is second noun;
		now blueprints is started;
		say "Your builders begin constructing [noun].";
	else:
		say "Aborted.";


Book - Define Construct


A Construct is a kind of room.
A Construct can be placed.
A Construct has a rule called validation.
The validation of a Construct is usually warvailable rule.
A Construct has a number called progress.
A Construct has a number called cost.
A construct has a text called perk.
A Construct has a rule called completion.
The completion of a Construct is usually nothing rule;

Definition: A Construct (called C) is valid:
	follow the validation of C;
	if rule succeeded:
		yes;
	else:
		no;

Definition: A Construct (called C) is complete:
	if progress of C >= cost of C:
		yes;
	else:
		no;


Book - Dem Blues

A print is a kind of thing.
A print has a construct called building.
A print has a room called origin.
A print has a direction called facing.
A print can be started.
blueprints is a print. "A large sheet of dark-blue paper with thin, light blue lining upon the broad face of it. With a little ingenuity one could consider this an invaluable tool to [bold type]plan[roman type] buildings.".
blueprints is in Village center.

After examining the blueprints:
	if progress of building of blueprints < cost of building of blueprints:
		say "building Construction Designs: [building of blueprints]([progress of building of blueprints]/[cost of building of blueprints])";
	say "[line break]To begin a new build, type [bold type]build (building) at (direction)[roman type].";
	say "Type [bold type]plan[roman type] alone to see available buildings.";

Part 2 - Constructs


cur is a text that varies.

Section - Ranch

Ranch is a Construct.
The description of it is "This farm clearly specializes in animals. It seems dominated by [one of]cow[or]goats[or]deer[or]chicken[or]sheep[sticky random]. Farmers tend to the flock, protecting them from the dangers of the wasteland in return for a tribute of meat and sustenance. The smell of animal is strong, their bodies and waste creating a distinct 'animal farm' smell.[if agricultural zone is adjacent to Ranch] The nearby plant farm seems to be quite a boon, as grains and plants are brought over to help feed the animals.[end if]".
The cost of it is 120.
The validation of it is ranchcheck rule.
The proximity of it is "You smell animals to the";
The ongoing of it is the Ranch output rule.

This is the Ranch Output Rule:
	let x be 1;
	if a random chance of 1 in 4 succeeds:
		increase x by 1;
	now x is x + ( workers of hunter / 20 );
	if agricultural zone is adjacent to Ranch:
		increase x by 1;
	if "Meat" is listed in diet of tribe of player:
		increase food of tribe of player by x;
	else:
		increase creds of tribe of player by x;

This is the ranchcheck rule:
	if farming is complete, rule succeeds;
	rule fails;

Section - Agricultural Zone

Agricultural Zone is a Construct.
The description of it is "A massive, flat area filled with rows upon rows of [one of]wheat[or]corn[or]tomato stalks[or]apple trees[or]grape vines[or]marijuana[sticky random]. You feel at peace here, the wildlife of the area unperterbed and singing happily. The rustic look quite an eyesore for the city-folk. (Increases farmers' efficency by offering organized plot of farmland (No effect on hunters))".
The cost of it is 60.
The validation of agricultural zone is agricheck rule.
The proximity of it is "You smell tilled earth to the";
The ongoing of it is the agri output rule.

This is the Agri Output Rule:
	let x be 1;
	if a random chance of 1 in 4 succeeds:
		increase x by 1;
	now x is x + ( workers of farmer / 20 );
	if "Plant" is listed in diet of tribe of player:
		increase food of tribe of player by x;
	else:
		increase creds of tribe of player by x;

This is the agricheck rule:
	if farming is complete, rule succeeds;
	rule fails;

Section - Well

Well is a construct.
The description of it is "A simple source of water. A salvaged bucket has been provided to lower down and bring up some, mostly delicious, water. You see some [bodyadj of tribe of player] people hanging around at most times of the day, socializing near the wellspring of life.".
The cost of it is 50.
The validation of it is agricheck rule.
The proximity of it is "You can see people hanging around a well to the".
The ongoing of it is the well rule.

This is the well rule:
	if the remainder after dividing turns by 2 is not 0, continue the action;
	let x be 0;
	if well is adjacent to agricultural zone:
		increase x by 1;
		now x is x + ( workers of farmer / 20 );
	if "Plant" is listed in diet of tribe of player:
		increase food of tribe of player by x;
	else:
		increase creds of tribe of player by x;

Section - Shelter

Shelter is a construct.
The description of it is "A crude shelter made by refurbishing a building that was already there. Still, some soft beds and a decent job keeping out cold breezes does a lot to make the people feel at home.".
The cost of it is 25.
The proximity of it is "You can smell someone's dinner coming from the".


Book - Building!

An everyturn rule (this is the Can We Build It rule):
	if blueprints is not started, continue the action;
	let z be the number of valid not placed constructs;
	if z is 0, continue the action;
	if building of blueprints is complete:
		say "Your current building project is complete. You should pick a new one.";
		continue the action;
	let foragers be workers of builder;
	now foragers is foragers * 2; [ Builders are worth 2 points each ]
	increase foragers by ( population of tribe of player - occupied of tribe of player ) / 5; [ idle people are worth 1/5th points each ]
	[First check for easy to grab salvage, will become more scarce over time]
	let x be a random number from 80 to 120; [mild variance]
	increase x by (Handiness of tribe of player) / 5;
	if "Deft" is listed in perks of tribe of player:
		increase x by 20;
	now x is ( x * foragers ) / 100;
	if x > 0: [ There is building to be done ]
		if x < 1, now x is 1;
		say "Your construction advances: +[x]";
		increase progress of building of blueprints by x;
		if building of blueprints is complete:
			say ". [bold type][building of blueprints][roman type] is constructed!";
			follow the completion of building of blueprints;
			if the perk of building of blueprints is not "":
				add the perk of building of blueprints to perks of tribe of player;
			change the facing of blueprints exit of origin of blueprints to building of blueprints;
			change the opposite of facing of blueprints exit of building of blueprints to origin of blueprints;
			now building of blueprints is placed;
			let startroom be the origin of blueprints;
			let target be building of blueprints;
			if facing of blueprints is east:
				let roomcheck be the room north of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room east of roomcheck;
					if roomcheck is not nothing:
						change the south exit of roomcheck to target;
						change the north exit of target to roomcheck;
				now roomcheck is the room south of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room east of roomcheck;
					if roomcheck is not nothing:
						change the north exit of roomcheck to target;
						change the south exit of target to roomcheck;
				now roomcheck is the room south of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room east of roomcheck;
					if roomcheck is not nothing:
						now roomcheck is the room east of roomcheck;
						if roomcheck is not nothing:
							now roomcheck is the room north of roomcheck;
							if roomcheck is not nothing:
								change the west exit of roomcheck to target;
								change the east exit of target to roomcheck;
				now roomcheck is the room north of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room east of roomcheck;
					if roomcheck is not nothing:
						now roomcheck is the room east of roomcheck;
						if roomcheck is not nothing:
							now roomcheck is the room north of roomcheck;
							if roomcheck is not nothing:
								change the west exit of roomcheck to target;
								change the east exit of target to roomcheck;
			if facing of blueprints is west:
				let roomcheck be the room north of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room west of roomcheck;
					if roomcheck is not nothing:
						change the south exit of roomcheck to target;
						change the north exit of target to roomcheck;
				now roomcheck is the room south of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room west of roomcheck;
					if roomcheck is not nothing:
						change the north exit of roomcheck to target;
						change the south exit of target to roomcheck;
				now roomcheck is the room south of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room west of roomcheck;
					if roomcheck is not nothing:
						now roomcheck is the room west of roomcheck;
						if roomcheck is not nothing:
							now roomcheck is the room north of roomcheck;
							if roomcheck is not nothing:
								change the east exit of roomcheck to target;
								change the west exit of target to roomcheck;
				now roomcheck is the room north of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room west of roomcheck;
					if roomcheck is not nothing:
						now roomcheck is the room west of roomcheck;
						if roomcheck is not nothing:
							now roomcheck is the room north of roomcheck;
							if roomcheck is not nothing:
								change the east exit of roomcheck to target;
								change the west exit of target to roomcheck;
			if facing of blueprints is north:
				let roomcheck be the room west of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room north of roomcheck;
					if roomcheck is not nothing:
						change the east exit of roomcheck to target;
						change the west exit of target to roomcheck;
				now roomcheck is the room east of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room north of roomcheck;
					if roomcheck is not nothing:
						change the west exit of roomcheck to target;
						change the east exit of target to roomcheck;
				now roomcheck is the room west of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room north of roomcheck;
					if roomcheck is not nothing:
						now roomcheck is the room north of roomcheck;
						if roomcheck is not nothing:
							now roomcheck is the room east of roomcheck;
							if roomcheck is not nothing:
								change the south exit of roomcheck to target;
								change the north exit of target to roomcheck;
				now roomcheck is the room east of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room north of roomcheck;
					if roomcheck is not nothing:
						now roomcheck is the room north of roomcheck;
						if roomcheck is not nothing:
							now roomcheck is the room west of roomcheck;
							if roomcheck is not nothing:
								change the south exit of roomcheck to target;
								change the north exit of target to roomcheck;
			if facing of blueprints is south:
				let roomcheck be the room west of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room south of roomcheck;
					if roomcheck is not nothing:
						change the east exit of roomcheck to target;
						change the west exit of target to roomcheck;
				now roomcheck is the room east of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room south of roomcheck;
					if roomcheck is not nothing:
						change the west exit of roomcheck to target;
						change the east exit of target to roomcheck;
				now roomcheck is the room west of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room south of roomcheck;
					if roomcheck is not nothing:
						now roomcheck is the room south of roomcheck;
						if roomcheck is not nothing:
							now roomcheck is the room east of roomcheck;
							if roomcheck is not nothing:
								change the north exit of roomcheck to target;
								change the south exit of target to roomcheck;
				now roomcheck is the room east of the startroom;
				if roomcheck is not nothing:
					now roomcheck is the room south of roomcheck;
					if roomcheck is not nothing:
						now roomcheck is the room south of roomcheck;
						if roomcheck is not nothing:
							now roomcheck is the room west of roomcheck;
							if roomcheck is not nothing:
								change the north exit of roomcheck to target;
								change the south exit of target to roomcheck;

Book - Builders

builder is a job.
The validation of builder is the buildervailable rule.
The maximum of builder is maxbuilder rule.

This is the maxbuilder rule:
	now max of builder is population of tribe of player;

This is the buildervailable rule:
	let x be the number of valid incomplete constructs;
	if x is 0, the rule fails;
	the rule succeeds;

Build ends here.
