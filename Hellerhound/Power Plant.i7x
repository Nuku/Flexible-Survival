Version 2 of Power Plant by Hellerhound begins here.
[Version 2 - Description refinements, yellow helmet, new room - by Wahn]


Include Computers by Hellerhound.

[nuku: to add, make sure you delete the line that adds a library computer to the Grey Abbey Library, or there will be interference]

Ravaged power plant is a situation.

instead of resolving a Ravaged Power Plant:
	say "On your walk, you pass a building that was the power station for the city. Now it is dark and silent, and a large hole is smashed through one of the generators. Claw marks cover the floor and walls, and liquids of every kind litter the floor. The fence is also damaged, a large chunk flattened by some large creature that passed by.";
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
the scent of Plant Lobby is "The power plant lobby smells of smoke, ash and cum.".

the scent of Control Room is "The control room smells of burnt electronics and ozone along with the harsh, sulfurous scents from the magma.".

the scent of Plant Overview is "There is a faint scent of smoke coming from the power plant.".

the scent of Cat Walk is "The sulfurous scent of the lava rises up to mix with the scent of ozone and machinery up here.".

broken fence is a door. "Though the shattered remnants of the main entrance, you see a flattened fence and gate to the east, allowing easy access to and from the inner city.".
Plant Lobby is a room. "Claw marks cover the floor here, and small puddles of what seem to be seed litter the floor. The receptionist desk is upturned, and smashed into small splinters. The whole area is also blackened, like a fire ran through here. An intact, but blackened, flight of stairs in the back leads up to the control room.".
Plant Lobby is west of broken fence.
broken fence is west of Wandering Around.
broken fence is dangerous.
the marea of broken fence is "Outside".

Plant Overview is a room. It is fasttravel. "The city's main power plant rises before you, a great accomplishment of geothermal engineering. Though it seems that someone - or rather something - went on a rampage here. The outside walls of the huge structure are burnt and blackened in arcs and spots, as if someone spent a while going at it with a flamethrower. On the long side of the building, a massive rent in the wall allows entry to the inside - for those who have no problem walking through the bubbling pit of lava in front of it at least. You on the other hand will have to use the side entrance of the administration annex to the north if you want to explore the power plant.".
Plant Overview is south of Plant Lobby.

control room is a room. "The control room overlooks the plant's generators. Surprisingly, this room is intact, and you wonder why no monsters ever got in. The walls are covered with control panels and there is a whole bank of control stations in front of the windows. A door in the west wall leads out on a catwalk going from generator to generator. There is power here, and the panels glow softly. Looking out into the main hall of the power plant, you see that the generators are in miserable condition, most are smashed, and several are half-melted and covered in what looks like lava. However, one appears to be in working condition, near the middle.".
control room is up from Plant Lobby.

control panels is a thing. a control panels is in Control Room. 
The description of control panels is "[ControlPanelDesc]".

to say ControlPanelDesc:
	if fixedgens < 2:
		say "The panels are glowing softly, every light red. A small schematic shows that the intact generator is connected to power lines that supply the city area with the library and mall, but the controls seem to be in emergency shutdown mode. Maybe you can [bold type]reactivate[roman type] them?";
	otherwise if fixedgens is 2:
		say "The panels are glowing softly, all but a small portion of the lights red. A small schematic shows that the generator you repaired is connected to power lines that supply the city area with the library and mall, but the controls seem to be in emergency shutdown mode. Maybe you can [bold type]reactivate[roman type] them?";

catwalk door is a door.
catwalk door is lockable and locked.
catwalk door is west of Control Room.
The description of catwalk door is "A door in the west wall allows access to the catwalks in the main power plant hall. It's made from metal and looks pretty solid and thick, most likely to stop the uncomfortably loud noise of a whole powerplant's worth of huge generators from damaging the hearing of the operators in here. Several hooks on the wall besides the door hold ear protectors - though you won't need one of those, with most generators destroyed now.".

the invent of control room is {"yellow helmet"}.

Table of Game Objects (continued)
name	desc	weight	object
"yellow helmet"	"A yellow helmet with the word 'Supervisor' printed on the front. It should provide some minor protection while worn."	1	yellow helmet

yellow helmet is equipment.
It is not temporary.
The AC of yellow helmet is 20.
The effectiveness of yellow helmet is 55.
The placement of yellow helmet is "face".
The descmod of yellow helmet is "A yellow protective helmet rests atop them, bearing the word 'Supervisor' on the front.".
The slot of yellow helmet is "head". 

Administration Offices is a room. Administration Offices is north of Plant Lobby.
The description of Administration Offices is "There isn't much left of the corridor and adjoining offices that formed the administration of the power plant. Looks like some sort of pyromaniac scattered papers and trashed furniture all throughout and set them ablaze. Thankfully the automatic sprinklers seem to have worked and stopped the whole building from burning down.".
Instead of sniffing Administration Offices:
	say "     The scent of wet ash hangs in the air.";

Cat Key is a grab object.
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
"Cat Key"	"A key with a picture of a cat attached to it. Odd. What does this unlock?"	1	Cat Key

the scent of cat key is "There is a faint scent of ozone lingering to the key fob.".

the invent of Red Light District is {"Cat Key"}.


before opening Catwalk Door:
	if Cat Key is owned:
		now Catwalk Door is unlocked;
		say "The Cat Key unlocks the door. Seems like the manager here had a sense of humor.";


Cat Walk is a room. "The catwalk rises high above the floor next to the rows of large generators, allowing access to them for maintenance. It's pretty warm in here - no wonder, with all the patches of lava still glowing red hot besides and on top of the busted generators. The floor is a metal grate, and thin metal pipes form the handrails. A nearby metal sign reads: Danger, electrocution hazard. You can reach the intact generator from here.[catwalkstuff]".
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
understand "activate control panels" and "activate controls" and "activate panels" and "reactivate controls" and "reactivate panels" and "reactivate control panels" as activating.

carry out activating:
	if findwires is 0:
		if a random number between one and 20 is greater than the intelligence of the player:
			say "The lights stay red, even though you are trying hard to understand the buttons.";
		otherwise:
			say "You use your superior intelligence to turn off the emergency shutdown.";
			say "No matter how hard you try, none of the power lights for the different city areas seems to turn on and after some futile button-pushing, the system falls back into shutdown mode. Maybe there is something wrong with the power lines? Or the generator? It doesn't look too good, but at least you now know how to reactivate the system quickly.";
			now findwires is 1;
	otherwise if findwires is 1:
		say "The power light for the city blocks holding the library and mall is still off.";
	if findwires is 2 and fixedgens is 2:
		say "Flipping several switches on the control panel, you manage to get the power light for the part of the city with the library to turn on! Yay! Maybe now the computers there will work again?";
		activatecomputers;
	otherwise if fixedgens is 0:
		say "The power light is still off, and a malfunction light for the generator is on. Looks like you will have to fix it.";
	otherwise if fixedgens is 1:
		say "The malfunction light is on, and you have the missing parts. You'll have to go out on the catwalk to fix it.";
		


Power Lines is a room. "A large power line tower stands here[if findwires is not 2], but the top is broken off and on the ground. The surrounding fence is melted and charred, like something spat magma at it, and the bottom of the tower is scorched, but it still looks serviceable. Looking down the line of other still standing towers, you see the city's powerplant not too far away in one direction, and a part of the city you know pretty well in the other. The library is over there, and the mall as well. Maybe you could restore power to them if you [bold type]fixed[roman type] this tower.[otherwise if fixedgens is 2]. The perimeter fence is melted and the ground is blackened, but thankfully the tower is just as you left it, with the fixed top where it belongs. A red light is glows at its uppermost tip, signaling that there is power and it's flowing towards the closest part of the city - which should include the library as well as the mall.[otherwise]. The perimeter fence is melted and the ground is blackened, but thankfully the tower is just as you left it, with the fixed top where it belongs. The now unbroken lines should allow electricity to reach the nearby part of the city again, though you see that the red light at the uppermost tip of the tower is still off, showing that there is no power. Maybe you should check out the power plant again.[end if]".
Power Lines is fasttravel.


towerfixing is an action applying to nothing.
understand "fix tower" and "repair tower" and "fix wires" and "fix top" and "repair top" as towerfixing.


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
	say "After reattaching one power line that must have ripped off when the tower was damaged, you lift the tower top, grunting even though it's somewhat lighter than you expected. You tilt it, and try to align the bottom of the top to the top of the bottom.";
	if a random number between one and 20 is greater than the strength of the player:
		say "The tower top slips, and falls. Maybe you could try to fix it again?";
	otherwise:
		say "The tower top slides into place, and the stress on the wires is released.";
		if fixedgens is 2:
			say "A red light on the uppermost tip of the tower blinks a few times, then stays on continuously, indicating power is up and running. Hooray!";
			increase score by 200;
			now findwires is 2;
			activatecomputers;

computeron is a number that varies.

a library computer is a desktop computer.
library computer is in Grey Abbey Library. "[if computeron is 0]A computer rests nearby, powerless.[otherwise]A computer rests nearby, off.[end if] You can [bold type]turn it on[roman type] or maybe [bold type]look[roman type] at the screen?".

before switching on library computer:
	if computeron is 0:
		say "The computer refuses to start. Maybe the power is out?";
		stop the action;

the library computer runs a password lock program called rudimentary passcode.
The password of rudimentary passcode is "ash dragator".
The rejection of rudimentary passcode is "'Password incorrect.'".
The success of rudimentary passcode is "The password field vanishes, and an error appears: ERROR_NO_NET_ACCESS. Doesn't look like you'll be getting internet access here. Oh well, at least there are some simple games on the computer. What better to do during the nanite apocalypse than to play some Solitaire?".
	
to activatecomputers:
	now computeron is 1;
	
Power Plant ends here.
