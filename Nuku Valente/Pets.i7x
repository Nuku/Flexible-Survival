Version 2 of Pets by Nuku Valente begins here.
[Version 2 - Initiating sex w/pets]

Pet is a kind of person.
A pet can be tamed. A pet is usually not tamed.
A pet has text called summondesc.
A pet has a text called assault.
The player has a pet called companion.
Definition: A person is lonely:
	if companion of player is nullpet, yes;

Definition: A person is not lonely:
	if companion of player is nullpet, no;

before examining a pet(called x):
	if x is the companion of the player:
		let z be 1;
	otherwise:
		say "I don't see any [x] around here at the moment.";
		stop the action;

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

Cute Crab is a pet. The description of Cute Crab is "It's so cute! It has huge eyes that seem to stare into your soul and big pincers that clackity clack.". Cute crab is a part of the player;
The weapon damage of cute crab is 6;
The level of cute crab is 1;
The Dexterity of cute crab is 8;
The summondesc of cute crab is "Bursting from the ground near you, your cute crab appears. It clacks its pincers together in an excited fashion like a castanet player.";
The assault of cute crab is "[one of]Your crab snaps with his great pincers![or]Scuttling crazily, you are not even entirely sure when your crab landed a blow.[at random]";
the fuckscene of cute crab is "The crab is too small and too cute for that sort of thing - you perv.";

instead of sniffing the Cute Crab:
	say "The crab's smell is faintly reminiscent of the beach.";


Lost Crab is a situation.
The sarea of Lost Crab is "Beach";

Instead of resolving lost crab:
	say "While you are exploring, you happen across a crab. The crab has unusually large and expressive eyes. It clacks its great pincers at you, but you don[']t get much feeling of malice from it.";
	if food is owned:
		say "The crab scuttles towards you and reaches out to poke lightly at where the food is stored. Do you want to give it some?";
		if the player consents:
			delete food;
			say "The crab munches quite happily at the food, blowing a few bubbles afterwards to show its appreciation.";
			now cute crab is tamed;
			say "[bold type](The cute crab is now tamed! You can make it your active pet by typing [link]pet cute crab[as]pet cute crab[end link]. You can see all the pets you have tamed with the [link]pet[as]pet[end link] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [link]pet dismiss[as]pet dismiss[end link], or just [link]dismiss[as]dismiss[end link])[roman type]";
		otherwise:
			say "The crab scuttles away sadly.";
		now lost crab is resolved;
	otherwise:
		say "The crab peers at you for several quiet moments before scuttling away, mildly disappointed for some reason.";


Latex Vixen is a pet. The description of Latex Vixen is "Sleek latex lines run over hir bright green and black form. Shi has a narrow snout with oddly solid looking teeth, often bared in a grin or smile. She has ripe C cupped breasts, a long shiny tail and a cock that stands out against her black belly, as pink as the belly is deep black.". Latex Vixen is a part of the player;
The weapon damage of latex vixen is 10;
The level of latex vixen is 4;
The dexterity of latex vixen is 12;
The summondesc of latex vixen is "You feel hands settle on your midsection from behind as soft breasts press against your back. The shiny vixen steps into view from behind, ready to follow you wherever you go and see to your various 'needs'.";
The assault of latex vixen is "[Vixattack]";

instead of sniffing the Latex Vixen:
	say "The latex vixen sadly smells of latex and incompletion.";

To say Vixattack:
	say "Not coded yet.";



Pets ends here.
