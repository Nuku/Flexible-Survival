Version 1 of Janus by Wahn begins here.
[Version 1 - New Item]

"Adds a magic coin to Flexible Survival"

Janus Coin is a grab object. Janus Coin is not temporary.
Janus Coin has a usedesc "[CoinFlip]".

Table of Game Objects (continued)
name	desc	weight	object
"Janus Coin"	"An ancient coin of shiny silver. It is fairly thin, with a narrow grooved edge separating two quite different sides. There are no numbers or writing on either of them, just two faces of a bearded man - one of them looking strong and determined, the other one timid and shy. Something about the coin makes you feel strange when holding it. You wonder what might happen if you flip it..."	1	Janus Coin

to say CoinFlip:
	if player is submissive:
		say "     You throw the shiny coin into the air and watch it turn end over end, then catch it in your hand and smack that on the back of the other one. Lifting your upper hand after that, you see the coin resting on your skin, displaying the strong and determined face of its design. Then the piece of metal suddenly feels hot for a moment, not quite enough to burn you, but almost so. Flowing into you, the energy changes your whole outlook of the world!";
		remove "Submissive" from feats of player;
		add "Dominant" to feats of player;
	otherwise if player is dominant:
		say "     You throw the shiny coin into the air and watch it turn end over end, then catch it in your hand and smack that on the back of the other one. Lifting your upper hand after that, you see the coin resting on your skin, displaying the timid and shy face of its design. Then the piece of metal suddenly feels hot for a moment, not quite enough to burn you, but almost so. Flowing into you, the energy changes your whole outlook of the world!";
		remove "Dominant" from feats of player;
		add "Submissive" to feats of player;
	otherwise:
		say "     You throw the shiny coin into the air and watch it turn end over end, then catch - no, try to catch it in your hand. Somehow it slips through your fingers, bouncing off the ground and rolling around a little, until it comes to a sudden standstill. And that is how it remains, just standing on its side, falling over in neither direction. As you pick the little disc of metal off the ground, it is strangely cold between your fingers for a second. Almost seems like its giving you the cold shoulder since you fit neither of its different faces.";
		
Janus ends here.