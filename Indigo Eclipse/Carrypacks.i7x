Version 1 of Carrypacks by Indigo Eclipse begins here.

Section 1 - Hiking Backpack (Happy Trails Event)

Table of Game Objects (continued)
name	desc	weight	object
"Hiking Backpack"	"A forest green and black backpack made of nylon and fabrics, clearly made for hauling lots of gear."	1	hiking backpack

Hiking Backpack is a grab object.
Hiking Backpack is equipment.
It is not temporary.
AC of Hiking Backpack is 0.
Effectiveness of Hiking Backpack is 0.
Placement of Hiking Backpack is "back".
Slot of Hiking Backpack is "back".
Descmod of Hiking Backpack is "A sturdy backpack made for hauling tents and other various outdoor gear. Fitted with many pockets and deep storage space, it is perfect for people on the move.".
Scent of Hiking Backpack is "You smell fabric and cedar. Apparently the store tucked an air freshener into one of its pouches.".
EquipFunction of Hiking Backpack is "[EquipHBP]".
UnequipFunction of Hiking Backpack is "[UnequipHBP]".

to say UnequipHBP:
	decrease capacity of Player by 10;

to say EquipHBP:
	increase capacity of Player by 10;


Table of GameEventIDs (continued)
Object	Name
Happy Trails	"Happy Trails"

Happy Trails is a scavevent.
ResolveFunction of Happy Trails is "[ResolveEvent Happy Trails]".
Sarea of Happy Trails is "Allzones".

to say ResolveEvent Happy Trails:
	say "     By chance you happen to stumble across a small camping store named Happy Trails. Unfortunately, the windows have been smashed out, glass littering the pavement and interior floor. The simple aluminum door is swinging dangerously on only one hinge with a rustic wooden 'Closed' sign on the ground beneath it.";
	say "     A cautious glance into the darkened store shows signs of rampant looting with every scrap of camping rations gone. Bits and pieces of torn clothes, tent fabric and other various outdoor gear have been smashed and flung about. Just as you are about to leave, you happen to notice the end of a forest green backpack sticking out from under a toppled display rack. With no sign of anyone inside or nearby, you should be able to grab it without any trouble.";
	WaitLineBreak;
	say "     [bold type]Do you want to take the backpack with you?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, it looks like it would allow you to carry more supplies.";
	say "     ([link]N[as]n[end link]) - Nah, leave it. Who knows if it has been contaminated by scavengers.";
	if Player consents:
		LineBreak;
		say "     You carefully pick your way through the broken glass and crouch near the backpack. Grabbing a strap with one hand and lifting the display with the other, you manage to slip it out quietly. Thankfully, the fabric appears to be free of cum stains or the other strange goos that now stain the city. With your new backpack in hand, you retrace your steps and exit the store, pausing for only a moment to exhale in relief before leaving the area.";
		ItemGain Hiking Backpack by 1;
	else:
		LineBreak;
		say "     Since nothing in this city comes without a price, you decide that the reward may not be worth the risk and continue on your way.";
	now Happy Trails is resolved;


Carrypacks ends here.
