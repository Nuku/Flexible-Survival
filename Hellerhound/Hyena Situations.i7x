Hyena Situations by Hellerhound begins here.
[Several events transfered to CEO1 document in Stripes's folder.]

Section 1 - Hyena Kill

[Moved to CEO1 file]


Section 2 - Panther Trap

[Moved to CEO1 file]


Section 3 - Intact Fountain

Intact Fountain is a situation. The sarea of Intact Fountain is "Campus".

instead of resolving an intact fountain:
	say "You find a fountain, intact among the chaos of the infected campus. However it looks like the water's purity did not survive, nor did the fountains appearance. The fountain is covered with the sexual fluids, milk, and urine of (you suspect) all the creatures in the city. The water is cloudy and murky, many different strains of stain swirling in the water. You can drink or collect it, but it is at your own risk.";
	say "Do you drink?";
	if player consents:
		say "You drink deeply from the fountain, quenching your thirst no matter what the cost.";
		while thirst of player >= 10:
			say "You feel less thirsty and hungry after guzzling some thick, infected, tasty water, yum!";
			PlayerDrink 10;
			PlayerEat 4;
			if morale of player < 0:
				increase morale of player by 62;
				if morale of player > 0, now morale of player is 0;
				say "After drinking something, you feel better.";
			if "Iron Stomach" is not listed in feats of player:
				if a random chance of 1 in 3 succeeds:
					randominfect;
				else:
					weakrandominfect;
			break;
		if "Iron Stomach" is not listed in feats of player:
			if a random chance of 1 in 3 succeeds:
				randominfect;
			else:
				weakrandominfect;
			wait for any key;
	else:
		say "You avoid the fountain like it was another nanite plague.";
	if a random chance of one in three succeeds:
		let S be a random number between one and 7;
		if S is 1 and guy is not banned and hellspawn is not banned:
			say "You identify some demon seed on the side of the fountain. Do you wish to collect it?";
			if player consents:
				increase carried of demon seed by 1;
		else if S is 2 and hermaphrodite is not banned and furry is not banned:
			say "You find some Gryphon Milk on the fountain. Collect it?";
			if player consents:
				increase carried of gryphon milk by 1;
		else if S is 3 and girl is not banned:
			say "You find a glob of goo floating in the fountain water. It appears to be unaffected by the clamor of nanites around it. Collect?";
			if player consents:
				increase carried of glob of goo by 1;
		else if S is 4 and hermaphrodite is not banned and furry is not banned:
			say "You find a bunch of identifiably dog milk on the spray nozzle, currently off. Collect?";
			if player consents:
				increase carried of dog milk by 1;
		else if S is 5 and girl is not banned and furry is not banned:
			say "There is skunk goo floating in the cloudy water. Collect?";
			if player consents:
				increase carried of skunk goo by 1;
		else if S is 6 and hermaphrodite is not banned and girl is not banned:
			say "There is some webbing across sections of the fountain. Do you want to collect it?";
			if player consents:
				increase carried of spider webbing by 1;



Hyena Situations ends here.
