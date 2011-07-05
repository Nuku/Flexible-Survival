Pets by Nuku Valente begins here.

Pet is a kind of person.
A pet can be tamed. A pet is usually not tamed.
A pet has text called summondesc.
A pet has a text called assault.
The player has a pet called companion.
Definition: A person is lonely:
	if companion of player is nullpet, yes;

Definition: A person is not lonely:
	if companion of player is nullpet, no;

Nullpet is a pet. Nullpet is a part of the player;

Dismissing is an action applying to nothing.

understand "pet dismiss" and "dismiss" as dismissing.
 
carry out dismissing:
	if player is lonely:
		say "There is no pet around to dismiss.";
	otherwise:
		now companion of player is nullpet;
		say "You send your pet away.";

Calling is an action applying to one thing.

understand "pet [tamed pet]" as calling.

Petcounting is an action applying to nothing.

understand "pet" or "pets" as petcounting.

Carry out petcounting:
	say "Pets: [list of tamed pets]";

carry out calling a pet(called x):
	now the companion of player is x;
	say "[summondesc of x]";

Cute Crab is a pet. "It's so cute! It has huge eyes that seem to stare into your soul and big pincers that clackity clack.". Cute crab is a part of the player;
The weapon damage of cute crab is 6;
The level of cute crab is 1;
The Dexterity of cute crab is 8;
The summondesc of cute crab is "Bursting from the ground near you, your cute crab appears. It clacks its pincers together in an excited fashion like a castinet player.";
The assault of cute crab is "[one of]Your crab snaps with his great pincers![or]Scuttling crazily, you are not even entirely sure when your crab landed a blow.[at random]";

Lost Crab is a situation.
The sarea of Lost Crab is "Beach";


Instead of resolving lost crab:
	say "While you are exploring, you happen across a crab. The crab has unusually large and expressive eyes. It clacks its great pincers at you, but you don[apostrophe]t get much feeling of malice from it.";
	if "food" is listed in invent of player:
		say "The crab scuttles towards you and reaches out to poke lightly at where the food is stored. Do you want to give it some?";
		if the player consents:
			delete food;
			say "The crab munches quite happily at the food, blowing a few bubbles afterwards to show its appreciation.";
			now cute crab is tamed;
			say "[bold type](The cute crab is now tamed! You can make it your active pet by typing pet cute crab. You can see all the pets you have tamed with the pet command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use pet dismiss, or just dismiss)[roman type]";
		otherwise:
			say "The crab scuttles away sadly.";
		now lost crab is resolved;
	otherwise:
		say "The crab peers at you for several quiet moments before scuttling away, mildly dissapointed for some reason.";
		


Pets ends here.
