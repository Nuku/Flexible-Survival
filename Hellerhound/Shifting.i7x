Shifting by Hellerhound begins here.


Section 1 - Secure Area Situation

Secure Area is a situation.
halodestroyed is a number that varies.
dragatordefeated is a number that varies.


dragatorwon is a number that varies.






insecure is a number that varies.

instead of resolving a Secure Area:
	now insecure is 1;
	say "On your jaunt through the city, you come across a yard, mostly intact, covered with barbed wire and odd defensive technology you could have sworn was science fiction. Behind the barriers, one of which is a shimmering halo in midair, stand two creatures, tall, but their silhouette is blurred by the halo, and you cannot make out if they are human or not. You can still make out the huge doors, made of something clearish white...";
	if a random number between one and 30 > the perception of the player:
		say "Oh my god. You realize that the doors are made of diamond. What needs that much protection?";
	say "[line break][line break][line break]";
	wait for any key;
	say "Do you wish to get to the door?";
	if the player consents:
		say "You run towards the barriers, determined to get inside.";
		if a random number between one and 35 < the dexterity of the player:[player gets through to halo]
			say "Running and jumping and twisting, you manage to get thorough to the halo, which you approach with caution.";
			if a random number between one and 35 < the strength of the player: [breaks halo]
				now halodestroyed is 1;
				say "You slam the halo with all your might, and feel it crumble beneath you, revealing the rest of the way.";
				wait for any key;
				say "The shimmering dissipated, you look towards the guards at the door, and with a shock realize they are of the Ash Dragator infection. You could turn back now, or maybe you want to challenge them?";
				if the player consents:
					say "You march froward, and they attack.";
					challenge "Ash Dragator";
					if lost is 1, now dragatorwon is 1;
					challenge "Ash Dragator";
					if lost is 1, now dragatorwon is 1;
					if dragatorwon is 1:
						say "You collapse to their vicious defense, and are carried off, after being hit on the back of the head so hard you are knocked unconcious.";
						say "You wake to the sight of the dragator filling your vision.[dragator attack]";
					otherwise:
						say "You stand, panting, as the last dragator moans and dies.";
						say "Catching your breath, you march up to the doors, and see the hairline crack in the stone.";
						say "You shove your hands into the opening, cracking the stone, as you pull the door with your immense strength.";
						if a random number between one and 30 < the strength of the player:
							say "The door creaks open, and you walk into the dimly lit area.";
							say "There are glyphs and writings covering the wall, and some show people in various states of infection. Looking closer, you notice that the writings seem to denote how to control the nanites, and the changes. You can now [bold type]shift[roman type] into other infections.";
							increase the score by 500;
							now shiftable is 1;
						otherwise:
							say "The door refuses to budge, and you go on your way, disappointed that you couldn't get any further.";
				otherwise:
					say "You run, avoiding the menace behind.";
			otherwise:
				say "The halo resists all your efforts to break through, and you are forced to be on your way.";
		otherwise:
			say "You trip and fall onto one of the barbed wire fences! Yow!";
			decrease the hp of the player by 20;
			say "An odd tingling runs through you, and with jarring suddenness you are back on the street, looking away from the secure house.";
	otherwise:
		say "You wisely avoid what could only be more trouble than it is worth.";
	now insecure is 0;
	now Secure Area is resolved;







Section 2 - Shifting

shiftable is a number that varies.

shifting is an action applying to one topic.
understand "shift [text]" as shifting.
understand "shift into [text]" as shifting.
understand "shift to [text]" as shifting.

check shifting:
	if shiftable is 0:
		say "You do not know how to do that!";
		stop the action;

carry out shifting:
	say "You concentrate on becoming one with them.";
	repeat with X running from 1 to number of filled rows in table of random critters:
		choose row X from the table of random critters;
		if name entry matches the text topic understood, case insensitively:
			now monster is X;
			break;
	transform;



Section 3 -transform


To transform:
	choose row monster from the table of random critters;
	while there is no name entry:
		now monster is a random number from 1 to number of rows in table of random critters;
		choose row monster from the table of random critters;
		if there is no name entry:
			next;
		break;
	if 1 is 1:
		if skinname of player is not name entry:
			say " Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
			now skinname of player is name entry;
			now skin of player is skin entry;
	if 2 is 2:
		if facename of player is not name entry:
			say " Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
			now facename of player is name entry;
			now face of player is face entry;
	if 3 is 3:
		if tailname of player is not name entry:
			say " Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
			now tailname of player is name entry;
			now tail of player is tail entry;
	if 4 is 4:
		if breasts of player is not breasts entry and "One Pair" is not listed in feats of player:
			decrease breast size of player by 2;
			follow the breast descr rule;
			if breasts entry is greater than breasts of the player:
				while breasts entry is greater than breasts of player:
					increase breasts of player by 2;
					say " Your chest tingles intensely as two new sensitive points form up, announcing the arrival of two new [descr] breasts, pressing out of your [skin of player] hide.";
			otherwise:
				while breasts entry is less than breasts of player:
					decrease breasts of player by 2;
					say " You look down just in time to see two nipples, [descr] breasts included, be reabsorbed into your body, leaving nothing but [skin of player] flesh behind.";
			increase breast size of player by 2;
		while ( the sex entry is "Female" or the sex entry is "Both") and breast size of player is less than breast size entry and "Male Preferred" is not listed in feats of player:
			follow the breast descr rule;
			let oldbreast be descr;
			say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
			increase breast size of player by 1;
			increase breast size of player by ( breast size entry minus breast size of player ) divided by 3;
			follow the breast descr rule;
			say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";
		while breast size of player is greater than breast size entry and "One Way" is not listed in feats of player:
			follow the breast descr rule;
			let oldbreast be descr;
			say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
			decrease breast size of player by 1;
			decrease breast size of player by ( breast size entry minus breast size of player ) divided by 3;
			follow the breast descr rule;
			say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";
		if bodyname of player is not name entry:
			say "Your body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
			now bodyname of player is name entry;
			now body of player is body entry;
		follow the sex change rule;
	if 5 is 5:
		follow the sex change rule;
		if cockname of player is not name entry:
			if cocks of player is greater than 0, say " Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
			now cockname of player is name entry;
			now cock of player is cock entry;
	if 1 is 1:
		while strength of player is not str entry:
			if strength of player is greater than str entry and a random chance of 1 in 10 succeeds:
				say "Your muscles feel weaker as the infection spreads through you.";
				decrease strength of player by 1;
			if strength of player is less than str entry:
				say "You feel your muscles swelling with [name entry] [one of]strength[or]physique[or]power[at random].";
				increase strength of player by 1;
				increase capacity of player by 5;
	if 2 is 2:
		while Intelligence of player is not Int entry:
			if Intelligence of player is greater than Int entry and a random chance of 1 in 10 succeeds:
				say "Your head aches as the infection spreads through you.";
				decrease Intelligence of player by 1;
			if Intelligence of player is less than Int entry:
				say "You feel your mind swelling with [name entry] [one of]Intelligence[or]wit[or]complexity[at random].";
				increase Intelligence of player by 1;
	if 3 is 3:
		while Dexterity of player is not Dex entry:
			if Dexterity of player is greater than Dex entry and a random chance of 1 in 10 succeeds:
				say "Your coordination feels weaker as the infection spreads through you.";
				decrease Dexterity of player by 1;
			if Dexterity of player is less than Dex entry:
				say "You feel your hand eye coordination swelling with [name entry] [one of]Dexterity[or]physique[or]accuracy[at random].";
				increase Dexterity of player by 1;
	if 4 is 4:
		while Stamina of player is not Sta entry:
			if Stamina of player is greater than Sta entry and a random chance of 1 in 10 succeeds:
				say "Your constitution feels weaker as the infection spreads through you.";
				decrease Stamina of player by 1;
				if remainder after dividing stamina of player by 2 is 1:
					decrease maxhp of player by level of player plus 1;
			if Stamina of player is less than Sta entry:
				say "You feel your body toughening with [name entry] [one of]Stamina[or]physique[or]power[at random].";
				increase Stamina of player by 1;
				if remainder after dividing stamina of player by 2 is 0:
					increase maxhp of player by level of player plus 1;
	if 5 is 5:
		while Perception of player is not Per entry:
			if Perception of player is greater than Per entry and a random chance of 1 in 10 succeeds:
				say "Your senses dull as the infection spreads through you.";
				decrease Perception of player by 1;
			if Perception of player is less than Per entry:
				say "You feel your senses swelling with [name entry] [one of]Perception[or]aptitude[or]feral attention[at random].";
				increase Perception of player by 1;
	if 6 is 6:
		while Charisma of player is not Cha entry:
			if Charisma of player is greater than Cha entry and a random chance of 1 in 10 succeeds:
				say "You feel more isolated as the infection spreads through you.";
				decrease Charisma of player by 1;
			if Charisma of player is less than Cha entry:
				say "You feel your social sense swelling with [name entry] [one of]Charisma[or]natural charm[or]pheromones[at random].";
				increase Charisma of player by 1;
	if the libido of the player is less than libido entry:
		say "You can't help but [one of]feel your thoughts drifting towards sex[or]notice that the attributes of [name entry] were very appealing[or]wonder if getting to know these creatures in the biblical sense would be all that bad[at random].";
		let oldlib be libido of player;
		increase libido of player by 1;
		increase libido of player by ( libido entry minus libido of player ) divided by 3;

Shifting ends here.
