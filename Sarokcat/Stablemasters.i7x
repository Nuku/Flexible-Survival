Stablemasters by Sarokcat begins here.

"Adds a new area to Flexible Survival with a variety of npcs..."

Section 1- Masters office

Masters office is a room. It is fasttravel. It is private.

The description of Masters office is "This large and rather spacious room was once the 'office' of the owner of the stables, however now it is your new room and the centerpiece of your new kingdom.  The room itself was obviously once a suite for VIPs and dignitaries and is quite well furnished, though the previous stablemaster obviously did plenty of redecorating during his time here. There are now several large mattresses and piles of cushions around the area, as well as a number of rather nice paintings and hangings adorning the walls, and thick plush carpeting covers the floor which actually makes things quite comfortable for hooved feet, or most any other for that matter.  Several new furnishings also are now in the public side of the large room however, a functional new desk with an inbox for reports that affect the stables, as well as several overstuffed chairs sized for your new equine staff when you decide to meet them here. Although perhaps your favorite new furnishing is the former stablemaster herself, the lovely little black equine looking especially fetching in her new sexy slave collar as she kneels off to the side of the room.";
Slutslave is in Masters office.
[in order to add additional rooms off the main room, merely type the new room and state that it is some direction from your current room. For example]


The invent of Masters office is { "chips" , "soda", "cot", "medkit" };




section 2- Slutslave 

Slutslavetalk is a number that varies.
LastSlutslavefucked is a number that varies. LastSlutslavefucked is usually 250.
Slutslavefucked is a number that varies. Slutslavefucked is usually 0.

Slutslave is a man.[or woman]
The description of Slutslave is "Your sexy black mare slave is kneeling meekly in the corner, her blazing red hair and tail shifting slightly with her every movement as she watches you coyly with obvious arousal. The slave collar you put on her has seemingly bonded with her skin, and now can only be seen as a thin line of gold with some strange patterns around her neck, though your new tag fits on it nicely, hanging down between her new ample breasts and proudly proclaiming her to be your 'slut' though eventually she may earn a proper name instead. Her tight well formed body is made specifically for pleasure, as you know all too well, and you can see her naked pussy is already damp with anticipation as you look your new slave over with some amusement. She certainly makes a better slave after all then a master... and she seems to enjoy her new lot in life quite a bit as well.";


The conversation of Slutslave is { "[Slutslavetalking]" };

To say Slutslavetalking:
	if Slutslavetalk is 0:[Normal short messages the npc will say each time you talk to them]
		say "[one of]'Welcome back master!'[or]'You make such a handsome owner.'[or]'I don[apostrophe]t know how a little slut like me could have ever thought to challenge someone as masterful as you...'[or]'Has master decided on a name for his slut yet?'[or]'Your slave never knew how wonderful being a pet could be before, thank you so much for showing me!'[or]'I love my new collar so much...' She moans happily.[or]Your slave just stares up at you adoringly from her kneeling position.[at random]";





Instead of fucking the Slutslave:
	if lastSlutslavefucked - turns is less than 2:
		say "'Sorry, master.' Your new slave pants out breathlessly as she kneels helplessly in front of you, 'But your new slave just can[apostrophe]t keep up with your incredible stamina.' She says in an apologetic tone as she prostrates herself before you. 'Perhaps master should come back soon and train their new slave again?' She says with a rather lustful tone in her voice, which causes you to grin at how far the formerly dominant stallion has fallen.";
		stop the action;
	otherwise:
		if cocks of player is greater than 0:
			say "not quite done";
			infect "Nightmare"; 
		otherwise:
			say "Also not quite done";
			infect "Nightmare";



Stablemasters ends here.
