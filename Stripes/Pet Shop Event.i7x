Version 2 of Pet Shop Event by Stripes begins here.
[Version 2 - Separate file]

"Adds the 'Pet Shop' event for collecting collars for several pets."

[ Collars for			]
[ Sarah - sarahslut = 2 ]
[ Sven - hp of Sven = 6 ]
[ Korvin - gsd_pet = 15 ]


Pet Shop is a situation.

instead of resolving a pet shop:
	if sarahslut is 2 and hp of Sven is 6:
		say "     You manage to find your way back to the pet shop near where you rescued Sarah.  Reminded of your budding pets, you decide to have a look inside for something for them.  Unfortunately, the place is rather thoroughly looted, with the animal infected probably taking everything to placate their animal hungers or urges.  You do manage to find a few scattered collars lying around in the rubble.  You pick a grey, leather one with what smells like some husky cum on it.  Rinsing it off in a water dish in a busted cage, you get it clean, though it still smells a little of huskies, perfect for your little pet.  You find a second one, a baby blue one made of woven fabric with silver stars on it that fell in some spilled catnip.  Gauging it to be roughly his size, you decide it's perfect for your pretty kittyboi.  Taking a pair of the blank, heart-shaped tags, you use the press to punch the word [']SLUT['] onto Sarah's and [']FUCKTOY['] onto Sven's.  As you're operating the press, you spot an oversized toy mouse about the size of your fist lying beside it.  Tossing it and the water dish into the plastic bag, you put the new collars into in and head off, looking forward seeing how your pets will respond to their new roles.";
		if gsd_pet is 15:
			say "[gsd_petshopaddon]";
		now sarahslut is 3;
		now hp of Sven is 7;
	otherwise if sarahslut is 2:
		say "     You manage to find your way back to the pet shop near where you rescued Sarah.  Reminded of your husky pet, you decide to have a look inside for something for her.  The place is rather thoroughly looted, with the animal infected probably taking everything to placate their animal hungers or urges.  You do manage to find a few scattered collars lying around in the rubble.  You pick a grey, leather one with what smells like some husky cum on it.  Rinsing it off in a water dish in a busted cage, you get it clean, though it still smells a little of huskies, perfect for your little pet.  Taking one of the blank, heart-shaped tags, you use the press to punch the word [']SLUT['] onto it.  Along with the water dish, you toss it into a plastic bag and head out, eagerly looking forward to what she'll play like with it on.";
		if gsd_pet is 15:
			say "[gsd_petshopaddon]";
		now sarahslut is 3;
	otherwise if hp of Sven is 6:
		say "     You come across a small pet shop and are reminded of your new, feline pet.  Deciding to have a look inside for something for him, you cautiously take a look around.  It has been rather thoroughly looked by the infected hordes.  You can imagine many of those infected by pets desiring the shop's contents to satisfy their animal urges.  You do manage to find a few scattered collars lying around in the rubble.  You pick up a baby blue one made of woven fabric with silver stars on it that fell in some spilled catnip.  Gauging it to be roughly his size, you decide it's perfect for your pretty kittyboi.  Taking one of the blank, heart-shaped tags, you use the press to punch the word [']FUCKTOY['] onto it.  Beside the press, you spot an oversized toy mouse about the size of your fist and toss it along with the collar into a plastic bag to bring as gifts for your playful pet.";
		if gsd_pet is 15:
			say "[gsd_petshopaddon]";
		now hp of Sven is 7;
	otherwise if gsd_pet is 15:
		if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
			say "     Coming across a small pet store reminds you of Korvin and how he's still wearing that length of rope as a collar.  Searching through the sacked store, you locate one you think would be just right for him  under some torn and empty bags of kibble.  It is a frilly pink collar with a heart-shaped clasp and a matching leash.  It's the kind you'd expect to find on a little poodle or lapdog.  It looks cute, girly and humiliating - perfect for reminding your German Shepherd bitch of his place.  Using the store's tag press, you punch [']SUBBY PUPPY['] onto a bone-shaped tag as a further reminder.  You put your well-trained pet's new collar and leash in a plastic bag to present to him later.";
		otherwise:
			say "     Coming across a small pet store reminds you of Korvin and how he's still wearing that length of rope as a collar.  Searching through the sacked store, you locate one you think would be just right for him  under some torn and empty bags of kibble.  It is a black leather collar with twin rows of square metal studs, the kind of thing you'd expect to see on an attack dog in an 80's movie.  You also find a leather leash that's a good match for the collar.  It looks tough, mean and butch - perfect for your aggressive German Shepherd thug.  Using the store's tag press, you punch his name onto a golden tag so he won't forget it again.  You put the dog man's new collar and leash in a plastic bag to present to him later.";
		now gsd_pet is 16;
	otherwise:
		say "     You spot a small pet shop, but a quick glance inside the smashed windows shows that pretty much everything of value has been looted from the place already.  Glancing across the street, you see a [one of]bank branch[or]electronics store[or]cell phone store[or]computer store[or]jewelry store[at random] that has been left untouched.  Chuckling a little at the strange priorities of the looters, you continue on your way.";
	if hp of Sven > 6 and sarahslut > 2 and gsd_pet > 15, now Pet Shop is resolved;


to say gsd_petshopaddon:
	if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
		say "     While searching around, you're reminded of Korvin and how he's still wearing that length of rope as a leash.  Searching through the sacked store, you locate one you think would be just right for him  under some torn and empty bags of kibble.  It is a frilly pink collar with a heart-shaped clasp and a matching leash.  It's the kind you'd expect to find on a little poodle or lapdog.  It looks cute, girly and humiliating - perfect for reminding your German Shepherd bitch of his place.  Using the store's tag press, you punch [']SUBBY PUPPY['] onto a bone-shaped tag as a further reminder.  As you're bagging up your well-trained pet's new collar and leash to present to him later, you spot a squeaky bone to give him as well.  It's a cute pink colour and small; it'd barely fit across his large muzzle and so will look extra-cute in the otherwise butch dog's mouth.";
	otherwise:
		say "     While searching around, you're reminded of Korvin and how he's still wearing that length of rope as a leash.  Searching through the sacked store, you locate one you think would be just right for him  under some torn and empty bags of kibble.  It is a black leather collar with half-inch spikes, the kind of thing you'd expect to see on an attack dog in an 80's movie.  You also find a leather leash that's a good match for the collar.  It looks tough, mean and butch - perfect for your aggressive German Shepherd thug.  Using the store's tag press, you punch his name onto a bone-shaped tag so he won't forget it again.  You put the dog man's new collar and leash in a plastic bag to present to him later.";
	now gsd_pet is 16;


Pet Shop Event ends here.