Version 1 of Scavevents by Stripes begins here.
[version 1 - ]

"Adds a batch of random events which can occur while scavenging around the city."


Section 1 - Tight Fit

Tight Fit is a scavevent.
The sarea of Tight Fit is "Allzones";
tightfitcount is a number that varies.

Instead of resolving a Tight Fit:
	let y be "food";
	let x be a random number from 1 to 8;
	if x is 1 or x is 2:
		now y is "food";
	if x is 3 or x is 4:
		now y is "water bottle";
	if x is 5:
		if "Survivalist" is listed in feats of player and a random chance of 1 in 3 succeeds:
			now y is "medkit";
		otherwise if "Three Bags Full" is listed in feats of the player and a random chance of 1 in 5 succeeds:
			now y is "medkit";
		otherwise:
			now y is "dirty water";
	if x is 6:
		now y is "dirty water";
	if x is 7:
		now y is "chips";
	if x is 8:
		now y is "soda";
	if scavengetarget is "food" or scavengetarget is "water bottle" or scavengetarget is "chips" or scavengetarget is "soda":
		if scavengetarget matches the text y:
			let lol be 1;
		otherwise:
			if a random chance of 1 in 3 succeeds:
				if scavengetarget is "food":
					now y is "food";
				if scavengetarget is "water bottle":
					now y is "water bottle";
				if scavengetarget is "chips":
					now y is "chips";
				if scavengetarget is "soda":
					now y is "soda";
				say "Your specific hunting leads you towards your target.";
	say "Always on the lookout for more supplies, you spot a tight [one of]crawlspace[or]hole[or]drainage pipe[at random] that looks like its recently been disturbed.  Heading over to check it out, your suspicions were correct and you spot a [y] that someone has stashed at the far end of the dark tunnel.";
	if companion of player is bee girl:
		say "Honey buzzes up to you and grabs your hand as you're pondering going in after it.  'I can get it for you, honeybunch.'  And with that, the small bee girl folds in her wings and wriggles into the tunnel and back out, used to negotiating the narrow tunnels of the hive.  She hands the [y] to you with a smile.";
		add y to invent of player;
	otherwise if companion of player is helper dog:
		say "Even as you're pondering your chances of getting in there to reach it, Hobo moves around you crawls into the tunnel.  The clever dog comes back out with the [y] in his teeth, dropping it at your feet.  Surprised at the dog's cleverness, you scritch his ears.";
		add y to invent of player;
	otherwise if companion of player is mouse girl:
		say "While pondering your chances of being able to squeeze in there to get it, Rachel gives you a peck on the cheek.  'Let me take care of this for you, sexy,' she says before scurrying into and out of the hole.  She passes you the [y] with a grin.  'Just another reason why it's better to be a mousy like me.'";
		add y to invent of player;
	otherwise if scalevalue of player is 1:
		say "Your small [bodytype of player] body slips easily into the narrow confines, letting you snag the [y] without difficulty.";
		add y to invent of player;
	otherwise if scalevalue of player is 3 or scalevalue of player is 2:
		let difficulty be a random number from 6 to 16;
		if hardmode is true, increase difficulty by a random number between 0 and 3;
		say "The tunnel looks like it would be ";
		if difficulty is less than 8:
			say "easy";
		otherwise if difficulty is less than 10:
			say "not too bad";
		otherwise if difficulty is less than 12:
			say "hard";
		otherwise if difficulty is less than 14:
			say "very difficult";
		otherwise:
			say "extremely difficult";
		say " [if scalevalue of player is 3]to squirm in and out of[otherwise if scalevalue of player is 2] for a normal person to squirm in and out of.  Being smaller, you've got a better shot at making it[end if].";
		let bonus be ( the dexterity of the player minus 10 ) divided by 2;
		if hardmode is true and bonus > 10, now bonus is 10;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		if scalevalue of player is 2, increase bonus by 5;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		increase dice by bonus;
		if difficulty is greater than dice:
			say "You try your best to squeeze into the tunnel, but you aren't able make it more than a couple of feet before it becomes impossible to move forward.  Rather than risk getting completely stuck and vulnerable to any lusty mutant who comes by, you work your way back out and head off.";
		otherwise:
			say "It is a tight fit at a few spots, but you manage to wriggle your way in and out of the tunnel, snagging the [y] to add to your backpack's contents.";
			add y to invent of the player;
	otherwise if scalevalue of player > 3:
		say "You look at the [y] sitting deep in that hidey-hole and know there's no way your [body size of player] body is going to be able to go in after it.  Too far to reach or snag with anything you have around, you have to leave it behind.";
	increase tightfitcount by 1;
	if tightfitcount is 5, now Tight Fit is resolved;


Section 2 - Protected Supplies

Protected Supplies is a scavevent.
The sarea of Protected Supplies is "Allzones";

Instead of resolving a Protected Supplies:
	let y be "food";
	let x be a random number from 1 to 8;
	if x is 1 or x is 2:
		now y is "food";
	if x is 3 or x is 4:
		now y is "water bottle";
	if x is 5:
		if "Survivalist" is listed in feats of player and a random chance of 1 in 3 succeeds:
			now y is "medkit";
		otherwise if "Three Bags Full" is listed in feats of the player and a random chance of 1 in 5 succeeds:
			now y is "medkit";
		otherwise:
			now y is "dirty water";
	if x is 6:
		now y is "dirty water";
	if x is 7:
		now y is "chips";
	if x is 8:
		now y is "soda";
	if scavengetarget is "food" or scavengetarget is "water bottle" or scavengetarget is "chips" or scavengetarget is "soda":
		if scavengetarget matches the text y:
			let lol be 1;
		otherwise:
			if a random chance of 1 in 3 succeeds:
				if scavengetarget is "food":
					now y is "food";
				if scavengetarget is "water bottle":
					now y is "water bottle";
				if scavengetarget is "chips":
					now y is "chips";
				if scavengetarget is "soda":
					now y is "soda";
				say "Your specific hunting leads you towards your target.";
	now monster is a random number from 1 to number of filled rows in the table of random critters;
	let Q be a list of numbers;
	repeat with tt running from 1 to number of filled rows in table of random critters:
		choose row tt from the table of random critters;
		if there is a lev entry:
			if lev entry is greater than level of player plus levelwindow and hardmode is false:
				next;
		otherwise:
			next;
		if area entry matches the text battleground:
			if there is a nocturnal in row tt of table of random critters:
				if (nocturnal entry is true and daytimer is day) or (nocturnal entry is false and daytimer is night):
					next;		[skips if day/night doesn't match]
			add tt to q;
			if "Like Attracts Like" is listed in the feats of the player and skinname of player is name entry and a random chance of 1 in 2 succeeds:
				add tt to q;
			if "Like Attracts Like" is listed in the feats of the player and bodyname of player is name entry and a random chance of 1 in 2 succeeds:
				add tt to q;
			if "Like Attracts Like" is listed in the feats of the player and cockname of player is name entry and a random chance of 1 in 2 succeeds:
				add tt to q;
			if "Like Attracts Like" is listed in the feats of the player and facename of player is name entry and a random chance of 1 in 2 succeeds:
				add tt to q;
	if the number of entries in q is not 0:
		sort Q in random order;
		repeat with Z running through q:
			now monster is Z;
			break;
		choose row monster from the table of random critters;
		if lev entry is less than level of player and hardmode is true:
			hardmodeboost;
		say "In your searching through the city, you come across some [y] and move to get it.";
		say "It's just laying there [one of]in a busted vending machine[or]on a counter[or]in a wheel barrow[or]discarded in the middle of a street[or]in a bag[or]in a backpack[or]in an abandoned car[or]beneath a pile of discarded clothes[or]a few feet away from the some rather messy cum stains[purely at random].";
		wait for any key;
		let scavfight be 0;
		say "But as you move to get it, a [name entry] moves to cut you off, probably wanting to take it for themselves";
		if a random chance of 1 in 2 succeeds:
			say ".  The creature charges to attack before you have a chance to consider falling back.";
			let scavfight be 1;
		otherwise:
			say ".  The creature remains watchful, but keeps you from moving towards your desired supplies.  Shall you attack (Y) to get them or leave (N)?";
			if the player consents:
				let scavfight be 1;
		if scavfight is 1:
			now fightoutcome is 100;
			challenge [name entry];
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "Managing to defeat the creature, you head over and claim the [y] as your prize, adding it to your supplies.";
				add y to invent of player;
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:
				say "Beaten by the creature, you are unable to stop it from taking the [y] as its prize.";
				decrease morale of player by 1;
			otherwise:
				say "Deciding the [y] is not worth fighting over further, you make your escape back into the city, leaving it for the [name entry].";
				decrease morale of player by 1;
		otherwise:
			say "You back away slowly from the creature, leaving the prize to them.  It's not much good to you if you're not alive to use it.";
			decrease morale of player by 1;
	otherwise:
		say "You come across the scenes of a scuffle between two creatures.  There are tufts of fur, feathers and blood scattered about, as well as other bodily fluids.  In the middle of this mess [one of]are the few crumbs left from whatever food they appear to have been fighting over[or]the empty soda can they appear to have been fighting over[or]the empty and crushed water bottle they appear to have been fighting over[at random].  Unsure if you're disappointed that you got here too late or pleased that you didn't need to fight one or both of these vicious creatures to get it, you move on.";


Section 3 - Dropped Handbag

Dropped Handbag is a scavevent.
the sarea of Dropped Handbag is "Allzones";

Instead of resolving a Dropped Handbag:
	say "     Passing through the city, you find a dropped handbag with torn scraps of clothes around it.  Given the messy stains on the torn dress, it seems whoever owned the bag met a rather sticky fate.  Do you want to search it?  It doesn't seem like they'll be needing it anymore.";
	if the player consents:
		let T be a random number between 1 and 100;
		if T < 41:
			say "     Searching the handbag, you toss aside the makeup, tissues, pens, safety pins, lipstick, mirror, and loads of other little things you don't really need in this crisis, though you do pocket the gum.  You do manage a lucky find and dig out a small canister of pepperspray.";
			add "pepperspray" to invent of player;
			increase score by 5;
		otherwise if T < 81:
			say "     Searching the handbag, you toss aside the makeup, tissues, pens, safety pins, lipstick, mirror, and loads of other little things you don't really need in this crisis, though you do pocket the gum.  But aside from the bottle of water at the top of the bag, you don't get anything of use.";
			add "water bottle" to invent of player;
			increase score by 1;
		otherwise if T < 91:
			say "     Searching the handbag, you toss aside the makeup, tissues, pens, safety pins, lipstick, mirror, and loads of other little things you don't really need in this crisis, though you do pocket the gum.  But that's about all you find of use in the dropped handbag.";
			increase score by 1;
		otherwise:
			say "     You open the bag and put your hand in to rummage through its contents, but are met with a sticky surprise.  Pulling it out, you find your hand covered in wet, sticky cum.  You can feel the tingles from the infected cum on your hand.  Someone, possibly the bag's original owner, filled it with their cum and left it for someone like you to find.";
			say "[line break]";
			sort table of random critters in random order;
			repeat with X running from 1 to number of filled rows in table of random critters:
				choose row X from the table of random critters;
				if area entry matches the text battleground and ( there is no non-infectious in row monster of table of random critters or non-infectious entry is false ):
					now monster is X;
					break;
			choose row monster from the table of random critters;
			infect;
			decrease humanity of player by 5;
	otherwise:
		say "     Deciding not to bother, you continue on your way.";
	now Dropped Handbag is resolved;


Section 4 - Dented Bike (by Wahn)

Dented Bike is a scavevent.
The sarea of Dented Bike is "Allzones";
dentedbikecount is a number that varies.

Instead of resolving a Dented Bike:
	say "You find a dented bicycle, lying abandoned on the road.  The shreds of its former owner's clothing are hanging from it and a few small tufts of fur are scattered around, leaving you to wonder what happened to him or her.";
	let difficulty be a random number from 8 to 16;
	if hardmode is true, increase difficulty by a random number between 0 and 2;
	let bonus be ( perception of player + level of player minus 10 ) divided by 2;
	if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
	if bonus + dice is greater than difficulty:
		let t be a random number between 1 and 3;
		if t is 1:
			say "You spot something under one of the shredded rags - it's an unopened bottle of water in a holder on the bike's frame!  ";
			add "water bottle" to invent of player;
		otherwise if t is 2:
			say "You see a water bottle poke out from under one of the wheels. It's sports cap seems to have popped off during whatever happened here and part of the contents have run out. You look around a bit until you find it, then wipe the cap off as good as you can and put it back on the bottle.  ";
			add "dirty water" to invent of player;
		otherwise:
			say "A small bulge in one piece of the shredded clothing attracts your attention. It's the pocket of a jacket, revealing a tasty chocolate bar.  ";
			add "chips" to invent of player;
	say "Looking around, you find a few more tufts of fur and some messy splatters of cum leading away, but that's it.";
	increase dentedbikecount by 1;
	if dentedbikecount is 3, now Dented Bike is resolved;


Section 5 - Looted Supermarket (by Wahn)

Looted Supermarket is a scavevent.
The sarea of Looted Supermarket is "Allzones";
supermarketcount is a number that varies.

Instead of resolving a Looted Supermarket:
	say "You decide to check out a small supermarket on your search for foodstuffs.  Sadly, lots of other people had the same idea when this whole chaos started.  The shelves are completely empty, with even absolutely useless stuff during an apocalypse looted to the last item.";
	let t be a random number between 1 and 4;
	if t is 1:
		let difficulty be a random number from 6 to 16;
		if hardmode is true, increase difficulty by a random number between 0 and 2;
		let bonus be ( perception of player + level of player minus 10 ) divided by 2;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		if bonus + dice is greater than difficulty:
			say "As you turn to head out of the store, you spot something interesting from the corner of your eye. There's a tin can that seems to have fallen down and rolled under a shelf - you pick it up and see it's [one of]dog food[or]cat food[at random].  Not your first choice for a meal, but hey - it's in a sealed container so it'll be infection free!";
		otherwise:
			say "You continue looking elsewhere for supplies, but aren't able to find any on this trip.";
	otherwise if t is 2:
		let difficulty be 12;
		if hardmode is true, increase difficulty by a random number between 0 and 2;
		let bonus be ( intelligence of player + level of player minus 10 ) divided by 2;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		if bonus + dice is greater than difficulty:
			say "You get an idea and check the checkout section. The cashiers are people with needs too, so... you find an unopened soda bottle under the register.";
			add "soda" to invent of player;
		otherwise:
			say "You wander elsewhere to look for supplies, but aren't able to find any on this trip.";
	otherwise if t is 3:
		let difficulty be 12;
		if hardmode is true, increase difficulty by a random number between 0 and 2;
		let bonus be ( intelligence of player + level of player minus 10 ) divided by 2;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		if bonus + dice is greater than difficulty:
			say "You get an idea and check the checkout section. The cashiers are people with needs too, so... you find an energy bar under the register.";
			add "food" to invent of player;
		otherwise:
			say "You wander elsewhere to look for supplies, but aren't able to find any on this trip.";
	otherwise if t is 4:
		let x be 0;
		let difficulty be a random number from 10 to 18;
		if hardmode is true, increase difficulty by a random number between 0 and 2;
		let bonus be ( strength of player + level of player minus 10 ) divided by 2;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		if "crowbar" is listed in invent of player:
			increase bonus by 3;
			let x be 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		if bonus + dice is greater than difficulty:
			say "You break open the door to a small room in the back[if x is 1] with the help of your crowbar[end if]. Aww - it's just the employees lockers and some cleaning supplies. At least one of them had a bag of chips in his locker.";
			add "chips" to invent of player;
		otherwise:
			say "You wander elsewhere to look for supplies, but aren't able to find any on this trip.";
	increase supermarketcount by 1;
	if supermarketcount is 3, now Dented Bike is resolved;


Section 6 - Abandoned Cars (by Wahn)

Abandoned Cars is a scavevent.
The sarea of Abandoned Cars is "Allzones";

Instead of resolving a Abandoned Cars:
	say "You check out a few abandoned cars - looks like they were in a mid-size accident when the infection hit. They've all been looted - or just shredded inside and out by their changing owners. The trunk of one of them is still closed, and you soon learn why - it's been warped by the impact of another car and won't open.";
	let x be 0;
	let difficulty be a random number from 8 to 15;
	if hardmode is true, increase difficulty by a random number between 0 and 2;
	let bonus be ( strength of player minus 10 ) divided by 2;
	if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
	if "crowbar" is listed in invent of player:
		increase bonus by 3;
		let x be 1;
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
	if bonus + dice is greater than difficulty:
		say "No problem - you grab the lid and wrench it open with [if x is 1]your crowbar[otherwise]your superior strength[end if].  Inside you find several shopping bags, filled with a smelly mess of mostly rotting food.  At least you manage to salvage a can of [one of]tomato soup[or]baked beans[or]spaghetti[or]pineapple[at random] and a soda bottle from it.";
		add "food" to invent of player;
		add "soda" to invent of player;
	otherwise:
		say "Try as you might, the trunk of this car is too damaged for you to break into it.  You'll have to try looking elsewhere.";
	now Abandoned Cars is resolved;


Section 7 - Gryphon Milkman (by Wahn)

Gryphon Milkman is a scavevent.
The sarea of Gryphon Milkman is "Outside";
when play begins:
	add Gryphon Milkman to badspots of furry;
	add Gryphon Milkman to badspots of hermaphrodite;

Instead of resolving a Gryphon Milkman:
	say "As you're out and about looking for supplies, you hear the flapping of wings overhead.  Before you can do much more than look up, a gryphon lands in front of you.  This specimen looks like a pure male, judging from the flat manly chest and the half-hard cock between his legs.  And what he also has is a white peaked cap and a wire carrier with several bottles.";
	say "'Here, have some milk - it's good for you,' he tells you cheerfully, pushing a milk bottle into your hand and tipping his hat to you. Then he jumps in the air and flies away, leaving you standing there alone.";
	add "gryphon milk" to invent of player;
	now Gryphon Milkman is resolved;


Section 8 - Free Milk (by Wahn)

Free Milk is a scavevent.
The sarea of Free Milk is "Outside";
when play begins:
	add Gryphon Milkman to badspots of furry;
	add Gryphon Milkman to badspots of hermaphrodite;

Instead of resolving a Free Milk:
	say "Your search for edible items leads you into a residential area.  As you stand in the middle of the local street, trying to decide which house might contain something useful, you suddenly realize something - there's a milk bottle standing in front of the door of the house over there - and it's full.  Walking over to the house, you take the bottle.  The milk is rather cold and smells delicious.  You wonder where it came from - you'd have thought that with the apocalypse and all, deliveries by the milkman would stop.  And are there even any cows left with these changing infections?";
	add "gryphon milk" to invent of player;
	now Free Milk is resolved;


Section 9 - Mana from Heaven (by Wahn)

Mana from Heaven is a scavevent.
The sarea of Mana from Heaven is "Outside";

Instead of resolving a Mana from Heaven:
	say "Moving through the city, you suddenly hear cawing and shouting from somewhere above.  It's a harpy flying in your direction, clutching something in her claws - closely followed by another who keeps insulting her.  Sounds like they're having a disagreement of the ownership of the can of peaches the first one has in her talons.  Before long, that dissolves into a furious mid-flight clawing match during which the fought-over can is knocked out of the claw holding it - and literally falls into your hands.  You quickly dash off with it before the harpies team up and attack you.";
	add "food" to invent of player;
	now Mana from Heaven is resolved;


Section 10 - Plains Scavenging (by Kaleem)

Plains Scavenging is a scavevent.
The sarea of Plains Scavenging is "Plains"

Instead of resolving a Plains Scavenging:
	let y be "food";
	let x be a random number from 1 to 12;
	if x is 1 or x is 2:
		now y is "food";
	if x is 3 or x is 4:
		now y is "water bottle";
	if x is 5:
		if "Survivalist" is listed in feats of player and a random chance of 1 in 3 succeeds:
			now y is "medkit";
		otherwise if "Three Bags Full" is listed in feats of the player and a random chance of 1 in 5 succeeds:
			now y is "medkit";
		otherwise:
			now y is "dirty water";
	if x is 6:
		now y is "dirty water";
	if x is 7:
		now y is "chips";
	if x is 8:
		now y is "soda";
	if x is 9:
		now y is "lucky horseshoe";
	if x is 10:
		if guy is banned or girl is banned or furry is banned:
			now y is "dirty water";
		otherwise:
			now y is "cow milk";
	if x is 11 or x is 12:
		now y is "tasty peach";
	if scavengetarget is "food" or scavengetarget is "bottle water" or scavengetarget is "dirty water" or scavengetarget is "soda":
		if scavengetarget matches the text y:
			let lol be 1;
		otherwise:
			if a random chance of 1 in 3 succeeds:
				if scavengetarget is "food":
					now y is "food";
				if scavengetarget is "water bottle":
					now y is "water bottle";
				if scavengetarget is "soda":
					now y is "soda";
	say "Roaming across the endless field of grass that makes up the plains you find your brushing a hand across your face as a strong and stray breeze passes along your [one of][bodytype of player][or][bodydesc of player][at random] body.  Striding across one giant grassy knoll you happen to notice [y] not too far off in the distance. Looking around to be sure that you're not seeing a mirage you quickly run over to [y] to capture it before something else can.";
	now x is a random number from 1 to 3;
	if x is 1:
		say "The item in question waits silently for you [one of]on the ground among some tall grass[or]with small bugs crawling over it[or]on top of a large cropping of bushes[or]within the branches of a lonesome tree[or]down in a large hole[or]resting in a dry puddle[or]underneath a pile of straw[or]down the side of a hill[or]right next to a wooden fence[at random].";
		add y to invent of the player;
	otherwise if x is 2:
		let difficulty be a random number from 6 to 16;
		if hardmode is true, increase difficulty by a random number between 0 and 3;
		say "Sighing in annoyance you notice that there are some mutants lording over a few items, the [y] among them.  Seeming peaceful enough folks, you head on over.  The one in charge looks up at you with a grunt of annoyance at the interruption.  From the looks of the creature, he should be ";
		if difficulty is less than 8:
			say "easy";
		otherwise if difficulty is less than 10:
			say "not too bad";
		otherwise if difficulty is less than 12:
			say "hard";
		otherwise if difficulty is less than 14:
			say "very difficult";
		otherwise:
			say "extremely difficult";
		say " to contend with.";
		let bonus be ( the charisma of the player plus level of the player minus 10 ) divided by 2;
		if hardmode is true and bonus > 10, now bonus is 10;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		increase dice by bonus;
		if difficulty is greater than dice:
			say "It would seem that negotiations have failed and the mutants now want you gone. By the looks on their faces, it would be wise for you to get lost... and fast!";
		otherwise :
			say "Coming to a mutually beneficial agreement, you find that the other mutants are willing to give up the item to you in trade for some information.  It would seem that there are still some decent [']people['] in the world after all.  You quickly add [y] to your satchel and then bob your head gratefully to the others before going about your way.";
			add y to invent of player;
	otherwise if x is 3:
		let difficulty be a random number from 6 to 16;
		if hardmode is true, increase difficulty by a random number between 0 and 3;
		say "It is perched precariously among some rubble of a collapsing building.  It looks ";
		if difficulty is less than 8:
			say "easy";
		otherwise if difficulty is less than 10:
			say "not too bad";
		otherwise if difficulty is less than 12:
			say "hard";
		otherwise if difficulty is less than 14:
			say "very difficult";
		otherwise:
			say "extremely difficult";
		say " to traverse.";
		if companion of player is bee girl:
			say "As you prepare to make the treacherous crossing through the rubble, Honey grabs your hand and pulls you back.  'Don't risk it.  I can get it for you, honeybunch.'  And with that, her translucent wings start to buzz, carrying her into the air enough to hover up to grab the [y] for you and return with a happy smile.";
			add y to invent of player;
		otherwise if companion of player is Exotic Bird:
			say "As you prepare to make the dangerous crossing, your bird pet calls out sharply and takes the air.  It swoops over to the [y], grabs it in its talons and returns it to you, saving you from climbing across the broken ruins.";
			add y to invent of player;
		otherwise if companion of player is Gryphoness:
			let gryphlets be libido of gryphoness / 4;
			say "As you prepare to make the dangerous crossing, Denise pulls you back and flaps her wings.  'I can get that for you easily, sweetie,' she says as she takes to the air.  The gryphoness flaps over to grab the [y] and brings it back to you, earning a warm hug[if gryphlets is 1] from you and your gryphlet child[otherwise if gryphlets is 2]from you and your gryphlet children[end if].";
			add y to invent of player;
		otherwise:
			let bonus be ( the dexterity of the player plus level of the player minus 10 ) divided by 2;
			if hardmode is true and bonus > 10, now bonus is 10;
			if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
			increase dice by bonus;
			if difficulty is greater than dice:
				say "You try your best to traverse the collapsing [one of]store[or]building[or]home[or]structure[at random], but end up setting off the collapse even further.  Rubble falls and dust flies up as a portion of a wall falls onto you.  Thankfully you're able to get yourself out from under it easily enough, but looking at the devastation, you find that the falling debris has crushed your intended prize as well.";
				decrease hp of player by 10;
			otherwise:
				say "You successfully manage to move across the collapsing [one of]store[or]building[or]home[or]structure[at random] and snag the [y], stuffing it into your backpack.";
				add y to invent of the player;


Scavevents ends here.