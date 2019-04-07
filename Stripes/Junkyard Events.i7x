Version 1 of Junkyard Events by Stripes begins here.
[ Version 1.1 - Update to Stray Cat event ]

"Adds a batch of random events in the Junkyard area to Flexible Survival."


Section 1 - Goblin Trap

Table of GameEventIDs (continued)
Object	Name
Goblin Trap	"Goblin Trap"

Goblin Trap is a situation. The level of Goblin Trap is 2.
The sarea of Goblin Trap is "Junkyard".
goblinfight is a number that varies.
when play begins:
	add Goblin Trap to badspots of guy;

Instead of resolving a Goblin Trap:
	say "     As you are traveling along, looking over the various junk piles as you go, you inadvertently set off a hidden trap. A snare closes around your ankles and pulls your feet out from under you as you hear a heavy weight strike the ground nearby, pulling the rope. This also sets off a spring trap which sends a cluster of machine parts at you, aimed to land at your location. Battered by the volley of junk, you try to extricate yourself from the snare as a giggling goblin scrambles out from his hidey-hole in the junkpile after you set off his trap. 'Hee hee! It worked! It worked! And now to claim my prize,' he cackles as he comes at you as you get your legs free. You have taken 12 damage.";
	decrease HP of player by 12;
	now goblinfight is 3;
	challenge "Goblin";
	if goblinfight is 1:
		say "     Having beaten the goblin, you rub your sore body and continue on your way, reminding yourself to be more careful in the future.";
		increase score by 1;
	else if goblinfight is 2:
		say "     Having lost to the goblin and been sent on your way, you rub your sore body and remind yourself to be more careful in the future.";
	else:
		say "     Deciding you've had enough of this, you run off into the junkyard as the goblin curses about his prize getting away. You rub your sore body and remind yourself to be more careful in the future.";
	now Goblin Trap is resolved;


Section 2 - Goblin Raiding Party

Table of GameEventIDs (continued)
Object	Name
Raiding Party	"Raiding Party"

Raiding Party is a situation. The level of Raiding Party is 2.
The sarea of Raiding Party is "Junkyard".
junknum is a number that varies.
when play begins:
	add Raiding Party to badspots of guy;
	add Raiding Party to badspots of furry;
	add Raiding Party to badspots of hermaphrodite;

Instead of resolving a Raiding Party:
	say "     As you search through the junkyard, you can hear some cackling laughter coming closer as well as the sounds of an angry feline. There is a smack and the feline sounds are silenced with a whimper, but the cackling laughter gets louder. You can tell there are several people laughing and they're getting closer.";
	say "     [bold type]Shall you stay and wait for them to see what's going on or shall you make your escape while you can?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay.";
	say "     ([link]N[as]n[end link]) - Flee.";
	if player consents:
		LineBreak;
		say "     Without anywhere worthwhile to hide and watch, you stay in the middle of the path and try to look intimidating. A few seconds later, some goblins come into view dragging something as they laugh cruelly to one another. The trio stops as they notice you just as their burden comes into view. Trapped in a net behind them is a tigress woman dressed in a skimpy outfit with mussed hair. She is largely insensate right now, probably struck by one of the goblins when she started making noise. With you barring their path, the goblin charges to defend their prize.";
		now goblinfight is 3;
		challenge "Goblin";
		if goblinfight is 1:
			say "     With one goblin defeated and retreated into cover, the second goblin prods his remaining companion with a strange device made from junk, sending him in to attack you.";
			challenge "Goblin";
			if goblinfight is 1:
				say "     The last goblin tosses down the strange device, which seems to be their improvised net gun, and moves in to deal with you and defend his prize.";
				challenge "Goblin";
				if goblinfight is 1:
					say "     With the last goblin fled, you move over to check on the tigress woman. Using the fight as a distraction, she managed to bite through some of the ropes and pulls herself free as you come up. As she stands, you get a better look at her. She is wearing a short, red top and an even shorter, black skirt. This lets you see the soft orange tiger fur that covers her attractive body, rich with black stripes. She has snowy, white fur that covers her bosom and the front of her shapely waist. As she brushes her red hair back into order, you catch sight of the gold earrings in her feline ears and bracelets on her wrists. She growls as she stomps down hard onto the net launcher, smashing it with her feline paw before sending it flying off into the scrapyard.";
					say "     Looking at you, she grins and runs her paws over her body. 'Well, sweetie, that was mighty nice of you. How about I give you a little reward for your help?' she purrs, motioning to a discarded mattress at the edge of a nearby pile. From the looks of it, it's been used a few times before. As her paws run over her skirt, you can see the bulge there of her poorly concealed maleness. 'No charge this time, sweetie,' the feline whore adds, running hir paws over your chest. 'I can show you a real good time. Anything you like,' shi rumbles with a grin, rubbing hir breasts and sheath against you. Shall you accept hir tempting offer?";
					if player consents:
						now junknum is 1;
						[puts Tigress Hooker as lead monster in case of impregnation]
						repeat with y running from 1 to number of filled rows in Table of Random Critters:
							choose row y in Table of Random Critters;
							if name entry is "Tigress Hooker":
								now monster is y;
								break;
						say "[losetotigress]";
						now junknum is 0;
						say "     Your romp with the feline over, shi gives you one last kiss before telling you shi needs to get back to work. Shi points off towards the seedier part of town and tells you of a route leading you there, should you want to find hir and hir sisters for more fun.";
						now Entrance to the Red Light District is known;
						increase score by 10;
						now Resolution of Raiding Party is 1; [won, fucked Tigress Hooker]
					else:
						say "     The tigress hooker hisses and pushes you away. 'You don't know a good thing when you see it,' shi growls and turns away, heading back the way the goblins came.";
						increase score by 1;
						now Resolution of Raiding Party is 2; [won, refused Tigress Hooker]
		else if goblinfight is 2:
			say "     Beaten by the goblins, they close in you around and smack you a few times. They then send you on your way with more cackling before continuing on with their prize. You should perhaps consider yourself lucky that they already have one prize and can't take you with them as well.";
			now Resolution of Raiding Party is 3; [lost, goblins ran off with their captive]
		else:
			say "     Deciding that it is, in the end, not your problem, you hightail it out of there.";
			now Resolution of Raiding Party is 99; [disinterest]
	else:
		LineBreak;
		say "     Deciding that whatever is going on is not your problem, you hightail it out of there.";
		now Resolution of Raiding Party is 99; [disinterest]
	now Raiding Party is resolved;


Section 3 - Stripped Car

Table of GameEventIDs (continued)
Object	Name
Stripped Car	"Stripped Car"

Stripped Car is a situation.
The sarea of Stripped Car is "Junkyard".

Instead of resolving a Stripped Car:
	say "     You come across a stripped car that has been pulled across the pathway between the piles. Wary of an ambush, you look around, but it seems no one is here. Taking a closer look, stripped is the proper way to describe this car. It's hub caps, hood, side panels, front grill and many other parts seem to have all been recently and forcibly removed. There are deep gouges from feline claw marks and twisted metal all over it where parts where torn off. Even the stereo is gone. You will have to be careful to avoid any felines strong enough to drag around a car and tear parts off by hand.";
	increase score by 1;
	now Stripped Car is resolved;


Section 4 - Scattered Trash

Table of GameEventIDs (continued)
Object	Name
Scattered Trash	"Scattered Trash"

Scattered Trash is a situation.
The sarea of Scattered Trash is "Junkyard".
when play begins:
	add Scattered Trash to badspots of girl;
	add Scattered Trash to badspots of furry;

Instead of resolving a Scattered Trash:
	say "     You come across a mess of garbage scattered here, sprawling across the path between the junk mounds here. From the looks of it, it seems this stuff has been rummaged through and possibly even rolled around in. As it is just tossed around, there are clear spots to walk while you move through it. You decide to keep your eyes open in case you spot anything of interest while making your way through the trash.";
	WaitLineBreak;
	let bonus be (( perception of player + dexterity of player minus 20 ) divided by 2 );
	let dice be a random number from 1 to 20;
	say "     You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
	if bonus + dice > 15:
		say "You manage to spot a sticky mess as you're stepping around through the trash. It's hard to tell over the scent of the surrounding garbage, but it's clearly the sexual fluids from some kind of creature. Finishing picking around the trash, you do manage to find a container of water. The small jug has enough for a drink of water, but it seems to have been filled after the outbreak and is probably not clean.";
		increase carried of dirty water by 1;
		increase score by 1;
	else:
		say "As you're trying to maneuver around the scattered trash, you place your foot on something slick just as you're turning to look at something shiny. Your foot comes out from under you and you fall onto your back, landing among the trash in something sticky. Getting up quickly, you notice it is a puddle of sexual fluids from some kind of creature. You try to wipe it off, but it's clearly too late as the tingles and prickles of spreading infection start.";
		if a random chance of 1 in 2 succeeds:			[Trash Coon]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if name entry is "Trash Coon":
					now monster is y;
					break;
		else:								[Pit Bull]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if name entry is "Pit Bull":
					now monster is y;
					break;
		infect;
	now Scattered Trash is resolved;


Section 5 - Stray Cat

Table of GameEventIDs (continued)
Object	Name
Stray Cat	"Stray Cat"

Stray Cat is a situation. The level of Stray Cat is 7.
The sarea of Stray Cat is "Junkyard".

Instead of resolving a Stray Cat:
	say "     On a search through the scrapyard, you find your path blocked by a sweaty and panting snow leopard. It seems he wandered in here and has gotten lost. Startled to see you there, he gives a dry mrowl that cracks in his dry throat before stalking towards you quickly. ";
	if dirty water is owned or water bottle is owned:
		say "You have some water in your pack which may satisfy him long enough to make your escape.";
		say "     [bold type]Shall you toss him some water?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			if dirty water is owned and water bottle is owned:
				say "     You have both dirty water and fresh water. Which will you give him? (Y=dirty, N=fresh)";
				if player consents:
					say "[dirtysnow]";
					now Resolution of Stray Cat is 1; [created snow bat]
				else:
					say "[bottlesnow]";
					now Resolution of Stray Cat is 2; [gave snow leopard clean water]
			else if dirty water is owned:
				say "[dirtysnow]";
				now Resolution of Stray Cat is 1; [created snow bat]
			else:
				say "[bottlesnow]";
				now Resolution of Stray Cat is 2; [gave snow leopard clean water]
		else:
			LineBreak;
			say "     Deciding to save your supplies for yourself, you ready yourself to face the thirsty feline.";
			challenge "Snow Leopard";
			now Resolution of Stray Cat is 3; [refused snow leopard, fought]
	else:
		say "You have but a short moment before the feline is upon you and attacking.";
		now Resolution of Stray Cat is 4; [fought snow leopard]
	now Stray Cat is resolved;

to say dirtysnow:
	delete dirty water;
	say "     Quickly pulling off your pack, you reach into it and pull out a jug of dirty water. You toss it to the charging feline, who swats at it with his paw before realizing what it is. The container breaks open, sending the water over him. Startled, he comes to a stop and shakes his head before realizing it's water and he starts licking it from his fur. As you start to back away, his body starts to change, altered by the dirty water.";
	say "     Fascinated, you watch as he starts to mewl softly as the sensations wash over him, causing him to fall to his knees. From the strength of his reactions, you are very grateful that you didn't end up drinking that water yourself. His body grows taller and thinner, but with a strong chest and shoulders. His shoulders and back twitch and bulge before a pair of large, fully-formed bat wings burst from them. The pain (or pleasure?) of this causes him to mrowl loudly. With his head raised to cry out, you can see his face and muzzle changing, growing longer and narrower. His ears enlarge, becoming big and pointed as he turns into some feline-bat hybrid.";
	say "     His bat-like ears twitch as he mrowls again and they lock on you. Hearing your echo with his heightened senses, he starts to get up. This breaks the spell of watching his transformation and you turn to get away from this new and potentially dangerous creature you've spawned. You run around one mound, then dash down another path in the hopes of evading him. You start to make a third turn when he comes swooping out of the air, already able to fly on his new wings. Cut off, you will have to face him.";
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Snow Bat":
			now area entry is "Junkyard";
			now non-infectious entry is false;
			now monster is y;
			break;
	now snowbatfight is 3;
	challenge "Snow Bat";
	if snowbatfight is 1:
		say "     Having managed to drive the vicious bat-feline off, you stumble back as your knees get weak. Taking a seat on a junked car, you shudder at what you've unleashed.";
	else if snowbatfight is 2:
		say "     You get up unsteadily, woozy from the blood loss and look around. Some time has passed and the bat-feline has departed. You brush your fingers lightly over your sore neck, the wound slowly closing, and shudder at what you've unleashed.";
	else:
		say "     Managing to slip past him, you make a run for it again. But this time, after making a few turns, you dive onto the seats of a wrecked car in the scrapyard. You remain as still and as quiet as you can, knowing those sensitive ears are searching for you. Eventually you hear those large wings flap off into the distance. You release a shudder at what you've unleashed.";
	now snowbatfight is 0;
	increase score by 20;
	extend game by 8;


to say bottlesnow:
	delete water bottle;
	say "     Quickly pulling off your pack, you reach into it and pull out a bottle of water. You toss it to the charging feline, who bats it aside at first, but then realizes what it is. He drops to all fours, scrambling on the hard ground in an attempt to turn, then runs to chase after the water bottle. Taking the opportunity to head off, you can hear the parched feline gulping it down and a distant [']Thank you['] when he's finished. Wanting to be safe, you keep moving, just in case he decides to come back for more.";
	increase score by 10;
	increase morale of player by 3;

Junkyard Events ends here.
