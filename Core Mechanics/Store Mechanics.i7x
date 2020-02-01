Version 1 of Store Mechanics by Core Mechanics begins here.
[Written by Luneth]


[This will showcase all of the official stores that are in-game. The purpose of this file is of course to make the stores accessible, but also to help creators make their own stores if needed. Keep in mind, not all stores work the same way, so find a template that works for you.]


Book 1 - The Black Market [Store within the zephyr building]

Section 1 - Zephyr Black Market Medicine Case [Modification Items]

The medicine case is a backdrop. It is in Zephyr Storeroom. The description of the medicine case is "[medicine case list]".

Instead of smelling the medicine case:
	say "The medicine case has little in the way of a scent of its own.";

to say medicine case list:
	say "To buy an item, type buy (name here)";
	repeat through table of Zephyr Black Market Medicine Case:
		follow allowed entry;
		if rule failed:
			next;
		say "[link]Buy[as]buy [object entry][end link] ";
		say "[name entry] - [price entry] Creds";

Table of Zephyr Black Market Medicine Case
name	price	object	allowed
"testosterone pill"	100	testosterone pill	true rule
"estrogen pill"	100	estrogen pill	true rule
"estosterogen pill"	150	estosterogen pill	true rule
"cock pill"	50	cock pill	true rule
"cock remover"	50	cock remover	true rule
"cunt pill"	50	cunt pill	true rule
"cunt remover"	50	cunt remover	true rule
"bitch breaker gel"	50	bitch breaker gel	true rule
"sissifier gel"	50	sissifier gel	true rule
"breeder serum"	50	breeder serum	true rule
"trap serum"	50	trap serum	true rule
"pussy spreader cream"	50	pussy spreader cream	true rule
"rightntight cream"	50	rightntight cream	true rule
"cock holster upgrade"	50	cock holster upgrade	true rule
"cervix smasher upgrade"	50	cervix smasher upgrade	true rule
"tits inflator"	50	tits inflator	true rule
"tits deflator"	50	tits deflator	true rule
"tits multiplier injection"	50	tits multiplier injection	true rule
"tits divider injection"	50	tits divider injection	true rule
"birth control pill"	50	birth control pill	true rule
"fertile pill"	50	fertile pill	true rule
"libido pill"	50	libido pill	true rule
"nullifying powder"	50	nullifying powder	true rule
"libido suppressant"	100	libido suppressant	true rule

Section 2 - Zephyr Black Market Outfitters Rack [Equipment]

The outfitters rack is a backdrop. It is in Zephyr Storeroom. The description of the outfitters rack is "[outfitters rack list]".

Instead of smelling the outfitters rack:
	say "The outfitters rack has little in the way of a scent of its own.";

to say outfitters rack list:
	say "To buy an item, type buy (name here)";
	repeat through table of Zephyr Black Market Outfitters Rack:
		follow allowed entry;
		if rule failed:
			next;
		say "[link]Buy[as]buy [object entry][end link] ";
		say "[name entry] - [price entry] Creds";

Table of Zephyr Black Market Outfitters Rack
name	price	object	allowed
"zephyr armored lab coat"	130	zephyr armored lab coat	true rule
"zephyr armored lab gloves"	100	zephyr armored lab gloves	true rule
"zephyr armored lab boots"	100	zephyr armored lab boots	true rule
"zephyr riot helmet"	120	zephyr riot helmet	true rule
"zephyr riot chest piece"	150	zephyr riot chest piece	true rule
"zephyr riot arm guards"	120	zephyr riot arm guards	true rule
"zephyr riot shin guards"	120	zephyr riot shin guards	true rule
"zephyr protective riot shield"	150	zephyr protective riot shield	true rule

Section 3 - Zephyr Black Market Catalogue [Sexual Items]

[Table of Zephyr Black Market Catalogue
"canine dildo"	350	canine dildo	true rule
"egg vibrator"	350	egg vibrator	true rule
"push button vibrator"	push button vibrator	true rule
"pocket pussy"	275	pocket pussy	true rule
"strap-on"	550	strap-on	true rule
"equine dildo"	100 equine dildo	true rule
"vibrator wand"	350	vibrator wand	true rule

This is the true rule:
rule succeeds;
]

Book 2 - The Pretty Kitty [Store within the mall]

Section 1 - TPK male clothing section [Clothing That Increases Masculinity]

[The TPK male clothing section is a backdrop. It is in The Pretty Kitty. The description of the TPK male clothing section is "[TPK male clothing section desc]".

to say TPK male clothing section desc:
	say "     The male clothing section holds many pieces of clothing and individual outfits, some of which catch your eye. Price tags on each of the articles of clothing have been darkened with a black marker, with the new price listed as in terms of freecreds. You look at the available items and decide to either [link]browse TPK male hats[end link], [link]browse TPK male jackets[end link], [link]browse TPK male shirts[end link], [link]browse for TPK male pants[end link], [link]browse TPK male underwear[end link], and [link]browse TPK male shoes[end link]";

Instead of smelling the TPK male clothing section:
	say "The male clothing section smells the same as the rest of the store.";

to browse TPK male hats:
say "     Which style of headwear would you like to check out?";
LineBreak;
now sextablerun is 0;
blank out the whole of table of fucking options;
[]
choose a blank row in table of fucking options;
now title entry is "bike helmets";
now sortorder entry is 1;
now description entry is "See what bike helmets are available.";
[]
sort the table of fucking options in sortorder order;
repeat with y running from 1 to number of filled rows in table of fucking options:
	choose row y from the table of fucking options;
	say "[link][y] - [title entry][as][y][end link][line break]";
say "[link]100 - Nevermind[as]100[end link][line break]";
while sextablerun is 0:
	say "Pick the corresponding number> [run paragraph on]";
	get a number;
	if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
		now current menu selection is calcnumber;
		choose row calcnumber in table of fucking options;
		say "[title entry]: [description entry]?";
		if player consents:
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "bike helmets"):
				say "[BikeHelmetTalk]";
			wait for any key;
	else if calcnumber is 100:
		now sextablerun is 1;
		say "     You step back from the section that you were investigating, shaking your head slightly at it.";
		wait for any key;
	else:
		say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
clear the screen and hyperlink list;

to say BikeHelmetTalk:
say "     [BikeHelmetMenu]";

to say BikeHelmetMenu:
say "     Which style of bike helmet would you like to check out?";
LineBreak;
now sextablerun is 0;
blank out the whole of table of fucking options;
[]
choose a blank row in table of fucking options;
now title entry is "dragon bike helmet";
now sortorder entry is 1;
now description entry is "Check out the dragon bike helmet.";
[]
sort the table of fucking options in sortorder order;
repeat with y running from 1 to number of filled rows in table of fucking options:
	choose row y from the table of fucking options;
	say "[link][y] - [title entry][as][y][end link][line break]";
say "[link]100 - Nevermind[as]100[end link][line break]";
while sextablerun is 0:
	say "Pick the corresponding number> [run paragraph on]";
	get a number;
	if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
		now current menu selection is calcnumber;
		choose row calcnumber in table of fucking options;
		say "[title entry]: [description entry]?";
		if player consents:
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "dragon bike helmet"):
				say "[DragonBikeHelmetTalk]";
			wait for any key;
	else if calcnumber is 100:
		now sextablerun is 1;
		say "     You step back from the section that you were investigating, shaking your head slightly at it.";
		wait for any key;
	else:
		say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
clear the screen and hyperlink list;

to say DragonBikeHelmetTalk:
	say "     A plastic foam bicycle helmet, complete with a green shell covered with dragons spewing red flames, as well as a strap to fasten it to the wearer's head. Judging by the helmet's appearance, it's [']masculine['] and pretty [']cool['].";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecreds of player < 20:
			say "     You don't seem to have enough freecreds.";
		if freecreds of player > 20:
			say "     Andromeda thanks you for your purchase and hands you the item.";
			add dragon bike helmet to items of player;
			remove 20 freecreds from items of player;
	else:
		say "     [TPK male clothing section desc]";

Instead of smelling the TPK male clothing section:
	say "The male clothing section smells the same as the rest of the store.";

to say male clothing section list:
	say "To buy an item, type buy (name here)";
	repeat through table of The Pretty Kitty Male Clothing Section:
		follow allowed entry;
		if rule failed:
			next;
		say "[link]Buy[as]buy [object entry][end link] ";
		say "[name entry] - [price entry] Creds";]

Part 1 - Understanding for The Pretty Kitty

Section 1 - The Pretty Kitty

Part 1 - Male Clothing Section

[
BrowseTPKMHats is an action applying to nothing.
understand "browse TPK male hat" as BrowseTPKMHats.
understand "browse for a TPK male hat" as BrowseTPKMHats.
understand "browse TPK male hats" as BrowseTPKMHats.

BrowseTPKMHairAccessory is an action applying to nothing.
understand "browse TPK male hair" as BrowseTPKMHairAccessory.
understand "browse for a TPK male hair accessory" as BrowseTPKMHairAccessory.
understand "browse TPK hair male accessories" as BrowseTPKMHairAccessory.

BrowseTPKMGlasses is an action applying to nothing.
understand "browse TPK male glasses" as BrowseTPKMGlasses.
understand "browse for TPK male glasses" as BrowseTPKMGlasses.

BrowseTPKMMask is an action applying to nothing.
understand "browse TPK male mask" as BrowseTPKMMask.
understand "browse for a TPK male mask" as BrowseTPKMMask.
understand "browse TPK male masks" as BrowseTPKMMask.

BrowseTPKMNeckwear is an action applying to nothing.
understand "browse TPK male neckwear" as BrowseTPKMNeckwear.
understand "browse for TPK male neckwear" as BrowseTPKMNeckwear.

BrowseTPKMNecklace is an action applying to nothing.
understand "browse TPK male necklace" as BrowseTPKMNecklace.
understand "browse for a TPK male necklace" as BrowseTPKMNecklace.
understand "browse TPK male necklaces" as BrowseTPKMNecklace.

BrowseTPKMJacket is an action applying to nothing.
understand "browse TPK male jacket" as BrowseTPKMJacket.
understand "browse for a TPK male jacket" as BrowseTPKMJacket.
understand "browse TPK male jackets" as BrowseTPKMJacket.

BrowseTPKMShirt is an action applying to nothing.
understand "browse TPK male shirt" as BrowseTPKMShirt.
understand "browse for a TPK male shirt" as BrowseTPKMShirt.
understand "browse TPK male shirts" as BrowseTPKMShirt.

BrowseTPKMGloves is an action applying to nothing.
understand "browse TPK male gloves" as BrowseTPKMGloves.
understand "browse for a TPK male gloves" as BrowseTPKMGloves.
understand "browse TPK male gloves" as BrowseTPKMGloves.

BrowseTPKMBelt is an action applying to nothing.
understand "browse TPK male belt" as BrowseTPKMBelt.
understand "browse for a TPK male belt" as BrowseTPKMBelt.
understand "browse TPK male belts" as BrowseTPKMBelt.

BrowseTPKMPants is an action applying to nothing.
understand "browse TPK male pants" as BrowseTPKMPants.
understand "browse for a TPK male pants" as BrowseTPKMPants.

BrowseTPKMUnderwear is an action applying to nothing.
understand "browse TPK male underwear" as BrowseTPKMUnderwear.
understand "browse for a TPK male underwear" as BrowseTPKMUnderwear.

BrowseTPKMSocks is an action applying to nothing.
understand "browse for a TPK male socks" as BrowseTPKMSocks.
understand "browse TPK male socks" as BrowseTPKMSocks.

BrowseTPKMShoes is an action applying to nothing.
understand "browse TPK male shoes" as BrowseTPKMShoes.
understand "browse for a TPK male shoes" as BrowseTPKMShoes.

Part 2 - Female Clothing Section

BrowseTPKFHats is an action applying to nothing.
understand "browse TPK female hat" as BrowseTPKFHats.
understand "browse for a TPK female hat" as BrowseTPKFHats.
understand "browse TPK female hats" as BrowseTPKFHats.

BrowseTPKFHairAccessory is an action applying to nothing.
understand "browse TPK female hair accessory" as BrowseTPKFHairAccessory.
understand "browse for a TPK female hair accessory" as BrowseTPKFHairAccessory.
understand "browse TPK female hair accessories" as BrowseTPKFHairAccessory.

BrowseTPKFGlasses is an action applying to nothing.
understand "browse TPK female glasses" as BrowseTPKFGlasses.
understand "browse for TPK female glasses" as BrowseTPKFGlasses.

BrowseTPKFMask is an action applying to nothing.
understand "browse TPK female mask" as BrowseTPKFMask.
understand "browse for a TPK female mask" as BrowseTPKFMask.
understand "browse TPK female masks" as BrowseTPKFMask.

BrowseTPKFNeckwear is an action applying to nothing.
understand "browse TPK female neckwear" as BrowseTPKFNeckwear.
understand "browse for TPK female neckwear" as BrowseTPKFNeckwear.

BrowseTPKFNecklace is an action applying to nothing.
understand "browse TPK female necklace" as BrowseTPKFNecklace.
understand "browse for a TPK female necklace" as BrowseTPKFNecklace.
understand "browse TPK female necklace" as BrowseTPKFNecklace.

BrowseTPKFJacket is an action applying to nothing.
understand "browse TPK female jacket" as BrowseTPKFJacket.
understand "browse for a TPK female jacket" as BrowseTPKFJacket.
understand "browse TPK female jackets" as BrowseTPKFJacket.

BrowseTPKFShirt is an action applying to nothing.
understand "browse TPK female shirt" as BrowseTPKFShirt.
understand "browse for a TPK female shirt" as BrowseTPKFShirt.
understand "browse TPK female shirts" as BrowseTPKFShirt.

BrowseTPKFBras is an action applying to nothing.
understand "browse TPK female bras" as BrowseTPKFBras.
understand "browse for a TPK female bras" as BrowseTPKFBras.
understand "browse TPK female bras" as BrowseTPKFBras.

BrowseTPKFTorsoTrainer is an action applying to nothing.
understand "browse TPK female torso trainer" as BrowseTPKFTorsoTrainer.
understand "browse for a TPK female torso trainer" as BrowseTPKFTorsoTrainer.
understand "browse TPK female torso trainers" as BrowseTPKFTorsoTrainer.

BrowseTPKFGloves is an action applying to nothing.
understand "browse TPK female gloves" as BrowseTPKFGloves.
understand "browse for a TPK female gloves" as BrowseTPKFGloves.
understand "browse TPK female gloves" as BrowseTPKFGloves.

BrowseTPKFBelt is an action applying to nothing.
understand "browse TPK female belt" as BrowseTPKFBelt.
understand "browse for a TPK female belt" as BrowseTPKFBelt.
understand "browse TPK female belts" as BrowseTPKFBelt.

BrowseTPKFPants is an action applying to nothing.
understand "browse TPK female pants" as BrowseTPKFPants.
understand "browse for a TPK female pants" as BrowseTPKFPants.

BrowseTPKFSkirt is an action applying to nothing.
understand "browse TPK female skirt" as BrowseTPKFSkirt.
understand "browse for a TPK female skirt" as BrowseTPKFSkirt.
understand "browse TPK female skirts" as BrowseTPKFSkirt.

BrowseTPKFUnderwear is an action applying to nothing.
understand "browse TPK female underwear" as BrowseTPKFUnderwear.
understand "browse for a TPK female underwear" as BrowseTPKFUnderwear.

BrowseTPKFSocks is an action applying to nothing.
understand "browse for a TPK female sock" as BrowseTPKFSocks.
understand "browse TPK female socks" as BrowseTPKFSocks.

BrowseTPKFShoes is an action applying to nothing.
understand "browse TPK female shoes" as BrowseTPKFShoes.
understand "browse for a TPK female shoe" as BrowseTPKFShoes.

Part 3 - Unisex Clothing Section

BrowseTPKUHats is an action applying to nothing.
understand "browse TPK unisex hat" as BrowseTPKUHats.
understand "browse for a TPK unisex hat" as BrowseTPKUHats.
understand "browse TPK unisex hats" as BrowseTPKUHats.

BrowseTPKUHairAccessory is an action applying to nothing.
understand "browse TPK unisex hair" as BrowseTPKUHairAccessory.
understand "browse for a TPK unisex hair accessory" as BrowseTPKUHairAccessory.
understand "browse TPK unisex hair accessories" as BrowseTPKUHairAccessory.

BrowseTPKUGlasses is an action applying to nothing.
understand "browse TPK unisex glasses" as BrowseTPKUGlasses.
understand "browse for TPK unisex glasses" as BrowseTPKUGlasses.

BrowseTPKUMask is an action applying to nothing.
understand "browse TPK unisex mask" as BrowseTPKUMask.
understand "browse for a TPK unisex mask" as BrowseTPKUMask.
understand "browse TPK unisex masks" as BrowseTPKUMask.

BrowseTPKUNeckwear is an action applying to nothing.
understand "browse TPK unisex neckwear" as BrowseTPKUNeckwear.
understand "browse for TPK unisex neckwear" as BrowseTPKUNeckwear.

BrowseTPKUNecklace is an action applying to nothing.
understand "browse TPK unisex necklace" as BrowseTPKUNecklace.
understand "browse for a TPK unisex necklace" as BrowseTPKUNecklace.
understand "browse TPK unisex necklace" as BrowseTPKUNecklace.

BrowseTPKUJacket is an action applying to nothing.
understand "browse TPK unisex jacket" as BrowseTPKUJacket.
understand "browse for a TPK unisex jacket" as BrowseTPKUJacket.
understand "browse TPK unisex jackets" as BrowseTPKUJacket.

BrowseTPKUShirt is an action applying to nothing.
understand "browse TPK unisex shirt" as BrowseTPKUShirt.
understand "browse for a TPK unisex shirt" as BrowseTPKUShirt.
understand "browse TPK unisex shirts" as BrowseTPKUShirt.

BrowseTPKUTorsoTrainer is an action applying to nothing.
understand "browse TPK unisex torso trainer" as BrowseTPKUTorsoTrainer.
understand "browse for a TPK unisex torso trainer" as BrowseTPKUTorsoTrainer.
understand "browse TPK unisex torso trainers" as BrowseTPKUTorsoTrainer.

BrowseTPKUGloves is an action applying to nothing.
understand "browse TPK unisex gloves" as BrowseTPKUGloves.
understand "browse for a TPK unisex gloves" as BrowseTPKUGloves.
understand "browse TPK unisex gloves" as BrowseTPKUGloves.

BrowseTPKUBelt is an action applying to nothing.
understand "browse TPK unisex belt" as BrowseTPKUBelt.
understand "browse for a TPK unisex belt" as BrowseTPKUBelt.
understand "browse TPK unisex belts" as BrowseTPKUBelt.

BrowseTPKUPants is an action applying to nothing.
understand "browse TPK unisex pants" as BrowseTPKUPants.
understand "browse for a TPK unisex pants" as BrowseTPKUPants.

BrowseTPKUSkirt is an action applying to nothing.
understand "browse TPK unisex skirt" as BrowseTPKUSkirt.
understand "browse for a TPK unisex skirt" as BrowseTPKUSkirt.
understand "browse TPK unisex skirts" as BrowseTPKUSkirt.

BrowseTPKUUnderwear is an action applying to nothing.
understand "browse TPK unisex underwear" as BrowseTPKUUnderwear.
understand "browse for a TPK unisex underwear" as BrowseTPKUUnderwear.

BrowseTPKUSocks is an action applying to nothing.
understand "browse for a TPK unisex sock" as BrowseTPKUSocks.
understand "browse TPK unisex socks" as BrowseTPKUSocks.

BrowseTPKUShoes is an action applying to nothing.
understand "browse TPK unisex shoes" as BrowseTPKUShoes.
understand "browse for a TPK unisex shoe" as BrowseTPKUShoes.
]


Book 3 - Restrained Desire [Store formally known as the "pornstore" within the redlight district]

Book 4 - The Painted Dragon [Store found through Harolds quests]



Store Mechanics ends here.
