Version 2 of Zephyr Inc by Nuku Valente begins here.
[Version 2.3 - Nanite Monitoring Device task moved here (Main Storyline 2 / Hospital Quest 2)]

"It's about time for Zephyr to show up around here."

Section 1 - Zephyr Office

This is the zephyrad rule:
	say "     Playing around with your radio in a try of maybe gaining some information about what is going on, you find a channel that seems to have a cycling message. 'Good day to anyone listening. This is Zephyr Incorporated. We wanted to you know that even during this current crisis, our branch office in this fine city remains open. Coordinates follow.' After making a mental note of the description, you listen on to the rest of their recording. 'We here are Zephyr Inc are dedicated to the betterment of mankind through science. And of course we also want to help people outlast what is currently going on. Therefore we are going to award company credit - also known as freecreds - to those who contribute to keeping the more aggressive infected in check. A number of ways of observation are in effect in the city, and you will be credited for every hostile you pacify. Swing on by and spend your freecreds on useful survival gear. We look forward to meeting you shortly.'";
[	attempttowait;
	say "There is a brief pause and then a three-tone chime. A new voice comes in. 'As an added announcement, a recent creature migration has taken place. The fact that this coincides with Zephyr's planned lupine relocation program is purely coincidental. We shall provide information on this occurrence, but take no responsibility for those inconvenienced by ferals moving into their new habitats. Details follow. Deet-deet-deet.'";
	say "- Feral and Alpha Wolves successfully relocated to the Urban Forest.";
	say "- Football Wolfman and Wrestling Wolf successfully relocated to the College Campus.";
	say "- Other creatures having migrated to the Urban Forest include the following: Awesome Tree, City Sprite, Cougar, Dryad, Elf, Elk, Elven Hunter, and several varieties of Skunk.";
	say "- As expected with the decrease in local wolves, the Ewe and Ram numbers have risen. Expect increased sightings.";
	say "- Ash Whelp threat level reassessed to level 2.";
	say "- Bunny Jock threat level reassessed to level 4.";
	say "- Panther Taur threat level reassessed to level 4.";
	say "- Incubus and Succubus threat levels reassessed to level 8.";
	say "- Wrestling Wolf threat level reassessed to level 15."; ]
	now zephyr lobby is known;

Zephyr Lobby is a room. "[zephyrlobbydesc]". It is fasttravel. It is private.

sblzephyr is a truth state that varies. sblzephyr is usually false.

to say zephyrlobbydesc:
	say "     This is a small Zephyr Inc branch. Their power is hard to argue with, as they actually have power, with bright, fluorescent lights shining down from above. The floor is clean and swept. To the left are some chairs next to a table with old magazines on it. A few people loiter around, eating doughnuts and chatting, all in various stages of mutation. Your eyes are drawn to a [link]price sign[as]look price sign[end link] that hangs above the counter.";
	if sblzephyr is false and bodyname of player is "Skunkbeast Lord" and player is pure:
		attempttowait;
		if HP of Larissa is 0:		[not familiar w/Larissa]
			say "     There is a soft chime as you enter the branch office, causing the woman behind the counter to glance up at you sharply. Her eyes then dart quickly between watching you, her terminal and some lights on her desk. She does her best to compose herself and presses a few buttons to stop the lights. You notice that the place's discrete guards are no longer quite so discrete, having moved up beside your large, mephit form even as another pair enter from the back.";
			say "     'Please be calm, [if cunts of player > 0]ma'am[else]sir[end if],' the woman says in a cheerfully rehearsed tone. 'This is purely routine. Please go with these gentlemen for a complementary examination.'  From the way the guards are resting their hands on their holsters, it's clear this complementary examination isn't going to be a voluntary one. Deciding to go along with this, at least for the moment, you allow yourself to be escorted into a small, vaguely medical room. The room is rather cramped given your [if skrp is 1]tauric [end if]Skunkbeast form.";
			attempttowait;
			say "     The four guards outside the door talk nervously in hushed tones, stopping only once an examiner arrives. He's clearly a little uneasy and insists on having one of the guards inside the increasingly cramped room with you. You're quickly checked over, photographed and analyzed by some unfamiliar scanners. The doctor, technician or whatever he is never gives his name and steadfastly refuses to explain anything or even talk to you beyond asking you to move from time to time. Finally, a blood sample is taken before you're escorted back into the lobby by the edgy guards.";
			say "     Approaching the front desk, you ask the woman there what that was all about. 'Oh... Ah... I'm sorry about that. It was just a routine examination. Nothi-'  She cuts herself off as you give her a stern look, your imposing form looming large over the counter. 'Okay, I'll level with you. When you came in, you'd set off an outstanding notification and triggered an automated alert. It seems HQ'd sent out a team to... investigate a creature similar to your current infection, but they didn't make it back. But don't worry about it. You seem [if humanity of player > 66]pretty[else if humanity of player > 33]fairly[else]somewhat[end if] stable and the data from the examination didn't bring up any major warnings.'";
		else:
			say "     There is a soft chime as you enter the branch office, startling Larissa from her crossword puzzle. Her eyes dart quickly to the terminal and some flashing lights on her desk. She quickly presses a few buttons to stop the lights even as she waves her arm to stop the two guards discretely approaching you. Another pair enter the lobby from the back and she tells them to stand down and wait. They remain on edge, watching you from the doorway while she talks with someone over her headset. Partway through the call, she puts them on hold to address you.";
			say "     'We're going to need you to go into the back for a routine examination,' she says in a cheerfully rehearsed tone while motioning for you to come up. 'It shouldn't take too long and there's nothing to worry about. I'll fill you in after,' she adds in a hushed tone. Knowing you'll just have to trust her on this, you allow yourself to be escorted by one of the guards into a small, vaguely medical room. The room is rather cramped given your [if skrp is 1]tauric [end if]Skunkbeast form.";
			attempttowait;
			say "     The guard, having gotten some reassurance from Larissa, is fairly relaxed if stoically quiet. The examiner, on the other hand, is clearly a little uneasy and insists on having the guard inside the increasingly cramped room with you. You're quickly checked over, photographed and analyzed by some unfamiliar scanners. The doctor, technician or whatever he is never gives his name and steadfastly refuses to explain anything or even talk to you beyond asking you to move from time to time. Finally, a blood sample is taken before you're escorted back into the lobby by the guard.";
			say "     Approaching the front desk, you lean in to chat with Larissa. 'I'm sorry about all that. The system had an outstanding notification about a creature like you, so you'd set off an automated alert. It seems HQ'd sent out a team to [']investigate[']' she says, making the air-quotes, 'the beast, but they didn't make it back. But you shouldn't worry about it... You seem [if humanity of player > 66]pretty[else if humanity of player > 33]fairly[else]somewhat[end if] stable and the data from the examination didn't bring up any major warnings. I can't really tell you much more. Seems it's all classified stuff above my pay bracket. Still, if they let you go after, it'll probably be alright,' she teases cheerfully.";
			attempttowait;
			say "     Taking another glance around the room, she motions for you to lean in a little closer. 'How'd you come by an infection so high up on our alert status?'  Do you tell her what happened?";
			if the player consents:
				say "     You tell her how you'd stumbled across the battle between Zephyr and the previous Skunkbeast Lord. You gloss over some of the details while enhancing the epicness of your struggle with the monstrous mephit. Leaving out the orgiastic nature of your transformation process, you do reassure her that the previous Lord was deposed.";
				say "     So you're in charge of those skunks in the forest now?' she asks with more than casual curiosity in her tone. Remembering who she works for and how they reacted to you even having the infection, you decide it probably wouldn't be healthy to let that be known. 'No, no,' you say with a dismissive wave. 'The skunks leave me alone, but that's about it. There's plenty more of the skunkbeast ones around, so one of them has probably taken over or something.'  She seems to buy it and asks you for a few more details before saying she has to get back to work. While you're browsing in the lobby, she seems calm enough as she types away. From the way she glances over on occasion, a paranoid corner of your mind does suspect she's filing some report about what you've just told her.";
				decrease morale of player by 3;
			else:
				say "     Given what you'd just gone through, you decide to play it safe. You tell her you'd picked it up from a mess you'd ended up stepping in (which is true enough, after a fashion). She nods and comments that she hears about that sort of thing happening often. She does end up asking you when and where this happened, what it looked like and so on. She tries to seem casual about her questioning, but you can tell she's fishing for details. You make some generic answers, suspecting they'll all end up in some report. And sure enough, as soon as your chat's done, she's busily typing away at her computer.";
		now sblzephyr is true;


instead of sniffing the Zephyr Lobby:
	say "The office that Zephyr's set up here smells rather clean. There is only a faint smell of sex and creatures in the air, probably wafting in from outside.";


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
				say ", but she shakes her head. 'We have no interest in further samples of that kind. Try hunting for different game.'";
				continue the action;
	[locates target within the table of random critters]
	now monster is 0;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is target:
			now monster is y;
			break;
	if monster is 0:
		say ", but she shakes her head. 'I'm not really sure where you got that, but it's not on our acquisition list so we can't take it.'";
		continue the action;
	choose row monster in table of random critters;
	now basevalue is ( ( lev entry * 7 ) / 4 );
	if found is 1:
		now basevalue is ( basevalue * 2 ) / 3;
	else if found > 1:
		now basevalue is ( basevalue / ( found + 1 ) );
	if basevalue < 1:
		say ", but she shakes her head. 'We have met our quota for that sample and have no more interest in nanites from [name entry] creatures. Try hunting for bigger game.'";
		continue the action;
	if found is 0:
		say " and she smiles, taking it from you. 'We were hoping to get one of these samples for our bureau's collection.'  She credits you for [special-style-1][basevalue][roman type] freecred.";
	else if found is 1:
		say " and she smiles, taking it from you. 'Thanks for another sample. I can give you an okay price for that.'  She credits you for [special-style-1][basevalue][roman type] freecred.";
	else if found >= 2:
		say " and she nods, taking it from you. 'We have a few of these already, so I can't pay you as much for more.'  She only credits you with [special-style-1][basevalue][roman type] freecred for it.";
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
	else:
		say "That doesn't seem to be sold here.";
		continue the action;
	if price entry > freecred:
		say "You can't afford the [name entry], it costs [price entry] freecred.";
		continue the action;
	say "You purchase [name entry] for [price entry] creds.";
	if name entry is "Zephyr Personal Communicator":
		now carried of zpc is carried of zpc + 1;
	else:
		add name entry to invent of player;
	if name entry is "nanite collector", now nanitemeter is 2;
	if name entry is "pepperspray", increase pepped by 1;
	decrease freecred by price entry;
[	decrease score by price entry divided by 5; ]

Table of Game Objects(continued)
name	desc	weight	object
"nanite collector"	"[nanitecolldesc]"	25	nanite collector
"pistol"	"A small, but serviceable, hand gun. It has a stylized Z on the grip. It never seems to run out of bullets, and gets oddly warm when you fire it."	2	pistol

pistol is armament. It has a weapon "[one of]a quick shot[or]speedy pistol play[or]your pistol[at random]". It is ranged. It is not temporary. It is a part of the player. The weapon damage of pistol is 7. The objsize of pistol is 2.


nanite collector is equipment. It is not temporary.
The placement of it is "body".
The descmod of it is " A great contraption rests across your back, with many valves and pipes. It looks more like a steampunk jetpack than anything else. Still, it has the Zephyr logo displayed boldly."

to say nanitecolldesc:
	say "A great and ponderous object that is worn on the back and can draw in nanites to produce infection vials. Interesting[if nanitemeter is 1]. It has been modified to be lighter, somewhat dropping its effectiveness[else if nanitemeter is 3]. It has been modified with an additional pump and larger tank, increasing its effectiveness and its overall weight[end if].";


Table of Zephyr Goods
name	price	object	allowed
"nanite collector"	360	nanite collector	noresearch rule
"medkit"	275	medkit	true rule
"pistol"	550	pistol	true rule
"pepperspray"	320	pepperspray	pepper rule
"water bottle"		100	water bottle	true rule

nanitemeter is a number that varies. nanitemeter is normally 0.	[marks if player bought a nanite collector]
pepped is a number that varies. pepped is normally 0.	[marks how many pepperspray a player's bought]

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


Section 5 - Nanite Density Monitors Sub-Quest

Chapter 1 - Getting Started

ndmlist is a list of text that varies. ndmlist is usually {"Beach", "Red Light District", "High Rise District", "Park"}.

[ -- Dr. Matt versions -- ]

to say zephyrmatt1:
	say "     You go up to Larissa at the counter and inform her that you're here on Dr. Matt's behalf to exchange information. She glances up from the electronic game she's playing to pass the time. 'Oh, hey. Head Office said someone would be coming by for that.'  She sets her game aside and glances up at you between flipping through the documents. 'If you're going around the city looking for work, we've got a bit of something for you to do. HQ says it needs to be done ASAP, but we don't have the manpower. If you could take care of that, I'll make sure these get a rush on top of paying you for the job. Sound good?'";
	say "     Understanding that Dr. Matt needs this information and that you'd best get on Zephyr's good side to get it, you nod ask her what needs to be done. 'Excellent!  We can't really go hiring you on right now, but even working for us freelance will really help you in the long run. Zephyr's moving up in the world and you really want to be part of the team, trust me,' she says with a knowing smile.";
	say "     'Now, what we need you to do is place a few of these nanite density monitors at a few key locations in the city. They'll help us detect the prop-' she stops herself short. 'Well, a temp doesn't need to know the details. They measure some stuff about the nanites. Perfectly safe,' she adds reassuringly. 'We've set a few up already nearby, but HQ wants them placed at four other key locations across the city: The downtown high rise district, the city park, the beachfront area and the seedy red light district. They should be placed in open, elevated locations where they won't be disturbed. Once you get to an area, try hunting around for a ['][bold type]detector site[roman type]['] to find an appropriate place to set it up.'";
	say "     She heaves a small suitcase onto the counter and pops it open. She takes a moment to demonstrate how to activate them, then closes it up and slides the case to you. 'They come equipped with a GPS transponder, so we'll be able to know if they've been properly installed or not, so don't get any funny ideas about just dumping them somewhere or sticking them in a few alleys. They've got to be outside in the open and somewhere high up.'  Grabbing the heavy case, you sigh and head off, hoping this job will be as easy as she claims, but knowing it won't be somehow.";
	increase carried of nanite density monitor by 1;
	now beach detector site is unresolved;
	now red light detector site is unresolved;
	now high rise detector site is unresolved;
	now park detector site is unresolved;
	now HP of doctor matt is 17;

to say zephyrmatt2:
	say "     'Don't forget about taking care of those nanite detection monitors. Our system shows that there [if number of entries in ndmlist is 1]is still one[else if number of entries in ndmlist is 2]are still two[else if number of entries in ndmlist is 3]are still three[else]are still four[end if] left to be placed. We won't be able to pay you for the work until the whole job is completed. Remember, if you get this done, I'll put a rush on that request from Dr. Matt for you,' she says with a bureaucratic smile that tells you that you have no real choice in the matter.";

to say zephyrmatt3:
	say "     Larissa looks up from some papers as you step over to her desk, telling her that you've got all four of them in place. She taps a few keys on her computer and nods. 'We've got all four active and transmitting data. Their placement seems... good,' she says after a pause. 'Very good, even. Nicely done.'  Remembering the effort involved, you nod politely and bite back a comment about how it better well be good enough.";
	say "     'I'll inform head office that Dr. Matt's completed his end of the bargain,' she adds, sliding you a CD-ROM. 'The data's encrypted and Dr. Matt - what an odd name - will be sent the key electronically.'  You take the disk and tuck it away somewhere safe.";
	say "     The woman slides you a credit voucher. 'There you go. That's two hundred free credits, good for any place that accepts the new currency of the new world,' she says with a smile. Again, you have to bite your tongue from saying that this is just about the only place around that takes them right now. You should at least be able to get some supplies or some gear from these guys.";
	increase freecred by 200;
	now HP of doctor matt is 18;

[ -- Dr. Mouse versions -- ]

to say zephyrmouse1:
	say "     You go up to Larissa at the counter and inform her that you're here to pick up some materials, sliding her the papers as you do. She glances up from the electronic game she's playing to pass the time and looks over the papers. 'Oh. This mess. Yeah, my boss is kinda peeved that some exec's telling him to pass materials onto some third party guy. You're not that guy, are you?' she asks suspiciously. You shake your head and say that you're just the courier. 'Well, it's going to take us a while to put this all together. It's reeeeal busy here,' she says as she picks her game again. 'But if you're going around the city looking for work, we've got a bit of something for you to do. HQ says it needs to be done ASAP, but we don't have the manpower. If you could take care of that, my boss'll be happy and I'll be able to make sure this request get a rush on top of paying you for the job. Sound good?'";
	say "     As Dr. Mouse warned you, it seems you'll have to do their errand to get on the good side of the local Zephyr staff. You heave a heavy sigh and nod, asking her what needs to be done. 'Excellent!  We can't really go hiring you on right now, but even working for us freelance will really help you in the long run. Zephyr's moving up in the world and you really want to be part of the team, trust me,' she says with a knowing smile.";
	say "     'Now, what we need you to do is place a few of these nanite density monitors at a few key locations in the city. They'll help us detect the prop-' she stops herself short. 'Well, a temp doesn't need to know the details. They measure some stuff about the nanites. Perfectly safe,' she adds unreassuringly. 'We've set a few up already nearby, but HQ wants them placed at four other key locations across the city: The downtown high rise district, the city park, the beachfront area and the seedy red light district. They should be placed in open, elevated locations where they won't be disturbed. Once you get to an area, try hunting around for a ['][bold type]detector site[roman type]['] to find an appropriate place to set it up.'";
	say "     She heaves a small suitcase onto the counter and pops it open. She takes a moment to demonstrate how to activate them, then closes it up and slides the case to you. 'They come equipped with a GPS transponder, so we'll be able to know if they've been properly installed or not, so don't get any funny ideas about just dumping them somewhere or sticking them in a few alleys. They've got to be outside in the open and somewhere high up.'  Grabbing the heavy case, you sigh and head off, hoping this job will be as easy as she claims, but knowing it won't be somehow.";
	increase carried of nanite density monitor by 1;
	now beach detector site is unresolved;
	now red light detector site is unresolved;
	now high rise detector site is unresolved;
	now park detector site is unresolved;
	now hospquest is 17;

to say zephyrmouse2:
	say "     'Don't forget about taking care of those nanite detection monitors. Our system shows that there [if number of entries in ndmlist is 1]is still one[else if number of entries in ndmlist is 2]are still two[else if number of entries in ndmlist is 3]are still three[else]are still four[end if] left to be placed. We won't be able to pay you for the work until the whole job is completed. Remember, if you get this done, I'll put a rush on that materials transfer request for you,' she says with a bureaucratic smile that tells you that you have no real choice in the matter.";

to say zephyrmouse3:
	say "     Larissa looks up from some papers as you step over to her desk, telling her that you've got all four of them in place. She taps a few keys on her computer and nods. 'We've got all four active and transmitting data. Their placement seems... good,' she says after a pause. 'Very good, even. Nicely done.'  Remembering the effort involved, you nod politely and bite back a comment about how it better well be good enough.";
	say "     'I've forwarded the report to my boss and he's happy to have that over and done with. He's authorized the data transfer as well,' she adds, sliding you a CD-ROM. 'The data's encrypted and Dr. Mouse - what an odd name - will be sent the key by that exec he's dealing with. I guess they'll be sorting out the rest of the exchange.'  You take the disk and tuck it away somewhere safe.";
	say "     The woman slides you a credit voucher. 'There you go. That's two hundred free credits, good for any place that accepts the new currency of the new world,' she says with a smile. Again, you have to bite your tongue from saying that this is just about the only place around that takes them right now. You should at least be able to get some supplies or some gear from these guys.";
	increase freecred by 200;
	now hospquest is 18;


Chapter 2 - The Situations

Book 1 - Beach

Beach Detector Site is a situation. It is resolved.
The sarea of Beach Detector Site is "Beach".

Instead of resolving a Beach Detector Site:
	say "     Keeping an eye out for an appropriate spot to place the device for Zephyr, you notice a tall outcropping of rock out in the water that you might be able to scale. It is certainly closer closer than most of the other rocks as well, so you should be able to swim out to it";
	if nanite density monitor is not owned:
		say ". You should return here with the device so you can install it. Hopefully it's waterproof.";
	else:
		say ". You remove one of the detectors from the suitcase and hide the case among some tall grass. Hoping the thing is waterproof, you bundle it up in a couple of plastic bags you have in your pack just in case, then head into the water, swimming out towards the rocky spire. As you struggle to make it out there, a creature moves in to attack.";
		if a random chance of 1 in 2 succeeds:
			challenge "feral sea dragon";
		else if a random chance of 1 in 2 succeeds:
			challenge "Hermaphrodite Dolphin";
		else:
			challenge "feral sea dragoness";
		if lost is 1:
			say "     Defeated, you are forced back to the beach. You'll have to try again later and hope the creature has moved on.";
		else:
			say "     With the creature defeated, you make it to the rocky spire. You now must climb the wet stone to get to the top. While parts of it are fairly easy to scale, there are a few difficult sections that make the climbing treacherous.";
			let bonus be ( dexterity of player + strength of player minus 20 ) divided by 2;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
			if bonus + dice > 16:
				say "You manage to safely make it up to the top!";
			else:
				say "You manage to make it partway to the top on your first attempt, but slip as a large wave crashes against the spire and sends chilling water slamming against you. You are bashed against the stone pillar and sent tumbling back down into the water. You are scratched and bruised when you finally make it to the top on your second attempt.";
				decrease HP of player by 20;
			say "     Tearing open the bags, you pull out the device and place it on a smooth surface at the top of the spire. Activating it, there is a whirring accompanied by a grinding sound as the screw bolts dig into the rock, locking it into place. Given the height and the fresh sea breeze, you're quite confident the detector will get unobstructed readings of... whatever for Zephyr. Your descent is thankfully easier, choosing to make an exhilarating dive from the fifty foot spire into the water and swimming back to shore.";
			remove "Beach" from ndmlist;
			now Beach Detector Site is resolved;
			say "[onelessndm]";


Book 2 - Red Light District

Red Light Detector Site is a situation. It is resolved.
The sarea of Red Light Detector Site is "Red".

Instead of resolving a Red Light Detector Site:
	say "     While scouting around in the fancier parts of this neighbourhood, you spot a large nightclub and sex show with a huge neon sign. Somehow the neon outline of a 25 foot tall, big breasted woman is still lit, flashing along with the name of the club. It certainly seems to the be the tallest spot around, the sign rising high above the three storey building, dwarfing all around it";
	if nanite density monitor is not owned:
		say ". Clearly the best spot around, you'll have to come back here with the device so you can install it.";
	else:
		say ". There is clearly a lot of activity still going on in this club, with rampant sex from a myriad of creatures both inside and out. Going in from the front is simply out of the question.";
		say "     It takes some effort to work your way around to the back of the building, this area much denser in creature activity, probably due to the highly sexual nature of the place, but you eventually find a way around back and scale the fire escape. On your way up, you spy several ongoing orgies inside the building, including one group which seems to be on display for the others, though there is little difference between the audience and the show save for the audience members paying a little more attention to the show than the other way around. You find yourself briefly captivated by the display, watching [one of]a male lizard plowing into a smaller dog girl[or]twin cats sucking on a wolf's cock[or]a female hyena sandwiched between a cheetah stuffing her ass and a horse filling her cunt, their combined seed bloating her belly[or]a small, male tiger getting buggered by a tigress herm[or]a chimp in a suit getting sucked off by a bear[at random] and growing quite aroused. You feel a strong compulsion to open the window and join them, which you have to struggle to fight down.";
		increase libido of player by 15;
		decrease humanity of player by 5;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
		say "     Reaching the building's roof, you find that you are not alone. There is a large, latex vixen here who seems to be lustfully enjoying sounds coming from the building below. You try to slip around her quietly, but her eyes lock on you and she grins.";
		challenge "Hermaphrodite Latex Vixen";
		if lost is 1:
			say "     Defeated, the hermaphrodite vixen banishes you from her rooftop, forcing you to return another time to try and place the detector after you've recovered.";
		else:
			say "     Having dealt with the cherry red vixen, you let her flee down the fire escape and head over to the sign. Looking it over, you are happy to find there's a few sets of maintenance rungs installed on the back so it can be scaled. Climbing up carefully, you find a good spot near the top of the sign, affixing the device against the black back of the sign, helping to hide it. When you turn it on, there is a whirr as the screws drill themselves into the surface, locking the box securely in place. Pleased with your accomplishment, you head back down and get some distance between you and the highly active group of creatures around here.";
			remove "Red Light District" from ndmlist;
			now Red Light Detector Site is resolved;
			say "[onelessndm]";


Book 3 - High Rise District

High Rise Detector Site is a situation. It is resolved.
The sarea of High Rise Detector Site is "High".
ndmhigh is a number that varies.

Instead of resolving a High Rise Detector Site:
	say "     While this part of the city has no shortage of tall buildings where the detector could be placed, other issues make most of them unsuitable. Many of the buildings have been damaged by the aerial battles of some large creatures or have had their upper floors turned into the aeries. Even those that aren't destroyed in this manner often show clear signs of habitation from large groups of infected creatures. You do eventually come across one office building that seems less populated and sufficiently intact up to the top";
	if nanite density monitor is not owned:
		say ". Clearly the best spot around, you'll have to come back here with the device so you can install it.";
	else:
		say ". Not looking forward to the long climb, you head into the building.";
		say "     You start to ascend the stairs, occasionally passing a passed-out creature who seems to have been assaulted during its own climb up the stairs. Wary, you continue on";
		let T be a random number between 1 and 4;
		if T is 1:
			say ", but are met a few floors later by a pack of bunnies who open the stairwell door as you walk past.";
			challenge "rabbit pack";
		else if T is 2:
			say ", but run into a pair of cougars descending the stairs quietly on their padded paws.";
			challenge "Cougar";
			if lost is 0:
				challenge "Cougar";
		else if T is 3:
			say ", but are surprised as a creature leaps out from behind a partially open door. Having heard you coming, it must have lain in wait until you moved past. His surprise blow is uncoordinated, but does make you stumble on the steps. You take [special-style-2]8[roman type]  damage.";
			now ndmhigh is 1;
			challenge "Zebra";
			now ndmhigh is 0;
		else if T is 4:
			say ", but manage to make it to the top without incident.";
		if lost is 1:
			say "     Having been bested, you are forced to descend back down to the street. You'll have to rest and recover before coming back to try again.";
		else:
			say "     Making it to the top floor, you search around quietly, eventually finding the service entrance to the roof and make your way up there. It is rather windy at the top of the tower, a pleasant change after your long, hot climb up the building. The ascent has left you tired, hungry and thirsty, but you still have work to do before you can rest and head back down.";
			increase thirst of player by 12;
			increase hunger of player by 6;
			decrease HP of player by ( HP of player divided by 6 );
			say "     Heading over to the central spire, you place the black box against a flat spot and turn it on. There is a whirr as the screws drill into the smooth stone and secure the detector in place. You are about to congratulate yourself on a job well done when you hear the shifting of stone nearby. Looking around, you notice that one of the decorative gargoyles lining the building's edge doesn't match the others and has begun to move. Aroused from its nap by the sound of the device locking itself into place, the huge creature takes to the air and swoops around, coming in to attack you.";
			challenge "Gargoyle";
			say "     Your battle the with creature completed, you stagger back down to the street level, sore, tired and exhausted, but one step of this job completed at least.";
			remove "High Rise District" from ndmlist;
			now High Rise Detector Site is resolved;
			say "[onelessndm]";


Book 4 - Park

Park Detector Site is a situation. It is resolved.
The sarea of Park Detector Site is "Park".

Instead of resolving a Park Detector Site:
	say "     Unsure where in the park you could place the device which would be suitable for Zephyr's requirements. You somehow doubt sticking it in a tree will quite be enough to satisfy them. As you travel the park, trying to find a worthwhile place, you spot the old, disused observatory on the hill at one end of the park. Pretty much forgotten by the city as the light pollution made it largely unusable, it is still the highest point in the area";
	if nanite density monitor is not owned:
		say ". Clearly the best spot around, you'll have to come back here with the device so you can install it.";
	else:
		say ".";
		say "     You make your way across the park, backtracking along paths to avoid groups of creatures too large to safely fight. Eventually you find your way to the observatory and climb the small hill up to it. Approaching, you find the main doors open and are about to go inside to search for a way up when a growl comes from inside, followed by a long, white streak flying out and climbing into the air. The oriental dragon creature flies around the observatory, looking for other intruders upon its home before zooming down to attack.";
		challenge "Yamato Dragon";
		if lost is 1:
			say "     The victorious dragon drops you off far from its home, leaving you to stagger back to the main path to recover before perhaps trying again.";
		else:
			say "     Having beaten the dragon, you drive it off for the moment, but you decide it would be best not to tarry too long. It may have friends and given how fast those creatures fly, they could be here soon. You enter the observatory, most of the building being taken up by the one, large dome housing the telescope. From the torn suit and the excessive amounts of dragon cum around, you wonder if perhaps one of the people working here became that creature.";
			say "     Setting such musings aside, you look around and quickly find a set of ladder rungs leading up to the shutter for the dome as well as an old manual crank for opening it. With some effort, you manage to get the gate over the telescope, letting the [if daytimer is day]sunlight[else]starlight[end if] in and climb up to the dome. Taking an uncomfortable seat at the edge, you take a quick moment to scan around for any sign of the returning dragon before placing the device against the dome's outer wall and turning it on. There is a sharp whine from the screws as the work to dig into the thick metal, eventually boring their way in and securing the device. You climb back down, close the shutter to hide what you've done and make a run for it back down the hill, taking cover in the trees as you spot more of those dragons flying back to the observatory. Finding you gone, the dragons quickly descend into lustfully mating to vent their frustrations at your escape.";
			remove "Park" from ndmlist;
			now Park Detector Site is resolved;
			say "[onelessndm]";


Chapter 3 - Alternate Drop-off Points

instead of entering the Confession Booth while "Beach" is listed in ndmlist and nanite density monitor is owned:
	say "     Stepping into the confessional, you ask the priestess if you may place one of the nanite density monitors atop the belltop.";
	say "     'Ah, those who cling to science are always seeking to explain that which is miraculous. They, always able to find answers to their questions, never stop to truly appreciate the fact that it is still a miracle. This is because they seek answers to the wrong questions in life,' she says serenely. 'But we will allow you to place your device, in thanks to the science which first brought about the nanites. While some of the elements of this miracle were man-made, everything was put into place for a grander purpose - this great rebirth of the world. You and those at Zephyr would do best to accept this truth rather than to seek greed from it.'";
	attempttowait;
	say "     She signals for an altar boy to come and assist you with your task, escorting you up the bell tower. As you climb the tower behind him, you chat with red panda altar [']boy['], learning that his name is Peter. With his fluffy tail raised to keep it out of the dust, you are able to get a good peak under his short robe the whole way up if you like. Peter, despite his shorter, five foot height is clearly an adult with a mature body with a slight pudge. He does have a tight little ass and an ample sheath and balls which you can plainly see under the white cloth. You talk with him, discussing what it's been like for each of you since the outbreak (though you edit your own version considerably).";
	say "     Once at the top, it takes a few knocks to get the warped hatch to the bell chamber open. You can't help to snag a final peek under the red panda's robe before you both enter the top of the tower, noting that his cock's begun to poke free of its sheath. The bell chamber is dusty and the bell system is in disrepair, clearly having fallen out of use even before the outbreak. Peter explains that the church was unable to pay to maintain the bells for the last few years, so no one ever comes up here and that your device should be safe enough. Opening one of the outer windows, you place the black box on the wooden ledge with the Zephyr logo turned to the wall to further hide it and turn it on. After a brief pause, there is a whirring sound as the screw bolts dig into the wood, locking it firmly into place.";
	attempttowait;
	say "     With that chore done, you pause for a moment, wondering if you want to thank Peter in a more personal way for his help. Shall you try to sex up the red panda?";
	if the player consents:
		say "     As he moves to head back down the hatch, you move in close to the red panda and slide your arms around his waist, running your hands over his tummy and down to his groin. You whisper in his ear that you'd like to really thank him for all his help. He moans softly and mumbles something about not giving into the base urges, so you slip up the front of his robe and fondle his sheath directly, pleased to see that his cock's slipped further from it. You tell him that you think he's very cute and that you only want to show how much you appreciate his help, all while sliding your fingertips across his stiffening member. He releases a soft [']wah['] of pleasure and pulls his robe up further, blushing redder under his fur.";
		if cunts of player > 0:
			let baby be 0;
			if child is born or gestation of child is not 0, now baby is 1;
			say "     Eager to get that cock into you, you guide him to lay back on the dusty floor and climb atop him. His paws run over your body as you hold his penis in position and sink your pussy down around it. The wah releases a wah of pleasure as your cunt envelops his maleness and you start riding up and down it. Despite his small stature, he's got an impressive eight inch cock that pulse and throbs inside you as you fuck. His nimble paws caress your breasts and tease your nipples as the russet furred fellow squirms in delight beneath you. You moan in pleasure as he releases another, louder wah as he cums hard, blasting his thick seed into your pussy and up into your womb.[impregchance]";
			if baby is 0 and gestation of child is not 0:
				now facename of child is "Red Panda";
				now bodyname of child is "Red Panda";
				now skinname of child is "Red Panda";
		else if cocks of player > 0 and scalevalue of player > 1:
			say "     Being [if scalevalue of player is 2]the same size as him[else]larger than him[end if], you decide to mount the sexy male. Without removing your hand from his cock, you guide the red panda onto all fours, smiling at how his tail arches up and twitches as he presents himself. Deciding not to tarry too long in case someone comes to check on you both, you line up your cock with his tight pucker and sink slowly into him[if cock length of player > 16]. He slaps both paws over his muzzle as he releases a long, muffled wah as you slowly push your massive meat into him, bulging his furry tummy outwards to accommodate it[else if cock length of player > 8]. He slaps a paw over his muzzle as he releases a muffled wah as you slowly push your large meat into him, stuffing the little fellow full[else]. He releases another wah of pleasure as you slowly push your meat into him[end if]. Peter's shaft throbs in your hand, dribbling precum onto the dusty floor as you fuck him before eventually leaving a large, messy stain of red panda cum there as you blast your own load into him.";
		else if cocks of player > 0 and scalevalue of player is 1:
			let baby be 0;
			if child is born or gestation of child is not 0, now baby is 1;
			say "     Being smaller than the red panda, he guides you down onto all fours and climbs atop you. You stifle a moan as he moves his cock into position at your back door, sinking himself slowly into your tight rear. His stiff cock spreads you open gently as he starts thrusting while a paw moves around to stroke your [if cocks of player > 1]shafts[else]shaft[end if]. His soft fur rubs against your back as his pudgy belly rests atop you and his plump balls slap against you with each thrust. You go at this for several minutes until the red panda presses his muzzle against your neck and releases a muffled wah of pleasure, cumming hard inside you. You can feel his hot seed filling your ass and your climax hits as well, blasting your hot seed across the dusty floor.[mimpregchance]";
			if baby is 0 and gestation of child is not 0:
				now facename of child is "Red Panda";
				now bodyname of child is "Red Panda";
				now skinname of child is "Red Panda";
		else:
			say "     Lacking any sexual organs of your own, you drop to your knees in front of the red panda and stuff his cock into your mouth. You tease your tongue across his leaking shaft and eagerly start sucking him off. He rubs a paw over your head as the other covers his muzzle to muffle a wah of pleasure. You work his penis with your mouth, tongue and lips until finally he can't take any more and Peter releases another muffled wah as he cums hard, flooding your mouth with his tasty load.";
		say "     Your quick fun over, he gives you a kiss and nuzzles you before leading you back down into the church. As he descends, he tries his best to wipe his dusty robe clean. Once downstairs, he gives you another quick kiss before dashing off to the confessional.";
	else:
		say "     You decide to just speak your thanks to the red panda and follow him back down the steps, pleased with yourself at your ingenuity in placing it here.";
	remove "Beach" from ndmlist;
	now Beach Detector Site is resolved;
	say "[onelessndm]";

ndmLisa is a truth state that varies. ndmLisa is normally false.

instead of conversing the Lisa while "Red Light District" is listed in ndmlist and nanite density monitor is owned and ndmLisa is false:
	say "     You decide to ask Lisa if it would be okay to put the detector on top of her porn store. It might be as tall as some of the other buildings, but it would certainly be a safer spot, so you're willing to give it a try. As you start to bring up the topic, the mousetaur gets very upset. 'Zephyr?  You're helping those greedy bastards?  I've been hearing stuff about them and you shouldn't get involved with them. They're bad news and it's going to get messy when the infected people around here have had enough of their money-grubbing scientists.'";
	now ndmLisa is true;

instead of conversing Alex while "High Rise District" is listed in ndmlist and nanite density monitor is owned:
	say "     Looking around Alex's high rise condo, you decide to ask him if it would be alright to install the device from Zephyr on his balcony. 'Hmmm... Zephyr?  Aren't they some kind of R&D company?  Are they looking into this problem?  Sure!  It'll be good to know we're helping to fix this mess. So, what does it do?' he asks in a spurt of manic energy. You do your best to explain what little you know as you head out with him onto the balcony and find a suitable spot next to his now-useless air conditioner. Activating the device, there is a whirr as the screws drill into the concrete, securing it in place. You head back inside, thanking the ferrety lawyer for his help.";
	remove "High Rise District" from ndmlist;
	now High Rise Detector Site is resolved;
	say "[onelessndm]";


Chapter 4 - The NDM item

Table of Game Objects (continued)
name	desc	weight	object
"nanite density monitor"	"[ndmdesc]"	20	nanite density monitor

to say ndmdesc:
	say "     The suitcase you were given at Zephyr is a high-security model with digital locking codes. Inside [if number of entries in ndmlist > 1]are the remaining nanite density monitors[else]is the remaining nanite density monitor[end if]. These are unassuming black boxes about six inches on each side. There are no visible entry points, cameras or other detectors you can recognize. Aside from the tips of four screwheads at the bottom corners, the black cubes are smooth and featureless save for the Zephyr company logo on one side.";
	if the number of entries in ndmlist is 1:
		say "     With only one last cube remaining to be placed, you recall that Larissa said Zephyr wanted one placed at the [ndmlist] as well. You should make your way there and [bold type]hunt[roman type] for a suitable ['][bold type]detector site[roman type]['] in the area.";
	else:
		say "     With [the number of entries in ndmlist] remaining to be placed, you recall that Larissa said Zephyr wanted the others placed at the [ndmlist] areas. You should make your way there and [bold type]hunt[roman type] for a suitable ['][bold type]detector site[roman type]['] in those locations.";

nanite density monitor is a grab object.
it is part of the player.
It is not temporary.

to say onelessndm:
	repeat with y running from 1 to number of filled rows in table of game objects:
		choose row y in table of game objects;
		if name entry is "nanite density monitor":
			decrease weight entry by 5;
			break;
	if weight entry > 0:
		say "     With one less device in it, the carrying case is now lighter.";
		increase score by 20;
	if weight entry is 0:
		say "     With the last device in place, you discard the empty carrying case. You should report back to Zephyr now that your task is completed.";
		increase score by 40;
		now carried of nanite density monitor is 0;


Zephyr Inc ends here.
