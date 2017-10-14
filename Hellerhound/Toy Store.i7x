Toy Store by Hellerhound begins here.

Toy Store is a situation.  The level of Toy Store is 1.
when play begins:
	add Toy Store to badspots of guy;
	add Toy Store to badspots of furry;

toystoreoverride is a truth state that varies. toystoreoverride is usually false.

instead of resolving a toy store:
	say "     You come across a store with gas lamps in the windows, and activity inside. You catch a flash of orange, but the windows are shaded, and you cannot really tell who or what is inside.";
	say "     Do you wish to enter?";
	if the player consents:
		say "     You open the door to find a whole nest of latex foxes, all playing with each other. Thick seed covers the walls, and as soon as you open the door, they flood out and attack, sensing another potential playmate.";
		repeat with N running from one to ten:
			now toystoreoverride is true;
			challenge "Latex Fox";
			if lost is 1:
				say "You collapse, beaten, as the other latex foxes surround you, squeaking in triumph. You close your eyes as they begin to play.";
				repeat with T running from N to ten:
					say "[one of]Yipping victoriously, the fox chews at you with loud squeaky noises. It would be adorable if you weren't in pain everywhere. Eventually the beast tires of chewing at you with its suddenly soft and noisy teeth, and wanders off, leaving you to pick yourself up[or]The fox rolls you over and clambers up on top of you with a feral snarl. [if the cunts of the player is greater than 0]The fox slips his suddenly erect rubber cock into you without further delay, rutting into your [one of]cunt[or]pussy[or]passage[at random] with eager pumps of his hips. You feel something warm and tingling rushing into your body as he knots to your abused gender, remaining on top of you, holding you still until it diminishes. Sated, he rises and departs into the city[else]He thrusts up against your ass, probing with his hard canine rubber pecker until he finds his target and sends a whole new pain into your already abused form, starting to claim his dominance over you with happy yelps and growls. He floods your bowels with thick, tingling, seed, but does not knot with you. He draws back and backs up, leaving a trail of rubbery looking seed[end if][at random].[impregchance]";
					infect;
					wait for any key;
					if T is not 10:
						say "No sooner is that fox done then another forces its way to the front.";
				break;
			else:
				say "     The others surge forward.";
		if lost is 1:
			say "     You manage to put some distance between you and the store, taking a while to recover from the peculiar circumstance.";
			now toy store is resolved;
		else:
			say "     Standing in a pile of incapacitated latex foxes, you yell your triumph, and take some food and water as a reward.";
			increase carried of food by 2;
			if a random chance of one in two succeeds:
				increase carried of dirty water by 1;
				increase carried of water bottle by 1;
			else if a random chance of 1 in 2 succeeds:
				increase carried of dirty water by 2;
			else:
				increase carried of water bottle by 2;
			now toy store is resolved;
	else:
		say "     You go on your way, away from the store.";
	now toystoreoverride is false;




Toy Store ends here.
