Version 1 of Special Merchandize by Core Mechanics begins here.

Section 1 - Bliss

BlissDrugTrip is a number that varies.

Table of Game Objects (continued)
name	desc	weight	object
"Bliss Tablet"	"A purple tablet pressed into the shape of a heart."	1	bliss tablet

bliss tablet is a grab object.
the usedesc of bliss tablet is "[blissUse]".
it is part of the player.
It is temporary.

to say blissUse:
	say "     You throw the little tablet into your mouth and swallow it with a little effort. It takes a few moments to kick in, but soon you're feeling hot and uninhibited, ready for sex. At the same time, it makes you kinda thirsty.";
	LibidoBoost 30;
	PlayerThirst 10;
	SanLoss 5;
	if BlissDrugTrip > 0:
		say "     Since the effects of your previous bliss tablet haven't worn off yet, you feel extra frisky now, and slightly dizzy too. Your mouth feels really dry now.";
		LibidoBoost 10;
		PlayerThirst 20;
		SanLoss 10;
	increase BlissDrugTrip by 8;

instead of sniffing bliss tablet:
	say "     The tablet smells of sugar.";

an everyturn rule:
	if BlissDrugTrip is 1:
		say "     The increased feeling of heat and randiness caused by the bliss tablet you took peters out and stops, leaving you feeling a somewhat unfulfilled. You can't help but feel the desire to take another tablet and get your groove back on.";
		LibidoLoss 40;
	if BlissDrugTrip > 0:
		decrease BlissDrugTrip by 1;

Section 2 - PowerUp

PowerUpDrugTrip is a number that varies.

Table of Game Objects (continued)
name	desc	weight	object
"PowerUp Tablet"	"A bright red tablet pressed into the shape of a flexing arm."	1	powerup tablet

powerup tablet is a grab object.
the usedesc of powerup tablet is "[PowerUpUse]".
it is part of the player.
It is temporary.

to say PowerUpUse:
	say "     You throw the little tablet into your mouth and swallow it with a little effort. It takes a few moments to kick in, but soon you can literally feel your muscles swelling up and you feel like you can punch through a wall. At the same time, it makes you really thirsty.";
	PlayerThirst 20;
	SanLoss 10;
	if PowerUpDrugTrip > 0:
		say "     Since the effects of your previous PowerUp tablet haven't worn off yet, feel a bit woozy, then [italic type]a lot woozy[roman type]. Before you know it, you're lying on the ground, wondering how you got there and register the scrapes you got from passing out all of a sudden. Your mouth tastes like used kitty litter.";
		PlayerWounded 15;
		LibidoLoss 10;
		PlayerThirst 30;
		SanLoss 10;
	else:
		increase PowerUpDrugTrip by 8;
		increase Strength of player by 6;
		add "Roided Up" to Feats of player;

instead of sniffing powerup tablet:
	say "     The tablet smells of sugar.";

an everyturn rule:
	if PowerUpDrugTrip is 1:
		say "     The feeling of unbridled power in you peters out and you suddenly feel weak as a kitten in comparison. You can't help but feel the desire to take another PowerUp tablet and get back to proper fighting form.";
		now PowerUpDrugTrip is 0;
		decrease Strength of player by 6;
		remove "Roided Up" from Feats of player;
	if PowerUpDrugTrip > 0:
		decrease PowerUpDrugTrip by 1;


Section 3 - Pixie Dust

Table of Game Objects(continued)
name	desc	weight	object
"Pixie Dust"	"A little handful of what looks like glitter, but is actually genuine magic pixie dust. It is in a small throwaway plastic container."	0	pixie dust

pixie dust is a grab object. It is temporary. It is a part of the player.

the usedesc of pixie dust is "[pixie dust use]".

to say pixie dust use:
	say "     You get the pixie dust out and let a few specks of it trickle between your fingers and back into the container. To use it, you have to choose what size you want to be, then sprinkle the glittery stuff over your body.";
	LineBreak;
	say "     [link](1)[as]1[end link] - Become as small as a cat.";
	say "     [link](2)[as]2[end link] - Become about half as big as a human.";
	say "     [link](3)[as]3[end link] - Become just regular human-sized.";
	say "     [link](4)[as]4[end link] - Become extraordinarily tall and large.";
	say "     [link](5)[as]5[end link] - Become as big as a delivery van.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to become very small, [link]2[end link] to become small, [link]3[end link] to become human-sized, [link]4[end link] to become much larger than human or [link]5[end link] to become as big as a delivery van.";
	if calcnumber is 1:
		LineBreak;
		say "     You sprinkle the dust over yourself and before you know, your body takes on a scale that puts you on just about the level of a large house cat.";
		now scalevalue of player is 1;
	else if calcnumber is 2:
		LineBreak;
		say "     You sprinkle the dust over yourself and before you know, your body takes on a scale that puts you on just about the level of a half-sized human.";
		now scalevalue of player is 2;
	else if calcnumber is 3:
		LineBreak;
		say "     You sprinkle the dust over yourself and before you know, your body takes on a scale that puts you on just about the level of a regular human.";
		now scalevalue of player is 3;
	else if calcnumber is 4:
		LineBreak;
		say "     You sprinkle the dust over yourself and before you know, your body takes on a scale that puts you above the level of even the tallest basketball player.";
		now scalevalue of player is 4;
	else: 
		LineBreak;
		say "     You sprinkle the dust over yourself and before you know, your body takes on a scale that puts you on the level of a small delivery van.";
		now scalevalue of player is 5;
	repeat with z running through equipped equipment:
		if size of z > 0: [size restricted equipment]
			if (scalevalue of player - size of z > 1):
				say "     [bold type]You quickly rip your [z] off your body before [if plural of z is true]they are destroyed when you grow larger than they could support[else]it is destroyed when you grow larger than it could support[end if] .[roman type][line break]";
				now z is not equipped;
			else if (scalevalue of player - size of z is 1):
				say "     [bold type]Your [z] stretches a bit as it is forced to conform to a larger body.[roman type][line break]";
			else if (scalevalue of player - size of z < -1):
				say "     [bold type]As you shrink, [z] becomes far too big to fit you. You have little choice but to take [if plural of z is true]them[else]it[end if] off.[roman type][line break]";
				now z is not equipped;
			else if (scalevalue of player - size of z is -1):
				say "     [bold type]Your [z] hangs fairly loose on your now smaller frame.[roman type][line break]";

Special Merchandize ends here.