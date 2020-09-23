Version 1 of Misc Items by Core Mechanics begins here.
[ Written by Wahn - Collection file for noninfectious random items (stuff more or less everyone and everything might have as loot) ]
[ Version 1 - New File ]

Section 1 - Food

Table of Game Objects (continued)
name	desc	weight	object
"food"	"Some food. Nothing fancy. Maybe a sandwich, or a can of beans, whatever happens to be handy."	2	food
"chips"	"Not always literally potato chips, but any kind of junk food. Not the best food, but hey, edible."	1	chips

food is a grab object. The trade of food is "soda".
the scent of food is "The food smells [one of]good[or]appetizing[or]tasty[or]edible[at random].".

Usedesc of food is "[food use]";

to say food use:
	if "Junk Food Junky" is listed in feats of Player:
		if hunger of Player > 8:
			increase score by 2;
		PlayerEat 9;
		say "You eat the food, feeling a little disappointed it's not junk food!";
		if morale of Player < 0:
			increase morale of Player by 10;
			if morale of Player > 0, now morale of Player is 0;
			say "You feel a little better having eaten some boring food.";
	else:
		if hunger of Player > 11:
			increase score by 4;
		PlayerEat 12;
		say "You feel less hungry after wolfing down some food, yum!";
		if morale of Player < 0:
			increase morale of Player by 30;
			if morale of Player > 0, now morale of Player is 0;
			say "You feel better having eaten.";
	if "Tanuki Salts" is listed in feats of player:
		PlayerEat 4;
		say "Ah, those secret spices help so much!";

chips is a grab object.
the scent of chips is "The chips smell [one of]good[or]appetizing[or]tasty[or]edible[at random].".

Usedesc of chips is "[food use]";

to say chips use:
	if labhost > 0 and BodyName of Player is "Chocolate Lab" and a random chance of labhost in 4 succeeds:
		say "[line break]     As you begin unwrapping your snack a powerful rumbling begins in your stomach, you release a low groan as the churning inside your body increases, the [if labhost is 2]labs[else]lab[end if] clearly excited about something. There is a sudden pressure at your chest as your feel the churning begin to focus at a single point, before you have a chance to react, or even realize what's happening, a canine snout pushes out of your chocolaty chest, grabbing the [one of]chocolate bar[or]chocolate[or]M&Ms[at random] from your hand and swallowing it whole. You stand there shocked for a moment as the lab spits up the chewed remains of your treat's wrapper before releasing a happy bark and receding into your body. Dissappointed at the loss of your snack, you release a heavy sigh and continue on your way.";
	else if "Junk Food Junky" is listed in feats of Player:
		if hunger of Player > 14:
			increase score by 5;
		PlayerEat 15;
		say "Snack time! You wolf down some [one of]potato chips[or]somehow still warm fries[or]Doritos[or]trail mix[or]M&Ms[or]hard candy[at random] with delight. YUM!";
		if morale of Player < 0:
			increase morale of Player by 36;
			if morale of Player > 0, now morale of Player is 0;
			say "You feel much better after having a snack.";
		increase morale of Player by 1;
	else:
		if hunger of Player > 5:
			increase score by 2;
		PlayerEat 6;
		say "You feel less hungry after wolfing down some [one of]potato chips[or]somehow still warm fries[or]Doritos[or]trail mix[or]M&Ms[or]hard candy[at random], yum!";
		if morale of Player < 0:
			increase morale of Player by 15;
			if morale of Player > 0, now morale of Player is 0;
			say "You feel better having eaten.";

Section 2 - Drinks

Table of Game Objects (continued)
name	desc	weight	object
"dirty water"	"A bottle of contaminated water. Drinker beware."	1	dirty water
"water bottle"	"A bottle of water. Good for slaking thirst."	1	water bottle
"soda"	"A can of some soda or another. Somehow, it is still cool to the touch."	1	soda

dirty water is a grab object. The trade of dirty water is "chips".
the scent of dirty water is "The water smells a little off, but is still potable.".

Usedesc of dirty water is "[water bottle use]";

to say dirty water use:
	if "Junk Food Junky" is listed in feats of Player:
		if thirst of Player > 0:
			increase score by thirst of Player divided by 3;
			if thirst of Player > 15:
				decrease score by ( thirst of Player minus 15 ) divided by 3;
		PlayerDrink 15;
		say "You feel a little less thirty after drinking some bland water!";
		if morale of Player < 0:
			increase morale of Player by 20;
			if morale of Player > 0, now morale of Player is 0;
			say "After drinking something, you feel a little better.";
	else:
		if thirst of Player > 0:
			increase score by thirst of Player divided by 3;
			if thirst of Player > 25:
				decrease score by ( thirst of Player minus 25 ) divided by 3;
		PlayerDrink 25;
		say "You feel less thirsty after guzzling some water, yum!";
		if morale of Player < 0:
			increase morale of Player by 62;
			if morale of Player > 0, now morale of Player is 0;
			say "After drinking something, you feel better.";
	if "Iron Stomach" is not listed in feats of Player:
		let RandomRow be a random number from 1 to the number of rows in the Table of Random Critters;
		choose row RandomRow from the Table of Random Critters;
		while area entry is "Nowhere": [runs circles until it finds an available creature]
			now RandomRow is a random number from 1 to the number of rows in the Table of Random Critters;
			choose row RandomRow from the Table of Random Critters;
		infect Name entry;

water bottle is a grab object. The trade of water bottle is "chips".
the scent of water bottle is "The water bottle smells like plastic.".

Usedesc of water bottle is "[water bottle use]";

to say water bottle use:
	if "Junk Food Junky" is listed in feats of Player:
		if thirst of Player > 0:
			increase score by thirst of Player divided by 3;
			if thirst of Player > 15:
				decrease score by ( thirst of Player minus 15 ) divided by 3;
		PlayerDrink 15;
		say "You feel a little less thirty after drinking some bland water!";
		if morale of Player < 0:
			increase morale of Player by 20;
			if morale of Player > 0, now morale of Player is 0;
			say "After drinking something, you feel a little better.";
	else:
		if thirst of Player > 0:
			increase score by thirst of Player divided by 3;
			if thirst of Player > 25:
				decrease score by ( thirst of Player minus 25 ) divided by 3;
		PlayerDrink 25;
		say "You feel less thirsty after guzzling some water, yum!";
		if morale of Player < 0:
			increase morale of Player by 62;
			if morale of Player > 0, now morale of Player is 0;
			say "After drinking something, you feel better.";

soda is a grab object.
the scent of soda is "Smells of sugary goodness and all the artificial flavors you crave!".

Usedesc of soda is "[soda use]";

to say soda use:
	if "Junk Food Junky" is listed in feats of Player:
		if thirst of Player > 0:
			increase score by thirst of Player divided by 3;
			if thirst of Player > 30:
				decrease score by ( thirst of Player minus 30 ) divided by 3;
		PlayerDrink 30;
		say "Awesome! Soda! You down the delicious can of [if Player is sugarbodied][one of]cola[or]Dr Pibbston[or]Mountain Don't[or]Burkes['] root beer[at random][else][one of]lemon lime[or]strawberry[or]Dr Pibbston[or]cola[or]orange[or]ginger ale[at random][end if]. YUM!";
		if morale of Player < 0:
			increase morale of Player by 75;
			if morale of Player > 0, now morale of Player is 0;
			say "You feel much better having had a soda.";
		increase morale of Player by 1;
	else:
		if thirst of Player > 0:
			increase score by thirst of Player divided by 3;
			if thirst of Player > 12:
				decrease score by ( thirst of Player minus 12 ) divided by 3;
		PlayerDrink 12;
		say "You feel less thirsty after guzzling some soda, [if Player is sugarbodied][one of]cola[or]Dr Pibbston[or]Mountain Don't[or]Burkes['] root beer[at random][else][one of]lemon lime[or]strawberry[or]Dr Pibbston[or]cola[or]orange[or]ginger ale[at random][end if] yum!";
		if morale of Player < 0:
			increase morale of Player by 30;
			if morale of Player > 0, now morale of Player is 0;
			say "You feel better having drunken something.";
	sfsodadrink;

understand "water" as dirty water.
Does the player mean using the dirty water: it is unlikely.
Does the player mean stashing the dirty water: it is unlikely.
Does the player mean retrieving the dirty water: it is unlikely.

Section 3 - Healing Items

Table of Game Objects (continued)
name	desc	weight	object
"medkit"	"A small, white, plastic box with a red cross on it. It has all the things needed for basic medical needs on the go! Using it will restore a lot of HP, more with good intelligence."	3	medkit

medkit is a grab object. It is fast. It is not temporary.
CurrentMedkitSupplies is a number that varies.[@Tag:NotSaved] [uses left in the currently open medkit]CurrentMedkitSupplies is usually 5.

Usedesc of medkit is "[medkit use]";

to say medkit use:
	if HP of Player < MaxHP of Player:
		let healed be 10 + level of Player + ( ( intelligence of Player minus 10 ) divided by 2 );
		if "Expert Medic" is listed in the feats of Player:
			if Paula is visible:
				now healed is ( healed * 135 ) / 100;
			else if Sarah is visible and SarahCured > 3:
				now healed is ( healed * 145 ) / 100;
			else:
				now healed is ( healed times 125 ) divided by 100;
		else if Paula is visible:
			now healed is ( healed times 125 ) divided by 100;
		else if carried of First Aid Manual > 0:
			increase healed by 2;
		if "Rapid Healing" is listed in the feats of Player:
			now healed is ( healed times 115 ) divided by 100;
		if "Regeneration" is listed in the feats of Player:
			now healed is ( healed times 115 ) divided by 100;
		if NoHealMode is true:
			now healed is ( healed * 125 ) / 100;
		if ssmb is true:
			now healed is ( healed * 3 ) / 2;
		increase HP of Player by healed;
		if HP of Player > maxHP of Player:
			decrease healed by HP of Player minus maxHP of Player;
			now HP of Player is maxHP of Player;
		say "Using your medkit, [if Paula is visible]Paula helps you [one of]treat the worst of your wounds[or]bandage up the worst of your wounds[or]spray your cuts with anesthetic[or]clean and dress your wounds[at random], making sure to kiss them to make it all better[else if Sarah is visible and SarahCured > 3]Sarah expertly helps you [one of]treat the worst of your wounds[or]bandage up the worst of your wounds[or]spray your cuts with anesthetic[or]clean and dress your wounds[at random][else][one of]you spray your cuts with anesthetic[or]you bandage your worst wounds[at random][end if]. You regain [special-style-1][healed][roman type] HP.";
		decrease CurrentMedkitSupplies by 1;
		if CurrentMedkitSupplies < 1:
			say "You have used up the last of the medkit.";
			ItemLoss medkit by 1 silently;
			now CurrentMedkitSupplies is 5;
			if "Expert Medic" is listed in feats of Player:
				increase CurrentMedkitSupplies by 1;
	else:
		say "Since you're not hurt at all, you decide to keep your medical supplies intact for later.";

instead of sniffing medkit:
	say "Smells like plastic.";

Table of Game Objects (continued)
name	desc	weight	object
"clean bandages"	"A roll of clean, white bandages. They come with a little rubbery strap with hooks on the ends, to fixate the bandage once applied."	1	clean bandages

clean bandages is a grab object.

Usedesc of clean bandages is "[clean bandages use]";

to say clean bandages use:
	if HP of Player < MaxHP of Player:
		if Paula is visible:
			say "As you start to apply the bandage to yourself, Paula steps up and takes it from you. She cleans the wound first, then wraps the clean cloth around it tightly to make sure it stays that way. Finally, she fastens it with the little rubber strap. Somehow, you already feel a bit better.";
			PlayerHealed 20;
		else if Sarah is visible and SarahCured > 3:
			say "As you start to apply the bandage to yourself, Sarah steps up and takes it from you. She cleans the wound first, then wraps the clean cloth around it tightly to make sure it stays that way. Finally, she fastens it with the little rubber strap. Somehow, you already feel a bit better.";
			PlayerHealed 20;
		else if "Expert Medic" is listed in feats of Player:
			say "Taking your time to do things right, you do your best to clean your wound, then wrap the bandage around it tightly to make sure it stays that way. Finally, you fasten it with the little rubber strap. Somehow, you already feel a bit better.";
			PlayerHealed 15;
		else:
			say "Hurriedly wrapping the bandage around your wound, you pull it tight, then apply the little rubber strap to keep it in place. That should help you heal at least a little bit.";
			PlayerHealed 10;
	else:
		say "You're not hurt, so you decide to keep your bandages for when you actually need them.";
		ItemGain clean bandages by 1 silently; [quietly giving back the auto-destroyed item]

instead of sniffing clean bandages:
	say "Smells like clean fabric.";


Table of Game Objects (continued)
name	desc	weight	object
"adhesive bandage"	"A little strip of fabric in a sterile package. Ripping it open, you can stick this little thing on a not too large wound and help it heal."	0	adhesive bandage

adhesive bandage is a grab object.
adhesive bandage is fast.

Usedesc of adhesive bandage is "[adhesive bandage use]";

to say adhesive bandage use:
	if HP of Player < MaxHP of Player:
		say "Moving quickly, you apply the bandage to your wound. That should help at least a little bit with healing.";
		PlayerHealed 5;
	else:
		say "You're not hurt, so you decide to keep your bandage for when you actually need it.";
		ItemGain adhesive bandage by 1 silently; [quietly giving back the auto-destroyed item]

instead of sniffing adhesive bandage:
	say "Smells like glue and clean fabric.";

Table of Game Objects (continued)
name	desc	weight	object
"indigo potion"	"A small vial filled with a small amount of liquid so dark indigo that it is almost black."	0	indigo potion

indigo potion is a grab object.
indigo potion is fast.

Usedesc of indigo potion is "[indigo potion use]";

to say indigo potion use:
	say "You pop the cork and down the potion in a single gulp. NNNGggghhhaaAHH! Its sour taste has you pulling a pained grimace, but somehow you feel better for having drunk that stuff.";
	PlayerHealed 20;

instead of sniffing indigo potion:
	say "Just sniffing this stuff makes your nose itch. It's got a sharp, chemical smell.";



Section 4 - Resting

Table of Game Objects (continued)
name	desc	weight	object
"cot"	"A folding cot. Simple in design, but oh so useful. You could carry it around and [bold type]rest[roman type] anywhere!"	20	cot
"sleeping bag"	"A simple sleeping bag. It's not the most comfortable, or restful, but it brings with it the advantage of portability."	5	sleeping bag

cot is a grab object. It is not temporary.
cot is restful.
understand "Bed" as cot.
Usedesc of cot is "[cot use]";

to say cot use:
	try resting;

sleeping bag is a grab object. It is not temporary.
Usedesc of sleeping bag is "[sleeping bag use]";

to say sleeping bag use:
	try resting;

Section 5 - Knicknacks

Table of Game Objects (continued)
name	desc	weight	object
"tennis ball"	"A tennis ball. Rubbery, fairly light and covered in fluorescent yellow felt."	1	tennis ball

tennis ball is a grab object.
It is not temporary.

Usedesc of tennis ball is "[tennis ball use]";

to say tennis ball use:
	say "Unsure what exactly to do with the tennis ball, you throw it from hand to hand a few times and bounce it off the ground.";

instead of sniffing  tennis ball:
	say "Smells like rubber.";


[
"heuristic processor"	"A small electronic circuit. You've been told it's amazingly adaptive and can learn anything. Probably nonsense, but maybe you can find a use for it, somehow."	1	heuristic processor
"reprogramming device"	"An attempt by Dr. Mouse to build a device to reprogram the nanites. It's too bulky, and doesn't have the processing capacity to be of any use in the field. Perhaps you could find a way around those limitations?"	13	reprogramming device
"infection scanner"	"Upgraded Infection Monitor. Or it would have been, it's clearly not finished. It's missing any sort of display to show what it finds. Perhaps you could use it's scanner parts elsewhere?"	7	infection scanner
]


Misc Items ends here.
