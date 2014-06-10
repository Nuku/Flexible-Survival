Version 2 of Zephyr Inc by Nuku Valente begins here.
[Version 2.1 - tentative price drop]

"It's about time for Zephyr to show up around here."

Section 1 - Zephyr Office

This is the zephyrad rule:
	say "A voice suddenly chimes out from your radio, 'Good day, wastelander. This is Zephyr Incorporated. After much demand, we have moved a branch office into your fine city. Coordinates follow. We here are Zephyr Inc are dedicated to the betterment of mankind through science. To start, we are rewarding all with a bounty on defeated hostiles. You will be alerted to your winnings. Put your money away. The US Government has collapsed,' the announcement goes on to claim, 'so we use a currency of our own devising, Free credits, also known as freecred or just creds. When you have some, swing on by and spend them on useful survival gear. We look forward to meeting you shortly.'";
[	attempttowait;
	say "There is a brief pause and then a three-tone chime.  A new voice comes in.  'As an added announcement, a recent creature migration has taken place.  The fact that this coincides with Zephyr's planned lupine relocation program is purely coincidental.  We shall provide information on this occurrence, but take no responsibility for those inconvenienced by ferals moving into their new habitats.  Details follow.  Deet-deet-deet.'";
	say "- Feral and Alpha Wolves successfully relocated to the Urban Forest.";
	say "- Football Wolfman and Wrestling Wolf successfully relocated to the College Campus.";
	say "- Other creatures having migrated to the Urban Forest include the following: Awesome Tree, City Sprite, Cougar, Dryad, Elf, Elk, Elven Hunter, and several varieties of Skunk.";
	say "- As expected with the decrease in local wolves, the Ewe and Ram numbers have risen.  Expect increased sightings.";
	say "- Ash Whelp threat level reassessed to level 2.";
	say "- Bunny Jock threat level reassessed to level 4.";
	say "- Panther Taur threat level reassessed to level 4.";
	say "- Incubus and Succubus threat levels reassessed to level 8.";
	say "- Wrestling Wolf threat level reassessed to level 15.";		]
	now zephyr lobby is known;

Zephyr Lobby is a room. "This is a small Zephyr Inc branch. Their power is hard to argue with, as they actually have power, with bright, fluorescent lights shining down from above. The floor is clean and swept. To the left are some chairs next to a table with old magazines on it. A few people loiter around, eating doughnuts and chatting, all in various stages of mutation. Your eyes are drawn to a [link]price sign[as]look price sign[end link] that hangs above the counter." It is fasttravel. It is private.

instead of sniffing the Zephyr Lobby:
	say "The office that Zephyr's set up here smells rather clean.  There is only a faint smell of sex and creatures in the air, probably wafting in from outside.";


Section 2 - Larissa

[Moved to Larissa file in the Stripes sub-folder]


Section 3 - Selling Vials

understand "vialsell [text]" as vialselling.

Vialselling is an action applying to one topic.

check vialselling:
	if Larissa is not visible, say "There's no one here who's buying." instead;

Carry out vialselling:
	let basevalue be 0;
	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 1;
	let q be a topic;
	repeat with x running through vials of player:
		now q is x;
		if t in lower case is x in lower case:
			now target is x;
			now found is 1;
			break;
		increase z by 1;
	if found is 0:
		say "You don't seem to have any such vial.";
		continue the action;
	say "Pulling out the sample vial, you offer to sell it to Larissa";
	now found is 0;
	repeat with x running through vials of Larissa:
		if t in lower case is x in lower case:
			increase found by 1;
			if found > 4:
				say ", but she shakes her head.  'We have no interest in further samples of that kind.  Try hunting for different game.'";
				continue the action;
	[locates target within the table of random critters]
	now monster is 0;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is target:
			now monster is y;
			break;
	if monster is 0:
		say ", but she shakes her head.  'I'm not really sure where you got that, but it's not on our acquisition list so we can't take it.'";
		continue the action;
	choose row monster in table of random critters;
	now basevalue is ( ( lev entry * 7 ) / 4 );
	if found is 1:
		now basevalue is ( basevalue * 2 ) / 3;
	otherwise if found > 1:
		now basevalue is ( basevalue / ( found + 1 ) );
	if basevalue < 1:
		say ", but she shakes her head.  'We have met our quota for that sample and have no more interest nanites from [name entry] creatures.  Try hunting for bigger game.'";
		continue the action;
	if found is 0:
		say " and she smiles, taking it from you.  'We were hoping to get one of these samples for our bureau's collection.'  She credits you for [special-style-1][basevalue][roman type] freecred.";
	otherwise if found is 1:
		say " and she smiles, taking it from you.  'Thanks for another sample.  I can give you an okay price for that.'  She credits you for [special-style-1][basevalue][roman type] freecred.";
	otherwise if found >= 2:
		say " and she nods, taking it from you.  'We have a few of these already, so I can't pay you as much for more.'  She only credits you with [special-style-1][basevalue][roman type] freecred for it.";
	increase freecred by basevalue;
	remove entry z from vials of player;
	add name entry to vials of Larissa;


Section 4 - Purchasing from Zephyr

The price sign is a backdrop. It is in Zephyr Lobby. The description of the price sign is "[price list]".

Instead of smelling the price sign:
	say "The price sign has little in the way of scent of its own.";

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
	if name entry is "nanite collector", now nanitemeter is 2;
	if name entry is "pepperspray", increase pepped by 1;
	decrease freecred by price entry;
[	decrease score by price entry divided by 5;	]

Table of Game Objects(continued)
name	desc	weight	object
"nanite collector"	"[nanitecolldesc]"	25	nanite collector
"pistol"	"A small, but serviceable, hand gun. It has a stylized Z on the grip. It never seems to run out of bullets, and gets oddly warm when you fire it."	2	pistol

pistol is armament. It has a weapon "[one of]a quick shot[or]speedy pistol play[or]your pistol[at random]". It is ranged. It is not temporary. It is a part of the player. The weapon damage of pistol is 7. The objsize of pistol is 2.


nanite collector is equipment. It is not temporary.
The placement of it is "body".
The descmod of it is " A great contraption rests across your back, with many valves and pipes.  It looks more like a steampunk jetpack than anything else.  Still, it has the Zephyr logo displayed boldly."

to say nanitecolldesc:
	say "A great and ponderous object that is worn on the back and can draw in nanites to produce infection vials. Interesting[if nanitemeter is 1].  It has been modified to be lighter, somewhat dropping its effectiveness[otherwise if nanitemeter is 3].  It has been modified with an additional pump and larger tank, increasing its effectiveness and its overall weight[end if].";


Table of Zephyr Goods
name	price	object	allowed
"nanite collector"	360	nanite collector	noresearch rule
"medkit"	275	medkit	true rule
"pistol"	550	pistol	true rule
"pepperspray"	320	pepperspray	pepper rule
"water bottle"		100	water bottle	true rule

nanitemeter is a number that varies.  nanitemeter is normally 0.	[marks if player bought a nanite collector]
pepped is a number that varies.  pepped is normally 0.	[marks how many pepperspray a player's bought]

This is the true rule:
	rule succeeds;

This is the noresearch rule:
	if scenario is "Researcher" or nanitemeter > 0:
		rule fails;
	rule succeeds;

This is the pepper rule:
	if ( level of player / 4 ) < pepped:
		rule fails;
	rule succeeds;

Zephyr Inc ends here.
