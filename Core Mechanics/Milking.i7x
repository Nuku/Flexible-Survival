Version 1 of Milking by Core Mechanics begins here.
[ Version 1 - exported from the story.ni and put into its own file]

Milking is an action applying to nothing.
understand "milkme" as milking.
understand "milk me" as milking.
understand "milk myself" as milking.
lastmilking is a number that varies. lastmilking is usually 500.

Table of Game Objects (continued)
name	desc	weight	object
"panther milk"	"The thick, luscious milk of one of the panther taurs."	1	panther milk
"chocolate milk"	"The creamy milk with a white chocolate taste."	1	chocolate milk
"vixen milk"	"A thin milk with a faintly medicinal taste, like the silvery vixens it is from."	1	vixen milk
"sweet milk"	"A creamy, sweet milk with a faintly honey-like taste."	1	sweet milk
"macho milk"	"A creamy, energizing milk with a faintly spicy-like taste."	1	macho milk

panther milk is a grab object. Understand "milk" as panther milk. panther milk is infectious. The strain of panther milk is "Panther Taur". The trade of panther milk is "distilled milk". panther milk is milky.
chocolate milk is a grab object. Understand "milk" as chocolate milk. chocolate milk is infectious. The strain of chocolate milk is "Chocolate Lab". The purified of chocolate milk is "distilled milk". chocolate milk is milky.
vixen milk is a grab object. Understand "milk" as vixen milk. vixen milk is infectious. The strain of vixen milk is "Vixen Nurse". The purified of vixen milk is "distilled milk". vixen milk is milky.
sweet milk is a grab object. Understand "milk" as sweet milk. sweet milk is infectious. The strain of sweet milk is "Cow-babe Female". The purified of sweet milk is "distilled milk". sweet milk is milky.
macho milk is a grab object. Understand "milk" as macho milk. macho milk is infectious. The strain of macho milk is "Cow-boi Male". The purified of macho milk is "distilled milk". macho milk is milky.

check milking:
	if Nipple Count of Player is 0:
		say "You don't appear to have anything worth milking." instead;
	if Breast Size of Player < 2:
		say "You don't appear to have anything worth milking." instead;
	if Cunt Count of Player < 1 and player is not mpreg_ok:
		say "Your breasts don't seem ready to lactate." instead;
	if lastmilking - turns < 8:
		say "Your breasts have been drained recently. You'll need to wait before another worthwhile milking." instead;

Carry out milking:
	let TempNumMilkGet be 0;
	if BodyName of Player is "Blue Gryphon Herm":
		say "Using both hands, you cup the curves of your [if Nipple Count of Player is 2]two[else][Nipple Count of Player][end if] [breast size desc of Player] blue-furred tits, reveling in the pleasant sensations. Caressing their nipples with your fingers, it doesn't take long till small beads of milk form at their tips. Gently milking yourself, you gather the rich gryphon milk in an empty plastic bottle, all the while imagining how amazing it would be to have your own gryphlets to suckle on your breasts.";
		increase TempNumMilkGet by Nipple Count of Player;
		if Breast Size of Player > 8:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		ItemGain gryphon milk by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "Smooth Collie Shemale":
		say "Moving your hands to touch and caress your [if Nipple Count of Player is 2]two[else][Nipple Count of Player][end if] [breast size desc of Player] furred breasts, you wake deep maternal urges in your canine body. Images of a whole litter of your own puppies nuzzling your breasts fill your mind while you touch yourself, panting in arousal and need. It doesn't take long till small beads of milk form at the nipples as your breasts get ready to feed your imaginary brood. You're lost in the pleasurable dream for a moment before you remember what you wanted to do and quickly grab an empty bottle from your pack to fill it, gently milking yourself into it.";
		increase TempNumMilkGet by Nipple Count of Player;
		if Breast Size of Player > 8:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		ItemGain dog milk by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "Panther Taur":
		if Nipple Count of Player > 2:
			say "Running a hand-paw over your upper body's [breast size desc of Player] black-furred breasts, you revel in the pleasant sensations that gives you, then lie on your side and reach down to give your lower breasts a caress too. Touching yourself like this wakes deep maternal urges in your panther body, calling to mind a whole litter of cute panther kits suckling at your breasts. It doesn't take long till small beads of milk form at the nipples as your body gets ready to feed your imaginary brood. You're lost in the pleasurable dream for a moment before you remember what you wanted to do and quickly grab an empty bottle from your pack to fill it, gently milking yourself into it.";
		else:
			say "Running your hand-paws over your two [breast size desc of Player] black-furred breasts, you revel in the pleasant sensations that gives you. Caressing their nipples with your fingers, it doesn't take long till small beads of milk form at their tips. Gently milking yourself, you gather the rich panther milk in an empty plastic bottle, all the while imagining how amazing it would be to have your own little panther kits to suckle on your breasts.";
		increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		if Breast Size of Player > 8:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		ItemGain panther milk by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "cheetah woman":
		say "Using both hands, you cup your [if Nipple Count of Player is 2]two[else][Nipple Count of Player][end if] [breast size desc of Player] feline breasts, caressing their sensitive curves. Touching yourself like this wakes deep maternal urges in your cheetah body, calling to mind a whole litter of cute little kits suckling at your breasts. This leads to small beads of milk forming at their nipples within moments, your transformed body almost instantly getting ready to provide sustenance for your imaginary offspring. Quickly grabbing an empty plastic bottle, you gently milk yourself into it, panting at the pleasurable feelings this gives you.";
		increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		if Breast Size of Player > 8:
			increase TempNumMilkGet by 1;
		ItemGain cheetah milk by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "Chocolate Lab":
		say "Moving your hands to caress the soft curves of your [if Nipple Count of Player is 2]two[else][Nipple Count of Player][end if] [breast size desc of Player] breasts, you revel in the sensations that wakes in you. Soon they start leaking white chocolate syrup, revealing to anyone watching that your chocolate body has a creamy filling. It takes little effort to draw some white chocolate flavored milk from your breasts, carefully squirting it into an empty water bottle before packing the now milk-filled container away.";
		increase TempNumMilkGet by Nipple Count of Player;
		if Breast Size of Player > 8:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		ItemGain chocolate milk by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "Vixen Nurse":
		say "Using both hands, you cup your [if Nipple Count of Player is 2]two[else][Nipple Count of Player][end if] [breast size desc of Player] silvery furred breasts, caressing their sensitive curves. Touching yourself like this wakes deep maternal urges in your vulpine body, calling to mind a whole litter of cute little kits suckling at your breasts. This leads to small beads of milk forming at their nipples within moments, your transformed body almost instantly getting ready to provide sustenance for your imaginary offspring. Quickly grabbing an empty plastic bottle, you gently milk yourself into it and gather a small amount of milk, panting at the pleasurable feelings this gives you.";
		increase TempNumMilkGet by 1;
		if Breast Size of Player > 8:
			increase TempNumMilkGet by 1;
		ItemGain vixen milk by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "Dolphin Herm":
		say "Running both hands over your [if Nipple Count of Player is 2]two[else][Nipple Count of Player][end if] [breast size desc of Player] cetacean breasts, you revel in the pleasant sensations that gives you. As you caress their nipples with your fingers, it doesn't take long till small beads of milk form at their tips. Gently milking yourself, you gather the thick dolphin milk in an empty plastic bottle, all the while imagining how amazing it would be to have your own little kids to suckle on your breasts.";
		increase TempNumMilkGet by 1;
		if Breast Size of Player > 8:
			increase TempNumMilkGet by 1;
		ItemGain dolphin milk by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "Reindeer":
		say "Running both hands over your [if Nipple Count of Player is 2]two[else][Nipple Count of Player][end if] [breast size desc of Player] caribou breasts, you revel in the pleasant sensations that gives you. As you caress their nipples with your fingers, it doesn't take long till small beads of milk form at their tips. Gently milking yourself, you gather the tasty egg-nog milk in an empty plastic bottle, then pack it away to enjoy yourself or use later.";
		increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		if Breast Size of Player > 8:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		ItemGain egg nog by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "Bovine":
		say "Squeezing your [if Nipple Count of Player is 2]two[else][Nipple Count of Player][end if] soft bovine breasts, you moan and moo as you coax out a nice stream of bovine milk. While your mind strays to imagining a calf suckling at your nipples, you quickly grab an empty water bottle from your pack, catching squirt after squirt of milk in it until the bottle is full, then start on another...";
		increase TempNumMilkGet by Nipple Count of Player;
		if Breast Size of Player > 6:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		if Breast Size of Player > 12:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		if Breast Size of Player > 18:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		ItemGain cow milk by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "Cow-babe Female":
		say "Squeezing your [if Nipple Count of Player is 2]two[else][Nipple Count of Player][end if] soft, rounded breasts, provokes a moan followed by a needy [']Mooooooo['] which emerges from your throat as a heavy stream of creamy, sweet milk is coaxed out of your nipples. Continuing to rub and knead the sensitive flesh, you can't help it as your mind swims with thoughts of the enjoyment that you would feel having an industrial milking machine attached to your chest, forces you to release all of the creamy goodness sealed within, you quickly grab an empty water bottle from your pack, catching squirt after squirt of milk in it until the bottle is full, then start on another...";
		increase TempNumMilkGet by Nipple Count of Player;
		if Breast Size of Player > 6:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		if Breast Size of Player > 12:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		if Breast Size of Player > 18:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		ItemGain sweet milk by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "Cow-boi Male":
		say "Squeezing your [if Nipple Count of Player is 2]two[else][Nipple Count of Player][end if] firm, meaty pecs, provokes a moan followed by a needy [']Mooooooo['] which emerges from your throat as a heavy stream of creamy, spicy milk is coaxed out of your nipples. Continuing to rub and knead the sensitive flesh, you can't help it as your mind swims with thoughts of the enjoyment that you would feel having an industrial milking machine attached to your chest, forces you to release all of the creamy goodness sealed within, you quickly grab an empty water bottle from your pack, catching squirt after squirt of milk in it until the bottle is full, then start on another...";
		increase TempNumMilkGet by Nipple Count of Player;
		if Breast Size of Player > 6:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		if Breast Size of Player > 12:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		if Breast Size of Player > 18:
			increase TempNumMilkGet by ( ( Nipple Count of Player ) / 2 );
		ItemGain macho milk by TempNumMilkGet;
		now lastmilking is turns;
	else if BodyName of Player is "Margay":
		say "You start lactating shortly after you begin playing with your breasts. Besides the pleasurable sensations that wakes inside yourself, you're also rewarded with a slow but steady flow of milk as you pinch your nipples. You gather your milk into bottles and store it away in you pack.";
		ItemGain margay by square root of ( Nipple Count of Player * Breast Size of Player );
		now lastmilking is turns;
	else if BodyName of Player is "Xeno Drone":
		say "Bringing your clawed hands to your [if Player is xenoskinned]black, [end if]green-veined breasts, you pinch and squeeze your nipples, drawing out green, acidic milk that sizzles where it falls. You manage to contain some in a jar that it doesn't seem to be able to eat through right away";
		ItemGain acid milk by ( ( square root of ( Nipple Count of Player * Breast Size of Player ) ) / 2);
		now lastmilking is turns;
	else:
		say "Your milk wouldn't be that interesting.";

Milking ends here.
