Version 1 of Giant Land by Sulphine begins here.
[ Version 1.0 - New Content - Sulphine                    ]

"Adds magic beans and a land of giants"

Section 1 - Magic Bean Item

Table of Game Objects (continued)
name	desc	weight	object
"magic beans"	"Description."	0	magic beans

instead of sniffing magic beans:
	say "     smell";

magic beans is a grab object. magic beans is not temporary.
the usedesc of magic beans is "[magic beans use]";

to say magic beans use:
	say "     You play around a little with the magic beans, but don't find them all that interesting. Maybe you should plant them in the right spot?";

when play begins:
	add "magic beans" to the invent of Plants & You;

after going to Library Garden while (magic beans are owned):
	say "     As you step into the garden, you feel and hear a weird buzz going through your backpack. Curious, you dig around in it and come upon the magic beans you picked up a little while ago. They're vibrating and their glow is pulsing rhythmically. Almost seems like they're demanding to be planted here.";
	say "     [bold type]Do you do so?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, why not.";
	say "     ([link]N[as]n[end link]) - Nope, you're not taking orders from legumes!";
	if player consents:
		LineBreak;
		say "     <Scene for choice A>";
	else:
		LineBreak;
		say "     <Scene for choice B>";

Giant Land ends here.
