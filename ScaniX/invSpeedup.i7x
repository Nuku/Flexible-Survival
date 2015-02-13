invSpeedup by ScaniX begins here.
 
ScXInventorying is an action applying to nothing.
understand "scxinv" as ScXInventorying.
carry out ScXInventorying:
	say "-ScaniX Inv-[line break]";
	if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
	sort invent of player;
	let dseed be 0;
	let jblouse be 0;
	if demon seed is owned, now dseed is 1;
	if Janice's blouse is owned, now jblouse is 1;
	say "Peeking into your backpack, you see: [if the number of owned grab objects is 0]Nothing[otherwise][line break][end if]";
	now hyperlink list is {};
	let itemactions be {{"U", "use"}, {"L", "look"}, {"S", "smell"}, {"D", "drop"}, {"J", "junk"}, {"X", "junkall"}};
	if the number of owned grab objects is greater than 0:
		say "[bold type][bracket]U[close bracket][roman type]se, [bold type][bracket]L[close bracket][roman type]ook, [bold type][bracket]S[close bracket][roman type]mell, [bold type][bracket]D[close bracket][roman type]rop, [bold type][bracket]J[close bracket][roman type]unk, [bold type][bracket]X[close bracket][roman type]Junkall, [if the number of trader in the location of the player > 0 or ( Ronda is visible and hp of Ronda is 0 and dseed is 1 ) or ( Kristen is visible and hp of Kristen is 10 and jblouse is 1 ) or ( Christy is visible and carried of super spicy sausage > 0 and hp of Christy > 1 and hp of Christy < 50 )], [bold type][bracket]T[close bracket][roman type]rade[end if][if the number of smither in the location of the player > 0], [bold type][bracket]I[close bracket][roman type]mprove[end if], [bold type](*)[roman type] equipped/wielded, [bold type](+)[roman type] improved.";
		let weight be 0;
		[5 more than in the original version, but therefore the indicators will not add to it anymore]
		let baseavailcolumns be a number;
		if invcolumns > 1:
			now baseavailcolumns is 20;
		otherwise:
			now baseavailcolumns is 29;
		let owneditemindex be a number;
		[do this here as the check takes quite some time for some reason]
		let needstradecheck be 0;
		if Ronda is visible and hp of Ronda is 0:
			now needstradecheck is 1;
		otherwise if Xerxes is visible and lust of Xerxes is 2:
			now needstradecheck is 1;
		otherwise if Helen is visible and lust of Helen is 2:
			now needstradecheck is 1;
		otherwise if Kristen is visible and hp of Kristen is 10:
			now needstradecheck is 1;
		otherwise if Christy is visible and hp of Christy > 1 and hp of Christy < 50:
			now needstradecheck is 1;
		[go through all the stuff]
		repeat with x running from 1 to the number of rows in the table of game objects:
			choose row x in the table of game objects;
			let number be carried of object entry;
			if number > 0:
				increase owneditemindex by 1;
				let itemname be name entry;
				[line feed or switch to next column]
				if remainder after dividing owneditemindex by invcolumns is 1:
					say "[line break]";
				otherwise:
					say "  --  ";
				[new (old) linking without text capturing]
				say "[variable letter spacing]";
				if hypernull is not 1:
					repeat with itemaction running through itemactions:
						say "[link item (itemname) for (itemaction)]";
				if needstradecheck is 1 and trade of object entry is empty:
					let notval be 0;
					if Ronda is visible and hp of Ronda is 0 and itemname is "demon seed":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Ronda[end link]";
					if Xerxes is visible and lust of Xerxes is 2 and itemname is "awesome fruit":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Xerxes[end link]";
					if Helen is visible and lust of Helen is 2 and itemname is "awesomer fruit":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Helen[end link]";
					if Kristen is visible and hp of Kristen is 10 and itemname is "Janice's blouse":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Kristen[end link]";
					if Christy is visible and hp of Christy > 1 and hp of Christy < 50 and itemname is "super spicy sausage":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Christy[end link]";
				otherwise if the number of trader in the location of the player is greater than 0:
					let tradeguy be a random trader in the location of the player;
					say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to [tradeguy][end link]";
				if (((object entry is armament or (object entry is equipment and AC of object entry > 0 and effectiveness of object entry > 0)) and object entry is not improved) or the itemname is "nanite collector") and the number of smither in the location of the player is greater than 0:
					say " [link][bracket][bold type]I[roman type][close bracket][as]upgrade [itemname][end link]";
				[get available columns, plus 6 to show the increase to the original value]
				let availcolumns be baseavailcolumns;
				[add use and improve indicators which will reduce the available width for the item name]
				let useindicator be "";
				if (object entry is wielded and object entry is armament) or (object entry is equipment and object entry is equipped):
					now useindicator is " (*)";
					now availcolumns is availcolumns minus 4;
				let improveindicator be "";
				if object entry is improved and ( object entry is armament or object entry is equipment ):
					now improveindicator is " (+)";
					now availcolumns is availcolumns minus 4;
				[print item name and indicators]
				say "[fixed letter spacing][itemname formatted to (availcolumns) characters][useindicator][improveindicator]";
				let weighttxt be text;
				let weightnum be weight entry times number;
				say " x [number]([if weightnum < 10] [end if][weightnum] lbs)";
				increase weight by weightnum;
		say "[line break]";
		say "[variable letter spacing]Total Weight: [weight]/[capacity of player] lbs. [if the player is overburdened]*OVERBURDENED*[line break][end if]";
	if scenario is "Researcher" or nanitemeter > 0:
		say "(You may see your collection of vials using [link][bold type]vial inventory[roman type][end link] or [link][bold type]vinv[roman type][end link] for short.)";
	say "[line break]";

To say link item (itemname - a text) for (itemaction - a list of texts):
	let linkcommand be the substituted form of "[entry 2 of itemaction] [itemname]";
	add linkcommand to hyperlink list;
	let invlinkindex be the number of entries of hyperlink list;
	say "[set link (invlinkindex)][bracket][entry 1 of itemaction][close bracket][terminate link] ";		
	
invSpeedup ends here.
