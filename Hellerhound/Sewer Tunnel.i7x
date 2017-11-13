Sewer Tunnel by Hellerhound begins here.

to say newline:
	LineBreak;


Hidden Grate is a situation.
The sarea of Hidden Grate is "Park".


instead of resolving a Hidden Grate:
	say "As you wander through the bushes in the park, seeking after an old park zone you remember fondly from childhood, you trip, landing face down on a metal grate.";
	say "The grate doesn't seem to be too heavy. Maybe you could lift it?";
	if the player consents:
		say "You give the sewer grate a solid heave, ";
		let the bonus be (( the strength of the player minus 10 ) divided by 2);
		let the dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus]: ";
		increase dice by bonus;
		if dice > 15:
			say "You manage to lift the grate out of the way, and descend into the gloomy light below.";
			move the player to South Sewer Tunnel;
		else:
			say "The grate just refuses to budge. Oh well.";
	else:
		say "You leave the grate and whatever might be below it alone.";




South Sewer Tunnel is a room. "This sewer tunnel is one of the largest you've seen[if Smith Haven Mall Lot is known], even compared to the sewers under the mall[end if].  A large river runs through the center, filled with muck from the city.  From the direction it heads, you ascertain that it leads down to the sea.  This must be the major drainage duct.[line break][if the perception of the player > 12]It doesn't look like there are many infected in the water.  Maybe something of value could be found if you [bold type]search[roman type]?[end if]".

before entering South Sewer Tunnel for the first time:
	say "You fall down onto the floor with a solid thud. Ouch. Aw crap, you can't find a ladder. Looks like you will have to find another way out.";

the scent of South Sewer Tunnel is "This area smells strongly of waste and drainage water.  It's hard to tell, but there may be trace odors from the infected down here as well.".

the scent of North Sewer Tunnel is "This area smells strongly of waste and drainage water.  It's hard to tell, but there may be trace odors from the infected down here as well.".

Red Grate is a door. Up from Red Grate is Entrance to the Red Light District. "[if the player is in North Sewer Tunnel]This grate is just a hole in the ceiling. From the red light filtering down, it seems to lead to the red light district.[else]There is an open grate underneath one of the red lamps near here. The cover is just lifted out of the way carefully, as if whoever moved it intended to replace it as soon as they returned.[end if]".
Red Grate is open.

North Sewer Tunnel is a room. "This sewer tunnel is one of the largest you've seen[if Smith Haven Mall Lot is known], even compared to the sewers under the mall[end if].  A large river runs through the center, filled with muck from the city.  From the direction the tunnel heads towards, you ascertain that it comes from the mall.  This must be the north segment of the major drainage duct.[newline][if the perception of the player > 12]It doesn't look like there are many infected in the water. Maybe something of value could be found if you [bold type]search[roman type]?". North Sewer Tunnel is north of South Sewer Tunnel. North Sewer Tunnel is below Red Grate.



Sewer River is a thing. "The underground river of muck[if the perception of the player > 12].  It has a distinct lack of infected[end if].  The water flows clear and swift, and you spot several brightly colored food wrappers washing down towards the southern darkness.".
Sewer River is in South Sewer Tunnel.
Sewer River North is a thing. "The underground river of muck[if the perception of the player > 12].  It has a distinct lack of infected[end if].  The water flows clear and swift, and you spot several brightly colored food wrappers washing down towards the southern darkness.".
Sewer River North is in North Sewer Tunnel. [aww, can't be in two places @ once]


searching the sewer is an action applying to nothing.
understand "search" and "search the river" and "search river" and "search sewer" and "search the sewer" and "search food" and "search water" and "search for food" and "search for water" as searching the sewer.

before searching the sewers:
	if the Sewer River is not visible and the North Sewer River is not visible:
		say "Maybe you want to [bold type]scavenge[roman type] instead?" instead;




to searching the sewers: [this is copied from the scavenge function, with minor changes in text and difficulty.]
	let x be a random visible dangerous door;
	if x is not nothing:
		now battleground is marea of x;
	else:
		now battleground is "Mall";
	say "You wade into the shallower region of the river in search of food and water.";
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	if "Survivalist" is listed in feats of the player, increase bonus by 4;
	if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 10: ";
	if dice plus bonus > 7:
		try resolving potential resources;
	else:
		say "Your search turns up empty.";
	if battleground is "", now battleground is "Mall";
	let z be 7;
	if "Stealthy" is listed in feats of player, decrease z by 2;
	if "Bad Luck" is listed in feats of player, increase z by 1;
	if a random number from 1 to 20 < z:
		if there is a area of Battleground in the table of random critters:
			Fight;
			if ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ):
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;
	follow turnpass rule;




Sewer Tunnel ends here.
