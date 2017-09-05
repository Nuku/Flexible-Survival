Version 1 of Navigation by Core Mechanics begins here.

destinationcheck is an action applying to nothing.

understand "navigate" as destinationcheck.
understand "nav" as destinationcheck.

carry out destinationcheck:
	[ Note: The city areas and locations within are sorted alphabetically, please put new rooms in the right spots as you add them ]
	[ Start of primary rooms - Grey Abbey Library and Trevor Labs ]
	say "[bold type]Primary Rooms[roman type]: [link][bracket]Grey Abbey Library[close bracket][as]nav Grey Abbey Library[end link]";
	if Outside Trevor Labs is known:
		say "| [link][bracket]Trevor Labs[close bracket][as]nav Outside Trevor Labs[end link] ";
	say "[line break]";
	[start of the capitol area]
	if Approaching the Capitol Building is known or Disused Garage is known or Office Den is known or Orc Lair Side Entrance is known:
		say "[bold type]Capitol District[roman type]: ";
		if Approaching the Capitol Building is known:
			say "[link][bracket]Approaching the Capitol Building[close bracket][as]nav Approaching the Capitol Building[end link] - ";
		if Disused Garage is known:
			say "| [link][bracket]Disused Garage[close bracket][as]nav Disused Garage[end link] ";
		if Office Den is known:
			say "| [link][bracket]Office Den[close bracket][as]nav Office Den[end link] ";
		if Orc Lair Side Entrance is known:
			say "| [link][bracket]Orc Lair[close bracket][as]nav Orc Lair Side Entrance[end link] ";
		say "[line break]";
	[a subsection of the 'outside' area (named Central City here)]
	if Camp Bravo Entrance is known or Green Apartment is known or Fire Station 86 is known or Mini-Lab is known or Pediatrics Lobby is known or Pig Pen is known or Police Station is known or Rabbit Den is known or Red Apartment is known or Tyr's Club is known:
		say "[bold type]Central City[roman type]: ";
		if Camp Bravo Entrance is known:
			say "| [link][bracket]Camp Bravo[close bracket][as]nav Camp Bravo Entrance[end link] ";
		if Green Apartment is known:
			say "| [link][bracket]Green Apartment[close bracket][as]nav Green Apartment[end link] ";
		if Fire Station 86 is known:
			say "| [link][bracket]Fire Station 86[close bracket][as]nav Fire Station 86[end link] ";
		if Mini-Lab is known:
			say "| [link][bracket]Mini-Lab[close bracket][as]nav Mini-Lab[end link] ";
		if Pediatrics Lobby is known:
			say "| [link][bracket]Pediatrics Lobby[close bracket][as]nav Pediatrics Lobby[end link] ";
		if Pig Pen is known:
			say "| [link][bracket]Pig Pen[close bracket][as]nav Pig Pen[end link] ";
		if Police Station is known:
			say "| [link][bracket]Police Station[close bracket][as]nav Police Station[end link] ";
		if Rabbit Den is known:
			say "| [link][bracket]Rabbit Den[close bracket][as]nav Rabbit Den[end link] ";
		if Red Apartment is known:
			say "| [link][bracket]Red Apartment[close bracket][as]nav Red Apartment[end link] ";
		if Tyr's Club is known:
			say "| [link][bracket]Tyr's Club[close bracket][as]nav Tyr's Club[end link] ";
		say "[line break]";
	[start of the park area]
	if Park Entrance is known or Equinoid Camp is known or Lion's Den is known:
		say "[bold type]City Park[roman type]: ";
		if Park Entrance is known:
			say "[link][bracket]Park Entrance[close bracket][as]nav Park Entrance[end link] - ";
		if Equinoid Camp is known:
			say "| [link][bracket]Equinoid Camp[close bracket][as]nav Equinoid Camp[end link] ";
		if Lion's Den is known:
			say "| [link][bracket]Lion's Den[close bracket][as]nav Lion's Den[end link] ";
		say "[line break]";
	[another sub-section of the 'outside' area (named Commercial District here)]
	if Smith Haven Mall Lot South is known or Back Alley is known or Comic Shop is known or Isolated Street is known or Kristen's Hideout is known or Lingerie Store is known or New Ewe Storeroom is known or The Palomino is known or SlutRat Den is known or K9 Vans is known:
		say "[bold type]Commercial District[roman type]: ";
		if Smith Haven Mall Lot South is known:
			say "[link][bracket]Smith Haven Mall[close bracket][as]nav Smith Haven Mall Lot South[end link] - ";
		if Back Alley is known:
			say "| [link][bracket]Back Alley[close bracket][as]nav Back Alley[end link] ";
		if Comic Shop is known:
			say "| [link][bracket]Comic Shop[close bracket][as]nav Comic Shop[end link] ";
		if Isolated Street is known:
			say "| [link][bracket]Isolated Street[close bracket][as]nav Isolated Street[end link] ";
		if K9 Vans is known:
			say "| [link][bracket]K9 Vans[close bracket][as]nav K9 Vans[end link] ";
		if Kristen's Hideout is known:
			say "| [link][bracket]Kristen's Hideout[close bracket][as]nav Kristen's Hideout[end link] ";
		if Lingerie Store is known:
			say "| [link][bracket]Lingerie Store[close bracket][as]nav Lingerie Store[end link] ";
		if New Ewe Storeroom is known:
			say "| [link][bracket]New Ewe Store[close bracket][as]nav New Ewe Storeroom[end link] ";
		if The Palomino is known:
			say "| [link][bracket]The Palomino[close bracket][as]nav The Palomino[end link] ";
		if SlutRat Den is known:
			say "| [link][bracket]SlutRat Den[close bracket][as]nav SlutRat Den[end link] ";
		say "[line break]";
	[start of the dry plains area]
	if Dry Plains is known or McDermott Farm Entrance is known or Researcher Studio is known or Rocky Outcropping is known:
		say "[bold type]Dry Plains[roman type]: ";
		if Dry Plains is known:
			say "[link][bracket]Dry Plains[close bracket][as]nav Dry Plains[end link] - ";
		if McDermott Farm Entrance is known:
			say "| [link][bracket]McDermott Farm Entrance[close bracket][as]nav McDermott Farm Entrance[end link] ";
		if Researcher Studio is known:
			say "| [link][bracket]Researcher Studio[close bracket][as]nav Researcher Studio[end link] ";
		if Rocky Outcropping is known:
			say "| [link][bracket]Rocky Outcropping[close bracket][as]nav Rocky Outcropping[end link] ";
		say "[line break]";
	[another sub-section of the 'outside' area (named Industrial Sector here)]
[	if Nutso Factory is known or Plant Overview is known or Power Lines is known or Reservoir is known:	[*** - Kaleem]	]
	if Nutso Factory is known or Plant Overview is known or Power Lines is known:
		say "[bold type]Industrial Sector[roman type]: ";
		if Nutso Factory is known:
			say "| [link][bracket]Nutso Factory[close bracket][as]nav Nutso Factory[end link] ";
		if Plant Overview is known:
			say "| [link][bracket]Plant Overview[close bracket][as]nav Plant Overview[end link] ";
		if Power Lines is known:
			say "| [link][bracket]Power Lines[close bracket][as]nav Power Lines[end link] ";
[		if Reservoir is known:
			say "| [link][bracket]Reservoir[close bracket][as]nav Reservoir[end link] ";	]
		say "[line break]";
	[start of the fairgrounds area]
	if State Fair is known or Sweet Tooth is known:
		say "[bold type]Fairgrounds[roman type]: ";
		if State Fair is known:
			say "| [link][bracket]State Fair[close bracket][as]nav State Fair[end link] ";
		if Sweet Tooth is known:
			say "| [link][bracket]Sweet Tooth[close bracket][as]nav Sweet Tooth[end link] ";
		say "[line break]";
	[start of the high rise area]
	if Entrance to the High Rise District is known or Agency is known or Alex's Condo is known or Bone-Appetit is known or Butterfly Grove is known or Butterfly Grove is known or Flower Garden is known or Lizard Parlor is known or Rex's Place is known or Zephyr Lobby is known:
		say "[bold type]High Rise District[roman type]: ";
		if Entrance to the High Rise District is known:
			say "[link][bracket]Entrance to the High Rise District[close bracket][as]nav Entrance to the High Rise District[end link] - ";
		if Agency is known:
			say "| [link][bracket]Agency[close bracket][as]nav Agency[end link] ";
		if Alex's Condo is known:
			say "| [link][bracket]Alex's Condo[close bracket][as]nav Alex's Condo[end link] ";
		if Bone-Appetit is known:
			say "| [link][bracket]Bone-Appetit[close bracket][as]nav Bone-Appetit[end link] ";
		if Butterfly Grove is known:
			say "| [link][bracket]Butterfly Grove[close bracket][as]nav Butterfly Grove[end link] ";
		if Flower Garden is known:
			say "| [link][bracket]Flower Garden[close bracket][as]nav Flower Garden[end link] ";
		if Lizard Parlor is known:
			say "| [link][bracket]Lizard Parlor[close bracket][as]nav Lizard Parlor[end link] ";
		if Rex's Place is known:
			say "| [link][bracket]Rex's Place[close bracket][as]nav Rex's Place[end link] ";
		if Zephyr Lobby is known:
			say "| [link][bracket]Zephyr[close bracket][as]nav Zephyr Lobby[end link] ";
		say "[line break]";
	[start of the Hospital area]
	if City Hospital is known or Psych Department is known:
		say "[bold type]Hospital[roman type]: ";
		if City Hospital is known:
			say "[link][bracket]City Hospital[close bracket][as]nav City Hospital[end link] - ";
		if Psych Department is known:
			say "| [link][bracket]Psych Department[close bracket][as]nav Psych Department[end link] ";
		say "[line break]";
	[start of Junkyard area]
	if Abandoned Lot is known or Hyena Shack is known or Steven's home is known:
		say "[bold type]Junkyard[roman type]: ";
		if Abandoned Lot is known:
			say "[link][bracket]Abandoned Lot[close bracket][as]nav Abandoned Lot[end link] - ";
		if Hyena Shack is known:
			say "| [link][bracket]Hyena Shack[close bracket][as]nav Hyena Shack[end link] ";
		if Steven's home is known:
			say "| [link][bracket]Steven's home[close bracket][as]nav Steven's home[end link] ";
		say "[line break]";
	[start of the misc area]
	if Foxy Hideaway is known or Shifting Room is known or Qytat Plaza is known:
		say "[bold type]Misc[roman type]: ";
		if Foxy Hideaway is known:
			say "| [link][bracket]Foxy Hideaway[close bracket][as]nav Foxy Hideaway[end link] ";
		if Qytat Plaza is known:
			say "| [link][bracket]Qytat Plaza[close bracket][as]nav Qytat Plaza[end link] ";
		if Shifting Room is known:
			say "| [link][bracket]Shifting Room[close bracket][as]nav Shifting Room[end link] ";
		say "[line break]";
	[start of the Museum area]
	if Museum Foyer is known or Egypt Wing Entrance is known:
		say "[bold type]Museum[roman type]: ";
		if Museum Foyer is known:
			say "[link][bracket]Museum Foyer[close bracket][as]nav Museum Foyer[end link] - ";
		if Egypt Wing Entrance is known:
			say "| [link][bracket]Egypt Wing Entrance[close bracket][as]nav Egypt Wing Entrance[end link] ";
		say "[line break]";
	[start of the red light area]
	if Entrance to the Red Light District is known or Bradford's Camp is known or Bright Alley is known or Burned-Out Chapel is known or Cuero Lobo is known or Down Under Pub is known or Gillian's Flat is known or Police Car is known or Porn Store is known or Sven's Place is known or Tattoo Parlor is known:
		say "[bold type]Red Light District[roman type]: ";
		if Entrance to the Red Light District is known:
			say "[link][bracket]Entrance to the Red Light District[close bracket][as]nav Entrance to the Red Light District[end link] - ";
		if Bradford's Camp is known:
			say "| [link][bracket]Bradford's Camp[close bracket][as]nav Bradford's Camp[end link] ";
		if Bright Alley is known:
			say "| [link][bracket]Bright Alley[close bracket][as]nav Bright Alley[end link] ";
		if Burned-Out Chapel is known:
			say "| [link][bracket]Burned-Out Chapel[close bracket][as]nav Burned-Out Chapel[end link] ";
		if Cuero Lobo is known:
			say "| [link][bracket]Cuero Lobo[close bracket][as]nav Cuero Lobo[end link] ";
		if Down Under Pub is known:
			say "| [link][bracket]Down Under Pub[close bracket][as]nav Down Under Pub[end link] ";
		if Gillian's Flat is known:
			say "| [link][bracket]Gillian's Flat[close bracket][as]nav Gillian's Flat[end link] ";
		if Police Car is known:
			say "| [link][bracket]Police Car[close bracket][as]nav Sven's Place[end link] ";
		if Porn Store is known:
			say "| [link][bracket]Porn Store[close bracket][as]nav Porn Store[end link] ";
		if Sven's Place is known:
			say "| [link][bracket]Sven's Place[close bracket][as]nav Sven's Place[end link] ";
		if Tattoo Parlor is known:
			say "| [link][bracket]Tattoo Parlor[close bracket][as]nav Tattoo Parlor[end link] ";
		say "[line break]";
	[start of the seaside area]
	if Beach Plaza is known or Bouncy Castle is known or Pirate Island is known or Viking Ship is known:
		say "[bold type]Seaside[roman type]: ";
		if Beach Plaza is known:
			say "[link][bracket]Beach Plaza[close bracket][as]nav Beach Plaza[end link] - ";
		if Bouncy Castle is known:
			say "| [link][bracket]Bouncy Castle[close bracket][as]nav Bouncy Castle[end link] ";
		if Pirate Island is known:
			say "| [link][bracket]Pirate Island[close bracket][as]nav Pirate Island[end link] ";
		if Viking Ship is known:
			say "| [link][bracket]Viking Ship[close bracket][as]nav Viking Ship[end link] ";
		say "[line break]";
	[start of the Stables area]
	if Stables Hotel is known or Master's Office is known:
		say "[bold type]The Stables[roman type]: ";
		if Stables Hotel is known:
			say "[link][bracket]Stables Hotel[close bracket][as]nav Stables Hotel[end link] - ";
		if Master's Office is known:
			say "| [link][bracket]Master's Office[close bracket][as]nav Master's Office[end link] ";
		say "[line break]";
	[start of the college area]
	if College Campus is known or Campus Gym is known or Paleontology Office is known or Phi Iota Gamma is known or Sports Arena Lockerroom is known or Astroslide Field Lockerroom is known:
		say "[bold type]Tenvale College[roman type]: ";
		if College Campus is known:
			say "[link][bracket]College Campus[close bracket][as]nav College Campus[end link] - ";
		if Astroslide Field Lockerroom is known:
			say "| [link][bracket]Astroslide Field Lockerroom[close bracket][as]nav Astroslide Field Lockerroom[end link] ";
		if Campus Gym is known:
			say "| [link][bracket]Campus Gym[close bracket][as]nav Campus Gym[end link] ";
		if Paleontology Office is known:
			say "| [link][bracket]Paleontology Office[close bracket][as]nav Paleontology Office[end link] ";
		if Phi Iota Gamma is known:
			say "| [link][bracket]Phi Iota Gamma[close bracket][as]nav Phi Iota Gamma[end link] ";
		if Sports Arena Lockerroom is known:
			say "| [link][bracket]Sports Arena Lockerroom[close bracket][as]nav Sports Arena Lockerroom[end link] ";
		say "[line break]";
	[start of the forest area]
	if Urban Forest is known or Bunny House is known or Happy Puppy Kennel is known:
		say "[bold type]Urban Forest[roman type]: ";
		if Urban Forest is known:
			say "[link][bracket]Urban Forest[close bracket][as]nav Urban Forest[end link] - ";
		if Bunny House is known:
			say "[link][bracket]Bunny House[close bracket][as]nav Bunny House[end link] ";
		if Happy Puppy Kennel is known:
			say "[link][bracket]Happy Puppy Kennel[close bracket][as]nav Happy Puppy Kennel[end link] ";
		say "[line break]";
	[start of the warehouse area]
	if Warehouse District is known or Hyena Hideout is known or Mike's Home is known or Wolfman Lair is known:
		say "[bold type]Warehouse District[roman type]: ";
		if Warehouse District is known:
			say "[link][bracket]Warehouse District[close bracket][as]nav Warehouse District[end link] - ";
		if Hyena Hideout is known:
			say "| [link][bracket]Hyena Hideout[close bracket][as]nav Hyena Hideout[end link] ";
		if Mike's Home is known:
			say "| [link][bracket]Mike's Home[close bracket][as]nav Mike's Home[end link] ";
		if Spider's Web is known:
			say "| [link][bracket]Spider's Web[close bracket][as]nav Spider's Web[end link] ";
		if Wolfman Lair is known:
			say "| [link][bracket]Wolfman Lair[close bracket][as]nav Wolfman Lair[end link] ";
		say "[line break]";
	[start of the zoo area]
	if Zoo Entrance is known or Gator Den is known or Tiger den is known:
		say "[bold type]Zoo[roman type]: ";
		if Zoo Entrance is known:
			say "| [link][bracket]Zoo Entrance[close bracket][as]nav Zoo Entrance[end link] ";
		if Gator Den is known:
			say "| [link][bracket]Gator Den[close bracket][as]nav Gator Den[end link] ";
		if Tiger den is known:
			say "| [link][bracket]Tiger den[close bracket][as]nav Tiger den[end link] ";
		say "[line break]";


navigating is an action applying to one thing.

understand "navigate [any known fasttravel room]" as navigating.
understand "navigate to [any known fasttravel room]" as navigating.
understand "nav [any known fasttravel room]" as navigating.
understand "travel to [any known fasttravel room]" as navigating.
understand "travel [any known fasttravel room]" as navigating.
understand "go to [any known fasttravel room]" as navigating.
understand "return to [any known fasttravel room]" as navigating.

carry out navigating:
	if location of player is not fasttravel:
		say "You can't navigate from here.";
		stop the action;
	if noun is location of player:
		say "You're already there.";
		stop the action;
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	now battleground is "Outside";
	if a random number from 1 to 20 is less than 10 minus bonus and battleground is not "void":
		if there is a area of Battleground in the table of random critters:
			Fight;
			if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;
	else:
		say "You travel to [the noun], avoiding trouble as best you can.";
	if hp of Velos > 2, move Velos to the noun;
	move the player to the noun;
	follow turnpass rule;
		
NavCheckReturn is a truth state that varies.
	
to say NavCheck (CheckRoom - a room): [check if a nav attempt can go through]
	if debugactive is 1:
		say "DEBUG -> NavCheck just checked your travel route out! <- DEBUG";
	if location of player is not fasttravel:
		say "You can't navigate from here.";
		now NavCheckReturn is false;
	else if location of player is CheckRoom:
		say "You're already here.";
		now NavCheckReturn is false;
	else:
		if debugactive is 1:
			say "DEBUG -> ...and you may travel. Pass along now. <- DEBUG";
		now NavCheckReturn is true;

Navigation ends here.