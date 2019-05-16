Version 1 of Pet Shop by Wahn begins here.
[ Version 1.0 - New Content - Wahn                    ]
[ Version 1.1 - Added missing fur brush object - Song ]

"Adds content for the pet store near the Grey Abbey Library"

Section 1 - Chaotic Mess

Table of GameCharacterIDs (continued)
object	name
Chaotic Mess	"Chaotic Mess"

Chaotic Mess is a person. Chaotic Mess is in George's Animal Emporium.
The description of Chaotic Mess is "     Most of George's Animal Emporium is filled with a terrible mess, as the store's contents have been rifled through multiple times already. The looters were clearly not interested in putting things back into their original positions. This has resulted in a sprawling chaos of items scattered everywhere, ankle deep in places and hip high for a human in others. If you had a specific friend or pet in mind, you could very well find them a gift or something in here. Maybe you should try to [link]sort[as]sort chaotic mess[end link] through the chaotic mess?".

the linkaction of Chaotic Mess is "Possible Actions: [link]smell[as]smell chaotic mess[end link], [link]sort[as]sort chaotic mess[end link][line break]";

the scent of Chaotic Mess is "     Myriad different smells are all around you in here, wafting up from food wrappers and toys, as well as the remnants of hasty matings between previous looters and scavengers who have visited this place. Somewhere in this mess, a bag of catnip must have been torn open, its dried contents scattered all over the ground.";

PetStoreSearching is an action applying to nothing.

understand "sort chaotic" as PetStoreSearching.
understand "sort chaotic mess" as PetStoreSearching.
understand "sort mess" as PetStoreSearching.
understand "sort through chaotic" as PetStoreSearching.
understand "sort through chaotic mess" as PetStoreSearching.
understand "sort through mess" as PetStoreSearching.
understand "rifle through chaotic" as PetStoreSearching.
understand "rifle through chaotic mess" as PetStoreSearching.
understand "rifle through mess" as PetStoreSearching.

check PetStoreSearching:
	if Chaotic Mess is not visible, say "What?" instead;

carry out PetStoreSearching:
	if SarahSlut is 2:
		say "     Getting to work, you dig into the piles of random pet-themed items, discarding most of what you find after checking it out for a few seconds. After much effort, you do manage to find a few scattered collars lying under [one of]a cracked transport box for smaller canines[or]a divider for transporting larger dogs safely in a car[or]a pile of shredded chew-toys[or]several empty cans of dog food[at random]. You pick a gray leather one with what smells like some husky cum on it. Wiping it off against some shreds of fabric on the ground, you end up with a mostly clean leather band that only smells a little of huskies, perfect for your little pet Sarah. Taking one of the blank, heart-shaped tags scattered all over the floor behind the front counter, you use a mechanical press in the back of the store to punch the word [']SLUT['] onto it. Along with a water dish that you add to your selection of loot, you stuff the collar into a plastic bag bearing the store's logo and add it to your backpack. You can't help but look forward to what Sarah'll play like with the new collar on.";
		now SarahSlut is 3;
	else if HP of Sven is 6:
		say "     Getting to work, you dig into the piles of random pet-themed items, discarding most of what you find after checking it out for a few seconds. After much effort, you do manage to find a few scattered collars lying under [one of]a cracked transport box for smaller canines[or]a divider for transporting larger dogs safely in a car[or]a pile of shredded chew-toys[or]several empty cans of dog food[at random]. You pick one that you like, a baby blue one made of woven fabric with silver stars on it. Guessing it to be roughly his size, you decide it's perfect for your pretty kittyboi Sven. Taking one of the blank, heart-shaped tags scattered all over the floor behind the front counter, you use a mechanical press in the back of the store to punch the word [']FUCKTOY['] onto it. Lying on the ground next to the press, you add an oversized toy mouse about the size of your fist to your selection of loot, then shove it in your backpack. It'll be fun to bring your playful pet these gifts and seeing his reaction to them.";
		now HP of Sven is 7;
	else if gsd_pet is 15:
		if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) >= 5:
			say "     Digging through the chaos in the store reminds you of Korvin and how he's still wearing that length of rope as a collar. After a little while of searching, you locate a collar you think would be just right for him under some torn and empty bags of kibble. It is a frilly pink collar with a heart-shaped clasp and a matching leash. It's the kind you'd expect to find on a little poodle or lapdog. It looks cute, girly and humiliating - perfect for reminding your German shepherd bitch of his place. Using the store's tag press, you punch [']SUBBY PUPPY['] onto a bone-shaped tag as a further reminder. You put your well-trained pet's new collar and leash in a plastic bag to present to him later.";
		else:
			say "     Digging through the chaos in the store reminds you of Korvin and how he's still wearing that length of rope as a collar. After a little while of searching, you locate a collar you think would be just right for him under some torn and empty bags of kibble. It is a black leather collar with twin rows of square metal studs, the kind of thing you'd expect to see on an attack dog in an 80's movie. You also find a leather leash that's a good match for the collar. It looks tough, mean and butch - perfect for your aggressive German shepherd thug. Using the store's tag press, you punch his name onto a golden tag so he won't forget it again. You put the dog man's new collar and leash in a plastic bag to present to him later.";
		now gsd_pet is 16;
	else:
		say "     You dig around a bit and check out this or that, but you don't really feel like taking any of it with you right now. Maybe things could be different if you had a pet ready to accept a sign of your mastery over them.";

Table of Game Objects (continued)
name	desc	weight	object
"fur brush"	"A well-made brush made out of waxed beech wood, ending in a double-duty brushing head. One side is studded with tiny wooden pegs that end in soft rubber tips, while the other has firm bristles for more solid strokes. The surprisingly ergonomic handle has several prominent ridges and a smooth texture, making you think of at least one extra use for the foot-long piece of wood."	1	fur brush

instead of sniffing fur brush:
	say "     The fur brush smells of natural wood, combined with the scent of beeswax and olive oil. Certainly a high quality piece of equipment.";

fur brush is a grab object. fur brush is not temporary.
the usedesc of fur brush is "[fur brush use]";

to say fur brush use:
	say "     You play around a little with the wooden brush, stroking your hand over the nubs and bristles on it. Having it along should certainly be useful if you want to give a pet or furred companion some affection. The surprisingly ergonomic handle has several prominent ridges and a smooth texture, making you think of at least one extra use for the foot-long piece of wood.";

when play begins:
	add "fur brush" to the invent of George's Animal Emporium;

Pet Shop ends here.
