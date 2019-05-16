Smith Haven Mall by Wahn begins here.
[ - Originally Authored By: Anon E Mouse -]

"Adds an upgraded mall to Flexible Survival to include a variety of NPCs and shops..."


Section 1 - Mall Area

Table of GameRoomIDs (continued)
Object	Name
Smith Haven Mall Lot North	"Smith Haven Mall Lot North"

Smith Haven Mall Lot North is a room.

Table of GameRoomIDs (continued)
Object	Name
Smith Haven Mall Lot East	"Smith Haven Mall Lot East"

Smith Haven Mall Lot East is a room.

Table of GameRoomIDs (continued)
Object	Name
Smith Haven Mall Lot South	"Smith Haven Mall Lot South"

Smith Haven Mall Lot South is a room. It is fasttravel.

Table of GameRoomIDs (continued)
Object	Name
Smith Haven Mall Lot West	"Smith Haven Mall Lot West"

Smith Haven Mall Lot West is a room.

Table of GameRoomIDs (continued)
Object	Name
Mall Foyer	"Mall Foyer"

Mall Foyer is a room. Mall Foyer entrance is a door. It is north of Mall Foyer and south of Smith Haven Mall Lot North.

Table of GameRoomIDs (continued)
Object	Name
Mall Atrium	"Mall Atrium"

Mall Atrium is a room.

Table of GameRoomIDs (continued)
Object	Name
Mall Foodcourt	"Mall Foodcourt"

Mall Foodcourt is a room. Mall Food Court entrance is a door. It is south of Mall Foodcourt and north of Smith Haven Mall Lot South.

Table of GameRoomIDs (continued)
Object	Name
Mall East Wing	"Mall East Wing"

Mall East Wing is a room.

Table of GameRoomIDs (continued)
Object	Name
Mall West Wing	"Mall West Wing"

Mall West Wing is a room.

Table of GameRoomIDs (continued)
Object	Name
Mall Restroom	"Mall Restroom"

Mall Restroom is a room.

Smith Haven Mall Lot East is southeast of Smith Haven Mall Lot North.
Smith Haven Mall Lot West is southwest of Smith Haven Mall Lot North.
Smith Haven Mall Lot South is southwest of Smith Haven Mall Lot East.
Smith Haven Mall Lot South is southeast of Smith Haven Mall Lot West.

Instead of examining the Mall Foyer entrance:
	say "Through the glass doors, you make out [the other side of the Mall Foyer entrance].";
Instead of examining the Mall Food Court entrance:
	say "Through the glass doors, you make out [the other side of the Mall Food Court entrance].";


Section 2 - Mall Lot North

The description of Smith Haven Mall Lot North is "[mallnorthlot]".
earea of Smith Haven Mall Lot North is "Outside".

To say mallnorthlot:
	If daytimer is day:
		say "     You walk along the parking lot's main access road into the mall's northern lot, peeping into a few of the cars as you go. There aren't as many cars on the north side of the mall as there is on the south side, but they all still show signs of the owners being assaulted and transformed into the various critters now running around the city. To the south you see the entrance into the mall's foyer, flanked by the wings of the mall stretching east and west. Just across the street to the north is a four story office building, bearing the name 'Branson & Partner Land Management' above the entrance. A big 'Help Wanted' sign has been taped to the inside of the glass door leading into the building.";
	else if findwires is 2 and fixedgens > 2:
		say "     You walk along the parking lot's illuminated main access road into the mall's northern lot, peeping into a few of the cars as you go. There aren't as many cars on the north side of the mall as there is on the south side, but they all still show signs of the owners being assaulted and transformed into the various critters now roaming around the city. To the south you see the entrance into the mall's foyer shining like a beacon in the night, flanked by the likewise illuminated wings of the mall stretching east and west. Just across the street to the north is a four story office building, bearing the name 'Branson & Partner Land Management' above the entrance. Light shines from within, allowing you to read the big 'Help Wanted' sign has been taped to the inside of the glass door leading into the building.";
	else:
		say "     You carefully make your way along the dark parking lot's main access road, staying alert for any traps or surprises. Of what you can see, there aren't as many cars on this side of the mall as compared to the south side, but there they all still show signs of the former owners['] fates. To the south you can just discern the glass door entrance to the mall's foyer in the low light. Just across the street to the north, a multi-story office building stretches up and blocks out a patch of the starlit sky.";


the scent of Smith Haven Mall Lot North is "The light breeze blowing around you carries the still lingering scent of messy sex and cum.".

Section 3 - Mall Lot East

The description of Smith Haven Mall Lot East is "[malleastlot]".
earea of Smith Haven Mall Lot East is "Outside".

To say malleastlot:
	If daytimer is day:
		say "     You walk along the parking lot's main access road into the mall's east lot, checking some of the cars for anything useful. When you finally make it, all you can see is even more parked and wrecked cars with their doors opened and ripped clothing, some purses, and shopping bags, strewn about, caked in what you assume is dried cum. There is a big building sitting on the southeast corner of the lot, 24-7 Fitness blazoned across the top of it in red letters. To the northeast, another large structure looms over the flat expanse of the parking lot - the sign on its side reads 'Mattress & More Superstore' ...and on closer inspection, you see that someone has sprayed the words 'Shag Shack' in huge letters on the store's glass front. East of where you stand lies the opening of a small alley. You can see trash scattered on the ground within.";
	else if findwires is 2 and fixedgens > 2:
		say "     Being careful of the shadows cast by the parking lot lights, you walk along the lot's main access road into the mall's east lot. When you finally make it, of what you can see, there are even more parked and wrecked cars with their doors opened and ripped clothing strewn about, caked in what you assume is dried cum. The sign on the side of the Sears building is illuminated as well as the sign on the side of the 24-7 Fitness building sitting on the southeast corner of the parking lot. To the northeast, another large structure looms over the flat expanse of the parking lot - the glowing sign on its side reads 'Mattress & More Superstore' ...but in the glow of that sign, you can see that someone has sprayed the words 'Shag Shack' in huge letters on the store's glass front too. East of where you stand lies the opening of a small alley. You can see trash scattered on the ground within.";
	else:
		say "     You slowly and carefully make your way along the dark parking lot's main access road, watching all around you for anything that might surprise you. Finally making it to the east lot, you can just make out more of the same destruction that was in the north lot. Remembering that there is supposed to be a gym in the mall's east lot, you continue walking until you are able to just discern a large building to the southeast. Some light shines from the interior of another big structure in the northeast. East of where you stand lies the opening of a small alley. You can see trash scattered on the ground within.";


the scent of Smith Haven Mall Lot East is "The light breeze blowing around you carries the still lingering scent of messy sex.".

Section 4 - Mall Lot West

The description of Smith Haven Mall Lot West is "[mallwestlot]".
earea of Smith Haven Mall Lot West is "Outside".

To say mallwestlot:
	If daytimer is day:
		say "     You walk along the parking lot's main access road into the mall's west lot, looking through some of the cars for any left over food or water. Finally making it, you look around and find that it's just more of the same, the carnage of rampant sex splattered all over the vehicles. Sitting on the northwest corner of the lot is a large gas station with a convenience store, the lingering scent of gasoline wafting towards you on the breeze. In the southwest part of the lot you can see another building. The sign sitting on the edge of its roof reads as China South Buffet.";
	else if findwires is 2 and fixedgens > 2:
		say "     With the parking lot lights illuminating the area, you walk along the parking lot's main access road into the mall's west lot. Finally making it, you look around as best as you can and find that it's just more of the same, the carnage of rampant sex splattered all over the vehicles. The sign on the side of the JCPenney's building is lit and all the lights are on at the large gas station sitting on the northwest corner of the lot. When you pause long enough, you can smell the lingering scent of gasoline wafting towards you on the breeze. In the southwest part of the lot you can see another building with some lights on. The illuminated sign sitting on the edge of its roof reads as China South Buffet.";
	else:
		say "     You slowly and carefully make your way along the dark parking lot's main access road, keeping an eye peeled for anything that might try to surprise you. Finally making it to the west lot, it's hard to tell if there is anything much different. You find on the northwest corner of the lot what looks like a large gas station with a convenience store. The lingering scent of gasoline wafting towards you on the breeze confirms it. Curiosity spurning you on, you continue exploring the west lot until spotting a building, which you know is the China South Buffet.";


the scent of Smith Haven Mall Lot West is "The light breeze blowing around you carries the lingering scent of messy sex tinged with the light smell of gasoline.".

Section 5 - Mall Lot South

The description of Smith Haven Mall Lot South is "[mallsouthlot]".
earea of Smith Haven Mall Lot South is "Outside".

To say mallsouthlot:
	If daytimer is day:
		say "     Walking into Smith Haven Mall's vast southern parking lot, you see the devastating results of the infection having run rampant. Dotted about the lot are not only parked vehicles with either open doors, broken windows, or both, but also several wrecked vehicles, either smashed into other vehicles or hung up in planters. Scraps of ripped clothing caked in dried fluids litter the ground around the vehicles and about the lot. To the north you can see the entrance to the mall's food court. Just inside the glass doors you are able to see some activity on the other side of them. Looking to the east and to the west just shows more of the same destruction, though off in the distance of the mall's west lot you spot a gas station.";
	else if findwires is 2 and fixedgens > 2:
		say "     Walking into Smith Haven Mall's vast southern parking lot, with the lot lights illuminating the area you see most of the devastating results of the infection having run rampant. Dotted about the lot are not only parked vehicles with either open doors, broken windows, or both, but also several wrecked vehicles, either smashed into other vehicles or hung up in planters. Scraps of ripped clothing caked in dried fluids litter the ground around the vehicles and about the lot. To the north you can see light coming from the entrance to the mall's food court. Just inside the glass doors you are able to see some activity inside the mall. Looking to the east and to the west just shows more of the same destruction, though off in the distance of the mall's west lot you spot the lights of a gas station.";
	else:
		say "     By what you can see around you in the dark, you're pretty sure you're in Smith Haven Mall's vast parking lot. The full, pregnant, moon hanging in the night sky brilliantly casts its light upon a good portion of the mall's lot. With the stars dancing along with the moon in the night sky and the eerie silence of the abandoned cars you can see, the devastation around you is almost serene. To the east and west you know the parking lot continues and ahead of you is the entrance to the mall's food court.";


the scent of Smith Haven Mall Lot South is "The light breeze blowing around you carries the lingering scent of cum and messy sex.".

mall map is an object. It is in Smith Haven Mall Lot South. It is fixed in place. Understand "map" as mall map.
the description of mall map is "[Map_Smith_Haven_Mall_Desc]".
The icon of mall map is Figure of Map_Smith_Haven_Mall_icon.

to say Map_Smith_Haven_Mall_Desc:
	say "     A large display board hangs between the several large entrance doors to the mall, showing the building and surroundings. Looks like it has been updated in places by use of a spray can, showing the actual occupancy of various places, as compared to what was there before.";

Section 6 - Mall Foyer

The description of Mall Foyer is "[mallfoyer]".
Mall Foyer is sleepsafe.
earea of Mall Foyer is "Smith Haven".

To say mallfoyer:
	If findwires is 2 and fixedgens > 2:
		say "     When you enter the mall, the lights are on and you can hear the quiet, dulcet tones of muzak playing. The air in the mall isn't as stale either, a sign that the HVAC system is up and running. Track lighting illuminates a concrete bas-relief depicting scenes from the vast collection of Greek mythology running along the walls close to the ceiling. Whether it was for aesthetics or the developer had the money, real marble tiles were used for the flooring and runs from the entrance into the large atrium. There are only some small, empty shops that once served up a quick bite to eat or a cup of coffee. [one of]Three[or]Four[or]Six[at random] wolverines occupying a former coffee house turned guard shack warily watch you as you walk by.";
	else if daytimer is day:
		say "     Your footsteps echo off the marble floor as you walk into the foyer. There are only some small, empty shops that once served up a quick bite to eat or a cup of coffee. With the area illuminated by sunlight streaming into the foyer through the glass entrance doors, you can see that a former coffee shop had been converted into a makeshift guard house, [one of]two[or]three[or]five[at random] wolverines watching you intently as you walk by.";
	else:
		say "     Your footsteps echo off the marble floor as you walk into the foyer. With it being dark outside right now, the only light in the area is coming from a few lanterns sitting on tables in a coffee shop. You see sitting around them [one of]two[or]three[or]four[at random] wolverines, all of them watching as you walk by the shop.";


Mall Atrium is south of Mall Foyer.

the scent of Mall Foyer is "The foyer smells heavily of male musk due to the wolverines.".

Section 7 - Mall Atrium

The description of Mall Atrium is "[mallatrium]".
Mall Atrium is sleepsafe.
earea of Mall Atrium is "Smith Haven".

To say mallatrium:
	If findwires is 2 and fixedgens > 2:
		say "     The mall's atrium is a large rotunda, four massive columns rising towards the ceiling and seeming to support the large domed roof. The lit dome itself is painted with a scene of Mount Olympus. Three foot tall statues depicting the twelve Olympian gods sit on a ring running around the upper half of the rotunda and are backlit with random colored lights. Dominating the center of the atrium is a large fountain. You've learned in the past that it's a faithful recreation of the Morosini fountain found in a village in Crete. The fountain is now working, though the water is not actually suitable for drinking, despite being in motion. In the pool of the fountain some [one of]red[or]orange[or]blue[or]green[or]violet[at random] lights are illuminated. To the north is the mall foyer. To the south is the entrance to the food court. To the east and west are the main wings of the mall.";
	else if daytimer is day:
		say "     Sunlight streams in from the east and west wing skylights, giving enough light to see inside the atrium. It is a large rotunda, four massive columns rising towards the ceiling and seeming to support the large domed roof. It's hard to see into the semi-dark dome, though you are able to just make out statues of the twelve Olympian gods. Dominating the center of the atrium is a large fountain. You've learned in the past that it's a faithful recreation of the Morosini fountain found in a village in Crete. Dirty, standing water partially fills the fountain's pool, and with the HVAC system down, the light stench of the stagnant water fills the stuffy air around you. To the north is the mall foyer. To the south is the entrance to the food court. To the east and west are the main wings of the mall.";
	else:
		say "     The dark, spacious, atrium is barely lit by the few lanterns some rats have set up on the edges of the large fountain sitting in the middle of the rotunda. Their quiet chatter can be heard echoing off the domed roof as they idly sit by the silent fountain, though you don't want to seem rude by eavesdropping on their conversation. With the HVAC system down, the air is stuffy and you can smell the light stench of stagnant water coming from the fountain's pool. To the north is the mall foyer. To the south is the entrance to the food court. To the east and west are the main wings of the mall.";


Mall East Wing is east of Mall Atrium.
Mall Foodcourt is south of Mall Atrium.
Mall West Wing is west of Mall Atrium.

[the scent of Mall Atrium is "The atrium smells of old, standing water coming from the fountain.".	]

Section 8 - Mall East Wing

The description of Mall East Wing is "[malleastwing]".
Mall East Wing is sleepsafe.
earea of Mall East Wing is "Smith Haven".

To say malleastwing:
	If findwires is 2 and fixedgens > 2: [power on]
		say "     Most of the lights are on throughout the east wing and you can hear the soft tones of muzak playing. The air is less stuffy and stale with the HVAC system now working. Various planters, spaced evenly apart and continuing the theme of ancient Greece line the middle of the walkway all the way to a... [bold type]wall of falling snow[roman type](?) that conceals the rest of the hallway to the [bold type]east[roman type]. Vendor kiosks, selling everything from sunglasses to cell phone covers, occupy most of the spaces between the planters.";
		say "     With power having returned to the mall, some of the less infected have made their way to it to take refuge. The mall remains safe, for the most part, due to the diligence of the wolverine guards, though on occasion a feral manages to slip in. Usually they are ejected fairly quickly once they can't control their lust and run wild, humping someone at the first opportunity. While walking along, you see mallrats and other infected conversing while relaxing on the various planters, playing handheld games on various systems and smartphones, or milling about in the various shops. Some are even watching a movie on a large screen TV they managed to hook up in a vacant store.";
	else if daytimer is day:
		say "     Sunlight streams into the east wing of the mall through the skylights. You're surprised that they are still intact considering all the flying creatures that now roam the city. Various planters, spaced evenly apart and continuing the theme of ancient Greece line the middle of the walkway all the way to a... [bold type]wall of falling snow[roman type](?) that conceals the rest of the hallway to the [bold type]east[roman type]. Vendor kiosks, selling everything from sunglasses to cell phone covers, occupy most of the spaces between the planters.";
		say "     While walking along, you see several of the mallrats either conversing while relaxing on the various planters, milling about in the various shops that, surprisingly, still have some merchandise in them, or even playing games on various systems and smartphones.";
	else:
		say "     With it currently dark outside, the only source of illumination in the mall is from the various candles, lanterns, and occasional computer tablets being used. The warm glow of the lights, while not cheery, is far from being gloomy. But even with the low light it's still hard to see very far into the wing.";
		say "     As you carefully walk along, you can see the mallrats either sleeping, cuddling, gathered around some of the lanterns playing varied board and card games, or playing games on the tablets and smartphones some of the rats have.";
		say "     [bold type]To the east, something that looks like snowfall forms a white curtain cutting you off from the easternmost part of the mall.[roman type]";


the scent of Mall East Wing is "It smells like the mallrats.".

Section 9 - Mall Foodcourt

The description of Mall Foodcourt is "[mfcourt]".
Mall Foodcourt is sleepsafe.
earea of Mall Foodcourt is "Smith Haven".

To say mfcourt:
	If findwires is 2 and fixedgens > 2: [power on]
		say "     With most of the lights working in the food court as well as in some of the food vendor stalls, it seems to be a little less dreary. The ancient Greek theme continues throughout the dining area. There are heavily weathered columns made to look as if they are supporting the ceiling while the plastic chairs and tables are colored to imitate worn marble. Sitting in the center of the room is a small, simple fountain, water weakly bubbling from the top. To the north is the mall atrium.";
		say "     Quite a few of the tables are occupied by mallrats and a variety of other infected, talking and laughing loudly while playing a variety of card games. At least the mallrats seem to have food and drinks too, given out at the various franchises that line the large room. Apparently, someone instituted a rationing system here, and several wolverine guards hang out close by to enforce it. It is just for the inhabitants though, but some of them are perfectly willing to trade or even share their rations with guests...";
	else if daytimer is day:
		say "     Sunlight washes into the food court through the glass entrance doors, making it easier to see inside. Surprisingly the air is a little less stuffy in here. That probably is because the doors are propped open to allow a little bit of wind to blow into the building. The ancient Greek theme continues throughout the dining area. There are heavily weathered columns made to look as if they are supporting the ceiling while the plastic chairs and tables are colored to imitate worn marble. Sitting in the center of the room is a small, simple fountain, the pool partially filled with dirty, standing water. To the north is the mall atrium.";
		say "     There are a number of mallrats and few other infected occupying some of the tables, playing a round of poker or blackjack. At least the mallrats seem to have food and drinks too, given out at the various franchises that line the large room. Apparently, someone instituted a rationing system here, and several wolverine guards hang out close by to enforce it. It is just for the inhabitants though, but some of them are perfectly willing to trade or even share their rations with guests...";
	else:
		say "     With it currently dark outside, a few lanterns have been set up in just the center of the food court close to a small fountain. There are a few mallrats occupying a couple of the tables, [one of]talking among themselves[or]playing chess[or]playing poker[at random]. To the east there is a glow of a single lantern coming from the restroom facilities.";
	say "     There is a sign with a temporary notice standing in the hallway, stating that you enter the restrooms at your own risk. Strange - makes you wonder what exactly is in those rooms to the [bold type]east[roman type].";


Mall Restroom is east of Mall Foodcourt.
The earea of Mall Restroom is "Mall".
Mall Restroom is not sleepsafe.

The scent of the Mall Foodcourt is "It smells a little like old, rotting food.".

The invent of Mall FoodCourt is { "chair", "food" }.

Section 10 - Mall West Wing

The description of Mall West Wing is "[mallwestwing]".
Mall West Wing is sleepsafe.
earea of Mall West Wing is "Smith Haven".

To say mallwestwing:
	If findwires is 2 and fixedgens > 2: [power on]
		say "     Most of the lights are on throughout the west wing and you can hear the soft tones of muzak playing. The air is less stuffy and stale with the HVAC system now working. Various planters, spaced evenly apart and continuing the theme of ancient Greece line the middle of the walkway all the way to the end of the west wing. Vendor kiosks, selling everything from sunglasses to cell phone covers, occupy most of the spaces between the planters. To the west lies a former travel agency, its colorful pictures of tropical beaches and serene mountains now under a banner that reads 'Haven Community Center'.";
		say "     With power having returned to the mall, some of the less infected have made their way to it to take refuge. The mall remains safe, for the most part, due to the diligence of the wolverine guards, though on occasion a feral manages to slip in. Usually they are ejected fairly quickly once they can't control their lust and run wild, humping someone at the first opportunity. While walking along, you see mallrats and many, many other infected conversing while relaxing on the various planters, playing handheld games on various systems and smartphones, or milling about in the various shops.";
	else if daytimer is day:
		say "     Sunlight streams into the west wing of the mall through the skylights. You're surprised that they are still intact considering all the flying creatures that now roam the city. Various planters, spaced evenly apart and continuing the theme of ancient Greece line the middle of the walkway all the way to the end of the west wing. Vendor kiosks, selling everything from sunglasses to cell phone covers, occupy most of the spaces between the planters. To the west lies a former travel agency, its colorful pictures of tropical beaches and serene mountains now under a banner that reads 'Haven Community Center'.";
		say "     While walking along, you see several of the mallrats conversing while relaxing on a bench here or there, and also milling about in the various shops that, surprisingly, still have some merchandise in them. Some are just playing games on the rare intact smartphones a few of the rats have.";
	else:
		say "     With it currently dark outside, the only source of illumination in the mall is from the various candles and lanterns spread about. The warm glow of the lights, while not cheery, is far from being gloomy. But even with the low light it's still hard to see very far into the wing. As you carefully walk along, you can see the mallrats either sleeping, cuddling, gathered around some of the lanterns playing varied board and card games, or playing games on the tablets some of the rats have.";


the scent of Mall West Wing is "It smells like the mallrats milling about.".

Section 11 - Mall Restroom

Before going from Mall Foodcourt to Mall Restroom, say "     A wolverine sitting on a chair outside of the restroom facility looks up at you when you approach, his hackles standing on end. When you show him you're no harm, he calms and settles back into his seat. [one of]'I would suggest that you keep an eye out if you go in there. Part of the floor gave way and opened up into the utility tunnels and sewers. Now we need to stand guard against anything coming up out of there and getting into the mall. Doesn't make it a comfortable place to relieve yourself, but it's what we got. Better be quick.' When you tell him you're going in, he shrugs and hands you a lantern. 'Go ahead and take this then. And be careful.'[or]'It's a right mess in thar. Part of tha['] floor opened up to the sew'rs so we hafta watch fer anythin['] poppin['] up from them. Ya'll sure you wanna go scurryin['] about in thar?' When you nod your head, he shrugs then hands you a lantern. 'Don't say ah didn['] warn ya...'[at random] Taking the lantern, you head into the restroom and find that it's in shambles. Curiosity driving you, you carefully make your way deeper inside until you spot a fairly large hole in the floor.";

Before going from Mall Restroom to Sewers A7, say "You peek through the hole into the sewers to see if there is anything waiting for you. Seeing nothing, you climb down into the hole.";

The Sewer entrance is below Mall Restroom and above Sewers A7. The Sewer entrance is an open door. Sewer entrance is dangerous. The marea of Sewer entrance is "Mall".
Instead of examining the Sewer entrance:
	say "Through the hole, you see [the other side of the Sewer entrance].";

The description of Mall Restroom is "[mallrestroom]".

To say mallrestroom:
	If findwires is 2 and fixedgens > 2: [power on]
		say "     It's still fairly dark in the restroom, the few working lights left randomly flickering off and on. Not particularly feeling the urge for some electric shock therapy, you make sure to avoid any puddles of standing water in case they are electrified. While there are a number of working stalls in the front, a portion in the back of the room has been destroyed. What were once walls there are now just piles of rubble now, surrounding a large hole in the floor. From some of the broken faucets, water dribbles down the pipes and drips to the floor, forming small puddles. You occasionally hear [one of]soft growls[or]the scraping of something hard on concrete[or]what sounds like passionate squeaking[or]loud growling and several splashes[or]the squeaking of rusty hinges[at random] coming from the depths of the hole. Who knows what's down there...";
	else:
		say "     With just the light of you lantern, it's hard to see very far around you, and it's hard to shake the feeling that you are not alone in the dark. While there are a number of working stalls in the front, a portion in the back of the room has been destroyed. What were once walls there are now just piles of rubble now, surrounding a large hole in the floor. You occasionally hear [one of]soft growls[or]the scraping of something hard on concrete[or]what sounds like passionate squeaking[or]loud growling and several splashes[or]the squeaking of rusty hinges[at random] coming from the depths of the hole. Who knows what's down there...";


the scent of Mall Restroom is "It smells kind of bad in here with the open hole to the sewers.".

Section 12 - Shag Shack

Table of GameRoomIDs (continued)
Object	Name
Shag Shack Entrance	"Shag Shack Entrance"

Shag Shack Entrance is a room.
Shag Shack Entrance is northeast of Smith Haven Mall Lot East.
Shag Shack Entrance is sleepsafe.
The description of Shag Shack Entrance is "[ShagShackEntranceDesc]".

To say ShagShackEntranceDesc:
	If findwires is 2 and fixedgens > 2: [power on]
		say "     With long ceiling-mounted rows of fluorescent lights illuminating the store, the interior of the Shag Shack is quite well lit, if a bit cold. The crowd filling the store at all times of day clearly doesn't care - they're here for one purpose only, made clear by the impressive number of erect cocks swinging around in your line of sight at any given moment. The bustling group of all sorts of creatures throws hungry looks through the glass divider separating the entrance from the actual sale floor of this repurposed mattress store - where the merchandise is getting an incredible stress test, as more than a few beds and mattresses are occupied with customers rutting with their partners.";
	else if daytimer is night:
		say "     With a few construction spotlights connected to car batteries set up to illuminate the store, the interior of the Shag Shack is lit in patches, while other parts lie in the shadows. The crowd filling the store at all times of day clearly doesn't care - they're here for one purpose only, made clear by the impressive number of erect cocks swinging around in your line of sight at any given moment. The bustling group of all sorts of creatures throws hungry looks through the glass divider separating the entrance from the actual sale floor of this repurposed mattress store - where the merchandise is getting an incredible stress test, as more than a few beds and mattresses are occupied with customers rutting with their partners.";
	else:
		say "     With sunlight shining in through the glass front of the store, the interior of the Shag Shack is lit unevenly, with the front very bright and the rear lying in the shadows. The crowd filling the store at all times of day clearly doesn't care - they're here for one purpose only, made clear by the impressive number of erect cocks swinging around in your line of sight at any given moment. The bustling group of all sorts of creatures throws hungry looks through the glass divider separating the entrance from the actual sale floor of this repurposed mattress store - where the merchandise is getting an incredible stress test, as more than a few beds and mattresses are occupied with customers rutting with their partners.";
		say "     Four wolverine watchmen stand guard at the entrance of the large and very open brothel, harshly deflecting those who just want to rush in or anyone who gets too unruly. A few infected lying in a groaning heap in a corner seem to have been the previous targets of the wolverine's fierce protectiveness. Between them stands what might be the caricature of a loan shark - it is an actual anthro shark, wearing a suit that is surprisingly well-tailored for his not quite human body. From the looks of it, the guy is the boss here.";


the scent of Shag Shack Entrance is "Scent of messy sex hangs in the air - which isn't surprising, as you can see numerous people humping on the sales floor right now.".

[Further content in the file Wahn/Shag Shack.i7x]

Section 13 - Branson & Partner Land Management

Table of GameRoomIDs (continued)
Object	Name
Branson & Partner Reception	"Branson & Partner Reception"

Branson & Partner Reception is a room.
Branson & Partner Reception is north of Smith Haven Mall Lot North. Branson & Partner Reception is sleepsafe.
The description of Branson & Partner Reception is "[BPReceptionDesc]".

to say BPReceptionDesc:
	If findwires is 2 and fixedgens > 2: [power on]
		say "     The reception of the firm 'Branson & Partner Land Management' has an air of understated elegance that shows you're in a respectable business establishment. A granite-tiled floor and light gray walls set the frame for a modern-looking reception desk with a curved glass front. Beside it, a bright green potted plant gives the whole room a friendly feeling. The rest of the room is filled with several stands holding brochures about current lots the firm owns, flanking a small seating area of white leather armchairs.";
		say "     Surprisingly, the reception is staffed even at this time of night and in the midst of everything going on - a pretty anthro doe wearing a pristine white shirt is sitting behind the desk, giving you a well-practiced welcoming smile. Indirect lighting illuminates the room quite well - including one lamp that seems to be right under the desk-top. This shines right upon the woman's long, cream-colored legs, allowing you a teasing view of her assets through the only very lightly frosted glass front of the desk.";
	else if daytimer is night:
		say "     The reception of the firm 'Branson & Partner Land Management' has an air of understated elegance that shows you're in a respectable business establishment. A granite-tiled floor and light gray walls set the frame for a modern-looking reception desk with a curved glass front. Beside it, a bright green potted plant gives the whole room a friendly feeling. The rest of the room is filled with several stands holding brochures about current lots the firm owns, flanking a small seating area of white leather armchairs.";
		say "     Surprisingly, the reception is staffed even at this time of night and in the midst of everything going on - a pretty anthro doe wearing a pristine white shirt is sitting behind the desk, giving you a well-practiced welcoming smile. She has a small camping light set up beside her, adequately illuminating the immediate area. The light draws your attention to the fact that the glass front of the desk is only very lightly frosted, allowing a teasing view of the woman's long, cream-colored legs behind it.";
	else:
		say "     The reception of the firm 'Branson & Partner Land Management' has an air of understated elegance that shows you're in a respectable business establishment. A granite-tiled floor and light gray walls set the frame for a modern-looking reception desk with a curved glass front. Beside it, a bright green potted plant gives the whole room a friendly feeling. The rest of the room is filled with several stands holding brochures about current lots the firm owns, flanking a small seating area of white leather armchairs.";
		say "     Surprisingly, the reception is staffed even in the midst of everything going on - a pretty anthro doe wearing a pristine white shirt is sitting behind the desk, giving you a well-practiced welcoming smile. On second look, you notice that the glass front of the desk is only very lightly frosted, allowing a teasing view of the woman's long, cream-colored legs behind it.";

Table of GameRoomIDs (continued)
Object	Name
B&P Company Offices	"B&P Company Offices"

B&P Company Offices is a room. B&P Company Offices is sleepsafe.
The description of B&P Company Offices is "[BPOfficesDesc]".

to say BPOfficesDesc:
	say "     The offices of the firm [']Branson & Partner Land Management['] have an air of understated elegance that shows you're in a respectable business establishment. A granite-tiled floor and light gray walls set the frame for a row of modern-looking desks all lined up so that the attractive women sitting at them are facing your way and can greet you with professional smiles. As with the front desk, sheets of lightly frosted glass allow for some enticing glimpses of their long legs, usually ending in hooves or paws. Even the potted plants scattered throughout the large room are obviously still getting watered, shining in a healthy green. All in all, Branson's office staff makes the scene before you appear like it was set in a perfectly normal office on a perfectly normal day.";
	say "     Only the fact that none of the young women in here are human breaks the illusion a bit, as does the fact that one of the meeting rooms further back resembles a sleepover locale. There are mattresses spread out over the floor back there, complete with numerous blankets and pillows, creating a communal sleeping pad.";



[Further content in the file Wahn/Branson & Partner.i7x]

Smith Haven Mall ends here.
