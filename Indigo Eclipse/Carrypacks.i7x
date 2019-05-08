Version 1 of Carrypacks by Indigo Eclipse begins here.

Section 1 - Hiking Backpack (Happy Trails Event)

Table of Game Objects (continued)
name	desc	weight	object
"Hiking Backpack"	"A forest green and black backpack made of nylon and fabrics. Clearly made for hauling lots of gear."	1	hiking backpack

Hiking Backpack is a grab object.
Hiking Backpack is equipment.
It is not temporary.
The AC of Hiking Backpack is 0.
The effectiveness of Hiking Backpack is 0.
The placement of Hiking Backpack is "back".
The slot of Hiking Backpack is "back".
The descmod of Hiking Backpack is "A sturdy backpack made for hauling tents and other various outdoor gear. Fitted with many pockets and deep storage space, it is perfect for people on the move.".
the scent of Hiking Backpack is "You smell fabric and cedar. Apparently the store tucked an air freshener into one of its pouches.".

the usedesc of Hiking Backpack is "[HBPuse]".

to say HBPuse:
	if Hiking Backpack is equipped:
		decrease capacity of Player by 10;
	else:
		increase capacity of Player by 10;

Happy Trails is a scavevent. The sarea of Happy Trails is "Allzones".

instead of resolving a Happy Trails:
	say "     By chance you happen to stumble across a small camping store named Happy Trails. Unfortuatly the windows have been smashed out, glass littering the pavement and interor floor. The simple aluminum door is swinging dangerously on only one hinge with a rustic wooden 'Closed' sign on the ground beneath it.[line break]";
	say "     A cautious glance into the darkened store shows signs of rampant looting with every scrap of camping rations gone. Bits and pieces of torn clothes, tent fabric and other various outdoor gear has been smashed and flung about. Just as you are about to leave you happen to notice the end of a forest green backpack sticking out from under a toppled display rack. With no sign of anyone inside or nearby, you should be able to grab it without any trouble.";
	WaitLineBreak;
	say "     ";
	say "     [bold type]Do you want to take the backpack with you?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, it looks like it would allow you to carry more supplies.";
	say "     ([link]N[as]n[end link]) - Nah, leave it. Who knows if it has been contaminated by scavengers.";
	if Player consents:
		LineBreak;
		say "     Carefully you pick your way through the broken glass and crouch near the backpack. Grabbing a strap with one hand and lifting the display with the other, you manage to slip it out quietly. Thankfully the fabric appears to be free of cum stains or the other strange goos that now stain the city. With your new backpack in hand, you retrace your steps and exit the store. Pausing for only a moment to exhale in relief before leaving the area.";
		increase carried of Hiking Backpack by 1;
	else:
		LineBreak;
		say "     Deciding nothing in this city comes without a price, you decide the reward may not be worth the risk and continue on your way.";
	now Happy Trails is resolved;


Carrypacks ends here.
