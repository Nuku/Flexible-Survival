Hyena Situations by Hellerhound begins here.

Section 1 - Hyena Kill

Hyena Kill is a situation.

instead of resolving Hyena Kill:
	say "You come across a murder scene in the corner of one of the streets, blood spattered everywhere, on the walls, the sidewalk, the parked cars, and black spotted hair also. Powdered segments of bone are also scattered. It looks like one of the hyenas didn't go for the rape, but for the kill. Ouch. They must have really hated the person.";
	say "You hope that isn't what they think of you.";
	now hyena kill is resolved;


Section 2 - Panther Trap

panther trap is a situation.
when play begins:
	add panther trap to badspots of hermaphrodite;
	add panther trap to badspots of furry;

instead of resolving a panther trap:
	say "You come across two large piles of debris that all but block the way forward. Despite them, you try and squeeze through. Unfortunately the grey and tall junk piles fall onto you before you get fully through, trapping you with a loud smashing noise that you would swear would be audible throughout the city. You wince to think of the attention coming your way and start trying to escape, fast.";
	if a random number between one and 20 < 12:
		[the felitaur heard]
		say "A panther taur comes up behind you, its trap having fallen on you, and proceeds to use you.";
		say "[felitaur rape]";
	otherwise:
		if a random chance of one in 3 succeeds:
			let Q be a list of numbers;
			repeat with X running from 1 to number of rows in table of random critters:
				choose row X from the table of random critters;
				if there is no area entry, next;
				if name entry matches the text battleground, case insensitively:
					add x to Q;
			sort Q in random order;
			repeat with Z running through Q:
				choose row Z from the table of random critters;
				if there is a name entry:
					now monster is Z;
				otherwise:
					next;
				break;
			say "A nearby monster catches you in the felitaur's trap, and proceeds to fight you, in the process disrupting the rubble and freeing you.";
			decrease the HP of the player by 10;
			choose row monster from the table of random critters;
			now monsterhp is hp entry;
			challenge;
			follow the turnpass rule;
		otherwise:
			say "Nobody shows up before you succeed at freeing yourself. Phew.";


Section 3 - Intact Fountain

Intact Fountain is a situation.



instead of resolving an intact fountain:
	say "You find a fountain, intact among the wreckage of the city. However it looks like the water's purity did not survive, nor did the fountains appearance. The fountain is covered with the sexual fluids, milk, and urine of (you suspect) all the creatures in the city. The water is cloudy and murky, many different strains of stain swirling in the water. You can drink or collect it, but it is at your own risk.";
	say "Do you drink?";
	if the player consents:
		say "You drink deeply from the fountain, quenching your thirst no matter what the cost.";
		while the thirst of the player >= 10:
			say "You feel less thirsty and hungry after guzzling some thick, infected, tasty water, yum!";
			decrease thirst of player by 10;
			decrease hunger of player by 10;
			if thirst of player is less than 0, now thirst of player is 0;
			if hunger of player is less than 0, now hunger of player is 0;
			if morale of player is less than 0:
				increase morale of player by 62;
				if morale of player is greater than 0, now morale of player is 0;
				say "After drinking something, you feel better.";
			sort table of random critters in random order;
			now monster is 1;
			if "Iron Stomach" is not listed in feats of player, infect;
			wait for any key;
	otherwise:
		say "You avoid the fountain like it was another nanite plague.";
	if a random chance of one in three succeeds:
		let S be a random number between one and 7;
		if S is 1 and guy is not banned and hellspawn is not banned:
			say "You identify some demon seed on the side of the fountain. Do you wish to collect it?";
			if the player consents:
				add "demon seed" to the invent of the player;
		otherwise if S is 2 and hermaphrodite is not banned and furry is not banned:
			say "You find some Gryphon Milk on the fountain. Collect it?";
			if the player consents:
				add "gryphon milk" to the invent of the player;
		otherwise if S is 3 and girl is not banned:
			say "You find a glob of goo floating in the fountain water. It appears to be unaffected by the clamor of nanites around it. Collect?";
			if the player consents:
				add "glob of goo" to the invent of the player;
		otherwise if S is 4 and hermaphrodite is not banned and furry is not banned:
			say "You find a bunch of identifiably dog milk on the spray nozzle, currently off. Collect?";
			if the player consents:
				add "dog milk" to the invent of the player;
		otherwise if S is 5 and girl is not banned and furry is not banned:
			say "There is skunk goo floating in the cloudy water. Collect?";
			if the player consents:
				add "Skunk Goo" to the invent of player;
		otherwise if S is 6 and hermaphrodite is not banned and girl is not banned:
			say "There is some webbing across sections of the fountain. Do you want to collect it?";
			if the player consents:
				add "spider webbing" to the invent of the player;
		
	

Hyena Situations ends here.
