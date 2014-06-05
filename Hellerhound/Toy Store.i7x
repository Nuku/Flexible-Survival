Toy Store by Hellerhound begins here.

Toy Store is a situation.  The level of Toy Store is 1.
when play begins:
	add Toy Store to badspots of guy;
	add Toy Store to badspots of furry;

toystoreoverride is a truth state that varies. toystoreoverride is usually false;

instead of resolving a toy store:
	say "     You come across a store with gas lamps in the windows, and activity inside. You catch a flash of orange, but the windows are shaded, and you cannot really tell who or what is inside.";
	say "     Do you wish to enter?";
	if the player consents:
		say "   You open the door to find a whole nest of latex foxes, all playing with each other. Thick seed covers the walls, and as soon as you open the door, they flood out and attack, sensing another, potential playmate.";
		repeat with N running from one to ten:
			now toystoreoverride is true;
			challenge "Latex Fox";
			if lost is 1:
				say "     You collapse, [if fightoutcome is 22]surrendering[otherwise]beaten[end if], as the other latex fox's surround you, squeaking in triumph. Almost immediately you're assaulted from every direction by the monster's throbbing, cum-oozing dicks.";
				say "     Eager to fill every hole they can find, you're summarily pounded by multiple canine cocks, their somewhat malleable texture granting them the twisted opportunity to squeeze multiple through the same holes, [if cunts of player > 0 and anallevel is not 1]cunt[sfn], ass, and mount flooded with the latex rods[otherwise if cunts of player > 0]cunt[sfn] and mouth flooded with the latex rods[otherwise if anallevel is not 1]ass and mouth flooded with the latex rods[otherwise]mouth flooded with latex rods[end if].";
				say "     Even as you're pumped full of their rubbery cum, they're only replaced by another, just as eager to abuse their new toy. Eventually they all do manage to exhaust themselves on you, and you manage to pull yourself out of the store, a twisted and cum-soaked mess of a person.";
				infect;
				infect;
				infect;
				infect;
				infect;
				increase libido of player by 15;
				break;
			otherwise:
				say "     The others surge forward.";
		if lost is 1:
			say "     You manage to put some distance between you and the store, taking a while to recover from the peculiar circumstance.";
			now toy store is resolved;
		otherwise:	
			say "     Standing in a pile of incapacitated latex foxes, you yell your triumph, and take some food and water as a reward.";
			increase carried of food by 2;
			if a random chance of one in two succeeds:
				increase carried of dirty water by 1;
				increase carried of water bottle by 1;
			otherwise if a random chance of 1 in 2 succeeds:
				increase carried of dirty water by 2;
			otherwise:
				increase carried of water bottle by 2;
			now toy store is resolved;
	otherwise:
		say "    You go on your way, away from the store.";
	now toystoreoverride is false;




Toy Store ends here.