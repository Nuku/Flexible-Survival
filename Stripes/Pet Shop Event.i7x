Version 2 of Pet Shop Event by Stripes begins here.
[Version 2 - Separate file]

"Adds the 'Pet Shop' event for collecting collars for several pets."

[ Collars for			]
[ Sarah - SarahSlut = 2 ]
[ Sven - HP of Sven = 6 ]
[ Korvin - gsd_pet = 15 ]

Table of GameEventIDs (continued)
Object	Name
Pet Shop	"Pet Shop"

Pet Shop is a situation.

instead of resolving a pet shop:
	if SarahSlut is 2 and HP of Sven is 6:
		say "     You manage to find your way back to the pet shop near where you rescued Sarah. Reminded of your budding pets, you decide to have a look inside for something for them. Unfortunately, the place is rather thoroughly looted, with the animal infected probably taking everything to placate their hungers or urges. You do manage to find a few scattered collars lying around in the rubble. You pick a gray, leather one with what smells like some husky cum on it. Rinsing it off in a water dish in a busted cage, you get it clean, though it still smells a little of huskies, perfect for your little pet Sarah.";
		say "     Finding a second one that you like, it is a baby blue collar made of woven fabric with silver stars on it that fell in some spilled catnip. Guessing it to be roughly his size, you decide it's perfect for your pretty kittyboi Sven. Taking a pair of the blank, heart-shaped tags scattered all over the floor behind the front counter, you use a mechanical press in the back of the store to punch the word [']SLUT['] onto Sarah's and [']FUCKTOY['] onto Sven's tag. As you're operating the press, you spot an oversized toy mouse about the size of your fist lying beside it. Tossing it and the water dish into a plastic bag bearing the store's logo, lay the new collars on top of the other stuff and head off, looking forward seeing how your pet's will respond to their new roles.";
		if gsd_pet is 15:
			say "[gsd_petshopaddon]";
		now SarahSlut is 3;
		now HP of Sven is 7;
	else if SarahSlut is 2:
		say "     You manage to find your way back to the pet shop near where you rescued Sarah. Reminded of your husky pet, you decide to have a look inside for something for her. The place is rather thoroughly looted, with the animal infected probably taking everything to placate their hungers or urges. You do manage to find a few scattered collars lying around in the rubble. You pick a gray, leather one with what smells like some husky cum on it. Rinsing it off in a water dish in a busted cage, you get it clean, though it still smells a little of huskies, perfect for your little pet. Taking one of the blank, heart-shaped tags scattered all over the floor behind the front counter, you use a mechanical press in the back of the store to punch the word [']SLUT['] onto it. Along with the water dish, you toss it into a plastic bag bearing the store's logo and head out, eagerly looking forward to what she'll play like with the new collar on.";
		if gsd_pet is 15:
			say "[gsd_petshopaddon]";
		now SarahSlut is 3;
	else if HP of Sven is 6:
		say "     You come across a small pet shop and are reminded of your new, feline pet. Deciding to have a look inside for something for him, you cautiously take a look around. Sadly, it has been rather thoroughly looked by the infected hordes. You can imagine many of those infected by pets desiring the shop's contents to satisfy their animal urges. Digging through the chaos, you do manage to find a few scattered collars lying around in the rubble. You pick up a baby blue one made of woven fabric with silver stars on it that fell in some spilled catnip. Guessing it to be roughly his size, you decide it's perfect for your pretty kittyboi Sven. Taking one of the blank, heart-shaped tags scattered all over the floor behind the front counter, you use a mechanical press in the back of the store to punch the word [']FUCKTOY['] onto it. Lying on the ground next to the press, you spot an oversized toy mouse about the size of your fist and toss it along with the collar into a plastic bag bearing the store's logo. Then you head out, eagerly looking forward to bringing your playful pet these gifts and seeing his reaction to them.";
		if gsd_pet is 15:
			say "[gsd_petshopaddon]";
		now HP of Sven is 7;
	else if gsd_pet is 15:
		if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
			say "     Coming across a small pet store reminds you of Korvin and how he's still wearing that length of rope as a collar. Searching through the sacked store, you locate one you think would be just right for him under some torn and empty bags of kibble. It is a frilly pink collar with a heart-shaped clasp and a matching leash. It's the kind you'd expect to find on a little poodle or lapdog. It looks cute, girly and humiliating - perfect for reminding your German Shepherd bitch of his place. Using the store's tag press, you punch [']SUBBY PUPPY['] onto a bone-shaped tag as a further reminder. You put your well-trained pet's new collar and leash in a plastic bag to present to him later.";
		else:
			say "     Coming across a small pet store reminds you of Korvin and how he's still wearing that length of rope as a collar. Searching through the sacked store, you locate one you think would be just right for him under some torn and empty bags of kibble. It is a black leather collar with twin rows of square metal studs, the kind of thing you'd expect to see on an attack dog in an 80's movie. You also find a leather leash that's a good match for the collar. It looks tough, mean and butch - perfect for your aggressive German Shepherd thug. Using the store's tag press, you punch his name onto a golden tag so he won't forget it again. You put the dog man's new collar and leash in a plastic bag to present to him later.";
		now gsd_pet is 16;
	else:
		say "     You spot a small pet shop, but a quick glance inside the smashed windows shows that pretty much everything of value has been looted from the place already. Glancing across the street, you see a [one of]bank branch[or]electronics store[or]cell phone store[or]computer store[or]jewelry store[at random] that has been left untouched. Chuckling a little at the strange priorities of the looters, you continue on your way.";
	if HP of Sven > 6 and SarahSlut > 2 and gsd_pet > 15, now Pet Shop is resolved;

to say gsd_petshopaddon:
	if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
		say "     While searching around, you're reminded of Korvin and how he's still wearing that length of rope as a leash. Searching through the sacked store, you locate one you think would be just right for him under some torn and empty bags of kibble. It is a frilly pink collar with a heart-shaped clasp and a matching leash. It's the kind you'd expect to find on a little poodle or lapdog. It looks cute, girly and humiliating - perfect for reminding your German Shepherd bitch of his place. Using the store's tag press, you punch [']SUBBY PUPPY['] onto a bone-shaped tag as a further reminder. As you're bagging up your well-trained pet's new collar and leash to present to him later, you spot a squeaky bone to give him as well. It's a cute pink color and small; it'd barely fit across his large muzzle and so will look extra-cute in the otherwise butch dog's mouth.";
	else:
		say "     While searching around, you're reminded of Korvin and how he's still wearing that length of rope as a leash. Searching through the sacked store, you locate one you think would be just right for him under some torn and empty bags of kibble. It is a black leather collar with half-inch spikes, the kind of thing you'd expect to see on an attack dog in an 80's movie. You also find a leather leash that's a good match for the collar. It looks tough, mean and butch - perfect for your aggressive German Shepherd thug. Using the store's tag press, you punch his name onto a bone-shaped tag so he won't forget it again. You put the dog man's new collar and leash in a plastic bag to present to him later.";
	now gsd_pet is 16;

Pet Shop Event ends here.
