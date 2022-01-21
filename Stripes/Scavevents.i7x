Version 3 of Scavevents by Stripes begins here.
[version 3 - Scavevents 13 to 15 added ]
[version 3.1 - altered Free Milk and Gryphon Milkman event to add some flavor text for Dairy. Added new Abandoned Milk event - by cmacleod42]
[version 3.2 - special content for Satyr-shape player in the free drink event - by Wahn]
[version 3.3 - Gryphon Milkman, Free Milk and Abandoned Milk moved to Garrett.i7x file - Stripes ]

"Adds a batch of random events which can occur while scavenging around the city."

Table of GameEventIDs (continued)
Object	Name
Tight Fit	"Tight Fit"

Section 1 - Tight Fit

Tight Fit is a scavevent.
ResolveFunction of Tight Fit is "[ResolveEvent Tight Fit]".
Sarea of Tight Fit is "Allzones".
tightfitcount is a number that varies.

to say ResolveEvent Tight Fit:
	let y be "food";
	let x be a random number from 1 to 8;
	if x is 1 or x is 2:
		now y is "food";
	if x is 3 or x is 4:
		now y is "water bottle";
	if x is 5:
		if "Survivalist" is listed in feats of Player and a random chance of 1 in 3 succeeds:
			now y is "medkit";
		else if "Three Bags Full" is listed in feats of Player and a random chance of 1 in 5 succeeds:
			now y is "medkit";
		else:
			now y is "dirty water";
	if x is 6:
		now y is "dirty water";
	if x is 7:
		now y is "chips";
	if x is 8:
		now y is "soda";
	if scavengetarget is "food" or scavengetarget is "water bottle" or scavengetarget is "chips" or scavengetarget is "soda":
		if scavengetarget matches the text y:
			increase score by 0;
		else:
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
	say "Always on the lookout for more supplies, you spot a tight [one of]crawlspace[or]hole[or]drainage pipe[at random] that looks like it's recently been disturbed. Heading over to check it out, your suspicions were correct and you spot a [y] that someone has stashed at the far end of the dark tunnel.";
	if bee girl is listed in companionList of Player:
		say "Honey buzzes up to you and grabs your hand as you're pondering going in after it. 'I can get it for you, honeybunch.' And with that, the small bee girl folds in her wings and wriggles into the tunnel and back out, used to negotiating the narrow tunnels of the hive. She hands the [y] to you with a smile.";
		ItemGain y by 1;
	else if helper dog is listed in companionList of Player:
		say "Even as you're pondering your chances of getting in there to reach it, Hobo moves around you crawls into the tunnel. The clever dog comes back out with the [y] in his teeth, dropping it at your feet. Surprised at the dog's cleverness, you scritch his ears.";
		ItemGain y by 1;
	else if mouse girl is listed in companionList of Player:
		say "While pondering your chances of being able to squeeze in there to get it, Rachel gives you a peck on the cheek. 'Let me take care of this for you, sexy,' she says before scurrying into and out of the hole. She passes you the [y] with a grin. 'Just another reason why it's better to be a mousy like me.'";
		ItemGain y by 1;
	else if scalevalue of Player is 1:
		say "Your small [bodytype of Player] body slips easily into the narrow confines, letting you snag the [y] without difficulty.";
		ItemGain y by 1;
	else if scalevalue of Player is 3 or scalevalue of Player is 2:
		let difficulty be a random number from 6 to 16;
		if HardMode is true, increase difficulty by a random number between 0 and 3;
		say "The tunnel looks like it would be ";
		if difficulty < 8:
			say "easy";
		else if difficulty < 10:
			say "not too bad";
		else if difficulty < 12:
			say "hard";
		else if difficulty < 14:
			say "very difficult";
		else:
			say "extremely difficult";
		say " [if scalevalue of Player is 3]to squirm in and out of[else if scalevalue of Player is 2] for a normal person to squirm in and out of. Being smaller, you've got a better shot at making it[end if].";
		let bonus be ( Dexterity of Player minus 10 ) divided by 2;
		if HardMode is true and bonus > 10, now bonus is 10;
		if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
		if scalevalue of Player is 2, increase bonus by 5;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		increase dice by bonus;
		if difficulty > dice:
			say "You try your best to squeeze into the tunnel, but you aren't able make it more than a couple of feet before it becomes impossible to move forward. Rather than risk getting completely stuck and vulnerable to any lusty mutant who comes by, you work your way back out and head off.";
		else:
			say "It is a tight fit at a few spots, but you manage to wriggle your way in and out of the tunnel, snagging the [y] to add to your backpack's contents.";
			ItemGain y by 1;
	else if scalevalue of Player > 3:
		say "You look at the [y] sitting deep in that hidey-hole and know there's no way your [Body Size Adjective of Player] body is going to be able to go in after it. Too far to reach or snag with anything you have around, you have to leave it behind.";
	increase tightfitcount by 1;
	if tightfitcount is 5, now Tight Fit is resolved;


Section 2 - Protected Supplies

Table of GameEventIDs (continued)
Object	Name
Protected Supplies	"Protected Supplies"

Protected Supplies is a scavevent.
ResolveFunction of Protected Supplies is "[ResolveEvent Protected Supplies]".
Sarea of Protected Supplies is "Allzones".

to say ResolveEvent Protected Supplies:
	let y be "food";
	let x be a random number from 1 to 8;
	if x is 1 or x is 2:
		now y is "food";
	if x is 3 or x is 4:
		now y is "water bottle";
	if x is 5:
		if "Survivalist" is listed in feats of Player and a random chance of 1 in 3 succeeds:
			now y is "medkit";
		else if "Three Bags Full" is listed in feats of Player and a random chance of 1 in 5 succeeds:
			now y is "medkit";
		else:
			now y is "dirty water";
	if x is 6:
		now y is "dirty water";
	if x is 7:
		now y is "chips";
	if x is 8:
		now y is "soda";
	if scavengetarget is "food" or scavengetarget is "water bottle" or scavengetarget is "chips" or scavengetarget is "soda":
		if scavengetarget matches the text y:
			increase score by 0;
		else:
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
	now MonsterID is a random number from 1 to number of filled rows in the Table of Random Critters;
	let Q be a list of numbers;
	repeat with tt running from 1 to number of filled rows in Table of Random Critters:
		choose row tt from the Table of Random Critters;
		if there is a lev entry:
			if lev entry > level of Player and HardMode is false:
				next;
		else:
			next;
		if area entry matches the text battleground:
			if (DayCycle entry is 2 and daytimer is day) or (DayCycle entry is 1 and daytimer is night):
				next; [skips if day/night doesn't match]
			add tt to q;
			if "Like Attracts Like" is listed in the feats of Player and SkinName of Player is Name entry and a random chance of 1 in 2 succeeds:
				add tt to q;
			if "Like Attracts Like" is listed in the feats of Player and BodyName of Player is Name entry and a random chance of 1 in 2 succeeds:
				add tt to q;
			if "Like Attracts Like" is listed in the feats of Player and CockName of Player is Name entry and a random chance of 1 in 2 succeeds:
				add tt to q;
			if "Like Attracts Like" is listed in the feats of Player and FaceName of Player is Name entry and a random chance of 1 in 2 succeeds:
				add tt to q;
	if the number of entries in q is not 0:
		sort Q in random order;
		repeat with Z running through q:
			now MonsterID is Z;
			break;
		choose row MonsterID from the Table of Random Critters;
		if lev entry < level of Player and HardMode is true:
			HardModeboost;
		say "In your searching through the city, you come across some [y] and move to get it.";
		say "It's just laying there [one of]in a busted vending machine[or]on a counter[or]in a wheel barrow[or]discarded in the middle of a street[or]in a bag[or]in a backpack[or]in an abandoned car[or]beneath a pile of discarded clothes[or]a few feet away from the some rather messy cum stains[purely at random].";
		wait for any key;
		let scavfight be 0;
		say "But as you move to get it, a [Name entry] moves to cut you off, probably wanting to take it for themselves. ";
		if a random chance of 1 in 2 succeeds:
			say "The creature charges to attack before you have a chance to consider falling back.";
			let scavfight be 1;
		else:
			say "The creature remains watchful, but keeps you from moving towards your desired supplies.";
			say "     [bold type]Shall you attack to get them or leave?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Attack.";
			say "     ([link]N[as]n[end link]) - Leave.";
			if Player consents:
				LineBreak;
				let scavfight be 1;
		if scavfight is 1:
			now fightoutcome is 100;
			challenge [Name entry];
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "Managing to defeat the creature, you head over and claim the [y] as your prize, adding it to your supplies.";
				ItemGain y by 1;
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "Beaten by the creature, you are unable to stop it from taking the [y] as its prize.";
				decrease morale of Player by 1;
			else:
				say "Deciding the [y] is not worth fighting over further, you make your escape back into the city, leaving it for the [Name entry].";
				decrease morale of Player by 1;
		else:
			say "You back away slowly from the creature, leaving the prize to them. It's not much good to you if you're not alive to use it.";
			decrease morale of Player by 1;
	else:
		say "You come across the scenes of a scuffle between two creatures. There are tufts of fur, feathers and blood scattered about, as well as other bodily fluids. In the middle of this mess [one of]are the few crumbs left from whatever food they appear to have been fighting over[or]the empty soda can they appear to have been fighting over[or]the empty and crushed water bottle they appear to have been fighting over[at random]. Unsure if you're disappointed that you got here too late or pleased that you didn't need to fight one or both of these vicious creatures to get it, you move on.";


Section 3 - Dropped Handbag

Table of GameEventIDs (continued)
Object	Name
Dropped Handbag	"Dropped Handbag"

Dropped Handbag is a scavevent.
ResolveFunction of Dropped Handbag is "[ResolveEvent Dropped Handbag]".
Sarea of Dropped Handbag is "Allzones".

to say ResolveEvent Dropped Handbag:
	say "     Passing through the city, you find a dropped handbag with torn scraps of clothes around it. Given the messy stains on the torn dress, it seems whoever owned the bag met a rather sticky fate.";
	say "     [bold type] Do you want to search it? It doesn't seem like they'll be needing it anymore.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		let T be a random number between 1 and 100;
		if T < 41:
			say "     Searching the handbag, you toss aside the makeup, tissues, pens, safety pins, lipstick, mirror, and loads of other little things you don't really need in this crisis, though you do pocket the gum. You do manage a lucky find and dig out a small canister of pepperspray.";
			ItemGain pepperspray by 1;
			increase score by 5;
		else if T < 81:
			say "     Searching the handbag, you toss aside the makeup, tissues, pens, safety pins, lipstick, mirror, and loads of other little things you don't really need in this crisis, though you do pocket the gum. But aside from the bottle of water at the top of the bag, you don't get anything of use.";
			ItemGain water bottle by 1;
			increase score by 1;
		else if T < 91:
			say "     Searching the handbag, you toss aside the makeup, tissues, pens, safety pins, lipstick, mirror, and loads of other little things you don't really need in this crisis, though you do pocket the gum. But that's about all you find of use in the dropped handbag.";
			increase score by 1;
		else:
			say "     You open the bag and put your hand in to rummage through its contents, but are met with a sticky surprise. Pulling it out, you find your hand covered in wet, sticky cum. You can feel the tingles from the infected cum on your hand. Someone, possibly the bag's original owner, filled it with their cum and left it for someone like you to find.";
			LineBreak;
			sort Table of Random Critters in random order;
			repeat with X running from 1 to number of filled rows in Table of Random Critters:
				choose row X from the Table of Random Critters;
				if area entry matches the text battleground and ( there is no non-infectious in row MonsterID of Table of Random Critters or non-infectious entry is false ):
					now MonsterID is X;
					break;
			choose row MonsterID from the Table of Random Critters;
			infect;
			SanLoss 5;
	else:
		LineBreak;
		say "     Deciding not to bother, you continue on your way.";
	now Dropped Handbag is resolved;


Section 4 - Dented Bike (by Wahn)

Table of GameEventIDs (continued)
Object	Name
Dented Bike	"Dented Bike"

Dented Bike is a scavevent.
ResolveFunction of Dented Bike is "[ResolveEvent Dented Bike]".
Sarea of Dented Bike is "Allzones".
dentedbikecount is a number that varies.

to say ResolveEvent Dented Bike:
	say "You find a dented bicycle, lying abandoned on the road. The shreds of its former owner's clothing are hanging from it and a few small tufts of fur are scattered around, leaving you to wonder what happened to him or her.";
	let difficulty be a random number from 8 to 16;
	if HardMode is true, increase difficulty by a random number between 0 and 2;
	let bonus be ( perception of Player + level of Player minus 10 ) divided by 2;
	if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
	if bonus + dice > difficulty:
		let t be a random number between 1 and 3;
		if t is 1:
			say "You spot something under one of the shredded rags - it's an unopened bottle of water in a holder on the bike's frame! ";
			ItemGain water bottle by 1;
		else if t is 2:
			say "You see a water bottle poke out from under one of the wheels. Its sports cap seems to have popped off during whatever happened here and part of the contents have run out. You look around a bit until you find it, then wipe the cap off as good as you can and put it back on the bottle. ";
			ItemGain dirty water by 1;
		else:
			say "A small bulge in one piece of the shredded clothing attracts your attention. It's the pocket of a jacket, revealing a tasty chocolate bar. ";
			ItemGain chips by 1;
	say "Looking around, you find a few more tufts of fur and some messy splatters of cum leading away, but that's it.";
	increase dentedbikecount by 1;
	if dentedbikecount is 3, now Dented Bike is resolved;


Section 5 - Looted Supermarket (by Wahn)

Table of GameEventIDs (continued)
Object	Name
Looted Supermarket	"Looted Supermarket"

Looted Supermarket is a scavevent.
ResolveFunction of Looted Supermarket is "[ResolveEvent Looted Supermarket]".
Sarea of Looted Supermarket is "Allzones".
supermarketcount is a number that varies.

to say ResolveEvent Looted Supermarket:
	say "You decide to check out a small supermarket on your search for foodstuffs. Sadly, lots of other people had the same idea when this whole chaos started. The shelves are completely empty, with even absolutely useless stuff during an apocalypse looted to the last item.";
	let t be a random number between 1 and 4;
	if t is 1:
		let difficulty be a random number from 6 to 16;
		if HardMode is true, increase difficulty by a random number between 0 and 2;
		let bonus be ( perception of Player + level of Player minus 10 ) divided by 2;
		if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		if bonus + dice > difficulty:
			say "As you turn to head out of the store, you spot something interesting from the corner of your eye. There's a tin can that seems to have fallen down and rolled under a shelf - you pick it up and see it's [one of]dog[or]cat[at random] food. Not your first choice for a meal, but hey - it's in a sealed container so it'll be infection free!";
		else:
			say "You continue looking elsewhere for supplies, but aren't able to find any on this trip.";
	else if t is 2:
		let difficulty be 12;
		if HardMode is true, increase difficulty by a random number between 0 and 2;
		let bonus be ( intelligence of Player + level of Player minus 10 ) divided by 2;
		if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		if bonus + dice > difficulty:
			say "You get an idea and check the checkout section. The cashiers are people with needs too, so... you find an unopened soda bottle under the register.";
			ItemGain soda by 1;
		else:
			say "You wander elsewhere to look for supplies, but aren't able to find any on this trip.";
	else if t is 3:
		let difficulty be 12;
		if HardMode is true, increase difficulty by a random number between 0 and 2;
		let bonus be ( intelligence of Player + level of Player minus 10 ) divided by 2;
		if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		if bonus + dice > difficulty:
			say "You get an idea and check the checkout section. The cashiers are people with needs too, so... you find an energy bar under the register.";
			ItemGain food by 1;
		else:
			say "You wander elsewhere to look for supplies, but aren't able to find any on this trip.";
	else if t is 4:
		let x be 0;
		let difficulty be a random number from 10 to 18;
		if HardMode is true, increase difficulty by a random number between 0 and 2;
		let bonus be ( strength of Player + level of Player minus 10 ) divided by 2;
		if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
		if crowbar is owned:
			increase bonus by 3;
			let x be 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		if bonus + dice > difficulty:
			say "You break open the door to a small room in the back[if x is 1] with the help of your crowbar[end if]. Aww - it's just the employees lockers and some cleaning supplies. At least one of them had a bag of chips in his locker.";
			ItemGain chips by 1;
		else:
			say "You wander elsewhere to look for supplies, but aren't able to find any on this trip.";
	increase supermarketcount by 1;
	if supermarketcount is 3, now Looted Supermarket is resolved;


Section 6 - Abandoned Cars (by Wahn)

Table of GameEventIDs (continued)
Object	Name
Abandoned Cars	"Abandoned Cars"

Abandoned Cars is a scavevent.
ResolveFunction of Abandoned Cars is "[ResolveEvent Abandoned Cars]".
Sarea of Abandoned Cars is "Allzones".

to say ResolveEvent Abandoned Cars:
	say "You check out a few abandoned cars - looks like they were in a mid-size accident when the infection hit. They've all been looted - or just shredded inside and out by their changing owners. The trunk of one of them is still closed, and you soon learn why - it's been warped by the impact of another car and won't open.";
	let x be 0;
	let difficulty be a random number from 8 to 15;
	if HardMode is true, increase difficulty by a random number between 0 and 2;
	let bonus be ( strength of Player minus 10 ) divided by 2;
	if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
	if crowbar is owned:
		increase bonus by 3;
		let x be 1;
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
	if bonus + dice > difficulty:
		say "No problem - you grab the lid and wrench it open with [if x is 1]your crowbar[else]your superior strength[end if]. Inside you find several shopping bags, filled with a smelly mess of mostly rotting food. At least you manage to salvage a can of [one of]tomato soup[or]baked beans[or]spaghetti[or]pineapple[at random] and a soda bottle from it.";
		ItemGain food by 1;
		ItemGain soda by 1;
	else:
		say "Try as you might, the trunk of this car is too damaged for you to break into it. You'll have to try looking elsewhere.";
	now Abandoned Cars is resolved;


Section 7 - Gryphon Milkman (by Wahn)

[Moved to Garrett.i7x file]


Section 8 - Free Milk (by Wahn)

[Moved to Garrett.i7x file]


Section 9 - Manna from Heaven (by Wahn)

Table of GameEventIDs (continued)
Object	Name
Manna from Heaven	"Manna from Heaven"

Manna from Heaven is a scavevent.
ResolveFunction of Manna from Heaven is "[ResolveEvent Manna from Heaven]".
Sarea of Manna from Heaven is "Outside".

to say ResolveEvent Manna from Heaven:
	project Figure of Harpy_icon;
	say "     Moving through the city, you suddenly hear cawing and shouting from somewhere above. It's a harpy flying in your direction, clutching something in her claws - closely followed by another who keeps insulting her. Sounds like they're having a disagreement of the ownership of the can of peaches the first one has in her talons. Before long, that dissolves into a furious mid-flight clawing match during which the fought-over can is knocked out of the claw holding it - and literally falls into your hands. You quickly dash off with it before the harpies team up and attack you.";
	ItemGain food by 1;
	now Manna from Heaven is resolved;


Section 10 - Plains Scavenging (by Kaleem)

Table of GameEventIDs (continued)
Object	Name
Plains Scavenging	"Plains Scavenging"

Plains Scavenging is a scavevent.
ResolveFunction of Plains Scavenging is "[ResolveEvent Plains Scavenging]".
Sarea of Plains Scavenging is "Plains"

to say ResolveEvent Plains Scavenging:
	let y be "food";
	let x be a random number from 1 to 12;
	if x is 1 or x is 2:
		now y is "food";
	if x is 3 or x is 4:
		now y is "water bottle";
	if x is 5:
		if "Survivalist" is listed in feats of Player and a random chance of 1 in 3 succeeds:
			now y is "medkit";
		else if "Three Bags Full" is listed in feats of Player and a random chance of 1 in 5 succeeds:
			now y is "medkit";
		else:
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
		if MaleList is banned or FemaleList is banned or FurryList is banned:
			now y is "dirty water";
		else:
			now y is "cow milk";
	if x is 11 or x is 12:
		now y is "tasty peach";
	if scavengetarget is "food" or scavengetarget is "water bottle" or scavengetarget is "dirty water" or scavengetarget is "soda":
		if scavengetarget matches the text y:
			increase score by 0;
		else:
			if a random chance of 1 in 3 succeeds:
				if scavengetarget is "food":
					now y is "food";
				if scavengetarget is "water bottle":
					now y is "water bottle";
				if scavengetarget is "soda":
					now y is "soda";
	say "Roaming across the endless field of grass that makes up the plains you find yourself brushing a hand across your face as a strong and stray breeze passes along your [one of][bodytype of Player][or][bodydesc of Player][at random] body. Striding across one giant grassy knoll you happen to notice [y] not too far off in the distance. Looking around to be sure that you're not seeing a mirage, you quickly run over to [y] to capture it before something else can.";
	now x is a random number from 1 to 3;
	if x is 1:
		say "The item in question waits silently for you [one of]on the ground among some tall grass[or]with small bugs crawling over it[or]on top of a large cropping of bushes[or]within the branches of a lonesome tree[or]down in a large hole[or]resting in a dry puddle[or]underneath a pile of straw[or]down the side of a hill[or]right next to a wooden fence[at random].";
		ItemGain y by 1;
	else if x is 2:
		let difficulty be a random number from 6 to 16;
		if HardMode is true, increase difficulty by a random number between 0 and 3;
		say "Sighing in annoyance you notice that there are some mutants lording over a few items, the [y] among them. Seeming peaceful enough folks, you head on over. The one in charge looks up at you with a grunt of annoyance at the interruption. From the looks of the creature, he should be ";
		if difficulty < 8:
			say "easy";
		else if difficulty < 10:
			say "not too bad";
		else if difficulty < 12:
			say "hard";
		else if difficulty < 14:
			say "very difficult";
		else:
			say "extremely difficult";
		say " to contend with.";
		let petbonus be false;
		let bonus be ( Charisma of Player plus Level of Player minus 10 ) divided by 2;
		if equinoid warrior is listed in companionList of Player or felinoid companion is listed in companionList of Player or demon brute is listed in companionList of Player or royal tiger is listed in companionList of Player:
			increase bonus by 2;
			now petbonus is true;
		if HardMode is true and bonus > 10, now bonus is 10;
		if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		increase dice by bonus;
		if difficulty > dice:
			say "It would seem that negotiations have failed and the mutants now want you gone. By the looks on their faces, it would be wise for you to get lost... and fast!";
		else:
			say "Coming to a mutually beneficial agreement, you find that the other mutants are willing to give up the item to you in trade for some information. It would seem that there are still some decent [']people['] in the world after all[if petbonus is true]. Though having an intimidating guard by your side may have helped a little[end if]. You quickly add [y] to your satchel and then bob your head gratefully to the others before going about your way.";
			ItemGain y by 1;
	else if x is 3:
		let difficulty be a random number from 6 to 16;
		if HardMode is true, increase difficulty by a random number between 0 and 3;
		say "It is perched precariously among some rubble of a collapsing building. It looks ";
		if difficulty < 8:
			say "easy";
		else if difficulty < 10:
			say "not too bad";
		else if difficulty < 12:
			say "hard";
		else if difficulty < 14:
			say "very difficult";
		else:
			say "extremely difficult";
		say " to traverse.";
		if bee girl is listed in companionList of Player:
			say "As you prepare to make the treacherous crossing through the rubble, Honey grabs your hand and pulls you back. 'Don't risk it. I can get it for you, honeybunch.' And with that, her translucent wings start to buzz, carrying her into the air enough to hover up to grab the [y] for you and return with a happy smile.";
			ItemGain y by 1;
		else if Exotic Bird is listed in companionList of Player:
			say "As you prepare to make the dangerous crossing, your bird pet calls out sharply and takes the air. It swoops over to the [y], grabs it in its talons and returns it to you, saving you from climbing across the broken ruins.";
			ItemGain y by 1;
		else if Gryphoness is listed in companionList of Player:
			let gryphlets be Libido of gryphoness / 4;
			say "As you prepare to make the dangerous crossing, Denise pulls you back and flaps her wings. 'I can get that for you easily, sweetie,' she says as she takes to the air. The gryphoness flaps over to grab the [y] and brings it back to you, earning a warm hug[if gryphlets is 1] from you and your gryphlet child[else if gryphlets is 2] from you and your gryphlet children[end if].";
			ItemGain y by 1;
		else:
			let bonus be ( Dexterity of Player plus Level of Player minus 10 ) divided by 2;
			if HardMode is true and bonus > 10, now bonus is 10;
			if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
			increase dice by bonus;
			if difficulty > dice:
				say "You try your best to traverse the collapsing [one of]store[or]building[or]home[or]structure[at random], but end up setting off the collapse even further. Rubble falls and dust flies up as a portion of a wall falls onto you. Thankfully you're able to get yourself out from under it easily enough, but looking at the devastation, you find that the falling debris has crushed your intended prize as well.";
				decrease HP of Player by 10;
			else:
				say "You successfully manage to move across the collapsing [one of]store[or]building[or]home[or]structure[at random] and snag the [y], stuffing it into your backpack.";
				ItemGain y by 1;


Section 11 - Garden Veggies

Table of GameEventIDs (continued)
Object	Name
Garden Veggies	"Garden Veggies"

Garden Veggies is a scavevent.
ResolveFunction of Garden Veggies is "[ResolveEvent Garden Veggies]".
Sarea of Garden Veggies is "Outside".
veggiegardenfight is a number that varies.
gardenveg is a number that varies.
lastgardenveg is a number that varies. lastgardenveg is usually 255.
when play begins:
	add Garden Veggies to BadSpots of FurryList;


to say ResolveEvent Garden Veggies:
	if FemaleList is banned and MaleList is banned:
		say "     During your search for more supplies, you find a small backyard garden, but the plants are shriveled and dying in the parched soil. Between the heat wave and the dry weather, the plants are withering away. You gather up what feeble veggies you can, having to strip the garden bare to get even get enough for a single meal.";
		ItemGain food by 1;
		now Garden Veggies is resolved;
	else if lastgardenveg - turns < 8:
		say "     Finding yourself back in the neighborhood where you found the small garden, you decide to check on it again, but none of the produce has ripened yet. They seem to be growing rather quickly, but you'll have to wait a little longer.";
	else if gardenveg is 0:
		say "     As you're searching around the area for supplies, you find a small garden in the back yard of a home. It's only got a dozen or so plants, but they're surprisingly still alive despite the heat wave and dry weather. And even better than that, they're fruiting. Only a little of the produce is ripe, but you snag what's ready to be picked. You try to remember to return here again once the rest of the veggies have had time to mature. Between the tomatoes, beans and peas, you should have enough for a meal. It'll certainly be more nutritious than some of your meals lately.";
		ItemGain food by 1;
		now lastgardenveg is turns;
	else if gardenveg is 1:
		say "     Finding yourself back in the neighborhood where you found that small garden, you decide to check on it again. You are very pleased to see that more of the vegetables are ready to be picked. They seem to be growing unusually quickly, but certainly look normal and safe enough to eat. You pick some more of the produce, tomatoes and beans mostly this time. It's enough for another vegetarian meal to keep you fed for another day.";
		ItemGain food by 1;
		now lastgardenveg is turns;
	else if gardenveg is 2:
		say "     Finding yourself back in the neighborhood where you found that small garden, you decide to check on it again. Since your last visit, more vegetables have ripened and are ready to be picked. Very thankful for having found these plants, you gather up another batch of veggies, taking even more this time. You dig up several of the carrots, having become large enough to pick, another couple of tomatoes and more beans and peas. With so much of the produce mature and ready, you get enough for two meals this time.";
		ItemGain food by 2;
		now lastgardenveg is turns;
	else if gardenveg is 3:
		say "     Finding yourself back in the neighborhood where you found that small garden, you decide to make a quick detour to go check on it. Finding more ripe veggies, you prepare to pick more supplies, but are interrupted by a loud bleat as the back door of the home behind you opens and an angry sheep bursts forth. 'So you're the thief who's been stealing from my garden! Oh, you are so fucked now,' the sheep says, launching itself at you.";
		now veggiegardenfight is 1;
		if MaleList is banned:
			challenge "Ewe";
		else:
			challenge "Ram";
		now veggiegardenfight is 0;
		if fightoutcome >= 10 and fightoutcome <= 19:			[player victory]
			say "     Having beaten the [if MaleList is banned]ewe[else]ram[end if], you are startled as a loud bang goes off and a chunk of the fence beside you is blown to pieces. Another sheep, a [if MaleList is banned]ram[else]ewe[end if] this time, comes out wielding a shotgun. 'Now you back away from my [if MaleList is banned]husband... er... wife[else]wife... er... husband[end if]... right now, or I won't miss next time.' You don't need to be told twice and flee the garden. You'll have to look elsewhere for food from now on.";
		else if fightoutcome >= 20 and fightoutcome <= 29:	[player loss]
			say "     As you struggle to get back up after having been beaten by the sheep, you are startled as another sheep, this time a [if MaleList is banned]ram[else]ewe[end if] comes out wielding a shotgun. Seeing the gun, you turn and flee before [if MaleList is banned]her[else]his[end if] angry mate can shoot you. You'd best not return there... for a whole bunch of reasons.";
		else if fightoutcome >= 30:					[player fled]
			say "     As you're making a break for it, you catch a glimpse of another sheep exiting the home, this time with a shotgun. As you push through the back gate, it goes off. 'You stay away, you veggie thief, or we'll fill you full of lead next time.'";
		now Garden Veggies is resolved;


Section 12 - Free Drink

Table of GameEventIDs (continued)
Object	Name
Free Drink	"Free Drink"

Free Drink is a scavevent.
ResolveFunction of Free Drink is "[ResolveEvent Free Drink]".
Sarea of Free Drink is "Campus".
when play begins:
	add Free Drink to BadSpots of MaleList;

to say ResolveEvent Free Drink:
	project the figure of Talov_Kerr_Barrel_icon;
	say "     As you're searching around the campus for some supplies, you spot a team of Satyr's rolling a heavy cask towards one of the dorm buildings. They seem in rather good spirits, if a little tired, and wave at you in a friendly manner. Deciding to risk it, you approach cautiously. They tell you they're bringing the wine in for an awesome party and are about to grab a quick drink for themselves before they get back to work. You're offered a swig as well.";
	say "     [bold type]Would you like to take a drink to quench your thirst?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		decrease thirst of Player by 10;
		if thirst of Player < 0, now thirst of Player is 0;
		SanLoss 5;
		infect "Satyr";
		infect "Satyr";
		if winefound is 1:
			say "     You do manage to save some of the wine in a vial to give to Nermine.";
			now winefound is 2;
		if BodyName of Player is "Satyr" and player is pure and player is male:
			say "     Taking the drink, you swallow down the rich, flavorful wine. It quenches some of your thirst and gets you in a rather nice mood, waking the need to party and enjoy yourself in you. And that's not the only thing it wakes - your cock starts to fill out a bit as you imagine drunken revels with some very shapely partners. Laughing at your obvious arousal, one of the satyrs slaps you on the back and asks 'Hey brother, wanna come with us to the Phi Alpha Nu frat-house? We're the surprise guests and it'll be... legendary!' He gives you a salacious look as he does so, eyes wandering down to your crotch, then winks meaningfully.";
			LineBreak;
			say "     Do you go with the satyrs?";
			if Player consents:
				LineBreak;
				say "     [Satyr Frat Party]"; [Further content in Wahn/Satyr Frat.i7x]
			else:
				LineBreak;
				say "     You shake your head and tell the two of them that you can't come with [']em right now. The satyr who invited you looks a bit deflated at you declining his offer and tries to come up with a convincing reason to join them anyways - until he's interrupted by his friend. 'Let's get going Kerr, he doesn't want to come. I wanna go on and party with some hunky fratboys...' With a sigh, Kerr the satyr gives you a little wave, then gets back to rolling the cask along with his partner. Before they get too far away to understand it over the rumbling noise of the wooden barrel on the stone floor, you can hear him wonder 'Why would anyone not go to a party? Some people are strange...'";
		else:
			say "     Taking the drink, you swallow down the rich, flavorful wine. It quenches some of your thirst, but leaves you feeling a little strange as well. They laugh and slap you on the back after taking big drinks of their own. Their break done, one of the satyrs wipes his mouth with the back of his hand and says, 'Let's get going Kerr, we got a frat party to get to!' Corking the large cask back up, the second satyr gives you a friendly wave and they resume rolling it down the sidewalk.";
			LineBreak;
			say "     Looking at the jolly satyrs moving on, something inside makes you want to join them, find out what party they're aiming for. Do you go after them and try to score an invitation for the fun?";
			if Player consents:
				LineBreak;
				say "     In a quick sprint, you catch up to the satyrs and ask where they're going and if you can come along. One of the satyrs replies, 'Sure, the more the merrier. It's the Phi Alpha Nu frat-house that we're going for. As surprise guests, hah. It'll be legendary!' He gives you a salacious look as he does so, eyes wandering down to your crotch, then winks meaningfully.";
				say "     [Satyr Frat Party]"; [Further content in Wahn/Satyr Frat.i7x]
			else:
				LineBreak;
				say "     Nah, that'll just be the wine talking. Shaking the idea off, you look around and turn to other matters.";
			decrease thirst of Player by 10;
			if thirst of Player < 0, now thirst of Player is 0;
			SanLoss 5;
			infect "Satyr";
			infect "Satyr";
			if winefound is 1:
				say "     You do manage to save some of the wine in a vial to give to Nermine.";
				now winefound is 2;
	else:
		LineBreak;
		say "     Deciding it'd be best not to drink, they shrug. 'Your loss,' the laugh and take hefty drinks before getting back to work.";
	now Free Drink is resolved;

Section 13 - Liefeld's Disease

Table of GameEventIDs (continued)
Object	Name
DbLD	"DbLD"

DbLD is a scavevent.
ResolveFunction of DbLD is "[ResolveEvent DbLD]".
Sarea of DbLD is "Allzones".

to say ResolveEvent DbLD:
	say "     While searching through the city for supplies, you come across the corpse of an excessively muscled man with a grizzled face. It seems that some creature took rather violent exception to him from the signs of destruction all around. The nearby walls are littered with bullet holes, though you don't spot any blood from his whatever his enemy was. Whatever strange infection this unlucky person had, it really left him unable to fight. Given his lack of actual wrists and ankles, it's clear he'd have trouble standing and fighting, let alone supporting his own top-heavy weight on his small, misshapen feet. Given the hundreds of bullet holes, it seems he had trouble aiming that giant gun of his (now shattered into pieces) thanks to his perpetually squinting eyes.";
	say "     And while it doesn't seem to have done its previous owner much good, you unbuckle the single, oversized shoulderpad from his malproportioned body and take it with you. You know it's not really going to help much, but it's better than nothing and isn't doing that guy any good now.";
	ItemGain shoulder pad by 1;
	increase score by 5;
	now DbLD is resolved;




Section 14 - Hospital Scavenging

Table of GameEventIDs (continued)
Object	Name
Patient Rooms	"Patient Rooms"

Patient Rooms is a scavevent.
ResolveFunction of Patient Rooms is "[ResolveEvent Patient Rooms]".
Sarea of Patient Rooms is "Hospital".
patrooms is a number that varies.

to say ResolveEvent Patient Rooms:
	let y be "food";
	let x be a random number from 1 to 12;
	if x is 1 or x is 2:
		now y is "food";
	if x is 3 or x is 4:
		now y is "water bottle";
	if x is 5:
		if "Survivalist" is listed in feats of Player and a random chance of 1 in 3 succeeds:
			now y is "medkit";
		else if "Three Bags Full" is listed in feats of Player and a random chance of 1 in 5 succeeds:
			now y is "medkit";
		else:
			now y is "dirty water";
	if x is 6:
		now y is "dirty water";
	if x is 7:
		now y is "chips";
	if x is 8:
		now y is "soda";
	if x is 9:
		if a random chance of 2 in 3 succeeds:
			now y is "medkit";
		else:
			now y is "healing booster";
	if x is 10:
		now y is "healing booster";
	if x is 11:
		now y is "libido suppressant";
	if x is 12:
		if a random chance of 1 in 2 succeeds:
			now y is "fertile pill";
		else:
			now y is "birth control pill";
	if scavengetarget is "food" or scavengetarget is "water bottle" or scavengetarget is "chips" or scavengetarget is "soda":
		if scavengetarget matches the text y:
			increase score by 0;
		else:
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
	if patrooms is 0 and a random chance of 1 in 3 succeeds:	[blocked room]
		say "     Deciding to search through some of the hospital rooms for items left behind during the outbreak, you go through several rooms and find nothing before reaching one that's been barricaded from the inside. Checking carefully, it doesn't appear that anyone is inside there now. A little puzzled, you risk asking if anyone's there, but get no response. But peering through the window, you also see a bottle of water sitting out on the small dresser inside.";
		let bonus be ( Strength of Player plus Level of Player minus 10 ) divided by 2;
		if HardMode is true and bonus > 10, now bonus is 10;
		if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 14: ";
		increase dice by bonus;
		if dice >= 14:
			say "     Pushing at the door, you are able to push open the door a little, letting you shove aside part of the makeshift barricade. With that out of the way, you gain entrance to the room and take the bottle of water. You also take a quick look around for the occupant. You find their clothes scattered in the small bathroom and covered in blue goo. The toilet and a good portion of the floor is similarly covered in this sticky goo. You grab a sample of that as well.";
			ItemGain water bottle by 1;
			ItemGain glob of goo by 1;
			increase score by 5;
			now patrooms is 1;
		else:
			say "     Pushing at the door, you find it too well blocked and you're unable to get inside. It's unclear what happened to its occupant, but you'll have to move on. You try more rooms, but find nothing of potential use in them.";
	else:		[normal scavenging]
		say "     Deciding to search through some of the hospital rooms for items left behind during the outbreak, you get lucky and find a [y] [one of]sitting on the bed[or]having fallen on the floor[or]forgotten in a closet[or]half-hidden under a hospital gown (and thankfully unsticky)[or]tucked in a drawer[or]sitting on the nightstand by the bed[purely at random].";
		ItemGain y by 1;
		if a random chance of 1 in 3 succeeds:
			say "     But as you turn to leave, you find that your activity's attracted the attention of one of the creatures roaming the hospital and it now blocks your way out of the patient's room. You'll have to fight to get past them.";
			fight;


Section 15 - Shattered House

Table of GameEventIDs (continued)
Object	Name
Shattered House	"Shattered House"

Shattered House is a scavevent.
ResolveFunction of Shattered House is "[ResolveEvent Shattered House]".
Sarea of Shattered House is "Allzones".

to say ResolveEvent Shattered House:
	say "     As you travel along, you are forced to cut down a side street to avoid a small cluster of creatures lustfully fucking in the road up ahead. Down this street, you pass a few houses, including one that seems to have been partially blown out from the inside. Given the lack of fire damage and excessive amounts of sticky fluids, you'd guess that whoever once lived in there became very large very quickly";
	let x be a random number from 1 to 5;
	if x is 1 or x is 2:
		say ". Taking a quick look inside, you spot the partially destroyed kitchen. While large sections of it have been crushed, you do get lucky and find some food you can recover and take with you.";
		ItemGain food by 1;
	else if x is 3:
		say ".";
		let bonus be ( Strength of Player plus Level of Player minus 10 ) divided by 2;
		if HardMode is true and bonus > 10, now bonus is 10;
		if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 14:[line break]";
		increase dice by bonus;
		if dice >= 14:
			say "     Taking a quick look inside, you manage to spot some food wrappers and empty water bottles in one corner where some debris has fallen down. Seeing more underneath, you manage to lift up the rubble with some effort and retrieving a single water bottle that's not been crushed before an ominous creaking sound ends you back before more of the house collapses.";
			ItemGain water bottle by 1;
		else:
			say "     Taking a quick look inside, you manage to spot some food wrappers and empty water bottles in one corner where some debris has fallen down. Seeing more underneath, you try to lift up the rubble to search for more, but it's too heavy to move before an ominous creaking sound ends you back before more of the house collapses.";
	else if x is 4:
		say ".";
		let bonus be ( Dexterity of Player plus Level of Player minus 10 ) divided by 2;
		if HardMode is true and bonus > 10, now bonus is 10;
		if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 16:[line break]";
		increase dice by bonus;
		if dice >= 16:
			say "     Taking a quick look inside, you luckily feel the kitchen floor starting to give way out from under you and manage to back away before the middle of the kitchen floor caves in and that section of the damaged house collapses into the basement. You move on after that unsuccessful venture and remind yourself to be more careful inside damaged buildings from now on.";
		else:
			let dam be ( ( HP of Player + maxHP of Player ) ) / 7;
			decrease HP of Player by dam;
			say "     Taking a quick look inside, you yell in surprise as the kitchen floor collapses out from under you, dropping you into the basement as more of the room falls in around you. You avoid a close call as the appliances comes tumbling in. Once the dust settles, you grab a few items that fell out of the cubbard and climb out before the whole place collapses on top of you, much more wary about damaged buildings now.";
			ItemGain food by 1;
	else if x is 5:
		say ".";
		let bonus be ( Perception of Player plus Level of Player minus 10 ) divided by 2;
		if HardMode is true and bonus > 10, now bonus is 10;
		if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 14:[line break]";
		increase dice by bonus;
		if dice >= 14:
			say "     As you're searching through the rubble, you luckily notice some creaking and some plaster dust falling out of the corner of your eye. You get out quickly, avoiding the sudden collapse of the house. Scared but safe, you leave the place behind before the noise can attract anything dangerous.";
		else:
			let dam be ( ( HP of Player + maxHP of Player ) ) / 7;
			decrease HP of Player by dam;
			say "     As you're searching through the rubble, you are too focused on looking for something you can take that you don't notice the growing groans of the building until it's too late and it starts collapsing around you. Debris falls down atop you, hurting you quite a bit and pinning you beneath it. You eventually dig yourself out, but you're left tired and bruised.";
			if a random chance of 2 in 3 succeeds:
				say "     As you're pulling yourself out, you see that the collapse has also attracted one of the local creatures, eager to take advantage of the situation.";
				fight;
	now Shattered House is resolved;

Section 16 - Abandoned Milk (by cmacleod42)

[Moved to Garrett.i7x file]

Section 17 - Scattered Clothing

RandomItemPick is a number that varies.

Table of GameEventIDs (continued)
Object	Name
Scattered Clothing	"Scattered Clothing"

Scattered Clothing is a scavevent.
ResolveFunction of Scattered Clothing is "[ResolveEvent Scattered Clothing]".
Sarea of Scattered Clothing is "Allzones".

to say ResolveEvent Scattered Clothing:
	say "     Searching [one of]a small store[or]a convenience store[or]a gas station[or]a motel[or]a coffee shop[or]a newsstand[or]a taco truck[at random], you find that another scavenger has already been there before you. Poking around a little on the odd chance that something may have been missed, it sadly turns out that the place has been quite thoroughly ransacked. You're well out of luck for any food or drink to be found here. But then, just as you are about to give up on the location, your gaze falls upon an article of clothing that (for once) isn't torn, shredded, encrusted in dried cum or stained in some other horrible way. Given how hard it is to observe even the most basic levels of cleanliness in a situation like the nanite apocalypse, clean secondhand clothing is actually a quite lucky find, so you quickly add it to your pack.";
	LineBreak;
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1: [Chest Item]
			say "[GiveRandomChestItem]";
		-- 2: [Waist Item]
			say "[GiveRandomWaistItem]";
		-- 3: [Crotch Item]
			say "[GiveRandomCrotchItem]";
		-- 4: [Feet Item]
			say "[GiveRandomFeetItem]";

WaistItemsList is a list of objects that varies.[@Tag:NotSaved]
the WaistItemsList is {ripped black jeans, black jeans, black skinny jeans, scarlet hot pants, gray slacks, green camo pants, black jogging pants, beige bermuda shorts, black miniskirt, light-blue pencil skirt, gypsy floral skirt}.

to say GiveRandomWaistItem:
	now RandomItemPick is a random number from 1 to the number of entries in WaistItemsList;
	ItemGain entry RandomItemPick of WaistItemsList by 1;

ChestItemsList is a list of objects that varies.[@Tag:NotSaved]
the ChestItemsList is {black t-shirt, white t-shirt, maroon pullover, camo shirt, black sleeveless shirt, mesh shirt}.

to say GiveRandomChestItem:
	now RandomItemPick is a random number from 1 to the number of entries in ChestItemsList;
	ItemGain entry RandomItemPick of ChestItemsList by 1;

FeetItemsList is a list of objects that varies.[@Tag:NotSaved]
the FeetItemsList is {black combat boots, brown loafers, brown leather sandals, bright-red pumps, black stiletto heels, blue running shoes, dark-brown cowboy boots}.

to say GiveRandomFeetItem:
	now RandomItemPick is a random number from 1 to the number of entries in FeetItemsList;
	ItemGain entry RandomItemPick of FeetItemsList by 1;

CrotchItemsList is a list of objects that varies.[@Tag:NotSaved]
the CrotchItemsList is {ragged brown loincloth, simple white loincloth, black boxer briefs, white briefs, orange jockstrap, mesh briefs, pink panties}.

to say GiveRandomCrotchItem:
	now RandomItemPick is a random number from 1 to the number of entries in CrotchItemsList;
	ItemGain entry RandomItemPick of CrotchItemsList by 1;

Scavevents ends here.
