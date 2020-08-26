Version 1 of Store Mechanics by Core Mechanics begins here.
[Written by Luneth]


[This will showcase all of the official stores that are in-game. The purpose of this file is of course to make the stores accessible, but also to help creators make their own stores if needed. Keep in mind, not all stores work the same way, so find a template that works for you.]


Book 1 - The Black Market [Store within the zephyr building]

Section 1 - Zephyr Black Market Medicine Case [Modification Items]

The medicine case is a backdrop. It is in Zephyr Storeroom. Description of the medicine case is "[medicine case list]".

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
"tits inflator pump"	50	tits inflator pump	true rule
"tits deflator pump"	50	tits deflator pump	true rule
"tits multiplier injection"	50	tits multiplier injection	true rule
"tits divider injection"	50	tits divider injection	true rule
"birth control pill"	50	birth control pill	true rule
"fertile pill"	50	fertile pill	true rule
"libido pill"	50	libido pill	true rule
"nullifying powder"	50	nullifying powder	true rule
"libido suppressant"	100	libido suppressant	true rule

Section 2 - Zephyr Black Market Outfitters Rack [Equipment]

The outfitters rack is a backdrop. It is in Zephyr Storeroom. Description of the outfitters rack is "[outfitters rack list]".

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

TPK male clothing section is a backdrop. It is in Pretty Kitty. Description of TPK male clothing section is "[TPK male clothing section desc]".

to say TPK male clothing section desc:
	say "     The male clothing section holds many pieces of clothing and individual outfits, some of which catch your eye. Price tags on each of the articles of clothing have been darkened with a black marker, with the new price listed as in terms of freecreds. You can [link]browse[as]browse TPK male clothing[end link] in the male clothing section if you want.";

the scent of TPK male clothing section is "The male clothing section smells the same as the rest of the store.".

BrowseTPKMaleClothing is an action applying to nothing.
understand "browse TPK male clothing" as BrowseTPKMaleClothing.
understand "browse TPK male clothing selection" as BrowseTPKMaleClothing.

check BrowseTPKMaleClothing:
	If TPK male clothing section is not visible, say "What is it you want to browse?" instead;

carry out BrowseTPKMaleClothing:
	say "[TPC male clothing selector]";

Part 1 - Base

to say TPC male clothing selector: [Main male clothing Menu (level 1)]
	say "     [bold type]You look at the available items and then decide to...[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the male headwear"; [line 161]
	now sortorder entry is 1;
	now description entry is "Check out headwear for men";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the male jackets"; [line 270]
	now sortorder entry is 2;
	now description entry is "Check out jackets for men";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the male legwear"; [line 405]
	now sortorder entry is 3;
	now description entry is "Check out legwear for men";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the male underwear"; [line 507]
	now sortorder entry is 4;
	now description entry is "Check out underwear for men";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the male shoes"; [line 745]
	now sortorder entry is 5;
	now description entry is "Check out shoes for men";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Browse the male headwear"):
				say "[browse_TPK_male_headwear]";
			if (nam is "Browse the male jackets"):
				say "[browse_TPK_male_jackets]";
			if (nam is "Browse the male legwear"):
				say "[browse_TPK_male_legwear]";
			if (nam is "Browse the male underwear"):
				say "[browse_TPK_male_underwear]";
			if (nam is "Browse the male shoes"):
				say "[browse_TPK_male_shoes]";
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

Part 2 - Headwear

to say browse_TPK_male_headwear: [Male clothing category submenu (level 2 under the male clothing selector)]
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Bike Helmets"):
				say "[TPK_Male_BikeHelmetMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[TPC male clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say TPK_Male_BikeHelmetMenu: [Male clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which type of bike helmet would you like to check out?[roman type][line break]";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Dragon Bike Helmet"):
				say "[DragonBikeHelmetTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_male_headwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say DragonBikeHelmetTalk: [item selection (level 4)]
	say "     A plastic foam bicycle helmet, complete with a green shell covered with dragons spewing red flames, as well as a strap to fasten it to the wearer's head. Judging by the helmet's appearance, it's [']masculine['] and pretty [']cool[']. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Male_BikeHelmetMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain dragon bike helmet by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Male_BikeHelmetMenu]"; [return to level 3 sub-submenu]

Part 3 - Jackets

to say browse_TPK_male_jackets: [Male clothing category submenu (level 2 under the male clothing selector)]
	say "     Which style of jacket would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Greatcoats";
	now sortorder entry is 1;
	now description entry is "See what greatcoats are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Greatcoats"):
				say "[TPK_Male_GreatcoatMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[TPC male clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say TPK_Male_GreatcoatMenu: [Male clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of greatcoat would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Black Greatcoat";
	now sortorder entry is 1;
	now description entry is "Check out the black greatcoat";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Gray Greatcoat";
	now sortorder entry is 2;
	now description entry is "Check out the gray greatcoat";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Black Greatcoat"):
				say "[BlackGreatcoatTalk]"; [choose level 4 item selection]
			if (nam is "Gray Greatcoat"):
				say "[GrayGreatcoatTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_male_jackets]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say BlackGreatcoatTalk: [item selection (level 4)]
	say "     A full-body black coat made from thick wool. It will certainly protect you from bad weather, but the sturdy material should also be some help in a close-combat fight. Judging by the coats appearance, it's [']masculine['] and pretty [']smart['] looking. It has a price sign that reads '30 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 30:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Male_GreatcoatMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 30;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain black greatcoat by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Male_GreatcoatMenu]"; [return to level 3 sub-submenu]

to say GrayGreatcoatTalk: [item selection (level 4)]
	say "     A full-body gray coat made from thick wool. It will certainly protect you from bad weather, but the sturdy material should also be some help in a close-combat fight. Judging by the coats appearance, it's [']masculine['] and pretty [']smart['] looking. It has a price sign that reads '30 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 30:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Male_GreatcoatMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 30;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain gray greatcoat by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Male_GreatcoatMenu]"; [return to level 3 sub-submenu]

Part 4 - Legwear

to say browse_TPK_male_legwear: [Male clothing category submenu (level 2 under the male clothing selector)]
	say "     Which style of pants would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Camo Pants";
	now sortorder entry is 1;
	now description entry is "See what camo pants are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Camo Pants"):
				say "[TPK_Male_CamoPantsMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[TPC male clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say TPK_Male_CamoPantsMenu: [Male clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of camo pants would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Green Camo Pants";
	now sortorder entry is 1;
	now description entry is "Check out the green camo pants";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Green Camo Pants"):
				say "[GreenCamoPantsTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_male_legwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say GreenCamoPantsTalk: [item selection (level 4)]
	say "     A pair of camo pants in various shades of green. Judging by the pants appearance, it's [']masculine['] and pretty [']cool['] looking. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Male_CamoPantsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain green camo pants by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Male_CamoPantsMenu]"; [return to level 3 sub-submenu]

Part 5 - Underwear

to say browse_TPK_male_underwear: [Male clothing category submenu (level 2 under the male clothing selector)]
	say "     Which style of underwear would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Briefs";
	now sortorder entry is 1;
	now description entry is "See what briefs are available";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boxer Briefs";
	now sortorder entry is 1;
	now description entry is "See what boxer briefs are available";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Jockstraps";
	now sortorder entry is 1;
	now description entry is "See what jockstraps are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Briefs"):
				say "[TPK_Male_BriefsMenu]"; [choose level 3 item sub-submenu]
			if (nam is "Boxer Briefs"):
				say "[TPK_Male_BoxerBriefsMenu]"; [choose level 3 item sub-submenu]
			if (nam is "Jockstraps"):
				say "[TPK_Male_JockstrapsMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[TPC male clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say TPK_Male_BriefsMenu: [Male clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of briefs would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "White Briefs";
	now sortorder entry is 1;
	now description entry is "Check out the white briefs";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "White Briefs"):
				say "[WhiteBriefsTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_male_underwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say WhiteBriefsTalk: [item selection (level 4)]
	say "     A pair of tight white briefs. Simple, yet functional. Judging by the appearance of the underwear, it's [']masculine['] and pretty [']basic['] looking. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Male_BriefsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain black greatcoat by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Male_BriefsMenu]"; [return to level 3 sub-submenu]

to say TPK_Male_BoxerBriefsMenu: [Male clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of boxer briefs would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Black Boxer Briefs";
	now sortorder entry is 1;
	now description entry is "Check out the black boxer briefs";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Black Boxer Briefs"):
				say "[BlackBoxerBriefsTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_male_underwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say BlackBoxerBriefsTalk: [item selection (level 4)]
	say "     A pair of black boxer briefs with a gray band of elastic at the top. Simple, yet functional. Judging by the appearance of the underwear, it's [']masculine['] and pretty [']basic['] looking. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Male_BoxerBriefsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain black boxer briefs by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Male_BoxerBriefsMenu]"; [return to level 3 sub-submenu]

to say TPK_Male_JockstrapsMenu: [Male clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of jockstrap would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Orange Jockstrap";
	now sortorder entry is 1;
	now description entry is "Check out the orange jockstrap";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Orange Jockstrap"):
				say "[OrangeJockstrapTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_male_underwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say OrangeJockstrapTalk: [item selection (level 4)]
	say "     A jockstrap in bright orange, clearly made for people who do not mind showing off quite a bit. Judging by the appearance of the jockstrap, it's [']masculine['] and pretty [']sexy['] while [']sporty['] looking. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Male_JockstrapsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain orange jockstrap by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Male_JockstrapsMenu]"; [return to level 3 sub-submenu]

Part 6 - Shoes

to say browse_TPK_male_shoes: [Male clothing category submenu (level 2 under the male clothing selector)]
	say "     Which style of shoes would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Combat Boots";
	now sortorder entry is 1;
	now description entry is "See what combat boots are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Combat Boots"):
				say "[browse_TPK_Male_CombatBootsMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[TPC male clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say browse_TPK_Male_CombatBootsMenu: [Male clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of combat boots would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Black Combat Boots";
	now sortorder entry is 1;
	now description entry is "Check out the black combat boots";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Black Combat Boots"):
				say "[BlackCombatBootsTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_male_shoes]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say BlackCombatBootsTalk: [item selection (level 4)]
	say "     A pair of black combat boots. They are quite sturdy and fairly heavy because of the steel caps in them. Judging by the appearance of the boots, it's [']masculine['] and pretty [']rebellious['] looking. It has a price sign that reads '30 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 30:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Male_CombatBootsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 30;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain black combat boots by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Male_CombatBootsMenu]"; [return to level 3 sub-submenu]

Section 2 - TPK female clothing section [Clothing That Increases Femininity]

The TPK female clothing section is a backdrop. It is in Pretty Kitty. Description of the TPK female clothing section is "[TPK female clothing section desc]".

to say TPK female clothing section desc:
	say "     The female clothing section holds many pieces of clothing and individual outfits, some of which catch your eye. Price tags on each of the articles of clothing have been darkened with a black marker, with the new price listed as in terms of freecreds. You can [link]browse[as]browse TPK female clothing[end link] in the female clothing section if you want.";

the scent of TPK female clothing section is "The female clothing section smells the same as the rest of the store.".

BrowseTPKFemaleClothing is an action applying to nothing.
understand "browse TPK female clothing" as BrowseTPKFemaleClothing.
understand "browse TPK female clothing selection" as BrowseTPKFemaleClothing.

check BrowseTPKFemaleClothing:
	If TPK female clothing section is not visible, say "What is it you want to browse?" instead;

carry out BrowseTPKFemaleClothing:
	say "[TPC female clothing selector]";

the scent of TPK female clothing section is "The female clothing section smells the same as the rest of the store.".

Part 1 - Base

to say TPC female clothing selector: [Main female clothing Menu (level 1)]
	say "     [bold type]You look at the available items and then decide to...[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the female headwear"; [line 671]
	now sortorder entry is 1;
	now description entry is "Check out headwear for women";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the female legwear"; [line 993]
	now sortorder entry is 2;
	now description entry is "Check out legwear for women";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the female underwear"; [line 1673]
	now sortorder entry is 3;
	now description entry is "Check out underwear for women";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the female shoes"; [line 1850]
	now sortorder entry is 3;
	now description entry is "Check out shoes for women";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Browse the female headwear"):
				say "[browse_TPK_female_headwear]";
			if (nam is "Browse the female legwear"):
				say "[browse_TPK_female_legwear]";
			if (nam is "Browse the female underwear"):
				say "[browse_TPK_female_underwear]";
			if (nam is "Browse the female shoes"):
				say "[browse_TPK_female_shoes]";
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

Part 2 - Headwear

to say browse_TPK_female_headwear: [Female clothing category submenu (level 2 under the female clothing selector)]
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
	choose a blank row in table of fucking options;
	now title entry is "Large Bows";
	now sortorder entry is 2;
	now description entry is "See what large bows are available";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Glasses";
	now sortorder entry is 3;
	now description entry is "See what glasses are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Bike Helmets"):
				say "[browse_TPK_Female_BikeHelmetsMenu]"; [choose level 3 item sub-submenu]
			if (nam is "Large Bows"):
				say "[browse_TPK_Female_LargeBowsMenu]"; [choose level 3 item sub-submenu]
			if (nam is "Glasses"):
				say "[browse_TPK_Female_GlassesMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[TPC female clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say browse_TPK_Female_BikeHelmetsMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which style of bike helmet would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Princess Bike Helmet";
	now sortorder entry is 1;
	now description entry is "Check out the princess bike helmet";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Princess Bike Helmet"):
				say "[PrincessBikeHelmetTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_headwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say PrincessBikeHelmetTalk: [item selection (level 4)]
	say "     A plastic foam bicycle helmet, complete with a pink shell covered with rainbows and unicorns, as well as a strap to fasten it to the wearer's head. Judging by the helmets appearance, it's [']feminine['] and pretty [']cute[']. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_BikeHelmetsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain princess bike helmet by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_BikeHelmetsMenu]"; [return to level 3 sub-submenu]

to say browse_TPK_Female_LargeBowsMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of large bow would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Large White Bow";
	now sortorder entry is 1;
	now description entry is "Check out the large white bow";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Large Black Bow";
	now sortorder entry is 2;
	now description entry is "Check out the large black bow";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Large Pink Bow";
	now sortorder entry is 3;
	now description entry is "Check out the large pink bow";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Large Polka Dot Bow";
	now sortorder entry is 4;
	now description entry is "Check out the large polka dot bow";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Large White Bow"):
				say "[LargeWhiteBowTalk]"; [choose level 4 item selection]
			if (nam is "Large Black Bow"):
				say "[LargeBlackBowTalk]"; [choose level 4 item selection]
			if (nam is "Large Pink Bow"):
				say "[LargePinkBowTalk]"; [choose level 4 item selection]
			if (nam is "Large Polka Dot Bow"):
				say "[LargePolkaDotBowTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_headwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say LargeWhiteBowTalk: [item selection (level 4)]
	say "     A large white bow with a glossy finish. It's appearance seems more fitting for someone of a much younger age, or someone who simply loves cartoons and anime. Judging by the bows appearance, it's [']feminine['] and pretty [']cute[']. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_LargeBowsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain large white bow by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_LargeBowsMenu]"; [return to level 3 sub-submenu]

to say LargeBlackBowTalk: [item selection (level 4)]
	say "     A large black bow with a glossy finish. It's appearance seems more fitting for someone of a much younger age, or someone who simply loves cartoons and anime. Judging by the bows appearance, it's [']feminine['] and pretty [']cute[']. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_LargeBowsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain large black bow by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_LargeBowsMenu]"; [return to level 3 sub-submenu]

to say LargePinkBowTalk: [item selection (level 4)]
	say "     A large pink bow with a glossy finish. It's appearance seems more fitting for someone of a much younger age, or someone who simply loves cartoons and anime. Judging by the bows appearance, it's [']feminine['] and pretty [']cute[']. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_LargeBowsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain large pink bow by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_LargeBowsMenu]"; [return to level 3 sub-submenu]

to say LargePolkaDotBowTalk: [item selection (level 4)]
	say "     A large polka dot bow with a glossy finish. It's appearance seems more fitting for someone of a much younger age, or someone who simply loves cartoons and anime. Judging by the bows appearance, it's [']feminine['] and pretty [']cute[']. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_LargeBowsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain large polka dot bow by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_LargeBowsMenu]"; [return to level 3 sub-submenu]

to say browse_TPK_Female_GlassesMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which style of glasses would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Rose-tinted Glasses";
	now sortorder entry is 1;
	now description entry is "Check out the rose-tinted glasses";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Rose-tinted Glasses"):
				say "[Rose-tintedGlassesTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_headwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say Rose-tintedGlassesTalk: [item selection (level 4)]
	say "     A pair of rose-tinted glasses with frilly edges. There even are some glass gemstones with reflective backing glued to them. Judging by the glasses appearance, it's [']feminine['] and pretty [']stylish[']. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_GlassesMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain rose-tinted glasses by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_GlassesMenu]"; [return to level 3 sub-submenu]

Part 3 - Legwear

to say browse_TPK_female_legwear: [Female clothing category submenu (level 2 under the female clothing selector)]
	say "     Which style of legwear would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Jogging Pants";
	now sortorder entry is 1;
	now description entry is "See what jogging pants are available";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Shorts";
	now sortorder entry is 2;
	now description entry is "See what shorts are available";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Skirts";
	now sortorder entry is 3;
	now description entry is "See what skirts are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Jogging Pants"):
				say "[browse_TPK_Female_JoggingPantsMenu]"; [choose level 3 item sub-submenu]
			if (nam is "Shorts"):
				say "[browse_TPK_Female_ShortsMenu]"; [choose level 3 item sub-submenu]
			if (nam is "Skirts"):
				say "[browse_TPK_Female_SkirtsMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[TPC female clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say browse_TPK_Female_JoggingPantsMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of jogging pants would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Pink Jogging Pants";
	now sortorder entry is 1;
	now description entry is "Check out the pink jogging pants";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Pink Jogging Pants"):
				say "[PinkJoggingPantsTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_legwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say PinkJoggingPantsTalk: [item selection (level 4)]
	say "     A pair of pink jogging pants made from fairly soft and stretchy fabric, it also has swirling hearts across the material. Judging by the pants appearance, it's [']feminine['] and pretty [']sporty['] looking. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_JoggingPantsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain pink jogging pants by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_JoggingPantsMenu]"; [return to level 3 sub-submenu]

to say browse_TPK_Female_ShortsMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which style of shorts would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Flowered Bermuda Shorts";
	now sortorder entry is 1;
	now description entry is "Check out the flowered bermuda shorts";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Flowered Bermuda Shorts"):
				say "[FloweredBermudaShortsTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_legwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say FloweredBermudaShortsTalk: [item selection (level 4)]
	say "     A pair of wide shorts covered in patterns of leaves and bright flowers. They look fitting to be worn by a tourist or vacationer. Judging by the shorts appearance, it's [']feminine['] and pretty [']basic['] looking. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_ShortsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain flowered bermuda shorts by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_ShortsMenu]"; [return to level 3 sub-submenu]

to say browse_TPK_Female_SkirtsMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which style of skirt would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Pencil Skirts";
	now sortorder entry is 1;
	now description entry is "Check out the pencil skirts";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mini Skirts";
	now sortorder entry is 1;
	now description entry is "Check out the mini skirts";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Gypsy Skirts";
	now sortorder entry is 1;
	now description entry is "Check out the gypsy skirts";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Pencil Skirts"):
				say "[browse_TPK_Female_PencilSkirtsMenu]"; [choose level 4 item selection]
			if (nam is "Mini Skirts"):
				say "[browse_TPK_Female_MiniSkirtsMenu]"; [choose level 4 item selection]
			if (nam is "Gypsy Skirts"):
				say "[browse_TPK_Female_GypsySkirtsMenu]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_legwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say browse_TPK_Female_PencilSkirtsMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of pencil skirt would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Light-blue Pencil Skirt";
	now sortorder entry is 1;
	now description entry is "Check out the light-blue pencil skirt";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Light-blue Pencil Skirt"):
				say "[Light-bluePencilSkirtTalk]"; [choose level 5 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_legwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say Light-bluePencilSkirtTalk: [item selection (level 5)]
	say "     A light-blue pencil skirt, long enough to cover an average person's whole thighs, down to the knees. Judging by the skirts appearance, it's [']feminine['] and pretty [']stylish['] looking. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_SkirtsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain light-blue pencil skirt by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_SkirtsMenu]"; [return to level 3 sub-submenu]

to say browse_TPK_Female_MiniSkirtsMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of mini skirt would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Black Mini Skirt";
	now sortorder entry is 1;
	now description entry is "Check out the black mini skirt";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Pink Mini Skirt";
	now sortorder entry is 1;
	now description entry is "Check out the pink mini skirt";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Black Mini Skirt"):
				say "[BlackMiniSkirtTalk]"; [choose level 5 item selection]
			if (nam is "Pink Mini Skirt"):
				say "[PinkMiniSkirtTalk]"; [choose level 5 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_legwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say BlackMiniSkirtTalk: [item selection (level 5)]
	say "     A simple black miniskirt, barely long enough to cover someone's thighs even halfway. Judging by the skirts appearance, it's [']feminine['] and pretty [']sexy['] and [']slutty['] looking. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_SkirtsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain black miniskirt by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_SkirtsMenu]"; [return to level 3 sub-submenu]

to say PinkMiniSkirtTalk: [item selection (level 5)]
	say "     A simple pink miniskirt, barely long enough to cover someone's thighs even halfway. Judging by the skirts appearance, it's [']feminine['] and pretty [']basic['] and [']slutty['] looking. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_SkirtsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain pink miniskirt by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_SkirtsMenu]"; [return to level 3 sub-submenu]

to say browse_TPK_Female_GypsySkirtsMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of gypsy skirt would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Gypsy Floral Skirt";
	now sortorder entry is 1;
	now description entry is "Check out the gypsy floral skirt";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Gypsy Floral Skirt"):
				say "[GypsyFloralSkirtTalk]"; [choose level 5 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_legwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say GypsyFloralSkirtTalk: [item selection (level 5)]
	say "     A light full length skirt, covered with a floral print that depicts cherry blossoms. Judging by the skirts appearance, it's [']feminine['] and pretty [']sexy['] looking. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[browse_TPK_Female_SkirtsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain gypsy floral skirt by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[browse_TPK_Female_SkirtsMenu]"; [return to level 3 sub-submenu]

Part 4 - Underwear

to say browse_TPK_female_underwear: [Female clothing category submenu (level 2 under the female clothing selector)]
	say "     Which type of underwear would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bras";
	now sortorder entry is 1;
	now description entry is "See what bras are available";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Panties";
	now sortorder entry is 2;
	now description entry is "See what panties are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Bras"):
				say "[TPK_Female_BrasMenu]"; [choose level 3 item sub-submenu]
			if (nam is "Panties"):
				say "[TPK_Female_PantiesMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[TPC female clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say TPK_Female_BrasMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of bras would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Simple Black Bra";
	now sortorder entry is 1;
	now description entry is "Check out the simple black bra";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Simple Black Bra"):
				say "[SimpleBlackBraTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_underwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say SimpleBlackBraTalk: [item selection (level 4)]
	say "     A simple black bra made of a firm and glossy material. As far as bras go this one is fairly comfortable to move around in. Judging by the bras appearance, it's [']feminine['] and pretty [']basic['] looking. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Female_BrasMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain simple black bra by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Female_BrasMenu]"; [return to level 3 sub-submenu]

to say TPK_Female_PantiesMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of panties would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Pink Panties";
	now sortorder entry is 1;
	now description entry is "Check out the pink panties";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Pink Panties"):
				say "[PinkPantiesTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_underwear]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say PinkPantiesTalk: [item selection (level 4)]
	say "     A pair of pink panties with frilly edges. Judging by the appearance of the underwear, it's [']feminine['] and pretty [']basic['] looking. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Female_PantiesMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain pink panties by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Female_PantiesMenu]"; [return to level 3 sub-submenu]

Part 5 - Shoes

to say browse_TPK_female_shoes: [Female clothing category submenu (level 2 under the female clothing selector)]
	say "     Which type of shoes would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Pumps";
	now sortorder entry is 1;
	now description entry is "See what pumps are available";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Stilettos";
	now sortorder entry is 2;
	now description entry is "See what stilettos are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Pumps"):
				say "[TPK_Female_PumpsMenu]"; [choose level 3 item sub-submenu]
			if (nam is "Stilettos"):
				say "[TPK_Female_StilettosMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[TPC female clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say TPK_Female_PumpsMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of pumps would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bright-red Pumps";
	now sortorder entry is 1;
	now description entry is "Check out the bright-red pumps";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Bright-red Pumps"):
				say "[Bright-redPumpsTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_shoes]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say Bright-redPumpsTalk: [item selection (level 4)]
	say "     A pair of bright-red woman's pumps, with moderately high heels. Not exactly the best thing to run around wearing at top speed. Judging by the appearance of the heels, it's [']feminine['] and pretty [']stylish['] looking. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Female_PumpsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain bright-red pumps by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Female_PumpsMenu]"; [return to level 3 sub-submenu]

to say TPK_Female_StilettosMenu: [Female clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which color of stilettos would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Black Stiletto Heels";
	now sortorder entry is 1;
	now description entry is "Check out the black stiletto heels";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Black Stiletto Heels"):
				say "[BlackStilettoHeelsTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_TPK_female_shoes]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say BlackStilettoHeelsTalk: [item selection (level 4)]
	say "     A pair of black slingbacks with very high heels, each shoe exposing your toes. Not exactly the best thing to run around wearing at top speed. Judging by the appearance of the heels, it's [']feminine['] and pretty [']sexy['] looking. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[TPK_Female_StilettosMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Andromeda thanks you for your purchase and hands you the item.";
			ItemGain black stiletto heels by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[TPK_Female_StilettosMenu]"; [return to level 3 sub-submenu]

Book 3 - Restrained Desire [Store formally known as the "pornstore" within the redlight district]

Section 1 - RD costume clothing section

The RD costume clothing section is a backdrop. It is in Restrained Desire. Description of the RD costume clothing section is "[RD costume clothing section desc]".

to say RD costume clothing section desc:
	say "     The costume clothing section holds many pieces of clothing and individual outfits, many of these are part of roleplay outfits. Price tags on each of the articles of clothing have been darkened with black nail polish, with the new price listed as in terms of freecreds. You can [link]browse[as]browse RD costume clothing[end link] in the costume clothing section if you want.";

the scent of TPK male clothing section is "The male clothing section smells the same as the rest of the store.".

BrowseRDCostumeClothing is an action applying to nothing.
understand "browse RD costume clothing" as BrowseRDCostumeClothing.
understand "browse RD costume clothing selection" as BrowseRDCostumeClothing.

check BrowseRDCostumeClothing:
	If RD costume clothing section is not visible, say "What is it you want to browse?" instead;

carry out BrowseRDCostumeClothing:
	say "[RD costume clothing selector]";

the scent of RD costume clothing section is "The costume clothing section smells the same as the rest of the store.".

Part 1 - Base

to say RD costume clothing selector: [Main costume clothing Menu (level 1)]
	say "     [bold type]You look at the available items and then decide to...[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the biker section"; [line 2096]
	now sortorder entry is 1;
	now description entry is "Check out the biker section";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the underwear section"; [line 2282]
	now sortorder entry is 2;
	now description entry is "Check out the underwear section";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the wild west section"; [line 405]
	now sortorder entry is 3;
	now description entry is "Check out the wild west section";
	[
	choose a blank row in table of fucking options;
	now title entry is "Browse the BDSM section"; [line 507]
	now sortorder entry is 4;
	now description entry is "Check out the BDSM section";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Browse the night walker section"; [line 507]
	now sortorder entry is 5;
	now description entry is "Check out the night walker section";
	]
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Browse the biker section"):
				say "[browse_RD_biker_section]";
			if (nam is "Browse the underwear section"):
				say "[browse_RD_underwear_section]";
			if (nam is "Browse the wild west section"):
				say "[browse_RD_wildwest_section]";
			[
			if (nam is "Browse the BDSM section"):
				say "[browse_RD_BDSM_section]";
			]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		clear the screen and hyperlink list;

Part 2 - Biker Section

to say browse_RD_biker_section: [costume clothing category submenu (level 2 under the costume clothing selector)]
	say "     Which type of biker gear would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Biker Helmets";
	now sortorder entry is 1;
	now description entry is "See what biker helmets are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Biker Helmets"):
				say "[RD_Biker_HelmetsMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[RD costume clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say RD_Biker_HelmetsMenu: [Costume clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which type of biker helmet would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Black Motorcycle Helmet";
	now sortorder entry is 1;
	now description entry is "Check out the black motorcycle helmet";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Flaming Motorcycle Helmet";
	now sortorder entry is 2;
	now description entry is "Check out the flaming motorcycle helmet";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Succubus Motorcycle Helmet";
	now sortorder entry is 3;
	now description entry is "Check out the succubus motorcycle helmet";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Incubus Motorcycle Helmet";
	now sortorder entry is 4;
	now description entry is "Check out the incubus motorcycle helmet";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Black Motorcycle Helmet"):
				say "[BlackMotorcycleHelmetTalk]"; [choose level 4 item selection]
			if (nam is "Flaming Motorcycle Helmet"):
				say "[FlamingMotorcycleHelmetTalk]"; [choose level 4 item selection]
			if (nam is "Succubus Motorcycle Helmet"):
				say "[SuccubusMotorcycleHelmetTalk]"; [choose level 4 item selection]
			if (nam is "Incubus Motorcycle Helmet"):
				say "[IncubusMotorcycleHelmetTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_RD_biker_section]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say BlackMotorcycleHelmetTalk: [item selection (level 4)]
	say "     A black motorcycle helmet with a clear visor. Heavy, but protective. Judging by the helmets appearance, it's [']unisex['] and pretty [']cool[']. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[RD_Biker_HelmetsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Lisa thanks you for your purchase and hands you the item.";
			ItemGain black motorcycle helmet by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[RD_Biker_HelmetsMenu]"; [return to level 3 sub-submenu]

to say FlamingMotorcycleHelmetTalk: [item selection (level 4)]
	say "     A black motorcycle helmet with a clear visor and painted flames rising along the sides. Heavy, but protective. Judging by the helmets appearance, it's [']unisex['] and pretty [']rebellious[']. It has a price sign that reads '20 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 20:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[RD_Biker_HelmetsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 20;
			say "     Lisa thanks you for your purchase and hands you the item.";
			ItemGain flaming motorcycle helmet by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[RD_Biker_HelmetsMenu]"; [return to level 3 sub-submenu]

to say SuccubusMotorcycleHelmetTalk: [item selection (level 4)]
	say "     A black motorcycle helmet with a clear visor and a picture of a sexy succubus with her legs spread over your face. Heavy, but protective. Judging by the helmets appearance, it's [']feminine['] and pretty [']sexy[']. It has a price sign that reads '30 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 30:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[RD_Biker_HelmetsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 30;
			say "     Lisa thanks you for your purchase and hands you the item.";
			ItemGain succubus motorcycle helmet by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[RD_Biker_HelmetsMenu]"; [return to level 3 sub-submenu]

to say IncubusMotorcycleHelmetTalk: [item selection (level 4)]
	say "     A black motorcycle helmet with a clear visor and a picture of a sexy incubus jerking off over your face. Heavy, but protective. Judging by the helmets appearance, it's [']masculine['] and pretty [']sexy[']. It has a price sign that reads '30 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 30:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[RD_Biker_HelmetsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 30;
			say "     Lisa thanks you for your purchase and hands you the item.";
			ItemGain incubus motorcycle helmet by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[RD_Biker_HelmetsMenu]"; [return to level 3 sub-submenu]

Part 2 - Underwear Section

to say browse_RD_underwear_section: [costume clothing category submenu (level 2 under the costume clothing selector)]
	say "     Which type of underwear would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Briefs";
	now sortorder entry is 1;
	now description entry is "See what briefs are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Briefs"):
				say "[RD_BriefsMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[RD costume clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say RD_BriefsMenu: [Costume clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which type of briefs would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Black Mesh Briefs";
	now sortorder entry is 1;
	now description entry is "Check out the black mesh briefs";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Black Mesh Briefs"):
				say "[BlackMeshBriefsTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_RD_underwear_section]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say BlackMeshBriefsTalk: [item selection (level 4)]
	say "     Briefs made of sheer black mesh. You can literally see right through it. Judging by the appearance of the briefs, it's [']masculine['] and pretty [']sexy['] looking. It has a price sign that reads '10 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 10:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[RD_BriefsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 10;
			say "     Lisa thanks you for your purchase and hands you the item.";
			ItemGain black mesh briefs by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[RD_BriefsMenu]"; [return to level 3 sub-submenu]

Part 3 - Wild West Section

to say browse_RD_wildwest_section: [costume clothing category submenu (level 2 under the costume clothing selector)]
	say "     Which type of wild west would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Cowboy Hats";
	now sortorder entry is 1;
	now description entry is "See what cowboy hats are available";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Cowboy Boots";
	now sortorder entry is 1;
	now description entry is "See what cowboy boots are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Cowboy Hats"):
				say "[RD_CowboyHatsMenu]"; [choose level 3 item sub-submenu]
			if (nam is "Cowboy Boots"):
				say "[RD_CowboyBootsMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[RD costume clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say RD_CowboyHatsMenu: [Costume clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which style of cowboy hat would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Cow-print Cowboy Hat";
	now sortorder entry is 1;
	now description entry is "Check out the cow-print cowboy hat";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Cow-print Cowboy Hat"):
				say "[Cow-printCowboyHatTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_RD_wildwest_section]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say Cow-printCowboyHatTalk: [item selection (level 4)]
	say "     A cowboy hat that is covered in cow hide, the top has two small bull horns sticking out of the side. They are sure to make you look like a real fancy cowpoke. Judging by the appearance of the boots, it's [']masculine['] and pretty [']sporty['] yet [']cool['] looking. It has a price sign that reads '30 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 30:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[RD_CowboyHatsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 30;
			say "     Lisa thanks you for your purchase and hands you the item.";
			ItemGain cow-print cowboy hat by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[RD_CowboyHatsMenu]"; [return to level 3 sub-submenu]

to say RD_CowboyBootsMenu: [Costume clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which style of cowboy boots would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Cow-print Cowgirl Boots";
	now sortorder entry is 1;
	now description entry is "Check out the cow-print cowgirl boots";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Cow-print Cowgirl Boots"):
				say "[Cow-printCowgirlBootsTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_RD_wildwest_section]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say Cow-printCowgirlBootsTalk: [item selection (level 4)]
	say "     A pair of cowgirl boots that are covered in cow hide, the tops of each boot are covered in fringe and bedazzled in rhinestones. They are sure to make using stirrups easier, and can protect against rattlesnake bites. Judging by the appearance of the boots, it's [']feminine['] and pretty [']sporty['] yet [']sexy['] looking. It has a price sign that reads '30 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 30:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[RD_CowboyBootsMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 30;
			say "     Lisa thanks you for your purchase and hands you the item.";
			ItemGain cow-print cowgirl boots by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[RD_CowboyBootsMenu]"; [return to level 3 sub-submenu]

[
Part 4 - BDSM Section

to say browse_RD_BDSM_section: [costume clothing category submenu (level 2 under the costume clothing selector)]
	say "     Which type of BDSM gear would you like to check out?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Masks";
	now sortorder entry is 1;
	now description entry is "See what masks are available";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Masks"):
				say "[RD_MasksMenu]"; [choose level 3 item sub-submenu]
		else if calcnumber is 99:
			say "[RD costume clothing selector]"; [return to level 1 selector]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say RD_MasksMenu: [Costume clothing category sub-submenu (level 3 under the category submenu)]
	say "     [bold type]Which type of mask would you like to check out?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Latex Mouse Mask";
	now sortorder entry is 1;
	now description entry is "Check out the latex mouse mask";
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
			[
			say "[title entry]: [description entry]?";
			if player consents:
			]
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Latex Mouse Mask"):
				say "[LatexMouseMaskTalk]"; [choose level 4 item selection]
			wait for any key;
		else if calcnumber is 99:
			say "[browse_RD_BDSM_section]"; [return to level 2 submenu]
		else if calcnumber is 100:
			now sextablerun is 1;
			say "     You step back from the section that you were investigating.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], 99 to return to the previous menu or 100 to exit.";
	clear the screen and hyperlink list;

to say LatexMouseMaskTalk: [item selection (level 4)]
	say "     A dark-purple mask in the shape of an innocent and cute lil['] mouse, however in contradiction to its sweet appearance it has words like [']Squeak-Slut['] and [']Cheese-Whore[']. The mask is skin-tight with a buckle in back to hold it in place. Judging by the appearance of the briefs, it's [']masculine['] and pretty [']sexy['] looking. It has a price sign that reads '30 freecred'.";
	LineBreak;
	say "     [bold type]Is this what you would like to purchase?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes!";
	say "     ([link]N[as]n[end link]) - No!";
	if player consents:
		if freecred < 30:
			say "     You don't seem to have enough freecreds to buy that.";
			LineBreak;
			say "[RD_MasksMenu]"; [return to level 3 sub-submenu]
		else:
			decrease freecred by 30;
			say "     Lisa thanks you for your purchase and hands you the item.";
			ItemGain latex mouse mask by 1;
			[shopping done, exiting all menus in turn]
	else:
		say "     You put the item back and look over the selection again.";
		LineBreak;
		say "[RD_MasksMenu]"; [return to level 3 sub-submenu]
]

Part 5 - Night Walker Section



Book 4 - The Painted Dragon [Store found through Harolds quests]



Store Mechanics ends here.
