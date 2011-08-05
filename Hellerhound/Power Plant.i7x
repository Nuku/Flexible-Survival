Power Plant by Hellerhound begins here.

Include Computers by Hellerhound.

[nuku: to add, make sure you delete the line taht adds a library computer to the Grey Abbey Library, or there will be interference]



Ravaged power plant is a situation.

instead of resolving a Ravaged Power Plant:
	say "On your walk, you pass a building that was the power station for before. Now it is dark and silent, and a large hole is smashed through one of the generators. Claw marks cover the floor and walls, and liquids of every kind litter the floor. The fence is also damaged, a large chunk flattened by some large creature that passed by.";
	now Plant Overview is known;
	say "The power plant lobby is nearby, maybe you could return?";
	now ravaged power plant is resolved;


broken fence is a door. "The flattened fence to the east allows access from the city.".
Plant Lobby is a room. "Claw marks cover the floor here, and small puddles of what seem to be seed litter the floor. The receptionist desk is upturned, and smashed into small splinters. The whole area is also blackened, like a fire ran through here. The control room is up an intact, but blackened, flight of stairs.".
Plant Lobby is west of broken fence.
broken fence is west of Wandering Around.
broken fence is dangerous.
the marea of broken fence is "Outside".

Plant Overview is a room. It is fasttravel. "The power plant rises before you, a great geothermal accomplishment. It doesn't seem to be running.".
Plant Overview is south of Plant Lobby.

control room is a room. "This is a room overlooking the plants generators. This room is intact, and you wonder why no monsters ever got in? The walls are covered with control panels everywhere except where the stairs go down, and a door to the catwalk enters. There is power here, and the panels glow softly. The generators are in miserable condition, most are smashed, and several are leaking what looks like lava. However, one appears to be in working condition, near the middle. You wonder what it is powering?".
control room is up from Plant Lobby.
control panels is a thing. 
a control panels is in Control Room. "The panels are glowing softly, every light red. A small schematic shows that the intact generator goes to the library, but the controls seem to be in emergency shutdown mode. Maybe you can reactivate them?".
catwalk door is a door.
catwalk door is lockable and locked.
catwalk door is west of Control Room.

findwires is a number that varies.


activating is an action applying to nothing.
understand "activate control panels" and "activate controls" and "activate panels" as activating.

carry out activating:
	if findwires is 0:
		if a random number between one and 20 is greater than the intelligence of the player:
			say "The lights stay red, even though you are trying hard to understand the buttons.";
		otherwise:
			say "You use your superior intelligence to turn off the emergency shutdown, returning power to the station. The overhead lights flicker on, and you feel a sense of accomplishment.";
			increase score by 200;
			say "No matter how hard you try, the power light for the library doesn't seem to turn on. Maybe there is something wrong with the power lines?";
			now findwires is 1;
	otherwise if findwires is 1:
		say "The power light for the library is still off.";
	if findwires is 2:
		say "The power light for the library is on! Yay! Maybe the computers work?";



Power Lines is a room. "A large power line tower stands here[if findwires is not 2], but the top is broken off and on the ground. The surrounding fence is melted and charred, like something spat magma at it, and the bottom of the tower is scorched, but it still looks serviceable. You remember how this tower was constructed to give power to the library. You could probably try to [bold type]fix[roman type] it.[otherwise]. The perimeter fence is melted and the ground is blackened, but the top is on and a green light is blinking above.[end if]".
Power Lines is fasttravel.


towerfixing is an action applying to nothing.
understand "fix tower" and "repair tower" and "fix wires" and "fix" and "repair" as towerfixing.


check towerfixing:
	if the player is not in power lines:
		say "Fix what?";
		stop the action;
	if findwires is 0:
		say "Why? There is no power anywhere else, so the power station must be busted too. You should start there first.";
		stop the action;
	if findwires is 2:
		say "The power lines are already fixed.";
		stop the action;

carry out towerfixing:
	say "You lift the tower top, grunting as it seems to be much lighter than it looks. You tilt it, and try to align the bottom of the top to the top of the bottom.";
	if a random number between one and 20 is greater than the strength of the player:
		say "The tower top slips, and falls. Maybe you could try to fix it again?";
	otherwise:
		say "The tower top slides into place, and the stress on the wires is released. A green light begins blinking on top of the tower.";
		now findwires is 2;
		activatecomputers;

computeron is a number that varies.

a library terminal is a computer.
library terminal is in Grey Abbey Library. "[if computeron is 0]A computer rests nearby, powerless.[otherwise]A computer rests nearby, off.[end if] You can [bold type]turn it on[roman type] or maybe [bold type]looking[roman type] at the screen?".

before switching on library terminal:
	if computeron is 0:
		say "The computer refuses to start. Maybe the power is out?";
		stop the action;



the library terminal runs a password lock program called rudimentary passcode.
The password of rudimentary passcode is "ash dragator".
The rejection of rudimentary passcode is "'Password incorrect.'".
The success of rudimentary passcode is "The password field vanishes, and an error appears: ERROR_NO_NET_ACCESS. You cannot seem to get around it, no matter what you do. You have no idea what knocked out the net.".
	


to activatecomputers:
	now computeron is 1;
	now the description of Grey Abbey Library is "Books, and a computer or two. The power on in the building. The overhead lights flicker, but are on. You're still not entirely sure what knocked the power out, but it's on now. You came here because you knew there was a bunker in the basement. It's kept you alive, so far.";

	


use MAX_SYMBOLS of 22000.












Power Plant ends here.
