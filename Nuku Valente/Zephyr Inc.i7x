Zephyr Inc by Nuku Valente begins here.

"It[']s about time for Zephyr to show up around here."

This is the zephyrad rule:
	say "A voice suddenly chimes out from your radio, 'Good day, wastelander. This is Zephyr Incorporated. After much demand, we have moved a branch office into your fine city. Coordinates follow. We here are Zephyr Inc are dedicated to the betterment of mankind through science. To start, we are rewarding all with a bounty on defeated hostiles. You will be alerted to your winnings. Put your money away. The US Government has collapsed,' the announcement goes on to claim, 'so we use a currency of our own devising, Free credits, also known as freecred or just creds. When you have some, swing on by and spend them on useful survival gear. We look forward to meeting you shortly.'";
	now zephyr lobby is known;
	
Zephyr Lobby is a room. "This is a small Zephyr Inc branch. Their power is hard to argue with, as they actually have power, with brightly lit flourescents shining down from above. The floor is clean and swept. To the left are some chairs next to a table with old magazines on it. A few people loiter around, eating doughnuts and chatting, all in various stages of mutation. Your eyes are drawn to a [link]price sign[as]look price sign[end link] that hangs above the counter." It is fasttravel. It is private.

The price sign is a backdrop. It is in Zephyr Lobby. The description of the price sign is "[price list]";

to say price list:
	say "To buy an item, type buy (name here)";
	repeat through table of zephyr goods:
		follow allowed entry;
		if rule failed:
			next;
		say "[link]Buy[as]buy [name entry][end link] ";
		say "[name entry] - [price entry] Creds[line break]";

understand the command "buy" as something new.
ZephBuying is an action applying to one thing.

Understand "buy [grab object]" as zephbuying.

Does the player mean zephbuying the dirty water: It is very unlikely.

Carry out zephbuying:
	if the price sign is not visible:
		say "I see no store here.";
		continue the action;
	if the noun is an object listed in the table of zephyr goods:
		say "";
	otherwise:
		say "That doesn't seem to be sold here.";
		continue the action;
	if price entry is greater than freecred:
		say "You can't afford the [name entry], it costs [price entry] freecred.";
		continue the action;
	say "You purchase [name entry] for [price entry] creds.";
	add name entry to invent of player;
	decrease freecred by price entry;
	decrease score by price entry divided by 5;
	

Larissa is a woman. "Manning the counter is a female human with no clear signs of mutation. Her name badge declares her to be 'Larissa'.". She is in Zephyr Lobby.

The description of Larissa is "She is about five and a half feet, with sun tanned flash. She seems perfectly human, and oddness in this city. Her namebadge, worn on her generous chest, reads 'Larissa'. She had brown straight hair that goes down a little past her shoulders. She wears a lab coat, but it seems more like a uniform than any actual dedication to the sciences. It looks cute on her. Her silver eyes have specks of brown in them, easily seen as she asks how she can help you in a cheerful tone.";

Table of Zephyr Goods
name	price	object	allowed
"medkit"	300	medkit	true rule
"water bottle"		100	water bottle	true rule

This is the true rule:
	rule succeeds;

Zephyr Inc ends here.
