Version 2 of Pets by Core Mechanics begins here.
[Version 2.1 - Command tweaks]
[- Originally Authored By: Nuku Valente -]

Pet is a kind of person.
A pet can be tamed. A pet is usually not tamed.
A pet has text called summondesc.
A pet has text called dismissdesc. Dismissdesc is usually "You send your pet away.".
A pet has a text called assault.
A pet has a number called lastfight. lastfight is usually 255.
The player has a pet called companion.
Definition: A person is lonely:
	if companion of player is nullpet, yes;

Definition: A person is not lonely:
	if companion of player is nullpet, no;

before examining a pet (called x):
	if x is the companion of the player:
		increase score by 0;
	else:
		say "I don't see any [x] around here at the moment.";
		stop the action;

Nullpet is a pet. Nullpet is a part of the player;

Dismissing is an action applying to nothing.

understand "pet dismiss" and "dismiss" as dismissing.

carry out dismissing:
	if player is lonely:
		say "There is no pet around to dismiss.";
	else:
		say "[dismissdesc of companion of player]";
		now companion of player is nullpet;

Calling is an action applying to one thing.

understand "pet [tamed pet]" as calling.

Petcounting is an action applying to nothing.

understand "pet" or "pets" as petcounting.

Carry out petcounting:
	say "Pets: ";
	if hypernull is 0:
		repeat with pet running through tamed pets:
			say "[link][pet][as]pet [pet][end link] ";
		LineBreak;
	else:
		say "[list of tamed pets]";
	if companion of player is nullpet:
		say "Active pet: NONE[line break]";
	else:
		say "Active pet: [companion of player]";
	say "PET COMMANDS:[line break]";
	say "[bold type]pet <name>[roman type] - Make the named pet your active one.";
	say "[bold type]pet dismiss[roman type] - Stop using any pet for now.";

carry out calling a pet (called x):
	if companion of player is not x:
		if player is not lonely:
			say "[dismissdesc of companion of player]";
			LineBreak;
		now the companion of player is x;
		say "[summondesc of x]";
	else:
		say "They are already your current companion.";


Latex Vixen is a pet. The description of Latex Vixen is "Sleek latex lines run over hir bright green and black form. Shi has a narrow snout with oddly solid looking teeth, often bared in a grin or smile. She has ripe C cupped breasts, a long shiny tail and a cock that stands out against her black belly, as pink as the belly is deep black.". Latex Vixen is a part of the player.
The weapon damage of latex vixen is 10.
The level of latex vixen is 4.
The dexterity of latex vixen is 12.
The summondesc of latex vixen is "You feel hands settle on your midsection from behind as soft breasts press against your back. The shiny vixen steps into view from behind, ready to follow you wherever you go and see to your various 'needs'.".
The assault of latex vixen is "[Vixattack]".

instead of sniffing the Latex Vixen:
	say "The latex vixen sadly smells of latex and incompletion.";

To say Vixattack:
	say "Not coded yet.";



Pets ends here.
