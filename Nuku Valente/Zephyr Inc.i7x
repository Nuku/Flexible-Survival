Version 2 of Zephyr Inc by Nuku Valente begins here.
[Version 2.2 - SBL special scene]

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

Zephyr Lobby is a room. "[zephyrlobbydesc]". It is fasttravel. It is private.

sblzephyr is a truth state that varies.  sblzephyr is usually false.

to say zephyrlobbydesc:
	say "     This is a small Zephyr Inc branch. Their power is hard to argue with, as they actually have power, with bright, fluorescent lights shining down from above. The floor is clean and swept. To the left are some chairs next to a table with old magazines on it. A few people loiter around, eating doughnuts and chatting, all in various stages of mutation. Your eyes are drawn to a [link]price sign[as]look price sign[end link] that hangs above the counter.";
	if sblzephyr is false and bodyname of player is "Skunkbeast Lord" and player is pure:
		attempttowait;
		if hp of Larissa is 0:		[not familiar w/Larissa]
			say "     There is a soft chime as you enter the branch office, causing the woman behind the counter to glance up at you sharply.  Her eyes then dart quickly between watching you, her terminal and some lights on her desk.  She does her best to compose herself and presses a few buttons to stop the lights.  You notice that the place's discrete guards are no longer quite so discrete, having moved up beside your large, mephit form even as another pair enter from the back.";
			say "     'Please be calm, [if cunts of player > 0]ma'am[otherwise]sir[end if],' the woman says in a cheerfully rehearsed tone.  'This is purely routine.  Please go with these gentlemen for a complimentary examination.'  From the way the guards are resting their hands on their holsters, its clear this complimentary examination isn't going to be a voluntary one.  Deciding to go along with this, at least for the moment, you allow yourself to be escorted into a small, vaguely medical room.  The room is rather cramped given your [if skrp is 1]tauric [end if]Skunkbeast form.";
			attempttowait;
			say "     The four guards outside the door talk nervously in hushed tones, stopping only once an examiner arrives.  He's clearly a little uneasy and insists on having one of the guards inside the increasingly cramped room with you.  You're quickly checked over, photographed and analyzed by some unfamiliar scanners.  The doctor, technician or whatever he is never gives his name and steadfastly refuses to explain anything or even talk to you beyond asking you to move from time to time.  Finally, a blood sample is taken before you're escorted back into the lobby by the edgy guards.";
			say "     Approaching the front desk, you ask the woman there what that was all about.  'Oh... Ah...  I'm sorry about that.  It was just a routine examination.  Nothi-'  She cuts herself off as you give her a stern look, your imposing form looming large over the counter.  'Okay, I'll level with you.  When you came in, you'd set off an outstanding notification and triggered an automated alert.  It seems HQ'd sent out a team to... investigate a creature similar to your current infection, but they didn't make it back.  But don't worry about it.  You seem [if humanity of player > 66]pretty[otherwise if humanity of player > 33]fairly[otherwise]somewhat[end if] stable and the data from the examination didn't bring up any major warnings.'";
		otherwise:
			say "     There is a soft chime as you enter the branch office, startling Larissa from her crossword puzzle.  Her eyes dart quickly to the terminal and some flashing lights on her desk.  She quickly presses a few buttons to stop the lights even as she waves her arm to stop the two guards discretely approaching you.  Another pair enter the lobby from the back and she tells them to stand down and wait.  They remain on edge, watching you from the doorway while she talks with someone over her headset.  Partway through the call, she puts them on hold to address you.";
			say "     'We're going to need you to go into the back for a routine examination,' she says in a cheerfully rehearsed tone while motioning for you to come up.  'It shouldn't take too long and there's nothing to worry about.  I'll fill you in after,' she adds in a hushed tone.  Knowing you'll just have to trust her on this, you allow yourself to be escorted by one of the guards into a small, vaguely medical room.  The room is rather cramped given your [if skrp is 1]tauric [end if]Skunkbeast form.";
			attempttowait;
			say "     The guard, having gotten some reassurance from Larissa, is fairly relaxed if stoically quiet.  The examiner, on the other hand, is clearly a little uneasy and insists on having the guard inside the increasingly cramped room with you.  You're quickly checked over, photographed and analyzed by some unfamiliar scanners.  The doctor, technician or whatever he is never gives his name and steadfastly refuses to explain anything or even talk to you beyond asking you to move from time to time.  Finally, a blood sample is taken before you're escorted back into the lobby by the guard.";
			say "     Approaching the front desk, you lean in to chat with Larissa.  'I'm sorry about all that.  The system had an outstanding notification about a creature like you, so you'd set off an automated alert.  It seems HQ'd sent out a team to [']investigate[']' she says, making the air-quotes, 'the beast, but they didn't make it back.  But you shouldn't worry about it... You seem [if humanity of player > 66]pretty[otherwise if humanity of player > 33]fairly[otherwise]somewhat[end if] stable and the data from the examination didn't bring up any major warnings.  I can't really tell you much more.  Seems it's all classified stuff above my pay bracket.  Still, if they let you go after, it'll probably be alright,' she teases cheerfully.";
			attempttowait;
			say "     Taking another glance around the room, she motions for you to lean in a little closer.  'How'd you come by an infection so high up on our alert status?'  Do you tell her what happened?";
			if the player consents:
				say "     You tell her how you'd stumbled across the battle between Zephyr and the previous Skunkbeast Lord.  You gloss over some of the details while enhancing the epicness of your struggle with the monstrous mephit.  Leaving out the orgiastic nature of your transformation process, you do reassure her that the previous Lord was deposed.";
				say "     So you're in charge of those skunks in the forest now?' she asks with more than casual curiosity in her tone.  Remembering who she works for and how they reacted to you even having the infection, you decide it probably wouldn't be healthy to let that be known.  'No, no,' you say with a dismissive wave.  'The skunks leave me alone, but that's about it.  There's plenty more of the skunkbeast ones around, so one of them has probably taken over or something.'  She seems to buy it and asks you for a few more details before saying she has to get back to work.  While you're browsing in the lobby, she seems calm enough as she types away.  From the way she glances over on occasion, a paranoid corner of your mind does suspect she's filing some report about what you've just told her.";
				decrease morale of player by 3;
			otherwise:
				say "     Given what you'd just gone through, you decide to play it safe.  You tell her you'd picked it up from a mess you'd ended up stepping in (which is true enough, after a fashion).  She nods and comments that she hears about that sort of thing happening often.  She does end up asking you when and where this happened, what it looked like and so on.  She tries to seem casual about her questioning, but you can tell she's fishing for details.  You make some generic answers, suspecting they'll all end up in some report.  And sure enough, as soon as your chat's done, she's busily typing away at her computer.";
		now sblzephyr is true;


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
		[now q is x;]
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
		say ", but she shakes her head.  'We have met our quota for that sample and have no more interest in nanites from [name entry] creatures.  Try hunting for bigger game.'";
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
