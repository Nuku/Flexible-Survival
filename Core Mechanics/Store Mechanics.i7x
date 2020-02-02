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

The TPK male clothing section is a backdrop. It is in The Pretty Kitty. The description of the TPK male clothing section is "[TPK male clothing section desc]".

to say TPK male clothing section desc:
	say "     The male clothing section holds many pieces of clothing and individual outfits, some of which catch your eye. Price tags on each of the articles of clothing have been darkened with a black marker, with the new price listed as in terms of freecreds. [TPC male clothing selector]";

Instead of smelling the TPK male clothing section:
	say "The male clothing section smells the same as the rest of the store.";

[
	decide to either [link]browse TPK male hats[end link], [link]browse TPK male jackets[end link], [link]browse TPK male shirts[end link], [link]browse for TPK male pants[end link], [link]browse TPK male underwear[end link], and [link]browse TPK male shoes[end link]";
]

to say TPC male clothing selector: [Main male clothing Menu (level 1)]
	say "     [bold type]You look at the available items and then decide to...[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the male headgear";
	now sortorder entry is 1;
	now description entry is "Check out headgear for men";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the male jackets";
	now sortorder entry is 1;
	now description entry is "Check out jackets for men";
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
				if (nam is "Browse the male headgear"):
					say "[browse_TPK_male_headgear]";
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say browse_TPK_male_headgear: [Male clothing category submenu (level 2 under the male clothing selector)]
	say "     Which style of headwear would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bike Helmets";
	now sortorder entry is 1;
	now description entry is "See what bike helmets are available";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]99 - Go back to the previous menu[as]99[end link][line break]";
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
				if (nam is "Bike Helmets"):
					say "[TPK_BikeHelmetMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[TPC male clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say TPK_BikeHelmetMenu: [Male clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which style of bike helmet would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Dragon Bike Helmet";
	now sortorder entry is 1;
	now description entry is "Check out the dragon bike helmet";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]99 - Go back to the previous menu[as]99[end link][line break]";
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
				if (nam is "Dragon Bike Helmet"):
					say "[DragonBikeHelmetTalk]"; [choose level 4 item selection]
				wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_male_headgear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say DragonBikeHelmetTalk: [item selection (level 4)]
	say "     A plastic foam bicycle helmet, complete with a green shell covered with dragons spewing red flames, as well as a strap to fasten it to the wearer's head. Judging by the helmet's appearance, it's [']masculine['] and pretty [']cool[']. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_BikeHelmetMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			add "dragon bike helmet" to invent of Player;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_BikeHelmetMenu]"; [return to level 3 sub-submenu]


Book 3 - Restrained Desire [Store formally known as the "pornstore" within the redlight district]

Book 4 - The Painted Dragon [Store found through Harolds quests]



Store Mechanics ends here.
