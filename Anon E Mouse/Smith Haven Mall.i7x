Smith Haven Mall by Anon E Mouse begins here.

"Adds an upgraded mall to Flexible Survival to include a variety of NPCs and shops..."

Section 1 - Mall Area

Smith Haven Mall Lot North is a room.
Smith Haven Mall Lot East is a room.
Smith Haven Mall Lot South is a room. It is fasttravel.
Smith Haven Mall Lot West is a room.
Mall Foyer is a room. Mall Foyer entrance is a door. It is north of Mall Foyer and south of Smith Haven Mall Lot North.
Mall Atrium is a room.
Mall Foodcourt is a room. Mall Food Court entrance is a door. It is south of Mall Foodcourt and north of Smith Haven Mall Lot South.
Mall East Wing is a room.
Mall West Wing is a room.
Mall Restroom is a room.

Instead of examining the Mall Foyer entrance:
	say "Through the glass doors, you make out [the other side of the Mall Foyer entrance].";
Instead of examining the Mall Food Court entrance:
	say "Through the glass doors, you make out [the other side of the Mall Food Court entrance].";

Section 2 - Mall Lot North

The description of Smith Haven Mall Lot North is  "[mallnorthlot]";

To say mallnorthlot:
	If daytimer is day:
		say "     You walk along the parking lot[apostrophe]s main access road into the mall[']s northern lot, peeping into a few of the cars as you go. There aren[']t as many cars on the north side of the mall as there is on the south side, but they all still show signs of the owners being assaulted and transformed into the various critters now running around the city. To the south you see the entrance into the mall's foyer, flanked on one side by the building for the Regal movie theaters and the other by the building for a super Target.";
	otherwise if findwires is 2 and fixedgens is 2:
		say "     You walk along the parking lot[']s illuminated main access road into the mall[']s northern lot, peeping into a few of the cars as you go. There aren[']t as many cars on the north side of the mall as there is on the south side, but they all still show signs of the owners being assaulted and transformed into the various critters now roaming around the city. The signs on the Regal movie theater and Target store are lit and to the south you see light coming from the entrance into the mall's foyer.";
	otherwise:
		say "     You carefully make your way along the dark parking lot[']s main access road, staying alert for any traps or surprises. Of what you can see, there aren[']t as many cars on this side of the mall as compared to the south side, but there is still signs of the former owners['] fates. To the south you can just discern the glass door entrance to the mall[']s foyer in the low light.";

East of Smith Haven Mall Lot North is Smith Haven Mall Lot East.
West of Smith Haven Mall Lot North is Smith Haven Mall Lot West.

the scent of Smith Haven Mall Lot North is "The light breeze blowing around you carries the still lingering scent of messy sex and cum.";
	
Section 3 - Mall Lot East

The description of Smith Haven Mall Lot East is "[malleastlot]";

To say malleastlot:
	If daytimer is day:
		say "     You walk along the parking lot[']s main access road into the mall[']s east lot, checking some of the cars for anything useful. When you finally make it, all you can see is even more parked and wrecked cars with their doors opened and ripped clothing, some purses, and shopping bags, strewn about, caked in what you assume is dried cum. There is a huge building sitting on the southeast corner of the lot, 24-7 Fitness blazoned across the top of it in red letters.";
	otherwise if findwires is 2 and fixedgens is 2:
		say "     Being careful of the shadows casted by the parking lot lights, you walk along the lot[']s main access road into the mall[']s east lot. When you finally make it, of what you can see, there is even more parked and wrecked cars with their doors opened and ripped clothing strewn about, caked in what you assume is dried cum. The sign on the side of the Sears building is illuminated as well as the sign on the side of the 24-7 Fitness building sitting on the southeast corner of the parking lot.";
	Otherwise:
		say "     You slowly and carefully make your way along the dark parking lot[']s main access road, watching all around you for anything that might surprise you. Finally making it to the east lot, you can just make out more of the same destruction that was in the north lot. Remembering that there is supposed to be a gym in the mall[']s east lot, you continue walking until you are able to just discern a large building to the southeast.";
	
South of Smith Haven Mall Lot East is Smith Haven Mall Lot South.

the scent of Smith Haven Mall Lot East is "The light breeze blowing around you carries the still lingering scent of messy sex.";
	
Section 4 - Mall Lot West

The description of Smith Haven Mall Lot West is "[mallwestlot]";

To say mallwestlot:
	If daytimer is day:
		say "     You walk along the parking lot[']s main access road into the mall[']s west lot, looking through some of the cars for any left over food or water. Finally making it, you look around and find that it[']s just more of the same, the carnage of rampant sex on all the vehicles. Sitting on the northwest corner of the lot is a large gas station with a convenience store, the lingering scent of gasoline wafting towards you on the breeze. In the southwest part of the lot you can see another building. The sign sitting on the edge of its roof reads as China South Buffet.";
	otherwise if findwires is 2 and fixedgens is 2:
		say "     With the parking lot lights illuminating the area, you walk along the parking lot[']s main access road into the mall[']s west lot. Finally making it, you look around as best as you can and find that it[']s just more of the same, the carnage of rampant sex on all the vehicles. The sign on the side of the JCPenney[']s building is lit and all the lights are on at the large gas station sitting on the northwest corner of the lot. When you pause long enough, you can smell the lingering scent of gasoline wafting towards you on the breeze. In the southwest part of the lot you can see another building with some lights on. The illuminated sign sitting on the edge of its roof reads as China South Buffet.";
	Otherwise:
		say "     You slowly and carefully make your way along the dark parking lot[']s main access road, keeping an eye peeled for anything that might try to surprise you. Finally making it to the west lot, it's hard to tell if there is anything much different. You find on the northwest corner of the lot what looks like a large gasoline station with a convenience store. The lingering scent of gasoline wafting towards you on the breeze confirms it. Curiosity spurning you on, you continue exploring the west lot until spotting a building, which you know is the China South Buffet.";
	
South of Smith Haven Mall Lot West is Smith Haven Mall Lot South.

the scent of Smith Haven Mall Lot West is "The light breeze blowing around you carries the lingering scent of messy sex tinged with the light smell of gasoline.";
	
Section 5 - Mall Lot South

The description of Smith Haven Mall Lot South is "[mallsouthlot]";

To say mallsouthlot:
	If daytimer is day:
		say "     Walking into Smith Haven Mall[']s vast southern parking lot, you see the devastating results of the infection having run rampant. Dotted about the lot are not only parked vehicles with either open doors, broken windows, or both, but also several wrecked vehicles, either smashed into other vehicles or hung up in planters. Scraps of ripped clothing caked in dried fluids litter the ground around the vehicles and about the lot. To the north you can see the entrance to the mall[']s food court. Just inside the glass doors you are able to see some activity on the other side of them. Looking to the east and to the west just shows more of the same, though off in the distance of the mall[']s west lot you spot a gas station.";
	otherwise if findwires is 2 and fixedgens is 2:
		say "     Walking into Smith Haven Mall[']s vast southern parking lot, with the lot lights illuminating the area you see most of the devastating results of the infection having run rampant. Dotted about the lot are not only parked vehicles with either open doors, broken windows, or both, but also several wrecked vehicles, either smashed into other vehicles or hung up in planters. Scraps of ripped clothing caked in dried fluids litter the ground around the vehicles and about the lot. To the north you can see light coming from the entrance to the mall[']s food court. Just inside the glass doors you are able to see some activity on the other side of them. Looking to the east and to the west just shows more of the same, though off in the distance of the mall[']s west lot you spot the lights of a gas station.";
	Otherwise:
		say "     By what you can see around you in the dark, you[']re pretty sure you[']re in Smith Haven Mall[']s vast parking lot. The full, pregnant, moon hanging in the night sky brilliantly casts it[']s light upon a good portion of the mall[']s lot. With the stars dancing along with the moon in the night sky and the eerie silence of the abandoned cars you can see, the devastation around you is almost serene. To the east and west you know the parking lot continues and ahead of you is the entrance to the mall[']s food court.";


East of Smith Haven Mall Lot South is Smith Haven Mall Lot East.
West of Smith Haven Mall Lot South is Smith Haven Mall Lot West.
	
the scent of Smith Haven Mall Lot South is "The light breeze blowing around you carries the lingering scent of cum and messy sex.";
	
Section 6 - Mall Foyer

The description of Mall Foyer is "[mallfoyer]";

To say mallfoyer:
	If findwires is 2 and fixedgens is 2:
		say "     When you enter the mall, the lights are on and you can hear the quiet, dulcet tones of muzak playing. The air in the mall isn[']t as stale either, a sign that the HVAC system is up and running. Track lighting illuminates a concrete bas-relief depicting scenes from the vast collection of Greek mythology running along the walls close to the ceiling. Whether it was for aesthetics or the developer had the money, real marble tiles were used for the flooring and runs from the entrance into the large atrium. There are only some small, empty shops that once served up a quick bite to eat or a cup of coffee. [one of]Three[or]Four[or]Six[at random] wolverines occupying a former coffee house turned guard shack warily watch you as you walk by.";
	otherwise if daytimer is day:
		say "     Your footsteps echo off the marble floor as you walk into the foyer. There are only some small, empty shops that once served up a quick bite to eat or a cup of coffee. With the area illuminated by sunlight streaming into the foyer through the glass entrance doors, you can see that a former coffee shop had been converted into a makeshift guard house, [one of]two[or]three[or]five[at random] wolverines watching you intently as you walk by.";
	Otherwise:
		say "     Your footsteps echo off the marble floor as you walk into the foyer. With it being dark outside right now, the only light in the area is coming from a few lanterns sitting on tables in a coffee shop. You see sitting around them [one of]two[or]three[or]four[at random] wolverines, all of them watching as you walk by the shop.";
		
South of Mall Foyer is Mall Atrium.

the scent of Mall Foyer is "The foyer smells heavy of male musk due to the wolverines.";
	
Section 7 - Mall Atrium

The description of Mall Atrium is "[mallatrium]";

To say mallatrium:
	If findwires is 2 and fixedgens is 2:
		say "     The mall[']s atrium is a large rotunda, four massive columns rising towards the ceiling and seeming to support the large domed roof. The lit dome itself is painted with a picture depicting a scene of Mount Olympus. Three foot tall statues depicting the twelve Olympian gods sit on a ring running around the upper half of the rotunda and are backlit with random colored lights. Dominating the center of the atrium is a large fountain. You[']ve learned in the past that it[']s a faithful recreation of the Morosini fountain found in a village in Crete. The fountain is now working, though the water is still too dirty to drink, and in the pool of the fountain some [one of]red[or]orange[or]blue[or]green[or]violet[at random] lights are illuminated. To the north is the mall foyer. To the south is the entrance to the food court. To the east and west are the main wings of the mall.";
	otherwise if daytimer is day:
		say "     Sunlight streams in from the east and west wing skylights, giving enough light to see inside the atrium. It is a large rotunda, four massive columns rising towards the ceiling and seeming to support the large domed roof. It[']s hard to see into the semi-dark dome, though you are able to just make out statues of the twelve Olympian gods.  Dominating the center of the atrium is a large fountain. You[']ve learned in the past that it[']s a faithful recreation of the Morosini fountain found in a village in Crete. Dirty, standing water partially fills the fountain[']s pool, and with the HVAC system down, the light stench of the stagnant water fills the stuffy air around you. To the north is the mall foyer. To the south is the entrance to the food court. To the east and west are the main wings of the mall.";
	Otherwise:
		say "     The dark, spacious, atrium is barely lit by the few lanterns some rats have set up on the edges of the large fountain sitting in the middle of the rotunda. Their quite chatter can be heard echoing off the domed roof as they idly sit by the silent fountain, though you don[']t want to seem rude by eaves dropping on their conversation. With the HVAC system down, the air is stuffy and you can smell the light stench of stagnant water coming from the fountain[']s pool. To the north is the mall foyer. To the south is the entrance to the food court. To the east and west are the main wings of the mall.";

East of Mall Atrium is Mall East Wing.
South of Mall Atrium is Mall Foodcourt.
West of Mall Atrium is Mall West Wing.

[the scent of Mall Atrium is "The atrium smells of old, standing water coming from the fountain.";	]
	
Section 8 - Mall East Wing

The description of Mall East Wing is "[malleastwing]";

To say malleastwing:
	If findwires is 2 and fixedgens is 2:
		say "     Most of the lights are on throughout the east wing and you can hear the soft tones of muzak playing. The air is less stuffy and stale with the HVAC system now working. With power having returned to the mall, some of the less infected have made their way to it to take refuge. It remains safe, for the most part, due to the diligence of the wolverine guards, though on occasion a feral manages to slip in before it, and anyone they had corrupted, being caught and ejected. Various planters, spaced evenly apart and continuing the theme of ancient Greek, line the middle of the walkway all the way to the entrance of Sears. A smaller fountain of Poseidon holding a trident while riding a platform supported by four dolphins, water weakly running from the porpoise's mouths, sits in front of the anchor store. Vendor kiosks, selling everything from sunglasses to cell phone covers, occupy most of the spaces between the planters. On the south side of the wing near the middle is the entrance to the super Target. While walking along, you see mallrats and other infected conversing while relaxing on the various planters, playing handheld games on various systems and smartphones, or milling about in the various shops. Some are even watching a movie on a large screen TV they managed to hook up in a vacant store.";
	otherwise if daytimer is day:
		say "     Sunlight streams into the east wing of the mall through the skylights. You[']re surprised that they are still intact considering all the flying creatures that now roam the city. Various planters, spaced evenly apart and continuing the theme of ancient Greek, line the middle of the walkway all the way to the entrance of Sears. A smaller fountain of Poseidon holding a trident while riding a platform supported by four dolphins sits in front of the anchor store, stagnant water sitting in the pool. Vendor kiosks, selling everything from sunglasses to cell phone covers, occupy most of the spaces between the planters. On the south side of the wing near the middle is the entrance to the super Target. While walking along, you see several of the mallrats either conversing while relaxing on the various planters, milling about in the various shops that, surprisingly, still have some merchandise in them, or even playing games on various systems and smartphones.";
	Otherwise:
		say "     With it currently dark outside, the only source of illumination in the mall is from the various candles, lanterns, and occasional computer tablets being used. The warm glow of the lights, while not cheery, is far from being gloomy. But even with the low light it[']s still hard to see very far into the wing. As you carefully walk along, you can see the mallrats either sleeping, cuddling, gathered around some of the lanterns playing varied board and card games, or playing games on the tablets and smartphones some of the rats have.";

 the scent of Mall East Wing is "It smells like the mallrats.";
	
Section 9 - Mall Food Court

The description of Mall Foodcourt is "[mfcourt]";

To say mfcourt:
	If findwires is 2 and fixedgens is 2:
		say "     With most of the lights working in the food court as well as in some of the food vendor stalls, it seems to be a little less dreary. The ancient Greek theme continues throughout the dining area. Heavily weathered columns had been made to look as if they are supporting the ceiling while the plastic chairs and tables are colored to imitate worn marble. Sitting in the center of the room is a small, simple fountain, water weakly bubbling from the top. A few of the tables are occupied by mallrats and a variety of other infected, talking and laughing loudly while playing a variety of card games. To the north is the mall atrium. On the eastern edge of the food court hangs a sign pointing to the restroom facilities.";
	otherwise if daytimer is day:
		say "     Sunlight washes into the food court through the glass entrance doors, making it easier to see inside. Surprisingly the air is a little less stuffer in here. It's probably because the doors are propped open as needed to air it out. The ancient Greek theme continues throughout the dining area. Heavily weathered columns had been made to look as if they are supporting the ceiling while the plastic chairs and tables are colored to imitate worn marble. Sitting in the center of the room is a small, simple fountain, the pool partially filled with dirty, standing water. Every food vendor stall surrounding the dining area looks like they have already been thoroughly ransacked. There are a few mallrats occupying some of the tables, playing a round of poker or blackjack. To the north is the mall atrium. On the eastern edge of the food court hangs a sign pointing to the restroom facilities.";
	Otherwise:
		say "     With it currently dark outside, a few lanterns have been set up in just the center of the food court close to a small fountain. There are a few mallrats occupying a couple of the tables, [one of]talking among themselves[or]playing chess[or]playing poker[at random]. To the east there is a glow of a single lantern coming from the restroom facilities.";
	say "     There is a temporary notice up stating that the sewer entrance has been relocated to the bathrooms to the [bold type]east[roman type].  Odd.";

East of Mall Foodcourt is Mall Restroom.

the scent of the Mall Foodcourt is "It smells a little like old, rotting food.";

The invent of Mall FoodCourt is { "chair", "food" }.
	
Section 10 - Mall West Wing

The description of Mall West Wing is "[mallwestwing]";

To say mallwestwing:
	If findwires is 2 and fixedgens is 2:
		say "     Most of the lights are on throughout the west wing and you can hear the soft tones of muzak playing. The air is less stuffy and stale with the HVAC system now working. With power having returned to the mall, some of the less infected have made their way to it to take refuge. It remains safe, for the most part, due to the diligence of the wolverine guards, though on occasion a feral manages to slip in before it, and anyone they had corrupted, being caught and ejected. Various planters, spaced evenly apart and continuing the theme of ancient Greek, line the middle of the walkway all the way to the entrance of JcPenny[']s. A smaller fountain of Poseidon holding a trident while riding a platform supported by four hippocamps, water spurting from the equine's mouths, sits in front of the anchor store. Vendor kiosks, selling everything from beauty treatments to cell phones, occupy most of the spaces between the planters. On the south side of the wing near the middle is the entrance to the Regal movie theaters. While walking along, you see mallrats and other infected conversing while relaxing on the various planters or milling about in the various shops. Some are even playing on a few game consoles they[']ve hooked up to TVs in a vacant store.";
	otherwise if daytimer is day:
		say "     Sunlight streams into the west wing of the mall through the skylights. You[']re surprised that they are still intact considering all the flying creatures that now roam the city. Various planters, spaced evenly apart and continuing the theme of ancient Greek, line the middle of the walkway all the way to the entrance of JcPenny[']s. A smaller fountain of Poseidon holding a trident while riding a platform supported by four hippocamps sits in front of the anchor store, stagnant water sitting in the pool. Vendor kiosks, selling everything from beauty treatments to cell phones, occupy most of the spaces between the planters. On the south side of the wing near the middle is the entrance to the Regal movie theaters. While walking along, you see several of the mallrats conversing while relaxing on the various planters, milling about in the various shops that, surprisingly, still have some merchandise in them, or playing games on the smartphones some of the rats have.";
	Otherwise:
		say "     With it currently dark outside, the only source of illumination in the mall is from the various candles and lanterns spread about. The warm glow of the lights, while not cheery, is far from being gloomy. But even with the low light it[']s still hard to see very far into the wing. As you carefully walk along, you can see the mallrats either sleeping, cuddling, gathered around some of the lanterns playing varied board and card games, or playing games on the tablets some of the rats have.";

the scent of Mall West Wing is "It smells like the mall rats milling about.";
	
Section 11 - Mall Restroom

Before going from Mall Foodcourt to Mall Restroom, say "     A wolverine sitting on a chair outside of the restroom facility looks up at you when you approach, his hackles standing on end. When you show him you[']re no harm, he calms and settles back into his seat. [one of]'I would suggest that you don[']t go in there. Part of the floor gave way and opened up into the utility tunnels and sewers. Now we need to stand guard against anything coming up out of there and getting into the mall. If you[']re still determined to go looking around in there, I won[']t stop you.' When you tell him you[']re still going in, he shrugs and hands you a lantern. 'Go ahead and take this then and be careful.'[or]'It[']s a right mess in thar. Part of tha['] floor opened up to the sew[']rs so we hafta watch fer anythin['] poppin['] up from them. Ya[']ll sure you wanna go scurryin['] about in thar?' When you nod your head, he shrugs then hands you a lantern. ‘Don[']t say ah didn['] warn ya…'[at random] Taking the lantern, you head into the restroom and find that it[']s in shambles. It seems a portion of it has been destroyed, what were once walls now just piles of rubble. From some of the broken faucets, water dribbles down the pipes and drips to the floor, forming small puddles. Curiosity driving you, you carefully make your way deeper inside until finding a fairly large hole in the floor.";

Before going from Mall Restroom to Sewers A7, say "You peek through the hole into the sewers to see if there is anything waiting for you. Seeing nothing, you climb down into the hole.";

The Sewer entrance is below Mall Restroom and above Sewers A7. The Sewer entrance is an open door. Sewer entrance is dangerous. The marea of Sewer entrance is "Mall".
Instead of examining the Sewer entrance:
	say "Through the hole, you see [the other side of the Sewer entrance].";

The description of Mall Restroom is "[mallrestroom]";

To say mallrestroom:
	If findwires is 2 and fixedgens is 2:
		say "     It[']s still fairly dark in the restroom, the few working lights left randomly flickering off and on. Not particularly feeling the urge for some electric shock therapy, you make sure to avoid any standing water in case they are electrified. You hear occasionally coming from the sewers [one of]soft growls[or]the scraping of something hard on concrete[or]what sounds like passionate squeaking[or]loud growling and several splashes[or]the squeaking of rusty hinges[at random].";
	Otherwise:
		say "     With just the light of you lantern, it[']s hard to see very far around you, and it[']s hard to shake the feeling that you are not alone in the dark. You hear occasionally coming from the sewers [one of]soft growls[or]the scraping of something hard on concrete[or]what sounds like passionate squeaking[or]a loud splash[or]the squeaking of rusty hinges[at random].";

the scent of Mall Restroom is "It smells kind of bad in here with the open hole to the sewers.";



Smith Haven Mall ends here.
