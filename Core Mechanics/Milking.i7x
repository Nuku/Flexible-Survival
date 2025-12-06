Version 2 of Milking by Core Mechanics begins here.
[ Version 2 - exported from the story.ni and put into its own file]

Table of Game Objects (continued)
name	desc	weight	object
"mothers milk"	"Delicious milk made from your own tender breasts."	1	mothers milk
"distilled milk"	"Some creature's milk boiled down to a concentrated, powdery form? That can't be dangerous!"	1	distilled milk
"panther milk"	"The thick, luscious milk of one of the panther taurs."	1	panther milk
"chocolate milk"	"Creamy milk with a white chocolate taste."	1	chocolate milk
"vixen milk"	"A thin milk with a faintly medicinal taste, like the silvery vixens it is from."	1	vixen milk
"sweet milk"	"A creamy, sweet milk with a faintly honey-like taste."	1	sweet milk
"macho milk"	"A creamy, energizing milk with a faintly spicy taste."	1	macho milk

distilled milk is a grab object. It is not milky.

Usedesc of distilled milk is "[distilled milk use]".

to say distilled milk use:
	say "     Ugh, dry milk. It takes some effort to force the almost sickeningly sweet powder down your throat, but once it hits your belly, your body is wracked with powerful waves of alternating lust and breathlessness.";
	increase thirst of Player by 5;
	grow breasts by 3;

mothers milk is a grab object. Understand "milk" as mothers milk. Purified of mothers milk is "distilled milk". mothers milk is milky.

Usedesc of mothers milk is "[mothers milk use]".

to say mothers milk use:
	let healed be 15 + level of Player + ((Stamina of Player minus 10) divided by 2);
	if "Fertile" is listed in the feats of Player:
		now healed is ( healed times 120) divided by 100;
	if "Breeding True" is listed in the feats of Player:
		now healed is ( healed times 105 ) divided by 100;
	if "Litter Bearer" is listed in the feats of Player:
		now healed is ( healed times 125 ) divided by 100;
	if "Bouncy Bouncy" is listed in the feats of Player:
		now healed is ( healed times 115 ) divided by 100;
	if "Wild Womb" is listed in the feats of Player:
		now healed is ( healed times 105 ) divided by 100;
	say "     Drinking the special milk, you feel revitalized as a wave of motherly care sweeps through you.";
	PlayerHealed healed;
	PlayerDrink 20;

panther milk is a grab object. Understand "milk" as panther milk. panther milk is infectious. Strain of panther milk is "Panther Taur". Purified of panther milk is "distilled milk". panther milk is milky.
chocolate milk is a grab object. Understand "milk" as chocolate milk. chocolate milk is infectious. Strain of chocolate milk is "Chocolate Lab". Purified of chocolate milk is "distilled milk". chocolate milk is milky.
vixen milk is a grab object. Understand "milk" as vixen milk. vixen milk is infectious. Strain of vixen milk is "Vixen Nurse". Purified of vixen milk is "distilled milk". vixen milk is milky.
sweet milk is a grab object. Understand "milk" as sweet milk. sweet milk is infectious. Strain of sweet milk is "Cow-babe Female". Purified of sweet milk is "distilled milk". sweet milk is milky.
macho milk is a grab object. Understand "milk" as macho milk. macho milk is infectious. Strain of macho milk is "Cow-boi Male". Purified of macho milk is "distilled milk". macho milk is milky.
[cum/milk object will come from creatures]
lastmilking is a number that varies. lastmilking is usually 500.

PlayerBreastMilking is an action applying to nothing.
understand "milkme" as PlayerBreastMilking.
understand "milk me/myself" as PlayerBreastMilking.
lastBreastMilking is a number that varies. [@Tag:NotSaved] lastBreastMilking is usually 500.

Check PlayerBreastMilking:
	if Nipple Count of Player is 0 or Breast Size of Player < 2:
		say "You don't appear to have anything worth milking." instead;
	if BodyName of Player is not listed in Infections of AlwaysLacList and Cunt Count of Player < 1 and player is not mpreg_ok:
		say "Your breasts don't seem ready to lactate." instead;
	else if lastBreastMilking - turns < 3:
		say "Your breasts have been drained recently. You'll need to wait before another worthwhile milking." instead;

Carry out PlayerBreastMilking:
	let bottles be 0;
	let MilkVolume be ( Breast Size of Player plus ( ( Nipple Count of Player divided by 2 ) minus 1 ) ) divided by 2;
	if "Fertile" is listed in the feats of Player:
		increase MilkVolume by 1;
	if "Litter Bearer" is listed in the feats of Player:
		increase MilkVolume by 1;
	if Player is impreg_now:
		if MilkVolume > 1:
			now MilkVolume is MilkVolume / 2;
		ItemGain mothers milk by 1;
	now lastBreastMilking is turns;
	if Player is impreg_now, increase lastBreastMilking by 1;
	let Searchstring be BodyName of Player;
	if there is a name of Searchstring in the Table of Random Critters:
		choose a row with name of Searchstring in the Table of Random Critters;
		if MilkVolume > 0 and MilkItem Entry is not "" and MilkItem Entry is not " ":
			say "You milk your own breasts, gathering the rich fluid produced in [if MilkVolume is 1]a bottle and labeling it[else]bottles and labeling them[end if]";
			if MilkVolume is greater than 8: [max milkvolume number is 8 in itemGain of milk]
				let MilkVolume be 8;
				say ". As you run out of empty bottles, the remaining milk starts streaming down and forms a puddle on the ground";
				increase Libido of Player by 1;
			say ".";
			ItemGain MilkItem Entry by MilkVolume;
		else: [no milk item exists]
			say "You milk your own breasts, providing relief from their fullness.";

PlayerCockmilking is an action applying to nothing.
understand "jerkoff" or "jerk off" or "beatoff" or "beat off" or "whackoff" or "whack off" or "wankoff" or "wank off/--" or "pawoff" or "paw off" or "fap" or "beat my/the meat" or "choke the chicken" as PlayerCockmilking.
lastCockMilking is a number that varies. [@Tag:NotSaved] lastCockMilking is usually 500.

check PlayerCockmilking:
	if Cock Count of Player is 0:
		say "You don't appear to have a cock.";
		stop the action;
	if lastCockMilking - turns < 1:
		say "Your balls have been drained recently. You'll need to wait before another worthwhile milking.";
		stop the action;

Carry out PlayerCockmilking:
	let CumVolume be 0; [calculate depending on ball size]
	if Ball Size of Player > 1:
		increase CumVolume by Ball Size of Player - 1;
	else:
		increase CumVolume by Ball Size of Player;
	now lastCockMilking is turns;
	let Searchstring be CockName of Player;
	if there is a name of Searchstring in the Table of Random Critters:
		choose a row with name of Searchstring in the Table of Random Critters;
		if CumVolume > 0 and CumItem Entry is not "" and CumItem Entry is not " ":
			say "You jerk off your [Cock of Player] cock, holding [if CumVolume is 1]a plastic bottle[else]plastic bottles[end if] to catch what semen you produce. After labeling [if CumVolume is 1]it, you pack it[else]them, you pack them[end if] away.";
			ItemGain CumItem Entry by CumVolume;
			now Libido of Player is ( 9 * Libido of Player ) / 10;
		else: [no cum item exists]
			say "You jerk off your [Cock of Player] cock, spraying your seed onto the ground and providing some relief for your aching balls.";
			now Libido of Player is ( 4 * Libido of Player ) / 5;

Milking ends here.
