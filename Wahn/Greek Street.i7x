Greek Street by Wahn begins here.




[Room Declaration]

Table of GameRoomIDs (continued)
Object	Name
Greek Street	"Greek Street"

Greek Street is a room.
Greek Street is southeast of College Walkway East.
Description of Greek Street is "[greekdesc]".
earea of Greek Street is "Campus".

to say greekdesc:
	say "     As suspected of a street with nothing but fraternities and sororities, your surroundings are moderately littered with plastic drinking cups, underwear, panties, and various sorts of trash. The buildings all around bear signs and banners with Greek letters, marking them as the homes of various groups. Letting your gaze sweep over the row of buildings, you recognize a pattern, with the fraternities lined up on the east side of the street, while the sororities are on the western side. Passing by the buildings you see a whole salad of Greek letters, with thankfully the English names spelled out beneath too. Inspecting the fraternities, you can see Phi Alpha Nu (PAN) being surprisingly well kept up, with its lawn and garden clean of litter and visibly greener than the surroundings. From the direction of Phi Iota Gamma (PIG), you hear some grunting, squealing and cheers coming from behind the building - might be some sort of fight or match going on there? Omicron Rho Chi (ORC) has a number of homemade banners fluttering in the wind, hung up on the front of the building - you recognize the stylized heads of a dragon, elves and orcs on a few of these.";
	say "     The Tau Omicron Psi (TOP) frat is the only one that has a fence all around it like a military compound (recently upgraded to actually include barbed wire, from the looks of it), with a tall flagpole and the building looking kinda utilitarian and barracks-like. Rho Upsilon Nu (RUN) has the logos of various sports teams plastered on the front wall of the building, with its mailbox literally sitting on the tip of a stand styled like one of those 'We're #1' foam hands. Lastly, the Alpha Lambda Epsilon (ALE) frat is extensively littered with empty liquor and beer bottles and cans, with an overflowing ashtray on the front porch. Checking out the sororities, you can see the outline of a woman apparently running side by side with a panther as a mural on the wall of 'The Pride' of Chi Alpha Tau (CAT). 'The Nereids' of Tau Iota Tau (TIT) is housed in a downright beautiful building, complete with decorative columns, little flags and steamers that flutter in the wind. Situated besides the previous building, 'The Maiar' of Delta Upsilon Delta (DUD) seems a bit... plain, with no special decoration or anything. Well-kept up but that's about it, just a residential house.";
	say "     While you'd love to explore all the various sororities and fraternities, you have no clue which ones are safe to enter. So you get the feeling that that it might be best for you to have a look around the campus to see if you can find information on the various groups at the college first instead of randomly walking up to any of the buildings...";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Living Room	"PAN Frat Living Room"

PAN Frat Living Room is a room.
PAN Frat Living Room is sleepsafe.
Description of PAN Frat Living Room is "[PFratLivingDesc]".

to say PFratLivingDesc:
	say "     Standing in the PAN fraternity living room, it becomes clear immediately that this is a long-established frat. From the smooth hardwood floor, large and functional fireplace, all the way to the thick wooden beams holding up the ceiling, it wakes the impression of being very well-crafted and pretty solid in its construction. The room is furnished with a bunch of relatively modern, comfortable-looking leather couches and armchairs, a fairly huge plasma TV on one wall, and even a bar counter in one corner, with all sorts of fancy bottles racked up on the wall behind it. Towards the [link]west[end link], you can see the front door of the frat house, flanked by large potted plants and leading out onto Greek Street. In the north is a door to a small, quite unremarkable guest bathroom, while there are open double doors in the [link]northeast[end link] (to the kitchen), [link]east[end link] (to the stairway), and [link]south[end link] (to the game room).";
	if Daytimer is day:
		say "     During the daytime, the place has less of the rowdy energy that takes hold when the partying starts later on, with mostly just the actual frat brothers being present. They do their own stuff, hanging out and talking, or watching something (recorded) on the wall-mounted TV, with in-between bouts of cleaning and prep work for another night of partying to distract everyone from the chaos that has spread throughout the whole city. The large barrel of satyr wine that you helped Kerr and Talov get in here is set up prominently next to the bar, ready to be tapped again to spread more drunken cheer among the college students in another night of partying. ";
		if Resolution of Free Drink is 1: [player got the satyrs in, nothing more yet]
			LineBreak;
		else if Resolution of Free Drink > 1 and Resolution of Free Drink < 5: [early stage, light transformations]
			say "The effects of the special wine circulating through the parties in this frat house are becoming noticeable, as goatees are gaining fairly widespread popularity on a number of frat brother's faces. Picking up on the sound of hooves on the wooden floor, a quick glance downwards also reveals to you that at least one or two of them have advanced a bit further on their way to becoming satyrs, sporting split hooves instead of human feet now.";
		else if Resolution of Free Drink > 4 and Resolution of Free Drink < 8: [a few fully transformed]
			say "With satyr wine circulating quite a bit during the recent parties, partially due to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun, the effects on the frat brothers are more than obvious. They're still a mixed crowd, mostly human still, but almost all of them now bearded with stylish goatees. Two or three of the guys have fully transformed though, being through and through satyrs now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before.";
		else if Resolution of Free Drink > 7: [half satyrs, half human-ish - stopping here to keep the variety going, as satyr supremacy could get boring]
			say "The rampant use of satyr wine has made quite an impact on the fraternity, greatly helped along by to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun. Looking at the frat brothers coming and going, you guess that half of them have fully transformed into satyrs by now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before. There is a bunch more bare skin on show though, as many go shirtless and just wear some loose shorts to cover their privates.";
	else:
		say "     The place is packed with a large crowd that is standing, sitting, or circulating around, all of them enjoying themselves to the beat of popular music, dancing or talking with one another. Pretty much everyone has some sort of drink in their hands and the atmosphere is pretty rowdy, but good-natured. Partly responsible for that are Kerr and Talov, whom you helped get in here with their barrel of satyr wine. Having set it up next to the bar and appointed themselves the barmen, the two satyrs are fully in their element, with Kerr cheerfully making an impressive show of mixing all sorts of drinks while Talov is handing out the drinks. The red-headed satyr often leans in to say something as he does so, pointing at himself and/or Kerr and expressively wiggling his eyebrows, by the usual blushing reactions of the partygoers and the good-natured laugh of the satyr afterwards, those were likely flirty and salacious offers. ";
		if Resolution of Free Drink is 1: [player got the satyrs in, nothing more yet]
			LineBreak;
		else if Resolution of Free Drink > 1 and Resolution of Free Drink < 5: [early stage, light transformations]
			say "The effects of the special wine circulating through the parties in this frat house are becoming noticeable, as the amount of facial hair seems to be on the rise, with especially goatees being quite often seen on guys faces. Besides the pair at the bar, you can see a fully transformed satyr here and there in the mix too.";
		else if Resolution of Free Drink > 4 and Resolution of Free Drink < 8: [a few fully transformed]
			say "With satyr wine circulating quite a bit during the recent parties, partially due to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun, the effects are becoming even more obvious. Letting your gaze sweep over the crowd, you can see more than just a few satyrs around by now. The ones that have transformed are usually the center of local clumps of people, carrying the party spirit to new heights due to their jovial nature, eager participation in party games, or just by groping and making out with willing partners to draw the eyes of all around them.";
		else if Resolution of Free Drink > 7: [overall 1/3 satyrs - stopping here to keep the variety going, as satyr supremacy could get boring]
			say "The rampant use of satyr wine has made quite an impact on the fraternity and its parties, greatly helped along by to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun. Looking at the mix of people in here, you'd guess that maybe a third of the regulars have fully transformed into satyrs by now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother anyone really, as the party has gained a wild, carefree energy and people just seem to want some fun.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Kitchen	"PAN Frat Kitchen"

PAN Frat Kitchen is a room.
PAN Frat Kitchen is sleepsafe.
PAN Frat Kitchen is northeast of PAN Frat Living Room.
PAN Frat Kitchen is north of PAN Frat Stairway.
PAN Frat Kitchen is northwest of PAN Frat Garden.
Description of PAN Frat Kitchen is "[PFratKitchenDesc]".

to say PFratKitchenDesc:
	say "     Standing in the combined kitchen and dining room of PAN fraternity, it becomes clear immediately that this is a long-established frat. From the smooth hardwood floor to the thick wooden beams holding up the ceiling, it wakes the impression of being very well-crafted and pretty solid in its construction. The back third of the room is set up as an expansive kitchen sporting two large fridges, wooden kitchen cabinets, a gleaming high-capacity stove and industrial dishwasher, all around a central kitchen island for extra workspace. A solid door to a presumably well-stocked pantry sports a quite obvious lock, most likely to keep people from rifling through it during parties, which seems to be a good idea, especially in the current situation. The rest of the room is filled with six large wooden tables, with the chairs lined up around them having the frat's Greek symbols laid into their wooden backrests. Towards the [link]southwest[end link], an open double door leads into the living room, to the [link]south[end link] is a door to the stairway and in the [link]southeast[end link] you can see a back door into the garden behind the building. ";
	if Daytimer is day:
		say "     During the daytime, the place has less of the rowdy energy that takes hold when the partying starts later on, with mostly just the actual frat brothers being present. They do their own stuff, hanging out and talking, and preparing and consuming food. ";
		if Resolution of Free Drink is 1: [player got the satyrs in, nothing more yet]
			say "";
		else if Resolution of Free Drink > 1 and Resolution of Free Drink < 5: [early stage, light transformations]
			say "The effects of the special wine circulating through the parties in this frat house are becoming noticeable, as goatees are gaining fairly widespread popularity on a number of frat brother's faces. Picking up on the sound of hooves on the wooden floor, a quick glance downwards also reveals to you that at least one or two of them have advanced a bit further on their way to becoming satyrs, sporting split hooves instead of human feet now.";
		else if Resolution of Free Drink > 4 and Resolution of Free Drink < 8: [a few fully transformed]
			say "With satyr wine circulating quite a bit during the recent parties, partially due to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun, the effects on the frat brothers are more than obvious. They're still a mixed crowd, mostly human still, but almost all of them now bearded with stylish goatees. Two or three of the guys have fully transformed though, being through and through satyrs now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before.";
		else if Resolution of Free Drink > 7: [half satyrs, half human-ish - stopping here to keep the variety going, as satyr supremacy could get boring]
			say "The rampant use of satyr wine has made quite an impact on the fraternity, greatly helped along by to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun. Looking at the frat brothers coming and going, you guess that half of them have fully transformed into satyrs by now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before. There is a bunch more bare skin on show though, as many go shirtless and just wear some loose shorts to cover their privates.";
	else:
		say "     The partying crowd extends into this room too, though it is a bit less loud in here, with a little bit of distance to the sound system in the living room. Quite a few have sat down at the tables, chatting with each other without having to shout, or munching away at the snacks laid out, or having grabbed proper food from the kitchen.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Stairway	"PAN Frat Stairway"

PAN Frat Stairway is a room.
PAN Frat Stairway is sleepsafe.
PAN Frat Stairway is east of PAN Frat Living Room.
PAN Frat Stairway is west of PAN Frat Garden.
PAN Frat Stairway is north of PAN Frat Game Room.
PAN Frat Stairway is below PAN Frat Second Floor.
Description of PAN Frat Stairway is "[PFratStairwayDesc]".

to say PFratStairwayDesc:
	say "     You're standing in the connecting room that holds the stairway of the PAN frat house. As usual in the building, it is solidly build out of wood, with a wide stairway and a decoratively carved bannister. A long black banner is hanging down from upstairs, bearing the Greek letters Phi Alpha Nu in large scale. It is angled to draw the eye of anyone stepping through the two open double doors from the living room to the [link]west[end link]. Single doors lead [link]south[end link] into the game room and [link]north[end link] into the kitchen, while a back door in the [link]east[end link] allows access to the garden. You could also go [link]up[end link] to the second floor, or [link]down[end link] into the basement.";
	if Daytimer is day:
		say "     During the daytime, there isn't much activity here in the hall/stairway, as the frat brothers that come into view are always going somewhere, not lingering for any great amount of time.";
	else:
		say "     The partying crowd extends into this room too, with people hanging around or sitting on the stairs to talk in somewhat less noisy surroundings than the living room or game room.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Game Room	"PAN Frat Game Room"

PAN Frat Game Room is a room.
PAN Frat Game Room is sleepsafe.
PAN Frat Game Room is southeast of PAN Frat Living Room.
Description of PAN Frat Game Room is "[PFratGameDesc]".

to say PFratGameDesc:
	say "     Standing in the PAN fraternity living room, it becomes clear immediately that this is a long-established frat. From the smooth hardwood floor to the thick wooden beams holding up the ceiling, it wakes the impression of being very well-crafted and pretty solid in its construction. The back half of the room is filled with various types of gaming hardware, including a pool table, foosball, and two pinball machines. In the front half, there are a bunch of relatively modern, comfortable-looking leather couches and armchairs, set up in two groups before wall-mounted plasma TVs with an array of various gaming consoles lined up beneath them. Towards the [link]northwest[end link], a pair of open double doors leads into the living room of the frat house, while a single door leads [link]north[end link] into the stairway, another east into an indoor pen, and a back door in the [link]northeast[end link] allows access to the garden.";
	if Daytimer is day:
		say "     During the daytime, the place has less of the rowdy energy that takes hold when the partying starts later on, with mostly just the actual frat brothers being present. They do their own stuff, hanging out and talking, or keeping themselves busy with one of the games, with in-between bouts of cleaning and prep work for another night of partying to distract everyone from the chaos that has spread throughout the whole city. ";
		if Resolution of Free Drink is 1: [player got the satyrs in, nothing more yet]
			LineBreak;
		else if Resolution of Free Drink > 1 and Resolution of Free Drink < 5: [early stage, light transformations]
			say "Looking around, you see that the effects of the special wine circulating through the parties in this frat house are becoming noticeable, as goatees are gaining fairly widespread popularity on a number of frat brother's faces. Picking up on the sound of hooves on the wooden floor, a quick glance downwards also reveals to you that at least one or two of them have advanced a bit further on their way to becoming satyrs, sporting split hooves instead of human feet now.";
		else if Resolution of Free Drink > 4 and Resolution of Free Drink < 8: [a few fully transformed]
			say "With satyr wine circulating quite a bit during the recent parties, partially due to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun, the effects on the frat brothers are more than obvious. They're still a mixed crowd, mostly human still, but almost all of them now bearded with stylish goatees. Two or three of the guys have fully transformed though, being through and through satyrs now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before.";
		else if Resolution of Free Drink > 7: [half satyrs, half human-ish - stopping here to keep the variety going, as satyr supremacy could get boring]
			say "The rampant use of satyr wine has made quite an impact on the fraternity, greatly helped along by to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun. Looking at the frat brothers coming and going, you guess that half of them have fully transformed into satyrs by now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before. There is a bunch more bare skin on show though, as many go shirtless and just wear some loose shorts to cover their privates.";
		if Kerr & Talov is in PAN Frat Game Room:
			say "     The two satyrs that you helped slip into the frat house have claimed one of the couches as their place of rest for now, with Kerr lying stretched out on his back, while Talov is sleeping half on top of him, lying in the crack between Kerr and the backrest, with one arm stretched across the more muscular satyr's broad chest. His head is dug into the bend of Kerr's shoulder and neck, and you can see they're literally breathing in the same slow rhythm, demonstrating the intimately close bond between the two males. The frat brothers do not seem bothered by having acquired the two houseguests, and in fact seem to be taking care not to wake them.";
	else:
		say "     The place is packed with a large crowd that is standing, sitting, or circulating around, all of them enjoying themselves to the beat of popular music, dancing or talking with one another. Pretty much everyone has some sort of drink in their hands and the atmosphere is pretty rowdy, but good-natured. Groups are clustered around the physical games and game consoles, playing with and against each other, with onlookers cheering them on. ";
		if Resolution of Free Drink is 1: [player got the satyrs in, nothing more yet]
			LineBreak;
		else if Resolution of Free Drink > 1 and Resolution of Free Drink < 5: [early stage, light transformations]
			say "The effects of the special wine circulating through the parties in this frat house are becoming noticeable, as the amount of facial hair seems to be on the rise, with especially goatees being quite often seen on guys faces. Besides the pair at the bar, you can see a fully transformed satyr here and there in the mix too.";
		else if Resolution of Free Drink > 4 and Resolution of Free Drink < 8: [a few fully transformed]
			say "With satyr wine circulating quite a bit during the recent parties, partially due to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun, the effects are becoming even more obvious. Letting your gaze sweep over the crowd, you can see more than just a few satyrs around by now. The ones that have transformed are usually the center of local clumps of people, carrying the party spirit to new heights due to their jovial nature, eager participation in party games, or just by groping and making out with willing partners to draw the eyes of all around them.";
		else if Resolution of Free Drink > 7: [overall 1/3 satyrs - stopping here to keep the variety going, as satyr supremacy could get boring]
			say "The rampant use of satyr wine has made quite an impact on the fraternity and its parties, greatly helped along by to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun. Looking at the mix of people in here, you'd guess that maybe a third of the regulars have fully transformed into satyrs by now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother anyone really, as the party has gained a wild, carefree energy and people just seem to want some fun.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Indoor Pen	"PAN Frat Indoor Pen"

PAN Frat Indoor Pen is a room.
PAN Frat Indoor Pen is sleepsafe.
PAN Frat Indoor Pen is east of PAN Frat Game Room.
Description of PAN Frat Indoor Pen is "[PFratPenDesc]".

to say PFratPenDesc:
	say "     You're in the room that holds the indoor pen of the PAN frat's mascot, with a name-sign showing the name Sylvanus. Some framed pictures on the wall show Sylvanus to be the last in a long line of goats, with the previous having been named Oberon, Amadan and Puck, with the latter two pictures being black and white and sepia colored, showing that each of them lived a good long life. The bigger part of the room is divided off by a chest-high wood and mesh fence, with a gate to allow access. Judging by the clearly fresh straw on the ground inside, a comfortable resting place with a heating pad for warmth, and the large collection of brushes, leads and toys racked up on the walls of the room, he is one very well taken-care of goat. There are some pieces of cloth that appear to be ceremonial barding for the mascot too, made from fine fabric in the frat's colors of green and black, with their Greek letters on the side. A single door leads [link]west[end link] into the game room, while a backdoor (complete with goat flap) leads [link]north[end link] into the garden from within the pen.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Garden	"PAN Frat Garden"

PAN Frat Garden is a room.
PAN Frat Garden is sleepsafe.
PAN Frat Garden is north of PAN Frat Indoor Pen.
PAN Frat Garden is northeast of PAN Frat Game Room.
Description of PAN Frat Garden is "[PFratGardenDesc]".

to say PFratGardenDesc:
	say "     The well-sized garden of the PAN frat house is dominated by an immense oak tree in the back third, which has to be at least eighty years old by your guess, with its strong branches reaching wide into the air. To the left of the tree is a fire-pit with a ring of seats around it, while on the right, you can see a fenced-off area that seems to be used as a vegetable garden. The outer boundary of the garden is formed by an unbroken line of high hedges, carving a fairly private place out of the surrounding college campus. A flat expanse of grass fills the middle bit of the garden, all the way op to the steps of a raised patio closer to the building, with has enough room for a large outdoor dining table, grill and a hot tub. Three doors lead into the building, [link]northwest[end link] into the kitchen, [link]west[end link] into the stairway, and [link]southwest[end link] into the indoor pen of the frat's mascot.";
	if Daytimer is day:
		say "     During the daytime, the place has less of the rowdy energy that takes hold when the partying starts later on, with mostly just the actual frat brothers being present. They do their own stuff, hanging out and talking, or keeping themselves busy doing chores in the garden and watching after Sylvanus the goat.";
	else:
		say "     The party crowd has spilled out onto the patio and into the garden itself, with people who prefer to talk in less noisy surroundings gravitating this way. You can see that someone has lit a moderately big fire in the fire pit back near the tree, with the flickering light of the fire revealing that a group of people is doing much more than 'just' talking back there, with most of them not even bothering to keep down their moans.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Basement	"PAN Frat Basement"

PAN Frat Basement is a room.
PAN Frat Basement is sleepsafe.
PAN Frat Basement is below PAN Frat Stairway.
Description of PAN Frat Basement is "[PFratBasementDesc]".

to say PFratBasementDesc:
	say "     Standing in the PAN fraternity basement, you find yourself in a quite well-equipped private fitness room filling a most of it. There's a wide variety of exercise machines set up throughout the room, making it clear that one can train pretty much any muscle on a human body with these. Of special note is the setup of three rowing machines and two treadmills before the eastern wall though, as those are the only devices that are duplicated throughout the place. The eastern wall itself is almost completely covered by a majestic picture of the Grand Canyon, taken at water height from the middle of the Colorado River. On closer inspection, there is a plaque on the wall, reading 'Graduation Rafting Trip; Benjamin McDonald, 2003'. Seems like that was a special trip, if the frat is still putting so much emphasis on their rowing skills 5 years later. A door in the [link]northwest[end link] seems to lead to a sauna, while there is a shower room in the [link]west[end link], and of course the stairway leading back [link]up[end link] to the ground floor of the frat house.";
	if Daytimer is day:
		say "     During the daytime, the place has less of the rowdy energy that takes hold when the partying starts later on, with just the actual frat brothers being present. One or another is usually working out here by themselves, listening to music on their headphones; though at times things become a little competitive when people jog on the treadmills or row side by side. Sooner or later, there's some male eye-candy to be seen when the guys stop by the showers and emerge with towels wrapped around their hips not long after. ";
		if Resolution of Free Drink is 1: [player got the satyrs in, nothing more yet]
			LineBreak;
		else if Resolution of Free Drink > 1 and Resolution of Free Drink < 5: [early stage, light transformations]
			say "Looking around, you see that the effects of the special wine circulating through the parties in this frat house are becoming noticeable, as goatees are gaining fairly widespread popularity on a number of frat brother's faces. Picking up on the sound of hooves on the wooden floor, a quick glance downwards also reveals to you that at least one or two of them have advanced a bit further on their way to becoming satyrs, sporting split hooves instead of human feet now.";
		else if Resolution of Free Drink > 4 and Resolution of Free Drink < 8: [a few fully transformed]
			say "With satyr wine circulating quite a bit during the recent parties, partially due to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun, the effects on the frat brothers are more than obvious. They're still a mixed crowd, mostly human still, but almost all of them now bearded with stylish goatees. Two or three of the guys have fully transformed though, being through and through satyrs now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before.";
		else if Resolution of Free Drink > 7: [half satyrs, half human-ish - stopping here to keep the variety going, as satyr supremacy could get boring]
			say "The rampant use of satyr wine has made quite an impact on the fraternity, greatly helped along by to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun. Looking at the frat brothers coming and going, you guess that half of them have fully transformed into satyrs by now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before. There is a bunch more bare skin on show though, as many go shirtless and just wear some loose shorts to cover their privates.";
	else:
		say "     There isn't all that much going on down here during the party, as everyone seems to be busy enjoying themselves upstairs. You hear the beat of the music from above, but that's about it.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Sauna	"PAN Frat Sauna"

PAN Frat Sauna is a room.
PAN Frat Sauna is sleepsafe.
PAN Frat Sauna is northwest of PAN Frat Basement.
Description of PAN Frat Sauna is "[PFratSaunaDesc]".

to say PFratSaunaDesc:
	say "     You're in the sauna room of the PAN fraternity basement, surrounded by two-tiered wooden benches on both walls. It does smell fairly nice in here, coming from the aromatic red cedar wood that was used. There should be enough room on them for about eight people to comfortably sit down with some room between them, or four lying down on the benches. A wooden bucket with a ladle is standing ready on one of the benches, for when people want to splash some water on the volcanic rocks of the heater against the back wall, to add steam to their experience. The door in the [link]southeast[end link] leads back into the main basement room.";
	if Daytimer is day:
		say "     There isn't any activity in here right now, seems like the sauna is a bit of a luxury item and not used constantly. Though as you think about it, with the Grand Canyon picture filling one whole wall out in the fitness room and all, maybe the frat is using it to train for trips to the desert?";
	else:
		say "     There isn't all that much going on down here during the party, as everyone seems to be busy enjoying themselves upstairs. You distantly hear the beat of the music from above, but that's about it.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Showers	"PAN Frat Showers"

PAN Frat Showers is a room.
PAN Frat Showers is sleepsafe.
PAN Frat Showers is west of PAN Frat Basement.
Description of PAN Frat Showers is "[PFratShowersDesc]".

to say PFratShowersDesc:
	say "     You're in the communal shower room of the PAN fraternity basement, consisting of two sections. In the front, there's a long wooden bench and a rack with fresh towels, then a floor to ceiling frosted-glass wall dividing off the actual shower area. One can step past it on the left or right, entering the main shower area with four sets of shower controls and nozzles. The door in the [link]east[end link] leads back into the main basement room.";
	if Daytimer is day:
		say "     One or another of the frat brothers usually enters the showers before long on a given day, to freshen up after training in the basement gym. They throw you some curious glances, likely wondering why you're just hanging around in here, but then go on with their business of stripping down and stepping in for a refreshing scrub-down, quickly covering up with a towel around their waists afterwards.";
	else:
		say "     There isn't all that much going on down here during the party, as everyone seems to be busy enjoying themselves upstairs. You distantly hear the beat of the music from above, but that's about it.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Second Floor	"PAN Frat Second Floor"

PAN Frat Second Floor is a room.
PAN Frat Second Floor is sleepsafe.
PAN Frat Second Floor is below PAN Frat Third Floor.
Description of PAN Frat Second Floor is "[PFratSecondFloorDesc]".

to say PFratSecondFloorDesc:
	say "     The second floor of the PAN frat-house opens up into a sort of secondary living room, one that feels somewhat more private than the one below, maybe because it is surrounded by the doors to a number of the frat brother's rooms and all.  The place is furnished with a bunch of relatively modern, comfortable-looking leather couches and armchairs for the guys to hang out on, with a fairly large plasma TV on one wall. Towards the [link]west[end link], you can see the door to a communal bathroom, while there are doors to private rooms in the north, northwest, northeast, south, southwest and southeast. Probably best not to burst into any of those unless you're expected. Meanwhile, the east wall has several large windows overlooking the garden behind the frat house and the large tree reaching up into the sky there. You can also go back [link]down[end link] to the ground floor, or [link]up to the second floor[end link].";
	if Daytimer is day:
		say "     During the daytime, the place has less of the rowdy energy that takes hold when the partying starts later on, with mostly just the actual frat brothers being present. They do their own stuff, hanging out and talking, or watching something (recorded) on the wall-mounted TV, with in-between bouts of cleaning and prep work for another night of partying to distract everyone from the chaos that has spread throughout the whole city. ";
		if Resolution of Free Drink is 1: [player got the satyrs in, nothing more yet]
			LineBreak;
		else if Resolution of Free Drink > 1 and Resolution of Free Drink < 5: [early stage, light transformations]
			say "The effects of the special wine circulating through the parties in this frat house are becoming noticeable, as goatees are gaining fairly widespread popularity on a number of frat brother's faces. Picking up on the sound of hooves on the wooden floor, a quick glance downwards also reveals to you that at least one or two of them have advanced a bit further on their way to becoming satyrs, sporting split hooves instead of human feet now.";
		else if Resolution of Free Drink > 4 and Resolution of Free Drink < 8: [a few fully transformed]
			say "With satyr wine circulating quite a bit during the recent parties, partially due to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun, the effects on the frat brothers are more than obvious. They're still a mixed crowd, mostly human still, but almost all of them now bearded with stylish goatees. Two or three of the guys have fully transformed though, being through and through satyrs now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before.";
		else if Resolution of Free Drink > 7: [half satyrs, half human-ish - stopping here to keep the variety going, as satyr supremacy could get boring]
			say "The rampant use of satyr wine has made quite an impact on the fraternity, greatly helped along by to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun. Looking at the frat brothers coming and going, you guess that half of them have fully transformed into satyrs by now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before. There is a bunch more bare skin on show though, as many go shirtless and just wear some loose shorts to cover their privates.";
	else:
		say "     The partying crowd is a bit less dense up here, mostly consisting of actual frat members and people they know, rather than the free-for-all down below. The wild energy of college students unloading their worries in a bout of dancing and drunkenness is still in the air, but it is a bit easier to have an actual conversation with others instead of just shouting to be heard above the sound system's output as below. ";
		if Resolution of Free Drink is 1: [player got the satyrs in, nothing more yet]
			LineBreak;
		else if Resolution of Free Drink > 1 and Resolution of Free Drink < 5: [early stage, light transformations]
			say "The effects of the special wine circulating through the parties in this frat house are becoming noticeable, as the amount of facial hair seems to be on the rise, with especially goatees being quite often seen on guys faces. You can see a fully transformed satyr here and there in the mix too.";
		else if Resolution of Free Drink > 4 and Resolution of Free Drink < 8: [a few fully transformed]
			say "With satyr wine circulating quite a bit during the recent parties, partially due to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun, the effects are becoming even more obvious. Letting your gaze sweep over the crowd, you can see more than just a few satyrs around by now. The ones that have transformed are usually the center of local clumps of people, carrying the party spirit to new heights due to their jovial nature, eager participation in party games, or just by groping and making out with willing partners to draw the eyes of all around them.";
		else if Resolution of Free Drink > 7: [overall 1/3 satyrs - stopping here to keep the variety going, as satyr supremacy could get boring]
			say "The rampant use of satyr wine has made quite an impact on the fraternity and its parties, greatly helped along by to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun. Looking at the mix of people in here, you'd guess that maybe a third of the regulars have fully transformed into satyrs by now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother anyone really, as the party has gained a wild, carefree energy and people just seem to want some fun.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Bathroom	"PAN Frat Bathroom"

PAN Frat Bathroom is a room.
PAN Frat Bathroom is sleepsafe.
PAN Frat Bathroom is west of PAN Frat Second Floor.
Description of PAN Frat Bathroom is "[PFratBathroomDesc]".

to say PFratBathroomDesc:
	say "     The communal bathroom of PAN frat-house is nicely spacious and kept pretty clean, speaking of some good discipline in the group's ranks, despite everything that is going on. It is clearly designed to be used by a number of the frat members at once, with for example a counter bearing three sinks side by side in front of a long mirror on the left. A similar number of toilets are on the right, each in what's basically its own little room with a proper door. A pretty big, green and healthy potted plant is standing beside the last door on that side too. Finally, the back end of the room holds a shower area behind a frosted-glass floor to ceiling wall with glass doors on the left and right. A quick glance inside reveals a clean, tiled interior, with three spots to shower at, equipped with both a ceiling-rain nozzle and a handheld one on a flexible hose. A sort of stone bench built into the back wall across the whole width of the group shower even allows people to sit down and just let the warm water rain down on them.";
	say "     Overall, quite a swanky setup with cut natural rock and whatnot. Though why not, you guess, as the frat clearly has some money to splash around, and in all likelihood someone put a lot of thought into fitting the place out like this. Overcrowded and cheap bathrooms can be a large source of conflict in communal living situations after all. A door to the [link]east[end link] leads back to the central room of the frat house's first floor. ";
	if Daytimer is day:
		say "With a number of active young men living in the frat house, one or another is usually coming or going all the time. They throw you some curious glances, likely wondering why you're just hanging around in here, but then go on with their business, using the sinks, vanishing behind one of the doors to the toilets or stripping down and stepping in for a refreshing scrub-down, quickly covering up with a towel around their waists afterwards.";
	else:
		say "With the party in full swing and quite a bit of drinking going on, the amount of people coming in and out is noticeably high, mostly making beelines straight to the toilets sometimes waiting with strained expressions on their faces for one to free up. At times, someone who's pretty wasted is dragged to the showers and hosed down with cold water, either to clean or sober them up a bit. And of course, there are some instances in which people use the tentative 'privacy' one of the little restrooms or the shower cabin to do more lewd things to each other, if the sounds from within and the amused smirks people in the room share with each other are anything to go by.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat Third Floor	"PAN Frat Third Floor"

PAN Frat Third Floor is a room.
PAN Frat Third Floor is sleepsafe.
PAN Frat Third Floor is above of PAN Frat Second Floor.
Description of PAN Frat Third Floor is "[PFratThirdFloorDesc]".

to say PFratThirdFloorDesc:
	say "     The third floor of the PAN frat-house is structured less openly than the first, being dominated by two long hallways crossing at the stairs. In each direction, you can see two doors left and right, leading to the frat member's private rooms. Probably best not to burst into any of those unless you're expected. ";
	if Daytimer is day:
		say "During the daytime, the place has less of the rowdy energy that takes hold when the partying starts later on, with mostly just the actual frat brothers being present. They come and go from their rooms, not really hanging out here in the hallways of the second floor all that long. ";
		if Resolution of Free Drink is 1: [player got the satyrs in, nothing more yet]
			LineBreak;
		else if Resolution of Free Drink > 1 and Resolution of Free Drink < 5: [early stage, light transformations]
			say "The effects of the special wine circulating through the parties in this frat house are becoming noticeable, as goatees are gaining fairly widespread popularity on a number of frat brother's faces. Picking up on the sound of hooves on the wooden floor, a quick glance downwards also reveals to you that at least one or two of them have advanced a bit further on their way to becoming satyrs, sporting split hooves instead of human feet now.";
		else if Resolution of Free Drink > 4 and Resolution of Free Drink < 8: [a few fully transformed]
			say "With satyr wine circulating quite a bit during the recent parties, partially due to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun, the effects on the frat brothers are more than obvious. They're still a mixed crowd, mostly human still, but almost all of them now bearded with stylish goatees. Two or three of the guys have fully transformed though, being through and through satyrs now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before.";
		else if Resolution of Free Drink > 7: [half satyrs, half human-ish - stopping here to keep the variety going, as satyr supremacy could get boring]
			say "The rampant use of satyr wine has made quite an impact on the fraternity, greatly helped along by to your own efforts to advance Kerr and Talov's well-meant plan of getting everyone to live more in the moment and have fun. Looking at the frat brothers coming and going, you guess that half of them have fully transformed into satyrs by now, from their hooves up to the curved or curling horns on their heads. This doesn't appear to bother any of the brothers, as they seem to treat each other no different than before. There is a bunch more bare skin on show though, as many go shirtless and just wear some loose shorts to cover their privates.";
	else:
		say "This area is apparently too far from the focus of the partying down on the ground floor, as you don't see anyone hanging around here like in the rest of the building. Though maybe that's because any one being brought up here is actually inside the rooms, behind closed doors. You're fairly certain you can hear grunts and moans coming from at least two of the private rooms.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat East Hallway	"PAN Frat East Hallway"

PAN Frat East Hallway is a room.
PAN Frat East Hallway is sleepsafe.
PAN Frat East Hallway is east of PAN Frat Third Floor.
Description of PAN Frat East Hallway is "[PFratEastHallDesc]".

to say PFratEastHallDesc:
	say "     You're in the eastern hallway of the PAN frat's third floor. Around you in the north, northeast, south and southeast you can see four doors to private rooms. Probably best not to burst into any of those unless you're expected. A window overlooking the garden forms the end of the hallway in the east. In the west, you can go back to the stairway.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat West Hallway	"PAN Frat West Hallway"

PAN Frat West Hallway is a room.
PAN Frat West Hallway is sleepsafe.
PAN Frat West Hallway is west of PAN Frat Third Floor.
Description of PAN Frat West Hallway is "[PFratWestHallDesc]".

to say PFratWestHallDesc:
	say "     You're in the western hallway of the PAN frat's third floor. Around you in the north, northwest, south and southwest you can see four doors to private rooms. Probably best not to burst into any of those unless you're expected. A window overlooking Greek Street forms the end of the hallway in the west. In the east, you can go back to the stairway.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat North Hallway	"PAN Frat North Hallway"

PAN Frat North Hallway is a room.
PAN Frat North Hallway is sleepsafe.
PAN Frat North Hallway is north of PAN Frat Third Floor.
Description of PAN Frat North Hallway is "[PFratNorthHallDesc]".

to say PFratNorthHallDesc:
	say "     You're in the northern hallway of the PAN frat's third floor. Around you in the west, northwest, east and southeast you can see four doors to private rooms. Probably best not to burst into any of those unless you're expected. A window looking out towards another frat house forms the end of the hallway in the North. In the south, you can go back to the stairway.";

Table of GameRoomIDs (continued)
Object	Name
PAN Frat South Hallway	"PAN Frat South Hallway"

PAN Frat South Hallway is a room.
PAN Frat South Hallway is sleepsafe.
PAN Frat South Hallway is south of PAN Frat Third Floor.
Description of PAN Frat South Hallway is "[PFratSouthHallDesc]".

to say PFratSouthHallDesc:
	say "     You're in the Southern hallway of the PAN frat's third floor. Around you in the west, southwest, east and southeast you can see four doors to private rooms. Probably best not to burst into any of those unless you're expected. A window overlooking Greek Street forms the end of the hallway in the South. In the north, you can go back to the stairway.";

Greek Street ends here.
