Version 1 of Absinthe by Bigfish15079 begins here.

Table of Game Objects (continued)
name	desc	weight	object
"small whiskey bottle"	"A fairly small glass bottle holding a strong brew of whiskey; 35% alcohol, 70 proof. Might have been looted from a motel minibar, by the size of it."	1	small whiskey bottle
"Big whiskey bottle"	"A fine glass bottle half full of a strong brew of whiskey; 35% alcohol, 70 proof. Quite a bit to drink in one go."	1	Big Whiskey bottle
"TodtGrains Beer"	"A dark tinted bottle of alcohol. Nothing as refreshing as a bottle of beer. 6% alcohol."	1	TodtGrains Beer
"Small Grain Alcohol Bottle"	"A small clear bottle of alcohol, quite strong too. Might have been left behind after they tasted it. 75% alcohol."	1	Small Grain Alcohol Bottle
"Grain Alcohol Bottle"	"A clear bottle of alcohol, quite strong for the regular person. Might have been looted from a liquor store. 75% alcohol."	1	large Grain Alcohol Bottle
"Dwarven spirit"	"A large black container filled with alcohol, only for the bravest or most hearty of drinkers. 90% alcohol."	1	Dwarven Spirit

small whiskey bottle is a grab object. Understand "small whiskey bottle" as small whiskey bottle.
Usedesc of small whiskey bottle is "[small whiskey alcohol use]".
instead of sniffing small whiskey bottle:
	say "The strong smell of alcohol flows into your nose.";
to say small whiskey alcohol use:
	say "     You feel the burn of the whiskey down your throat as you drink.";
	PlayerDrink 5;
	addAlcPoints 2;

Big Whiskey bottle is a grab object. Understand "Big whiskey bottle" as Big Whiskey bottle.
Usedesc of Big Whiskey bottle is "[Big Whiskey bottle use]".
instead of sniffing Big Whiskey bottle:
	say "The strong smell of alcohol flows into your nose.";
to say Big Whiskey bottle use:
	say "     Your drink the full bottle, its strong alcohol burning on the way down.";
	PlayerDrink 10;
	addAlcPoints 4;

TodtGrains Beer is a grab object. Understand "TodtGrains Beer" as TodtGrains Beer.
Usedesc of TodtGrains Beer is "[TodtGrainsBeer use]".
instead of sniffing TodtGrains Beer:
	say "A light scent of alcohol flows into your nose.";
to say TodtGrainsBeer use:
	say "     You drink the nice refreshing beer, its dark grain taste lingering on your tongue.";
	PlayerDrink 6;
	addAlcPoints 1;

Small Grain Alcohol Bottle is a grab object. Understand "Small Grain Alcohol Bottle" as Small Grain Alcohol Bottle.
Usedesc of Small Grain Alcohol Bottle is "[Small Grain use]".
instead of sniffing Small Grain Alcohol Bottle:
	say "The strong smell of pure alcohol flows into your nose.";
to say Small Grain use:
	say "     You feel the burn of the alcohol leaving your throat numb.";
	PlayerDrink 5;
	addAlcPoints 3;

large Grain Alcohol Bottle is a grab object. Understand "large Grain Alcohol Bottle" as large Grain Alcohol Bottle.
Usedesc of large Grain Alcohol Bottle is "[large Grain Alcohol Bottle use]".
instead of sniffing large Grain Alcohol Bottle:
	say "A strong smell of pure alcohol flows into your nose.";
to say large Grain Alcohol Bottle use:
	say "     You feel the burn of the alcohol leaving your throat numb.";
	PlayerDrink 10;
	addAlcPoints 5;

Dwarven Spirit is a grab object. Understand "Dwarven Spirit" as Dwarven Spirit.
Usedesc of Dwarven Spirit is "[Dwarven Spirit use]".
instead of sniffing Dwarven Spirit:
	say "A strong floral smell from the spirit flows into your nose.";
to say Dwarven Spirit use:
	say "     A dark hearty taste lingers in your mouth.";
	PlayerDrink 10;
	addAlcPoints 6;

[Beginning of Absinthe]

to say AbsintheWasted:
	say "You hear the fluttering of wings behind your ear, you turn around to see the black wings of a pixie along with a dark green dress. 'You sure do know how to hold your drink.' she says, fluttering on top of your hand. 'Someone as capable of you should be able to take a few more, why don't you join me in your next one.' blowing a kiss towards you as she takes off and disappears into the air. 'Did she have horns on top of her head' you think to yourself, before being distracted from the thought.";[absinthe pixie dialogue]
	[say "     You hear the familiar sounds of the pixie wings again. "Hello, my names Absinthe "";]

Absinthe ends here.
