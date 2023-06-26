Version 1 of Navigation by MinimalBuild begins here.

[ Note: The city areas and locations within are sorted alphabetically. Please put new rooms in the right spots as you add them ]
Table of Navigation locations
RoomObject	RoomName	NavText	NavList
Grey Abbey Library	"Grey Abbey Library"	"Grey Abbey Library"	"Primary Rooms"
Outside Trevor Labs	"Trevor Labs"	"Outside Trevor Labs"	"Primary Rooms"
[ Note: The city areas and locations above are sorted alphabetically. Please put new rooms in the right spots as you add them ]

to AddNavPoint (RoomObj - room):
	AddNavPoint RoomObj silence state is 0;

to AddNavPoint (RoomObj - room) silently:
	AddNavPoint RoomObj silence state is 1;

to AddNavPoint (RoomObj - room) silence state is (Silence - a number):
	if RoomObj is not fasttravel: [programming error, to be reported]
		say "DEBUG: Trying to add [RoomObj] as a nav point, but it is not a fasttravel point. Please report this message on the FS Discord!";
	else: [the room is at least a valid nav point]
		if RoomObj is known:
			if debug is at level 10:
				say "DEBUG: Trying to add [RoomObj] as a nav point, but the player knows it already.";
		else: [player doesn't know the room]
			now RoomObj is known;
			if Silence is 0:
				say "[bold type]['][printed name of RoomObj]['][roman type] has been added to your list of available navpoints. You will now be able to [bold type]nav[roman type]igate there from any of the fasttravel locations in the city by using the command [bold type]nav [printed name of RoomObj][roman type].";

destinationcheck is an action applying to nothing.

understand "navigate" as destinationcheck.
understand "nav" as destinationcheck.

carry out destinationcheck:
	let PrintedPrimaryRooms be 0;
	let PrintedCapitolDistrict be 0;
	let PrintedCentralCity be 0;
	let PrintedCityPark be 0;
	let PrintedCommercialDistrict be 0;
	let PrintedDryPlains be 0;
	let PrintedFairgrounds be 0;
	let PrintedHighRiseDistrict be 0;
	let PrintedHospital be 0;
	let PrintedIndustrialSector be 0;
	let PrintedJunkyard be 0;
	let PrintedMisc be 0;
	let PrintedMuseum be 0;
	let PrintedRedLightDistrict be 0;
	let PrintedSeaside be 0;
	let PrintedTheStables be 0;
	let PrintedTenvaleCollege be 0;
	let PrintedUrbanForest be 0;
	let PrintedWarehouseDistrict be 0;
	let PrintedZoo be 0;
	repeat with x running from 1 to the number of rows in the Table of Navigation locations:
		choose row x in the Table of Navigation locations;
		if RoomObject entry is known:
			if NavList entry is:
				-- "Primary Rooms":
					say "[if PrintedPrimaryRooms is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedPrimaryRooms;
				-- "Capitol District":
					say "[if PrintedCapitolDistrict is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedCapitolDistrict;
				-- "Central City":
					say "[if PrintedCentralCity is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedCentralCity;
				-- "City Park":
					say "[if PrintedCityPark is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedCityPark;
				-- "Commercial District":
					say "[if PrintedCommercialDistrict is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedCommercialDistrict;
				-- "Dry Plains":
					say "[if PrintedDryPlains is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedDryPlains;
				-- "Fairgrounds":
					say "[if PrintedFairgrounds is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedFairgrounds;
				-- "High Rise District":
					say "[if PrintedHighRiseDistrict is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedHighRiseDistrict;
				-- "Hospital":
					say "[if PrintedHospital is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedHospital;
				-- "Industrial Sector":
					say "[if PrintedIndustrialSector is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedIndustrialSector;
				-- "Junkyard":
					say "[if PrintedJunkyard is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedJunkyard;
				-- "Misc":
					say "[if PrintedMisc is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedMisc;
				-- "Museum":
					say "[if PrintedMuseum is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedMuseum;
				-- "Red Light District":
					say "[if PrintedRedLightDistrict is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedRedLightDistrict;
				-- "Seaside":
					say "[if PrintedSeaside is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedSeaside;
				-- "The Stables":
					say "[if PrintedTheStables is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedTheStables;
				-- "Tenvale College":
					say "[if PrintedTenvaleCollege is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedTenvaleCollege;
				-- "Urban Forest":
					say "[if PrintedUrbanForest is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedUrbanForest;
				-- "Warehouse District":
					say "[if PrintedWarehouseDistrict is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedWarehouseDistrict;
				-- "Zoo":
					say "[if PrintedZoo is 0][line break][bold type][NavList entry][roman type]: [else] | [end if][link][bracket][RoomName entry][close bracket][as]nav [NavText entry][end link]";
					increment PrintedZoo;
	LineBreak;

navigating is an action applying to one thing.

understand "navigate [any known fasttravel room]" as navigating.
understand "navigate to [any known fasttravel room]" as navigating.
understand "nav [any known fasttravel room]" as navigating.
understand "nav to [any known fasttravel room]" as navigating.
understand "travel [any known fasttravel room]" as navigating.
understand "travel to [any known fasttravel room]" as navigating.
understand "go to [any known fasttravel room]" as navigating.
understand "return to [any known fasttravel room]" as navigating.

carry out navigating:
	if location of Player is not fasttravel:
		say "You can't navigate from here.";
		stop the action;
	if noun is location of Player:
		say "You're already there.";
		stop the action;
	now Player is in Traveling;
	if companionList of Player is not empty:
		repeat with y running through companionList of Player:
			if NPCObject of y is not Nullpet:
				now NPCObject of y is in location of Player;
	follow turnpass rule;
	let the bonus be (( Perception of Player minus 10 ) divided by 2);
	now battleground is "Outside";
	if a random number from 1 to 20 < 10 minus bonus and battleground is not "void":
		if there is a area of Battleground in the Table of Random Critters:
			Fight;
			if ( ( HardMode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of Player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;
	else:
		say "You travel to [the noun], avoiding trouble as best you can.";
	now Player is in noun;
	follow the ngraphics_blank rule;
	NavInEvent_Check noun;

NavCheckReturn is a truth state that varies.

to say NavCheck (CheckRoom - a room): [check if a nav attempt can go through]
	if debugactive is 1:
		say "DEBUG -> NavCheck just checked your travel route out! <- DEBUG";
	if location of Player is not fasttravel:
		say "You can't navigate from here.";
		now NavCheckReturn is false;
	else if location of Player is CheckRoom:
		say "You're already here.";
		now NavCheckReturn is false;
	else:
		if debugactive is 1:
			say "DEBUG -> ...and you may travel. Pass along now. <- DEBUG";
		now NavCheckReturn is true;

Navigation ends here.
