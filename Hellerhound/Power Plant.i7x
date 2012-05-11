Power Plant by Hellerhound begins here.

Include Computers by Hellerhound.

[nuku: to add, make sure you delete the line that adds a library computer to the Grey Abbey Library, or there will be interference]



Ravaged power plant is a situation.

instead of resolving a Ravaged Power Plant:
	say "On your walk, you pass a building that was the power station for before. Now it is dark and silent, and a large hole is smashed through one of the generators. Claw marks cover the floor and walls, and liquids of every kind litter the floor. The fence is also damaged, a large chunk flattened by some large creature that passed by.";
	now Plant Overview is known;
	say "The power plant lobby is nearby, maybe you could return?";
	now ravaged power plant is resolved;

foundparts is a number that varies.

Generator Parts is a situation.

instead of resolving a Generator Parts:
	if foundparts is 0:
		say "A pile of metal lies in your way. It looks useful, maybe there is a generator that these could fix?";
		now foundparts is 1;
	otherwise if foundparts is 1:
		say "You find the pile again, but with new additions. They look essential for operation. You take them, and wonder where the generator is that these were stolen from?";
		now generator parts is resolved;
		now foundparts is 2;
		now fixedgens is 1;

[Scents of rooms]
instead of sniffing Plant Lobby:
	say "The power plant lobby smells of smoke, ash and cum.";

instead of sniffing Control Room:
	say "The control room smells of burnt electronics and ozone along with the harsh, sulfurous scents from the magma.";

instead of sniffing Plant Overview:
	say "There is a faint scent of smoke coming from the power plant.";

instead of sniffing Cat Walk:
	say "The sulfurous scent of the lava rises up to mix with the scent of ozone and machinery up here.";


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


Cat key is a grab object.
it is part of the player.
It is not temporary.

instead of using Cat key:
	if Catwalk door is not adjacent to the player:
		say "You don't know how to use this.";
	otherwise:
		say "The lock clicks, and the door opens a little.";
		now the Catwalk door is unlocked;

Table of Game Objects(continued)
name	desc	weight	object
"Cat Key"	"A key with a picture of a cat attached to it. Odd. What does this unlock?"	1	Cat key

instead of sniffing pocketknife:
	say "There is a faint scent of ozone lingering to the key fob.";

the invent of Red Light District is {"Cat Key"}.


before opening Catwalk Door:
	if "Cat Key" is listed in the invent of the player:
		now Catwalk Door is unlocked;
		say "The Cat Key unlocks the door. Seems like the manager here had a sense of humor.";


Cat Walk is a room. "The catwalk rises above the floor next to the suspended generators, warm from the lava running down the sides of the busted generators. The floor is a metal grate, and thin metal pipes form the handrails. A nearby metal sign reads: Danger, electrocution hazard. You can reach the intact generator from here.[catwalkstuff]".
West of Catwalk Door is Cat Walk.
to say catwalkstuff:
	if fixedgens is 1:
		say "The parts you found match this generator perfectly. You fix the generator, and the malfunction light on the generator turns green to show the generator could work. You wait with bated breath for it to work.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		now fixedgens is 2;
		if findwires is 2:
			say "The generator begins to hum, and the green lights indicating that power is flowing begin to flash. Hooray!";
			increase score by 200;
		otherwise:
			say "The generator is not running, so maybe there is nothing for it to power? Maybe you should check the control panels.";
	otherwise if fixedgens is 2:
		say "The hum of the fixed generator sounds like music to your ears.";
	otherwise:
		say "The intact generator is missing some key parts. The claw marks on the generator make it look like something stole them, so maybe they are out in the city?";

findwires is a number that varies.
fixedgens is a number that varies.


activating is an action applying to nothing.
understand "activate control panels" and "activate controls" and "activate panels" as activating.

carry out activating:
	if findwires is 0:
		if a random number between one and 20 is greater than the intelligence of the player:
			say "The lights stay red, even though you are trying hard to understand the buttons.";
		otherwise:
			say "You use your superior intelligence to turn off the emergency shutdown.";
			say "No matter how hard you try, the power light for the library doesn't seem to turn on. Maybe there is something wrong with the power lines? Or the generator? It doesn't look too good...";
			now findwires is 1;
	otherwise if findwires is 1:
		say "The power light for the library is still off.";
	if findwires is 2 and fixedgens is 2:
		say "The power light for the library is on! Yay! Maybe the computers work?";
	otherwise if fixedgens is 0:
		say "The power light is still off, and a malfunction light for the generator is on. Looks like you will have to fix it.";
	otherwise if fixedgens is 1:
		say "The malfunction light is on, and you have the missing parts. You'll have to go out on the catwalk to fix it.";
		


Power Lines is a room. "A large power line tower stands here[if findwires is not 2], but the top is broken off and on the ground. The surrounding fence is melted and charred, like something spat magma at it, and the bottom of the tower is scorched, but it still looks serviceable. You remember how this tower was constructed to give power to the library. You could probably try to [bold type]fix[roman type] it.[otherwise if fixedgens is 2]. The perimeter fence is melted and the ground is blackened, but the top is on and a green light is blinking above.[otherwise].  The perimeter fence is melted and the ground is blackened, but the top is on and the amber light is blinking, awaiting power.[end if]".
Power Lines is fasttravel.


towerfixing is an action applying to nothing.
understand "fix tower" and "repair tower" and "fix wires" as towerfixing.


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
		say "The tower top slides into place, and the stress on the wires is released. An amber light begins blinking on top of the tower.";
		if fixedgens is 2:
			say "The blinking light flashes a few times, then turns green, indicating power is up and running. Hooray!";
			increase score by 200;
			now findwires is 2;
		activatecomputers;

computeron is a number that varies.

a library computer is a desktop computer.
library computer is in Grey Abbey Library. "[if computeron is 0]A computer rests nearby, powerless.[otherwise]A computer rests nearby, off.[end if] You can [bold type]turn it on[roman type] or maybe [bold type]looking[roman type] at the screen?".

before switching on library computer:
	if computeron is 0:
		say "The computer refuses to start. Maybe the power is out?";
		stop the action;



the library computer runs a password lock program called rudimentary passcode.
The password of rudimentary passcode is "ash dragator".
The rejection of rudimentary passcode is "'Password incorrect.'".
The success of rudimentary passcode is "The password field vanishes, and an error appears: ERROR_NO_NET_ACCESS. You cannot seem to get around it, no matter what you do. You have no idea what knocked out the net.".
	


to activatecomputers:
	now computeron is 1;
	now the description of Grey Abbey Library is "Books, and a computer or two. The power on in the building. The overhead lights flicker, but are on. You're still not entirely sure what knocked the power out, but it's on now. You came here because you knew there was a bunker in the basement. It's kept you alive, so far.";

	


use MAX_SYMBOLS of 22000.












Power Plant ends here.
