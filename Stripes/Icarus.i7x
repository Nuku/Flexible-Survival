Version 1 of Icarus by Stripes begins here.
[Version 0 - Raw character, no content]

"Adds Icarus the Blue Chaffinch as an NPC to the Flexible Survival game"

Section 1 - Icarus the Blue Chaffinch

Icarus is a person.
The description of Icarus is "[Icarusdesc]";
The conversation of Icarus is { "Wilder!" }.

[See Blue Chaffinch file for collecting Icarus.]

instead of sniffing the Icarus:
	say "The blue songbird smells incomplete.";	[***]


to say Icarusdesc:
	say "     This avian fellow is covered in bright blue plumage that is very even in colour across most of his body.  Only the ends of his wings and tail are a much darker midnight blue on the flight feathers, and his lower belly and the underside of his narrow tail are downy and white.  He has a puffy looking body compared to his slender arms and legs thanks to his soft feathers.  His head is rounded and shaped like that of a finch, though his beak is thicker.  Double-checking with one of the nature books in the library, you've confirmed that your assumption was right and that he's almost certainly been infected to resemble an exotic blue chaffinch.  His eyes are like black beads with a touch of white feathers just above and below.";
	say "     Lacking a name of his own, you've decided to call him Icarus.  Once strong and arrogant, your repeated rough treatment of him as a predatory avian has affected the passerine to the point that he's accepted to become your songbird slut.  He usually spends his daytime hours up in the rafters, singing softly[if the number of booked people > 2] for the others[end if].  He seems fairly happy here, as if accepting the spacious library as his birdcage.";


Instead of conversing the Icarus:	[***]
	if hp of Icarus is 0:
		say "ERROR-Icarus-0L: You should not be able to find me!";
	otherwise if hp of Icarus is 1:
		say "You go up to talk to Icarus, but he covers himself with his wings.  'Ack!  I'm not decent yet!'";
		say "(Content to come later.)[line break]";

[Now that he's not trying to sound tough, you notice that he's got a soft, musical voice.]


Section 2 - Sexxxings

Part 0 - Basic Sex Menu

instead of fucking the Icarus:	[***]
	say "Icarus does a lot of kinky things that are so depraved even we won't show them.  Yet.";
	say "(Content to come later.)[line break]";


Icarus ends here.