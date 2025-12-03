Version 1 of Zephyr Phone by Core Mechanics begins here.
[Original by Executaball]
[v1 - 11/28/2017]
[Version 1.1 - Moved to Guest Writers]

"Adds a Zephyr mobile device to the game for navigation"

[changes -]

Section 1 - Declarations and variables

emap is a number that varies. emap is usually 0.
[ 0 = Nav Map not enabled ]
[ 1 = Nav Map is enabled ]

zpc_inzone is a truth state that varies. zpc_inzone is false.
[ true if Player is currenting displaying an image. This is referenced to display the no signal 'error' message when the player leaves ]

zpc_Zc is a number that varies.[true if players location is listed on table of Zpc Location reference]
zpc_Zf is a figure name that varies.[@Tag:NotSaved][contains the Icon entry of the figure to be displayed]

Section 2 - Master Referencing Table

[MALL]
Table of Zpc Location Reference
location(room)	icon(figure name)
Body Shop	Figure of emap_mall_bodyshop_icon
Branson & Partner Reception	Figure of emap_mall_bransonpartner_icon
Brookstone Books	Figure of emap_mall_brookstonebooks_icon
Christmas Village	Figure of emap_mall_christmasvillage_icon
Dirty Alley	Figure of emap_mall_alley_icon
Game Store	Figure of emap_mall_gamestore_icon
Maintenance Garage	Figure of emap_mall_garage_icon
Mall Atrium	Figure of emap_mall_atrium_icon
Mall East Wing	Figure of emap_mall_eastwing_icon
Mall Foodcourt	Figure of emap_mall_foodcourt_icon
Mall Foyer	Figure of emap_mall_foyer_icon
Mall Lockerroom	Figure of emap_mall_lockers_icon
Mall Restroom	Figure of emap_mall_restrooms_icon
Mall West Wing	Figure of emap_mall_westwing_icon
The Mysterious Shop	Figure of emap_mall_nermines_icon
The Pretty Kitty	Figure of emap_mall_pkboutique_icon
Shag Shack Entrance	Figure of emap_mall_shagshack_icon
Smith Haven Mall Lot East	Figure of emap_mall_loteast_icon
Smith Haven Mall Lot North	Figure of emap_mall_lotnorth_icon
Smith Haven Mall Lot South	Figure of emap_mall_lotsouth_icon
Smith Haven Mall Lot West	Figure of emap_mall_lotwest_icon
Wolverine Guard Station	Figure of emap_mall_guardpost_icon

[Capitol building]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
A Volcanic Crater	Figure of emap_A_Volcanic_Crater_icon
Approaching the Capitol Building	Figure of emap_Approaching_Capitol_Building_icon
Charred Streets	Figure of emap_Charred_Streets_icon
Path of Ashes	Figure of emap_Path_of_Ashes_icon
Rusty Walkways	Figure of emap_Rusty_Walkways_icon
Salamander Hideaway	Figure of emap_Salamander_Hideaway_icon

[Fire station 86]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Fire Station 86	Figure of emap_Fire_Station_86_icon
Firehouse	Figure of emap_Firehouse_icon
Sleeping Quarters	Figure of emap_Sleeping_Quarters_icon

[Green apartment building]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Brennan's Bathroom	Figure of emap_Brennans_Bathroom_icon
Brennan's Bedroom	Figure of emap_Brennans_Bedroom_icon
Green Apartment Building	Figure of emap_Green_Apartment_Building_icon
Green Lobby	Figure of emap_Green_Lobby_icon
Overgrown Rooftop	Figure of emap_Overgrown_Rooftop_icon
Survivor Refuge	Figure of emap_Survivor_Refuge_icon

[Milking Facility Entrance]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Milking Facility Entrance	Figure of emap_Milking_Facility_Entrance_icon
Milking Facility Factory	Figure of emap_Milking_Facility_Factory_icon
Milking Facility Operations Room	Figure of emap_Milking_Facility_Operations_Room_icon

[Pediatrics Lobby]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Doctor's Office	Figure of emap_Doctors_office_icon
Pediatrics Lobby	Figure of emap_Pediatrics_Lobby_icon

[Red Apartment Building]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Raven Nest	Figure of emap_Raven_Nest_icon
Red Apartment 1st Floor	Figure of emap_Red_Apartment_1st_Floor_icon
Red Apartment 2nd Floor	Figure of emap_Red_Apartment_2nd_Floor_icon
Red Apartment 3rd Floor	Figure of emap_Red_Apartment_3rd_Floor_icon
Red Apartment 4th Floor	Figure of emap_Red_Apartment_4th_Floor_icon
Red Apartment Building	Figure of emap_Red_Apartment_Building_icon
Red Apartment Rooftop	Figure of emap_Red_Apartment_Rooftop_icon

[Park Entrance]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Hiking Trail Bend	Figure of emap_Hiking_Trail_Bend_icon
Hiking Trail Split	Figure of emap_Hiking_Trail_Split_icon
Hiking Trail Start	Figure of emap_Hiking_Trail_Start_icon
Park Entrance	Figure of emap_Park_Entrance_icon
Park Trail	Figure of emap_Park_Trail_Secret_icon
Shinto Shrine	Figure of emap_Shinto_Shrine_icon
Stocks	Figure of emap_Stocks_icon

[The Palomino]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Ammy's Flatlet	Figure of emap_Ammys_Flatlet_icon
PALOMINO Dance Club	Figure of emap_Palomino_icon
Private Booths	Figure of emap_Private_Booths_icon
Private Club Room	Figure of emap_Private_Club_Room_icon
Topless Lounge	Figure of emap_Topless_Lounge_icon

[Dry Planes]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Dry Plains	Figure of emap_Dry_Plains_icon
Hidden Camp	Figure of emap_Hidden_Camp_icon
Inconspicuous Trail	Figure of emap_Inconspicuous_Trail_icon

[State Fair]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
State Fair	Figure of emap_State_Fair_icon

[Entrance to high rise District]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Entrance to the High Rise District	Figure of emap_Entrance_to_the_High_Rise_District_icon
Overgrown Street	Figure of emap_Overgrown_Street_icon

[Zaphyr]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Zephyr Lobby	Figure of emap_Zephyr_Lobby_icon
Zephyr Storeroom	Figure of emap_Zephyr_Storeroom_icon

[Hospital]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
City Hospital	Figure of emap_City_Hospital_icon
Hospital Halls	Figure of emap_Hospital_Halls_icon
Hospital Interior	Figure of emap_Hospital_Interior_icon
Locked Stairwell	Figure of emap_Locked_Starwell_icon

[Plant Overview]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Administration Offices	Figure of emap_Administration_Offices_icon
Catwalk	Figure of emap_Catwalk_icon
Control Room	Figure of emap_Control_Room_icon
Plant Lobby	Figure of emap_Plant_Lobby_icon
Plant Overview	Figure of emap_Plant_Overview_icon

[Power Lines]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Power Lines	Figure of emap_Power_Lines_icon

[Abandoned Lot]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Abandoned Lot	Figure of emap_Abandoned_Lot_icon
Junkyard Alley	Figure of emap_Junkyard_Alley_icon
Junkyard Entrance	Figure of emap_Junkyard_Entrance_icon
Storage Room	Figure of emap_Storage_Room_icon

[Museum Foyer]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Museum East Hallway	Figure of emap_East_Hall_icon
Museum East Hub	Figure of emap_East_Hub_icon
Museum Foyer	Figure of emap_Museum_Foyer_icon
Museum Greenery	Figure of emap_Greenery_icon
Museum North Hallway	Figure of emap_North_Hall_icon
Museum North Hub	Figure of emap_North_Hub_icon
Museum West Hallway	Figure of emap_West_Hall_icon
Museum West Hub	Figure of emap_West_Hub_icon

[Grey Abbey Library]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Attic	Figure of emap_Attic_icon
Back Library	Figure of emap_Back_Library_icon
Breakroom	Figure of emap_Breakroom_icon
Bunker	Figure of emap_Bunker_icon
Communal Shower	Figure of emap_Communal_Shower_icon
Computer Lab	Figure of emap_Computer_Lab_icon
Courtyard	Figure of emap_Courtyard_icon
Darkened Alcove	Figure of emap_Darkened_Alcove_icon
Garden View	Figure of emap_Garden_View_icon
George's Animal Emporium	Figure of emap_Georges_Animal_Emporium_icon
Grey Abbey 2F	Figure of emap_Grey_Abbey_2F_icon
Grey Abbey Garden	Figure of emap_Grey_Abbey_Garden_icon
Grey Abbey Library	Figure of emap_Grey_Abbey_Library_icon
Half-Renovated Room	Figure of emap_Half_Renovated_Room_icon
Large Shed	Figure of emap_Large_Shed_icon
Looted Shops	Figure of emap_Looted_Shops_icon
Main & 7th Street	Figure of emap_Main_&_7th_Street_icon
Maintenance Storeroom	Figure of emap_Maintainance_Storeroom_icon
Makeshift Rec Room	Figure of emap_Makeshift_Rec_Room_icon
Pantry	Figure of emap_Pantry_icon
Sitting Area	Figure of emap_Sitting_Area_icon
Underground Restroom	Figure of emap_Underground_Restroom_icon

[Trevor Lab]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
2F Trevor Labs	Figure of emap_2F_Trevor_Labs_icon
Outside Trevor Labs	Figure of emap_Outside_Trevor_Labs_icon
Primary Lab	Figure of emap_Primary_Lab_icon
Trevor Labs Lobby	Figure of emap_Trevor_Labs_Lobby_icon

[Bright Alley]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Bright Alley	Figure of emap_Bright_Alley_icon

[Entrance to the Red Light District]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Atticus's Bedroom	Figure of emap_Atticuss_Bedroom_icon
Boundary Street East	Figure of emap_Boundary_Street_East_icon
Boundary Street West	Figure of emap_Boundary_Street_West_icon
Burned-Out Chapel	Figure of emap_BurnedOut_Chapel_icon
Crimson Street	Figure of emap_Crimson_Street_icon
Darius's Crib	Figure of emap_Dariuss_Crib_icon
Dark Alley	Figure of emap_Dark_Alley_icon
Dingy Alley	Figure of emap_Dingy_Alley_icon
Entrance to the Red Light District	Figure of emap_Entrance_to_the_Red_Light_District_icon
Hellfire Cell	Figure of emap_Hellfire_Cell_icon
Hellfire Club	Figure of emap_Hellfire_Club_icon
Hellfire Corridor	Figure of emap_Hellfire_Corridor_icon
Hellfire Dungeon	Figure of emap_Hellfire_Dungeon_icon
Hellfire Lounge	Figure of emap_Hellfire_Lounge_icon
Hellfire Restroom	Figure of emap_Hellfire_Restroom_icon
Hellfire Storage	Figure of emap_Hellfire_Storage_icon
Hellfire Unknown	Figure of emap_Hellfire_Unknown_icon
Hellfire VIP Floor	Figure of emap_VIP_Floor_icon
Narrow Alley	Figure of emap_Narrow_Alley_icon
Northern Street 1	Figure of emap_Northern_Street_1_icon
Northern Street 2	Figure of emap_Northern_Street_2_icon
Restrained Desire	Figure of emap_Restrained_Desire_icon
Sacristy	Figure of emap_Sacristy_icon

[Orc Lair]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Breeder Lockup A	Figure of emap_Breeder_Lockup_A_icon
Bright Hallway 1	Figure of emap_Bright_Hallway_1_icon
Bright Hallway 2	Figure of emap_Bright_Hallway_2_icon
Dark Hallway 1	Figure of emap_Dark_Hallway_1_icon
Dark Hallway 2	Figure of emap_Dark_Hallway_2_icon
Main Hall	Figure of emap_Main_Hall_icon
Observation Room	Figure of emap_Observation_Room_icon
Orc Lair Side Entrance	Figure of emap_Orc_Lair_Side_Entrance_icon
Police Station Lockerroom	Figure of emap_Police_Station_Locker_Room_icon
Slave Cell 1	Figure of emap_Slave_Cell_1_icon
Slave Cell 2	Figure of emap_Slave_Cell_2_icon

[Beach]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Beach Plaza	Figure of emap_Beach_Plaza_icon
BeachEnd	Figure of emap_End_of_Beach_icon
Boardwalk2	Figure of emap_Boardwalk_icon
Church Hall	Figure of emap_Church_Hall_icon
City Center	Figure of emap_City_Center_icon
City Entrance	Figure of emap_City_Entrance_icon
City Market	Figure of emap_City_Market_icon
City Residential	Figure of emap_City_Residential_icon
Dirty Sheds	Figure of emap_Dirty_Sheds_icon
Open Ocean	Figure of emap_Open_Ocean_icon
Overgrown Area	Figure of emap_Overgrown_Area_icon
Public Beach	Figure of emap_Public_Beach_icon
Restaurant	Figure of emap_Resteraunt_icon
Rock Arch	Figure of emap_Rock_Arch_icon
Rocky Cliff	Figure of emap_Rocky_Cliff_icon
Royal Bed Chambers	Figure of emap_Royal_Bed_Chambers_icon
Royal Palace Entrance	Figure of emap_Royal_Palace_Entrance_icon
Royal Throne Room	Figure of emap_Royal_Throne_Room_icon
Shallow Bay	Figure of emap_Shallow_Bay_icon
Sunken Ship	Figure of emap_Sunken_Ship_icon
Sunny Snacks	Figure of emap_Sunny_Snacks_icon
Wild Fringe	Figure of emap_Wild_Fringe_icon

[Bouncy Castle]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Ball Pit Room	Figure of emap_Ball_Pit_Room_icon
Bouncing Play Room	Figure of emap_Bouncy_Play_Room_icon
Bouncy Castle	Figure of emap_Bouncy_Castle_icon
Castle Throne Room	Figure of emap_Castle_Throne_Room_icon
Eastern Parapets	Figure of emap_Eastern_Parapets_icon
Fencing Room	Figure of emap_Fencing_Room_icon
Great Hall	Figure of emap_Great_Hall_icon
King's Chambers	Figure of emap_Kings_Chambers_icon
Knight's Chambers	Figure of emap_Knights_Chambers_icon
Lower Tower	Figure of emap_Lower_Tower_icon
Punching Pillars	Figure of emap_Punching_Pillars_icon
Tower Turret	Figure of emap_Tower_Turret_icon
Toy Room	Figure of emap_Toy_Room_icon
Upper Hall	Figure of emap_Upper_Hall_icon
Upper Tower	Figure of emap_Upper_Tower_icon
Western Parapets	Figure of emap_Western_Parapets_icon

[College Campus]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Astroslide Field Locker-Room	Figure of emap_Astroslide_Field_Locker_Room_icon
Astroslide Football Field	Figure of emap_Astroslide_Football_Field_icon
Athletic Street	Figure of emap_Athletic_Street_icon
The Clouds	Figure of emap_The_Clouds_icon
College Administration Building	Figure of emap_College_Administration_Building_icon
College Belltower	Figure of emap_College_Belltower_icon
College Campus Entrance	Figure of emap_College_Campus_Entrance_icon
College Fountain	Figure of emap_College_Fountain_icon
College Walkway East	Figure of emap_College_Walkway_East_icon
College Walkway Northeast	Figure of emap_College_Walkway_Northeast_icon
College Walkway Northwest	Figure of emap_College_Walkway_Northwest_icon
College Walkway West	Figure of emap_College_Walkway_West_icon
Dean's Office	Figure of emap_Deans_Office_icon
Dorm Street	Figure of emap_Dorm_Street_icon
Greek Street	Figure of emap_Greek_Street_icon
Jadako's Room	Figure of emap_Jadakos_Room_icon
Jake's Room	Figure of emap_Jakes_Room_icon
Julian's Room	Figure of emap_Julians_Room_icon
Lecture Street	Figure of emap_Lecture_Street_icon
Pericles' Room	Figure of emap_Pericles_Room_icon
Randall's Room	Figure of emap_Randalls_Room_icon
Second Floor Male Dorms	Figure of emap_Second_Floor_Male_Dorms_icon
Showers	Figure of emap_Showers_icon
Sports Arena Lockerroom	Figure of emap_Sports_Arena_Lockerroom_icon
Stewart's Room	Figure of emap_Stewarts_Room_icon
Sylvia's Room	Figure of emap_Sylvias_Room_icon
Tenvale College Female Dorms	Figure of emap_Tenvale_College_Female_Dorms_icon
Tenvale College Library	Figure of emap_Tenvale_College_Library_icon
Tenvale College Male Dorms	Figure of emap_Tenvale_College_Male_Dorms_icon
Thunderbolt's Stable	Figure of emap_Thunderbolts_Stable_icon
Wally's Room	Figure of emap_Wallys_Room_icon
Your Dorm Room	Figure of emap_Your_Dorm_Room_icon

[Urban Forest]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Avalon-Crossroads	Figure of emap_Avalon_Crossroads_icon
Forest Burrow Entrance	Figure of emap_Forest_Borrow_Entrance_icon
Forest Cave Entrance	Figure of emap_Forest_Cave_Entrance_icon
Frozen Cave Tunnel	Figure of emap_Frozen_Cave_Tunnel_icon
Ice Fox's Den	Figure of emap_Ice_Foxes_Den_icon
Ironscale Hollow	Figure of emap_Ironscale_Hollow_icon
Kobold Caves Gates	Figure of emap_Kobolds_icon
Mysterious Glade	Figure of emap_Mysterious_Glade_icon
Snowy Forest Trail	Figure of emap_Snowy_Forest_Trail_icon
Urban Forest	Figure of emap_Urban_Forest_icon
Virgin's Pass	Figure of emap_Virgins_Pass_icon

[Warehouse District]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Gloomy Warehouse	Figure of emap_Gloomy_Warehouse_icon
Northern Docks	Figure of emap_Northern_Docks_icon
Packaging Warehouse	Figure of emap_Packaging_Warehouse_icon
S Harbor	Figure of emap_South_Harbor_icon
Warehouse District	Figure of emap_Warehouse_District_icon

[Zoo]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
Bird Enclosure	Figure of emap_Bird_Enclosure_icon
Bird House	Figure of emap_Bird_House_icon
Border Wall	Figure of emap_Border_Wall_icon
Cheetah Habitat	Figure of emap_Cheetah_Habitat_icon
Fence Path	Figure of emap_Fence_Path_icon
Gator Pit	Figure of emap_Gator_Pit_icon
Main Path 1	Figure of emap_Main_Path_1_icon
Main Path 2	Figure of emap_Main_Path_2_icon
Monkey House	Figure of emap_Monkey_House_icon
Snake House	Figure of emap_Snake_House_icon
Zoo Entrance	Figure of emap_Zoo_Entrance_icon
Zoo Entryway	Figure of emap_Zoo_Entryway_icon
Zoo Giftshop	Figure of emap_Zoo_Giftshop_icon
Zoo Parking	Figure of emap_Zoo_Parking_icon
Zoo Rest Area	Figure of emap_Zoo_Rest_Area_icon
Zoo Restrooms	Figure of emap_Zoo_Restrooms_icon

[PAN Frat]
Table of Zpc Location Reference (continued)
location(room)	icon(figure name)
PAN Frat Basement	Figure of emap_PAN_Frat_Basement
PAN Frat Bathroom	Figure of emap_Pan_Frat_Bathroom
PAN Frat East Hallway	Figure of emap_Pan_Frat_East_Hallway
PAN Frat Game Room	Figure of emap_PAN_Frat_Game_Room
PAN Frat Garden	Figure of emap_PAN_Frat_Garden
PAN Frat Indoor Pen	Figure of emap_PAN_Frat_Indoor_Pen
PAN Frat Kitchen	Figure of emap_PAN_Frat_Kitchen
PAN Frat Living Room	Figure of emap_PAN_Frat_Living_Room
PAN Frat North Hallway	Figure of emap_Pan_Frat_North_Hallway
PAN Frat Sauna	Figure of emap_PAN_Frat_Sauna
PAN Frat Second Floor	Figure of emap_Pan_Frat_Second_Floor
PAN Frat Showers	Figure of emap_PAN_Frat_Showers
PAN Frat South Hallway	Figure of emap_Pan_Frat_South_Hallway
PAN Frat Stairway	Figure of emap_PAN_Frat_Stairway
PAN Frat Third Floor	Figure of emap_Pan_Frat_Third_Floor
PAN Frat West Hallway	Figure of emap_Pan_Frat_West_Hallway
Richard's Room	Figure of emap_PAN_Frat_Richards_Room

[Other]
[Table of Zpc Location Reference (continued)
location	figure_name]

Section 3 - Objects

Table of Game Objects (continued)
name	desc	weight	object
"Broken smartphone"	"[zpcdesc2]"	1	Broken Smartphone

to say zpcdesc2:
	say "     Your smartphone is toast. Its screen is smashed, and while you hoped the damage was cosmetic after you tripped and smashed it against the sidewalk on your way to your present location, it has since proven to be bricked. Zephyr is known to sell many tech gadgets. Maybe one of their shops and such can repair it? You doubt a new phone is an option at this point, but it'd certainly help with navigation. ";

Broken Smartphone is a grab object. Broken Smartphone is not temporary.

Table of Game Objects (continued)
name	desc	weight	object
"ZPC"	"[zpcdesc]"	1	zpc

to say zpcdesc:
	say "     The Zephyr Personal Communicator is essentially a slightly oversized smartphone. It is a surprisingly sleek piece of technology that almost feels out of place considering the environment around you, no doubt a display of Zephyr's dominance and power. Flipping the device over, you notice that its white rubber back is lined with solar panels. It seems that you don't have to worry about charging the device. The onyx black front display is smooth and glossy save for the Zephyr company logo on the top. You see a small orange button on the side of the device. Perhaps you could try to [bold type]use the ZPC[roman type]? ";


zpc is a grab object. zpc is not temporary.
understand "zephyr personal communicator" as zpc.

zpcturnon is an action applying to nothing.
Understand "turn on the/-- zpc" as zpcturnon.

Carry out zpcturnon:
	try using the zpc;

Section 4 - Handling (Internal)

Usedesc of Broken Smartphone is "[sp_use]".

to say sp_use:
	say "     It's bricked.";

Usedesc of zpc is "[zpc_use]".

to say zpc_use:
	if emap is 0:
		zpc_checklocation; [runs location check function first to fill Zc value]
		if zpc_Zc is 0:
			project the figure of emap_special_signalnotfound_icon;
			say "     You turn on the device. It appears that your current location is not yet part of the Zephyr satellite coverage region... Perhaps you could try the device in one of Zephyr's published compatible locations, such as the Smith Haven Mall?";
			now emap is 1;
			AttemptToWait;
			if debugactive is 1 and debuglevel > 1:
				say "Following the ngraphics_blank rule";
			follow the ngraphics_blank rule; [clear pic after WLB user response]
		else if zpc_Zc is 1:
			say "     The device will now track and display your current location, until you exit the satellite coverage region. If you wish to terminate tracking while still in the coverage region, simply switch the device off.";
			now emap is 1;
			AttemptToWait;
			if debugactive is 1 and debuglevel > 1:
				say "Following the zpc_lookoverride rule.";
			follow the zpc_lookoverride rule; [fill with respective pic]
	else if emap is 1:
		project the figure of emap_special_shutdown_icon; [off]
		say "     After holding the power button for a few seconds, the display fades out as an accompanying chime completes its shutdown.";
		now emap is 0;
		AttemptToWait;
		if debugactive is 1 and debuglevel > 1:
			say "Following the ngraphics_blank rule";
		follow the ngraphics_blank rule; [clear pic after WLB user response]



Section 4.1 - Internal functions

to zpc_checklocation: [returns Zc value of 1 or 0]
	if location of Player is a location listed in Table of Zpc Location Reference:
		now zpc_Zc is 1;
	else:
		now zpc_Zc is 0;

to zpc_getfigure: [returns Zf value of respective figure name]
	if location of Player is a location listed in Table of Zpc Location Reference:
		now zpc_Zf is icon entry;
	else:
		now zpc_Zf is Figure of pixel;

Section 5 - Handling (External)

[Master look override rule]
this is the zpc_lookoverride rule:
	if emap is 1:
		if location of Player is a location listed in Table of Zpc Location Reference:
			project icon entry; [projecting intro]
			if zpc_inzone is false, now zpc_inzone is true;
		else if zpc_inzone is true: [case if Player already in zone]
			project the Figure of emap_special_signalnotfound_icon;
			now zpc_inzone is false;

Section 6 - DEBUG - Not for release

[Cheat for enabling variable]
cheat_emap is an action applying to nothing.
understand "emap_cheat" as cheat_emap.
carry out cheat_emap:
	say "CHEAT: Map Navigation is now enabled (emap = 1)";
	now emap is 1;

[Cheat that gives ZPC]
cheat_zpc_give is an action applying to nothing.
understand "zpc_cheat" as cheat_zpc_give.
carry out cheat_zpc_give:
	say "CHEAT: ZPC added to inventory";
	ItemGain zpc by 1;

[Cheat that gives freecred]
cheat_freecred_give is an action applying to nothing.
understand "freecred_cheat" as cheat_freecred_give.
carry out cheat_freecred_give:
	say "CHEAT: Added 100 freecred.";
	increase freecred by 200;


Zephyr Phone ends here.
