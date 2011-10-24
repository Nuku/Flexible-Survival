Version 2 of Hospital for FS by Stripes begins here.
[Version 2 - Basic events and first half of Dr Mouse's quests]
"Adds a Hospital area with new monsters and a quest addition to Flexible Survival"
[Description text for this Extension.]


Section 1 - City Hospital


hospnav is a number that varies.
hospstairs is a number that varies.


City Hospital is a room. It is fasttravel.

The description of City Hospital is "     The exterior of the hospital is quite disheveled.  It seems like a large number of people were here when the outbreak started.  You can guess that several people, initially surprised by their changes, came to the hospital, leading to the rampant infection of everyone inside, patient and doctor alike.  You have to wonder if it is wise to investigate here further[if hospquest > 0].  But looking up at the hospital, you can see several rooms in one corner on the third floor are fully illuminated.  And not with the dim glow of the emergency lighting, nor the flicking flames of candles or fires, but the full, smooth light of electricity[end if].[line break]     Inside the lobby, there are further signs of the chaos of transformations while staff tried to figure out what was happening.  The waiting area is presently clear of people and creatures, through there is a lot of scattered clothes, as well as gurneys, crutches and other medical items.  In some cases, these are piled up in an attempt to barricade the doors.  It appears that searching will have another difficulty to it, as you won't be able to simply follow the hospital floor plans[if hospquest > 0] to that corner[end if].[line break]     From the shadows of one hall, you catch the glimpse of a strange, mishapen form before it slips further into the shadows of the hospital, away from the emergency lighting.  It moved quite unevenly on its two malformed legs.  Perhaps this place will be even more disturbing than the others you've searched before and you may want to rethink coming here.";

Hospital Halls is a door. "To the north are a pair of double-doors leading into the hospital.". It is dangerous. 

North of City Hospital is Hospital Halls.
North of Hospital Halls is Hospital interior.

The marea of Hospital Halls is "Hospital".


Section 2 - Hospital Events


Hung Like A is a situation.
The sarea of Hung Like A is "Hospital";

Instead of resolving a Hung Like A:
	say "     You come across an examination room that has several patient charts tossed on a rumpled bed.  You glance over them quickly, finding them all mention cases of 'strange growths' and 'physiological anomalies' found in patients.  Those timestamped as the later ones even start commenting on the strange frequency of such occurences the preliminary examiner's found that evening.  The last one talks about a patient with growing hair spreading over his body along with the stiffening of his fingers and nails.  It ends with the doctor's rough scrawls about the patient being hung like a horse, that it's so good and how she's letting him take her like his mare so she can properly test it.";
	increase score by 1;
	Now Hung Like A is resolved;


Pharmaceutical Storage is a situation.
The sarea of Pharmaceutical Storage is "Hospital";

Instead of resolving a Pharmaceutical Storage:
	say "     You manage to find the hospital's pharmaceutical storage room.  It has clearly been gone through already by someone, as the shelves are barren.  There are a few sticky stains and scattered bottles on the floor you carefully avoid stepping on.  Carefully, you poke through the remaining items to see if anything useful remains among the last scattered samples and bottles.";
	say "[drugsearch]";
	say "[drugsearch]";
	increase hospnav by 1;
	say "[hospprogress]";
	now Pharmaceutical Storage is resolved;

to say drugsearch:
	let T be a random number between 1 and 10;
	if T is 1:
		say "     You find a medkit.";
		add "medkit" to invent of player;
	if T is 2 or T is 3:
		say "     You find some parts for a medkit among the scattered mess.  Maybe someone could put them together?[line break]";
		increase hasparts by 1;
	if T is 4:
		say "     You find a testosterone pill still in the sample pack.";
		add "testosterone pill" to invent of player;
	if T is 5:
		say "     You find a cock pill still in the sample pack.";
		add "cock pill" to invent of player;
	if T is 6:
		say "     You find a birth control pill still in the sample pack.";
		add "Birth Control Pill" to invent of player;
	if T is 7:
		say "     You find a fertility enhancement pill still in the sample pack.";
		add "Fertile Pill" to invent of player;
	if T is 7:
		say "     You find a strange, blood red pill.";
		add "Blood Pill" to invent of player;
	if T is 9 or T is 10:
		say "     You find a small syringe with clear, blue fluid in it and labeled as a [']healing booster['].";
		add "healing booster" to invent of player;


Ambulance Dock is a situation.
The sarea of Ambulance Dock is "Hospital";

Instead of resolving a Ambulance Dock:
	say "     Most of the ambulances are out of the special parking entrance.  The only one here has been crashed into the dock.  Stepping over to it, you look in the open back.  Unsurprisingly, there is a huge, sticky mess in there.  Presumably the last patient they picked up jumped the response team for sex as they were returning to the hospital.  You consider searching in there for something that could still be usable, but it seems like a risky venture.  Do you proceed? (Y/N)";
	if the player consents:
		if a random chance of 2 in 3 succeeds:
			say "     You have a little luck while searching, managing to find a partially salvageable medkit from the mess.  It's only partially complete and will need some more parts to be usable.    Maybe someone could put them together?  Your search did unfortunately get quite a bit of that cum on you though.";
			increase hasparts by 1;
		otherwise:
			say "     You are successfully able to retrieve a medical kit from the mess.  Having been covered by the shock blanket before the fluids started flying, it is undamaged and still usable.  What luck!  Your search did unfortunately get quite a bit of that cum on you though.";
		sort table of random critters in random order;		[double infection by one monster]
		now monster is 1;
		infect;
		infect;
	otherwise:
		say "     You opt to play it safe and continue your search elsewhere.";
	increase hospnav by 1;
	say "[hospprogress]";
	now Ambulance Dock is resolved;


Operating Room is a situation.
The sarea of Operating Room is "Hospital";

Instead of resolving a Operating Room:
	say "     As you are about to turn a corner, you spot a team of several jaguar orderlies marching down the hall towards you.  You duck back quickly before they spot you and dive quietly into the nearest room.  As you wait quietly around the edge of the door, you can see that this is one of the hospital's operating rooms.  Once you hear the group head past and continue on, you let out a sigh of relief and decide to search the room while you're here.";
	say "     It's clear there was some chaos in here, with overturned tables and surgical tools scattered across the floor.  Along with this are several sets of surgical scrubs and piles of clothing, much of it messy with stick fluids.  You steer clear of them and check the patient's chart, finding notes about exploratory surgery on an unusual and rapidly forming growth.  Clearly another case of a transforming patient gone amuck on the unprepared medical staff.";
	say "     You do have some good fortune though and spot a bonesaw on the floor.  You pick it up and add it to your arsenal.  As you slip out the back into the doctor's prep room, you find an exit that leads around one of the barricades, enabling you to get around more of the hospital.";
	add "bonesaw" to invent of player;
	increase hospnav by 1;
	say "[hospprogress]";
	now Operating Room is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"bonesaw"	"A stainless steel bonesaw used for medical procedures.  A little unwieldy, but sharp."	3	bonesaw

bonesaw is an armament. It is part of the player. It has a weapon "[one of]the bonesaw[or]your bonesaw[or]your medical blade[or]the stainless steel saw[at random]". The weapon damage of bonesaw is 6. The weapon type of bonesaw is "Melee". It is not temporary.


Staff Lounge is a situation.
The sarea of Staff Lounge is "Hospital";
when play begins:
	add Staff Lounge to badspots of guy;
	add Staff Lounge to badspots of furry;

Instead of resolving a Staff Lounge:
	say "     In one corner of the hospital, you come across a lounge for the staff.  Taking a glance inside, you find it unoccupied and go in to search.  There are a few chairs and couches, but it seems like some of the staff have used them for [']recreation['] recently.  Not wanting to run into a couple of them sneaking in here for more fun, you confine yourself to a quick search of the room.  Without power, the food in the fridge has gone bad, but you do manage to find an unopened bottle of water.";
	say "     Bottle of water obtained.";
	add "water bottle" to invent of player;
	say "     As you are about to head out, you bump into a girlish raccoon in a pink dress, carrying a large dildo in one paw.  It seems someone did come for a little fun in the break room.";
	challenge "Raccoon";
	say "     Your encounter with the boytoy raccoon over, you leave the lounge to continue your search.";
	now Staff Lounge is resolved;


Interruption is a situation.
The sarea of Interruption is "Hospital";

Instead of resolving a Interruption:
	say "     While moving through the halls of the hospital, you poke into the patient rooms on each side, taking a quick glance for anything of interest.  At one, you are surprised to find a large jaguar with one of the vixen nurses in his lap, riding his hard cock.  He starts to growl and rise as he notices you, but the nurse, not seeing you, rides him harder and gives him a lustful kiss.  He purrrumbles as he settles back down, eyes closed as they kiss.  You decide to slip quietly back out of the room to leave the couple to their fun.";
	now Interruption is resolved;


Maternity Ward is a situation.
The sarea of Maternity Ward is "Hospital";

Instead of resolving a Maternity Ward:
	say "     Reaching the hospital's maternity ward, you suppress a shudder and morbidly take a look in to see what has become of it.  Inside you find the place busy with vixen nurses.  Several are tending to the bassinets while a few others are nurse feeding little foxcub babies.  The staff dutifully tend over the cubs, cooing and playing with them happily.  You turn and quietly leave, unsure if you are disturbed or relieved that it was not as you feared within.";
	increase hospnav by 1;
	say "[hospprogress]";
	now Maternity Ward is resolved;


Radiology is a situation.
The sarea of Radiology is "Hospital";
when play begins:
	add Radiology to badspots of girl;
	add Radiology to badspots of guy;
	add Radiology to badspots of hermaphrodite;
	add Radiology to badspots of furry;

Instead of resolving a Radiology:
	say "     The radiology department, where the x-rays are taken, seems to have had recent use.  There are several fresh x-rays showing images of the altered physiology of transformees.  While some seem to have been taken during partial transformation, most are of completed changes.  Many are arranged out on the illuminated viewers with annotations marked on.  Most are circles or arrows marking key points with a red wax pencil, but others contain medical jargon about the bones or joints being changed.  Briefly distracted by all this, you don't hear the sound of approaching footsteps until its too late and one of the hospital's creatures steps in.";
	say "[hospfight]";
	say "     After your confrontation with the creature, you leave the room, worried that more will be drawn by the noise.  You do find a back door out, letting you slip into another section of the hospital.";
	increase hospnav by 1;
	say "[hospprogress]";
	now Radiology is resolved;


to say hospfight:
	let T be a random number between 1 and 6;
	if T is 1:
		challenge "Raccoon";
	if T is 2 or T is 3:
		challenge "Vixen Nurse";
	if T is 4 or T is 5:
		challenge "Mismatched Chimera";
	if T is 6:
		challenge "Jaguar";


to say hospfight2:		[prevents duplicate of raccoon, who is a unique individual]
	let T be a random number between 1 and 5;
	if T is 1 or T is 2:
		challenge "Vixen Nurse";
	if T is 3:
		challenge "Mismatched Chimera";
	if T is 4 or T is 5:
		challenge "Jaguar";


Pathology is a situation.
The sarea of Pathology is "Hospital";
when play begins:
	add Pathology to badspots of girl;
	add Pathology to badspots of guy;
	add Pathology to badspots of hermaphrodite;
	add Pathology to badspots of furry;

Instead of resolving a Pathology:
	say "     Hearing the sound of footsteps and talking approaching, you slip through a nearby door.  Inside you find yourself in a medical lab.  The room, unlike many of the others has been kept clean and seems largely undisturbed by the events which have struck the hospital.  Curious, you are about to look around further when the door opens and in strides the two creatures.  You seem to have inadvertantly hidden yourself at their destination.  The first charges at you while the other, laden with several test tubes and samples, moves to set its burden down first.";
	say "[hospfight]";
	say "     Just having finished with the first, the second monster now moves up to have a go at you.";
	say "[hospfight2]";
	say "     After the confrontation with the pair of creatures, you leave the room, only noticing then that the room you were in was marked as 'Pathology'.  You feel a little quiver in your stomach.  Did you catch something in there, or was that just from worry?  As you try to convince yourself that you couldn't be feeling sick after such a short amount of time, you notice that a door around the corner is ajar.  This hallway, once locked, was opened by the creatures as they passed through it and is now another path you can use to explore the hospital.";
	increase hospnav by 1;
	say "[hospprogress]";
	now Pathology is resolved;


Stairwell is a situation.
The sarea of Stairwell is "Hospital";

Instead of resolving a Stairwell:
	if a random chance of 1 in 2 succeeds:
		say "     You manage to reach one to the stairwells, but find the door blocked and unable to open.  Glancing through the small window, you see that its been barricaded from the inside as well as jammed with a heavy metal bar.  You will have to continue searching to find another way to the upper floors.";
	otherwise:
		say "     In a far corner of the hospital, you come to one of the stairwells and find the door stuck half-open.  There are several large and heavy items scattered behind it, including the overturned gurney which is keeping the door open.  From the mess of clothes and sticky stains among the mess, it looks like some people were trying to barricade the door, but the creatures forced their way in before the job could be completed.  You are able to slip through the mess and go up the stairs to explore the upper rooms.";
		increase hospstairs by 1;
		say "[hospprogress]";
		now Stairwell is resolved;


Cafeteria is a situation.
The sarea of Cafeteria is "Hospital";

Instead of resolving a Cafeteria:
	say "     As you are passing through the dark halls of the hospital, you can hear quite a bit of noise from down one hall.  Approaching cautiously, you glance down and see leads to a pair of doors marked 'Cafeteria'.  You approach cautiously, glancing between the doors and the hall behind you.  At the doors, you peek through the window and see quite a few of the hospital's animal staff inside.";
	say "     Behind the food counter, an obviously herm raccoon lunchlady is fucking one of her assistants, a breasty cowgirl.  Some of the cowgirl's milk leaks from her teat-like nipples onto the food spread out, not that the creatures in line seem to mind.  If anything, they only end up taking more from that pile of glop.";
	say "     At the tables are several others, mainly vixen nurses and jaguar orderlies, though there are a few other creatures mixed in as well.  Some of the patrons are eating their food peacibly while others are slaking their appetite for sex.  Several of the vixens are being boned roughly by the jaguars.  At one table, one vixen is spread out while several furs lick, kiss or suck at her erogenous zones, much to her delight.  Another table has a rare female jaguar sitting on the table while two of the males nurse from her breasts and play with her pussy.";
	if humanity of player < 30 or libido of player > 50:
		say "     The sight of this decadent meal is quite aluring, but you do manage to draw yourself away before giving in.  With so many in there, you doubt you would emerge with your identity intact.";
	otherwise:
		say "     You turn away from the decadent meal and move back down the hall quietly, eager to get some distance between you and such a large group of creatures.";
	now Cafeteria is resolved;


Section 3 - Helper Dog Event & Pet

Mournful Dog is a situation.
The sarea of Mournful Dog is "Hospital";
hdog is a number that varies.
dogfoodcount is a number that varies.

Instead of resolving a Mournful Dog:
	if hdog is 0:			[first time finding]
		say "     While searching through a hallway of patient rooms, you open one to a terrible smell of decay.  You retch several times[if humanity of player < 50], barely hearing the soft growling coming from within,[end if] before recovering and taking stock of the room.  There is a body on the hospital bed, clearly long dead and unremoved.  On the floor beside it is a [if humanity of player < 50]growling[otherwise]sad[end if] dog.  The dog is a black and white shepherd wearing a bright vest on its bony flanks, denoting it as a helper dog.";
		say "     It seems the poor beast's master passed away, and in the ensuing chaos at the hospital, was left here since.  It is unclear if they died before the outbreak took hold or if they were too weak and the infection finished them off before it could change and heal them.  The dog, probably hostile to the infected hospital staff, has continued to protect them and keep them from the removing the body.";
		now hdog is 1;
		let foodfound be 0;
		repeat with x running through invent of player:
			if x is "food", increase foodfound by 1;
		if foodfound is 0:
			say "     The dog, clearly reluctant to leave its master, has not been able to feed itself properly.  Unfortunately, you have no food to spare.  Perhaps you should try to find it again later when you have some to give it.";
		if foodfound > 0:		
			say "     The dog, clearly reluctant to leave its master, has not been able to feed itself properly.  Do you offer it some food?";
			if the player consents:
				delete food;
				increase dogfoodcount by 3;
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let dice be a random number from 1 to 20;
				let total be ( dice plus bonus plus dogfoodcount );
				say "You roll 1d20([dice])+[bonus]+[dogfoodcount] vs 22 and score [total]: ";
				if dice + bonus + dogfoodcount is greater than 21:
					say "     You are able to coax the dog into letting you come close and pet it.  It wags its tail as you pat its head and check its tag, finding only the name 'Hobo'.  Reaching over, you pull the sheets over its former master's body, then you both leave together.";
					now helper dog is tamed;
					say "(The helper dog is now tamed! You can make it your active pet by typing [bold type]pet helper dog[roman type]. You can see all the pets you have tamed with the [bold type]pet[roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type]pet dismiss[roman type], or just [bold type]dismiss[roman type])";
					now Mournful Dog is resolved;
				otherwise:
					say "     The dog accepts the food from you, but won't let you get close.  Maybe you should come back and try again another time.";
			otherwise:
				say "     Hardening your heart to the mournful dog's needs, you close the door and decide to move on.";
				now Mournful Dog is resolved;
	otherwise:
		say "     Your passage through the halls finds you at the room with the dead patient and their pet dog.  You pinch your nose and poke in again to check on the dog, finding it still there.  It perks up a little as you arrive, but still won't approach.  It seems in slightly better condition than when you were here last time, but is still quite malnourished.";
		let foodfound be 0;
		repeat with x running through invent of player:
			if x is "food", increase foodfound by 1;
		if foodfound is 0:
			say "     Having no food to spare, you cannot give any to the dog.  Perhaps you should find some and return later.";
		if foodfound > 0:		
			say "     The dog, clearly reluctant to leave its master, has not been able to feed itself properly.  Do you offer it some food?";
			if the player consents:
				delete food;
				increase dogfoodcount by 3;
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let dice be a random number from 1 to 20;
				let total be ( dice plus bonus plus dogfoodcount );
				say "You roll 1d20([dice])+[bonus]+[dogfoodcount] vs 22 and score [total]: ";
				if dice + bonus + dogfoodcount is greater than 21:
					say "     You are able to coax the dog into letting you come close and pet it.  It wags its tail as you pat its head.  Reaching over, you pull the sheets over its former master's body, then you both leave together.";
					now helper dog is tamed;
					say "(The helper dog is now tamed! You can make it your active pet by typing [bold type]pet helper dog[roman type]. You can see all the pets you have tamed with the [bold type]pet[roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type]pet dismiss[roman type], or just [bold type]dismiss[roman type])";
					now Mournful Dog is resolved;
				otherwise:
					say "     The dog accepts the food from you, but won't let you get close.  Maybe you should come back and try again another time.";
			otherwise:
				say "     Hardening your heart to the mournful dog's needs, you decide you can't afford to spare food for the animal and move on.";
				now Mournful Dog is resolved;


helper dog is a pet.  helper dog is a part of the player;
The description of helper dog is "The helper dog is a black and white shepherd with soulful and intelligent brown eyes.  He will follow you and loyally assist you with your troubles.";
The weapon damage of helper dog is 5;
The level of helper dog is 5;
The Dexterity of helper dog is 14;
The summondesc of helper dog is "Coming obediently to your call, the helper dog moves to your side, ready and eager to assist you.";
The assault of helper dog is "[one of]The helper dog jogs between your enemy's legs, snapping at them![or]Growling menacingly, Hobo snaps at your foe, allowing you to score another glancing blow![or]Barking loudly, your loyal dog charges and bites the enemy![or]Your faithful companion bites your opponent's ankle, growling deep in its throat until the leg it finally pulled free![or]With a loud bark, the helper dog leaps at your enemy and bites their arm![or]Moving around behind them, Hobo grabs their arm and pulls back, knocking them off balance for you to score a quick hit![or]In an surprising piece of cleverness, your helper dog pulls a rope he's found across your enemy's path, causing them to stumble briefly![at random]";

when play ends:
	if helper dog is tamed:
		if humanity of player is less than 10:
			say "     As you give in to your feral instincts, your helper dog looks at you mournfully.  He then turns and wanders off to find another poor, needy soul to help.  Perhaps he will be more successful next time.";
		otherwise:
			say "     After your rescue, you are able to convince the distracted military that the helper dog isn't a threat.  He certainly seems quite normal to them and is an intelligent and helpful animal.  Once you arrive at the safety of the military compound and disembark with the others extracted with you, you spot Hobo in the distance.  He looks back at you once and, as if satisfied you are now safe, turns and continues on, perhaps to find another poor soul in need of his help.";   [The God-I'm-so-fucking-Canadian ending]


Section 4 - The Hidden Lab & Dr Mouse

An everyturn rule:
	if hospquest is 0 and hp of doctor matt > 7:	[Not started hospital quest & found susan (regardless of outcome) _or_ Dr Matt is only a recording]
		increase hospcountdown by 1;
		if hospcountdown is 8:				[Will activate 'random' event in 8 turns]
			say "     You hear an unusual, loud noise and reflexively take cover, peeking out from a window.  As you watch, you can see some large jaguar men in hospital scrubs carrying an insensate husky girl.  They seem to be led by a silver-furred vixen in a nurse's uniform as she directs them to put her in the ambulance helicopter, the source of the unusual noise in the otherwise quiet city.  'Perhaps this bears looking into further,' you think as you watch it head off in the direction of the city hospital.";
			extend game by 4;
			increase score by 10;
			wait for any key;
			now hospquest is 1;
			now Finding a Way in is unresolved;


Locked stairwell is a door. "Off to one side are a pair of heavy, metal doors leading to a stairwell."
Locked stairwell is lockable and locked.
Locked stairwell is east of City Hospital.
The description of Locked stairwell is "Off to one side are a pair of heavy, metal doors leading to a stairwell."

East of Locked stairwell is Hidden Lab

The description of Hidden Lab is "     Part of the hospital testing labs have been converted to be used by the white mouse to work on his analysis of the nanite infection.  The short fellow has set up several small experiments that are running, likely analyzing some of the biological changes caused by the nanites.  These are on the lab tables in the room while the mouse scurries around between them, occasionally having to climb up onto one of the stools to do his work..[line break]     Part of the room has been cleared out to make space for a small cot and collection of supplies.  The cot doesn't look like it's been used recently and the food supplies are in disarray.  The mouse is probably just grabbing a snack when he remembers to eat, being so focused on his work.[line break]     Off to one side of the room are a pair of collared and chained hybrids, a duo of those mismatched, patchwork chimeras.  They have water and food dishes, as well as a small chemical toilet within reach of their tethers.  At the moment, they are [one of]fucking[or]laying down[or]kissing[or]fondling one another[or]sleeping[or]eating[or]drinking[at random].";


[Message indicating progress]
to say hospprogress:
	if hospquest is 1:	[search still active]
		say "[line break]";
		if hospnav is 2:
			say "     You are starting to learn your way around the hospital and are able to access more of it.  You are making progress.";
		if hospnav is 3:
			say "     You are figuring out how to get around in here better and better now that you've gotten to reach more landmarks.  You still don't think you'll be able to reach that upper corner, though.  Best keep at it.";
		if hospnav > 3:
			say "     You have gotten quite good at circumventing the blocked rooms and fire doors in the hospital and should be able to get to most places";
			if hospstairs is 0:
				say ", but you still need to find a way to get upstairs if you're going to get into those rooms.  You should look around for an accessible [bold type]stairwell[roman type].";
			if hospstairs is 1:
				say ".  Between that and the open stairwell you've found to get upstairs, you should now be successful at [bold type]finding a way in[roman type] to reach those illuminated upper rooms.";
		wait for any key;


Finding a Way in is a situation.
Finding a Way in is resolved.		[unable to do this until activated]
The sarea of Finding a Way in is "Hospital";


Instead of resolving a Finding a Way in:
	if hospnav > 3 and hospstairs > 0:		[at least 4 waypoints and the stairs up]
		say "     After taking many twists and turns through the hospital, you manage to find you way up several stories and over to the lit area.  There you pass by the operating theater and head down the hallway towards the door at the end.  It is partially open and light flows from it.  You approach cautiously, listening intently, but there is little sound coming from the room, labeled as [']Testing Labs['].";
		say "[meetdrmouse]";
		now the player is in Hidden Lab;
		now locked stairwell is unlocked;
		now Finding a Way in is resolved;
	otherwise:
		say "     You continue searching the hospital, but are unable to find your way through, reaching another dead end.  It seems you will have to continue to explore the hospital further to learn your way around.";


Doctor Mouse is a person. Doctor Mouse is in Hidden Lab.
lastDrMousefucked is a number that varies.  lastDrMousefucked is usually 500.
understand "Mouse" as Doctor Mouse.
understand "Dr Mouse" as Doctor Mouse.
Doctor Mouse has a number called progress.

The description of Doctor Mouse is "     Dr Mouse is a small, white mouse with red eyes and a pink nose and ears.  He's only about four feet tall, and that's to the top of his ears.  He's dressed in a white labcoat that goes almost to the floor with his rodent-like feet and thin tail poking out from underneath it.  He is busily working away in the lab, always scurrying about for equipment or checking on one of his many experiments.";


to say meetdrmouse:
	say "     Unable to see more than a few work tables and testing equipment, you slip through the open door to get a better look.  Inside is more of the same, through part of the room has been cleared away.  Some of it seems to be in active use, with several beakers simmering over burners or sitting on running auto-stirrers.";
	wait for any key;
	say "     You start to take another slow step into the room when a noise to one side startles you.  There is a pair of those mismatched chimeras in here.  They moan lustfully and try to crawl towards you, but are held back by collars around their necks.  They are chained to a workbench in the far corner.";
	say "     You breathe a sigh of relief and turn back to the room, startled again by the sight of a white mouse poking his large head up over one of the tables.  This creature stares at you with blood red eyes as you are both frozen in surprise.  You start to raise your weapon slowly, but the mouse smiles happily and claps his hands together.";
	wait for any key;
	say "     'This is such an unexpected surprise.  Do please come in.  The creatures of this hospital rarely provide good company.'  As the mouse moves around the work table, you can see his head barely clears it at all, only about four feet tall at the ears.  He grabs a wooden stool and pulls it over, scraping it across the floor.  As he climbs up to get a seat, he adds, 'you should call me Doctor Mouse, I guess.  A new name for a new me,' he chuckles as he scrambles into the seat with some effort and motions for you to pull one up as well.";
	say "     'I'm quite surprised you made it up here.  It's quite a mess downstairs and the creatures stop anyone from venturing in.  You should tell me what is happening out in the city?  I've not been able to leave here since the infection struck.  Far too dangerous for a little guy like me out there.  And so much to do here, studying the nanite infection.  It has such a capacity for healing.'  He starts to babble a little, perhaps from being isolated in here.";
	wait for any key;
	if hp of doctor matt is 100:
		say "     'The cause of all this are nanites of some unknown origin.  I bet you didn't know that.  Nanites are microscopic machines.  These little buggers are smaller than a red blood cell and they are altering people's bodies according to whatever whimsy their programming is telling them to do at any given moment.  There are a variety of strains, as you have no doubt seen.  Most strains are in conflict with one another, though some appear to be able to live in symbiosis.";
		say "     Almost universally, the nanites alter their hosts form and push them with increased sexual growth and carnal desires, most likely to further spread that nanite strain.  There have also been a wide range of, for lack of a better term, evolutionary traits that the nanites introduce to increase their host's potential success in this regard.  Universally though, the nanites bring with them an increased rate of healing.";
	otherwise:
		say "     'The cause of all this are nanites of some unknown origin.  I bet you didn't know that.  Huh?  You did?  Most peculiar.  How did you come to discover this?  You don't look like a scientist.  Though, I guess I don't look much like one, despite my lab coat,' he titters a little, whiskers all atwitch.";
		say "     You start to tell him that you have met another scientist in the city who's been trying to deal with the nanites and find a way to eradicate them.  'Oh no, that won't do at all,' Dr Mouse exclaims.  'That would be most unfortunate.  The nanites are what's keeping many of their hosts, the people out there, alive right now.'";
	wait for any key;
	say "     'The nanites are constantly at work, making adjustments and repairs to their hosts.  If they are injured, the nanites speed the recovery.  You have probably noticed it in yourself.  It is quite evident in them,' he says, pointing to the pair of chimera, who have taken to mating with one another now that it's become clear that they won't get to play with the new arrival.";
	say "     'The human body, or any living organism for that matter, is a well-crafted and balanced machine that took millions of years to create and perfect.  And humans are far from perfect machines even now.  We break down.  We age.  Our bodies fail us.  For example, the human knee, while very functional and a key component, is very shoddily constructed.  But everything is interconnected and works as a whole.'";
	say "     'Once you start changing things around and reprogramming how we're constructed, that delicate balance gets thrown off.  I'm quite certain that the nanites, by constantly working and repairing their hosts, are keeping them from experiencing the deleterious effects of their body's changes.  I fear, if they were somehow removed or shut down suddenly, many of the hosts would no longer be able to sustain themselves.  Or at least at this stage of development, perhaps.  It's hard to say.  So much of this is based off observational assumptions.  I need more hard data.'";
	wait for any key;
	say "     'And that's why I need to continue my research.  I need to learn more about the nanites, how they are changing their hosts and the capacity of their healing factor.'  He smiles up at you, twitching his whiskers.  'And that is why I am so glad to see you.  I am in need of more equipment to analyze the nanites.'  He waves to his lab.  'I have a wide array of medical equipment here, but the nanites are machines and there are limits to what I can discover about them with it.'";
	say "     'You seem very resourceful and may be able to find a device I need to further my analysis.  While I have been able to learn much from working on them,' he says, waving off-handedly at the noisily mating pair, 'I have carried that research about as far as I can and need to move in a new direction to learn more.'";
	say "     Doctor Mouse tells you about the kind of scientific device he is looking for and describes its appearance in detail, as well as gives you a crude drawing for reference.  He pushes it into your hands and babbles something about some kind of reward for you and adds that the stairwell to his lab will be unlocked for you[if Outside Trevor Labs is known].  You look it over and think to yourself that you may be able to find one at Trevor Labs easily enough[end if].";
	wait for any key;
	now hospquest is 2;
	increase score by 25;


Instead of conversing the Doctor Mouse:
	if hospquest is 0:
		say "ERROR:     'My dear boy/girl, I don't believe you should be here yet.'";
	if hospquest is 1:
		say "ERROR:     'My dear boy/girl, I don't believe you should be here yet.'";
	if hospquest is 2:
		say "     The white mouse looks up from his work.  'I need you to find that device for me.  Significant portions of my research are at a standstill without it.'";
	if hospquest is 3:
		let devicefound be 0;
		repeat with x running through invent of player:
			if x is "scientific device", increase devicefound by 1;
		if devicefound is 0:
			say "     'What do you mean you find the device but haven't brought it with you?  What fools I have to wo...'  He sighs and rubs his brow.  'Please, I need you to go back where you left it and get it for me.'";
		if devicefound is 1:
			say "     'Yes!  That is it,' Doctor Mouse says as he hops down from his stool to grab for it before thinking better of it.  'Uh, would you be so kind as to put it over there for me?' he asks, pointing to an open spot on the central work area.";
			say "[hospquestpt2]";
	if hospquest is 4:
		if progress of doctor mouse minus turns is less than 8:
			say "     Please leave me to my research for the moment.  I believe I shall have more need for you once I am done.";
		otherwise:
			extend game by 16;
			say "[hospquestpt3]";
	otherwise if hospquest is 5:
		say "[hospquestpt4]";
	otherwise if hospquest is 6:
		say "[hospquestpt5]";
	otherwise if hospquest is 7:
		say "[hospquestpt6]";
	otherwise if hospquest is 8:
		say "[hospquestpt7]";
	if hospquest is 9:
		say "     'I don't have anything more for you to assist me at the moment,' the white mouse replies to you inquiry. 'But once more is programmed, you should check back in.' With that confusing and cryptic response, you decice to head off.'";

Section 5 - Dr Mouse's Quests

[	0 new				]
[	1 saw helicopter		]
[	2 found hidden lab	]
[	3 recovered device	]
[	4 gave device		]
[	5 wants Dog Milk		]
[	6 given Dog Milk		]
[	7 wants tiger patch x3	]
[	8 wants prehist + nerm	]
[	9 returned batch		]

hospquest is a number that varies.
hospcountdown is a number that varies.
nerminepackage is a number that varies.
sabtoothed is a number that varies.
triclamped is a number that varies.
nerminepackagematt is a number that varies.
sabtoothedmatt is a number that varies.
triclampedmatt is a number that varies.
mattcollection is a number that varies.

instead of going to 2F Trevor Labs while hospquest is 2:		[Examining other labs]
	now the player is in 2F Trevor Labs;
	say "     You examine the other labs first, hoping to find one of the machines not in use, but have no luck.  You'll have to see if there is one in the primary lab.";

instead of going to Primary Lab while hospquest is 2:			[Searching the main lab]
	now the player is in Primary Lab;
	if hp of doctor matt is 100:						[recording]
		say "     You look around the lab and quickly find the VCR-sized device.  You unhook it and carry it off with you.  It is somewhat heavy though.  Better be worth it.";
	otherwise:									[physically there]
		say "     You take a look around the room and soon spot something that looks like the piece of equipment that the mouse described.  As you are looking it over to make sure its the right one, Dr Matt notices your interest in it.  'I'm not really using that thing any more.  My research has progressed past that point.  So you can clear it out for me to make space, but why are you interested in it at all?  I'm not even sure you could understand how it works, let alone how to use it.  Do you explain? (Y/N)";
		if the player consents:
			say "     As you explain to Dr Matt about the strange state of the hospital and the mouse doctor working away deep inside, Dr Matt listens with increasing attention and some concern.  'This is quite unexpected.  You have found another person in the city searching into the mysteries of the nanite infection, but through a different avenue of research.  And using the infected as test subjected is...' he coughs as he notices the stern look you [if susan is visible]and Susan [end if]give him.  'That is, possibly using them as unwilling test subjects in such surgical experiments.  Most disturbing and unethical, even in such a crisis.'";
			say "     'I suggest you take that device to this Dr Mouse individual.  It will further ingratiate you to him and allow you to find out more about what's going on at the hospital.  Hopefully, I am wrong about my concerns and this doctor may be of help to us.  As well, we do need to know if his concerns about the nanites are valid.";
			say "     As he turns back to his work bench while you unhook the device, you hear him mumble, 'And perhaps I can get my volunteer to obtain his research so I may advance my own.' He gets back to his work with increased vigour.  Maybe the thought of competition is spurring him on.  With the device unhooked, you carry it off with you.  It is somewhat heavy though.  Better be worth it.";
			increase score by 5;			[additional score boost for honesty]
			now hp of doctor matt is 9;
			extend game by 8;
		otherwise:
			say "     You tell him you are working on something and would like to scavenge parts from it, since he doesn't need it anymore.  He doesn't have any objections, as he won't be taking any of the equipment once they are extracted by the military.  You carefully unhook the device and carry it off with you.  It is somewhat heavy though.  Better be worth it.";
	add "scientific device" to invent of player;
	now hospquest is 3;
	increase score by 5;


Table of Game Objects (continued)
name	desc	weight	object
"scientific device"	"     You see a large scientific device with several leads for input and output."	10	scientific device

scientific device is a grab object.
it is part of the player.
It is not temporary.

instead of using scientific device:
	say "     You don't really know what it's for, but Dr Mouse says he needs it for something.";


to say hospquestpt2:
	say "     'I have a lot of samples and tests I would like to run.  Many of my projects and analyses have been unable to progress without proper instrumentation.  I will need some time to run more tests before I can gain more information. I'm all abuzz with excitement; I want to tackle it all right away.  No sleep for me tonight,' he adds with a chuckle.";
	say "     'But as I promised, I do have a few things for you.'  He heads over to one of the cabinets under the work bench and digs around, pushing some of the items aside as he digs around.  'I set this aside for you if you were successful.  I know it's not much, but I expect to deliver better once my results start reaching fruition.'  From the back, he pulls out a large beaker with a bottle of water and two syringes sitting in it.";
	say "     'These are healing boosters that I created some time ago.  They provide important nutrients and stimulate the nanites to bring about a surge in their healing rate for a brief time, resulting in rapid repair of injuries.  Most helpful for you out there, I expect.  And a bottle of water as well, as you're probably thirsty after lugging that thing across the city.";
	delete scientific device;
	add "healing booster" to invent of player;
	add "healing booster" to invent of player;
	add "water bottle" to invent of player;
	now progress of Doctor Mouse is turns;
	extend game by 8;
	say "[line break]";
	increase score by 25;
	now hospquest is 4;

to say hospquestpt3:
	say "     The white mouse looks up from his research as you check in with him.  'You've done very well.  This has been a great boon in understanding the functioning of these little nanites.  I was hoping you'd be able to assist me with something further.  Through the use of the staff here, I have been able to secure several samples,' he says, pointing to various bottles and jars on one table, many of them filled with white fluids.  'But there's one creature, a large canine out looking for a mate, that they've seen rarely and have been unable to sample.  Being a twelve-foot dog, the orderlies are rather reluctant to approach it.  There are some times that the animal nature of the infection's changes do present a problem.";
	say "     I would like you to try tracking down this creature and obtaining a sample from it.  From their accounts, it is a rather impressive creature with rather uncommon... shall we say... [']gender configuration[']?  It is a variation that should be investigated and I am curious to see if I can trace the source of its unusual pairing of features.";
	let dogmilkfound be 0;
	repeat with x running through invent of player:
		if x is "Dog Milk", increase dogmilkfound by 1;
	if dogmilkfound is 0:
		say "     'I can only make assumptions on why that creature is unique, but each possible reason has different implications and applications.  Proper testing is required to learn more.  Going forward without that knowledge make affect the results of my other experiments.'";
		now hospquest is 5;
		increase score by 5;
	if dogmilkfound > 0:
		say "     'What is this?' he exclaims as you pull out the bottle of dog milk.  'You already have some?  Astonishing!  I knew you would make a fine assistant, but this is most impressive.  There are numerous possibilities for why that dog creature is unique and some of them could affect the results of my other experiments.  Ascertaining or removing certain variables will greatly increase the likelihood of gaining meaningful results.";
		delete Dog Milk;
		now progress of Doctor Mouse is turns;
		extend game by 8;
		increase score by 25;
		now hospquest is 6;

to say hospquestpt4:
	let dogmilkfound be 0;
	repeat with x running through invent of player:
		if x is "Dog Milk", increase dogmilkfound by 1;
	if dogmilkfound is 0:
		say "     'I need you to get a sample, preferably its milk, from that large canine.  Its shemale attributes are unusual and I wish to determine what factor or factors may have made it different and unique.'";
	if dogmilkfound > 0:
		say "     'You have it?  Excellent work.  I knew when you showed up that you'd make a fine assistant.  There was just something about you.'  He takes the jar of dog milk and starts drawing samples from it, putting them into beakers for testing.  'It will take some time to complete my tests, but I expect I'll have something for you once the results are in.'";
		delete Dog Milk;
		now progress of Doctor Mouse is turns;
		extend game by 8;
		increase score by 20;
		say "[line break]";
		now hospquest is 6;

to say hospquestpt5:
	if progress of doctor mouse minus turns is less than 12:
		say "     Please leave me to my research for the moment.  I believe I shall have something special for you when I am done.";
	otherwise:
		say "     'I have been able to perform some research on the sample you brought back.  While some of the test results are inconclusive, I have been able to rule out several of my earlier hypotheses on its nature.  This knowledge will help me advance several of my other projects and better focus my research into ones which will yield results.  And I do believe I said I'd have a reward for you.'";
		say "     'From my research into the factors activated in the collie's physiology by the nanites, I have been able to create a stamina booster, which will increase one's physical endurance.'  He smiles as he takes a syringe from a refridgerated storage case.  'As you are acting as my agent in the field, it is important that you be hardy enough to deal with the creatures out there.  And so, this is for you,' he says as he merrily injects you with it.";
		increase stamina of player by 2;
		say "     [bold type]Your stamina has been increased by 2.[roman type][line break]";
		increase score by 10;
		say "     'I do have another task for you, my helpful assistant,' the albino mouse continues.  'At the state fair across the city, there is a strange, rubber-like creature.  While I have obtained samples from the latex foxes and wolves running around, I wish to see how this feline's unusual body composition differs from theirs.  You should get three samples, as I know from experience working with the fox and wolf samples that it may require several to get any worthwhile data.  Being felines, these creatures seem able to entice the orderlies into becoming their mates and the vixens are not strong enough to deal with them on their own.  And when several vixens go together, these felines band together and repel them.  I'm hoping, as a lone individual, you will be successful where they have not.'";
		now hospquest is 7;

to say hospquestpt6:
	let tigpatchfound be 0;
	repeat with x running through invent of player:
		if x is "Tiger patch", increase tigpatchfound by 1;
	if tigpatchfound < 3:
		say "     Please remember, I need you to obtain three samples, so I can be certain to have enough to obtain results.";
	if tigpatchfound > 2:
		delete Tiger patch;
		delete Tiger patch;
		delete Tiger patch;
		say "     Good work!  I shall set to work on these right away.   And while I work on that, I do have another project for you.  I have a pair of situations where my orderlies have upset the locals too much to complete their task and I need someone independant of the hospital to go in and complete the job.";
		say "     I have just obtained word that the museum contains a pair of prehistoric creatures.  Aside from representing an unprecedented opportunity to analyze ancient life, it may be important to examine their nanites and see how they affected such changes.  The reports from the hospital creatures are somewhat unspecific, but there appears to be a armoured, dinosaur-like creature and several smilodons.  I would have the others deal with this, but on their original foray into the museum, they must have caused a disruption and now the guardian will not let them re-enter.  I need you to samples from both of these.";
		say "     'The last thing I need for you is to perform a simple pick-up while you are out.  There is a jackal shopkeeper who has set herself up in the mall.  She has a package for me.  The rats who live there will not allow the hospital staff to approach, having been set off by the appearance of one of the jaguars when the order was first placed.";
		now nerminepackage is 1;
		now Dinosaur Nest is unresolved;
		increase score by 25;
		now hospquest is 8;

to say hospquestpt7:
	if triclamped is 0:
		let tricllfound be 0;
		repeat with x running through invent of player:
			if x is "lava lamp", increase tricllfound by 1;
		if tricllfound is 0:
			say "     If you are not able to obtain a usable sample from this creature, be sure to go to its nest and search there.  There may be eggs or something else with enough nanites to act as a proper sample.  They were very clear that it was female.";
		if tricllfound is 1:
			delete lava lamp;
			say "     The mouse dubiously looks at the lava lamp you[']ve pulled out, but goes to take it.  As you explain what you suspect it[']s been used for, he pulls his hands back quickly and puts on a pair of ill-fitting gloves over his mouse-paw hands.  Only then does he handle it, setting it on the lab table.  'I... this is a rather ingenious way to obtain a sample.  I... uhh... commend you.  Please continue,' he says.";
			now triclamped is 1;
	if sabtoothed is 0:
		let sabertoothfound be 0;
		repeat with x running through invent of player:
			if x is "Chipped tooth", increase sabertoothfound by 1;
		if sabertoothfound is 0:
			say "     There appear to be several of these smilodons in the museum.  Take care, smilodons, popularly known as sabretooth tigers, were the apex predators in their time and are larger than any current feline.  Any creatures based on them with nanite enhancement would be... quite powerful.";
		if sabertoothfound > 0:
			delete Chipped tooth;
			say "     The mouse looks at the large fang with a mix of awe and delight.  He takes it carefully from you and places on a sample tray.  Another successful mission completed.";
			now sabtoothed is 1;
	if nerminepackage < 5:
		let nermpack be 0;
		repeat with x running through invent of player:
			if x is "package", increase nermpack by 1;
		if nermpack is 0:
			say "     The shop keeper at the mall has a collection of... ahh... [']occult and mystical items[']', he says with a bit of disdain.  'But she does have some historically significant items and I wanted to obtain something from her.  She may want something of similar value in return,' he adds.";
		if nermpack is 1:
			say "     The mouse takes the package from you with a smile and puts it on his sample table quietly.";
			delete package;
			now nerminepackage is 5;
	if nerminepackage is 5 and sabtoothed is 1 and triclamped is 1:
		say "     'Excellent work, my assistant.  Now I have much to do.  I hope you will understand if I ask you to leave me to my investigations for a time.  But as a reward, you may have this for the moment,' the small mouse says as he passes you a medkit.";
		say "     'For the reward to come, I would like to make an analysis of your nanites to better help you out there.'  You start to mumble an objection, but he brushes it off.  'Now, now.  You aren't afraid of a little needle, are you?  I am a doctor, after all.'  And then, while you start to consider the matter further, he pricks you with the needle and withdraws some blood.  'There.  All done.  Now, that wasn't so bad, was it?' he says, like a doctor speaking to a young patient.";
		extend game by 12;
		increase score by 40;
		say "[line break]";
		now hospquest is 9;


Section 6 - Museum Quests - Triceratops

Instead of conversing the Valerie while hospquest is 8 and valhosp is 0 and valtalk > 0:
	now valhosp is 0;
	say "     The jaguars who came by earlier?  How'd you hear about that?  Did the satyrs tell you?  They really got them worked up.  Broke up one of their drinking parties, which is what they're doing all the time.  Well, when they're not playing with the nymphs.  I'm not really sure what they intended to do, but I wasn't going to let them do it in my museum.  They're not very bright, so I posed them a couple of conundrums.  While they were trying to figure them out, I got some of the abstracts from the modern art wing to deal with them.  It hurts my head just to look at them, but it had to be done.  Drove them off and I won't let them back in now.";
	say "     'Anything else you needed to know?' the sphinx asks with an inscrutible grin.";
	if sabtoothed is 0:
		say "     There are several sabretooth cats roaming around the museum.  Don't mess with them if you don't have to.  They're pretty tough.  Not too bright, unfortunately.  They're nice and hung, but I want someone clever as well.";
	if triclamped is 0:
		say "     The triceratops woman is dancing around the halls to the music in her head all the time, but she doesn't wander too far from her nest in the dinosaur wing.  She's got lots of stuff in there.  She raided several of the modern history displays and probably a few stores in the neighbourhood as well for that stuff.  She's very possessive of her collection.  Having it around keeps her happy, so I don't bother the silly girl about it.  If you want to take any of it, she'll show you her moves.";
	if nerminepackage is 2:
		say "     The Viking great longboat?  It's a brand new exhibit.  One of the museum's archeologists found it a year ago and it's finally ready and on display.  It dates back about a thousand years and is the only [italic type]drekar[roman type] ever found.  They were the largest of the Viking ships and feared by all.  I can certainly understand why you'd want to see it while you're here.  It's in the Medieval History wing.";
	now valhosp is 1;

Dinosaur Nest is a situation.
The sarea of Dinosaur Nest is "Museum";
Dinosaur Nest is resolved.		[unable to do this until activated]
nesteddino is a number that varies.
dinonest is a number that varies.
dnfightresult is a number that varies.
valhosp is a number that varies.

Instead of resolving a Dinosaur Nest:
	if nesteddino is 0:
		say "     Your search of the museum brings you to the dinosaur wing.  There, the great thunderlizards are on display.  You try to move quietly between the displays, trying to fulfill, perhaps foolishly, Dr Mouse's request for dinosaur hunting.  You move around, eventually find a large pile of junk in one corner that may be what you're looking for.  A mound of debris, tacky cushions, kitchy knick-knacks and old clothes have been build into a large nest.  You head over to it and start poking through it in the hopes of finding something.";
		let bonus be ( perception of player minus 10 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
		if bonus + dice is greater than 11:
			say "     As you shift aside some leisure suits and send a pile of mood rings scattering, you hear the steps of a large someone trying to move up on you quietly.  You jump aside just in time to avoid a swing from the angry triceratops woman.  'Now, honey, don't you know better than to invite yourself over to a lady's pad before dancin['] with her?' she asks as she strikes a pose before attacking again.";
		otherwise:
			decrease hp of player by 15;
			say "     As you shift aside some leisure suits and send a pile of mood rings scattering, you are struck firmly from behind and sent tumbling over into bean bag chair, taking 15 dmg!  As you pull yourself up, you find yourself looking at a large, angry triceratops woman.  'Now, honey, don't you know better than to invite yourself over to a lady's pad before dancin['] with her?' she asks as she strikes a pose before attacking again.";
	otherwise:
		say "     You make your way back to the dinosaur's nest to try and investigate it again.  Being more watchful, you notice her coming up as you move aside a box of Abba 8-tracks to find some yo-yos.  You turn away from her nest and prepare to fight the disco dino again.  'Lookin['] for another dance lesson, honey?' she asks.";
	now dinonest is 1;
	now dnfightresult is 0;		[default 0 = flee]
	challenge "Triceratops";
	now dinonest is 0;
	if dnfightresult is 0:		[flee]
		say "     Unable to deal with her at this time, you have fled the scene and will have to come back again later to search.";
	if dnfightresult is 2:		[lose]
		say "     Having bested you, you can only wait and recover before trying to search her nest again later.";
	if dnfightresult is 1:		[win]
		say "     Having bested the triceratops woman, you can finish searching her nest in the hopes of finding something to satisfy the mouse doctor.  You dig around in the her collection of old stuff, but don't see anything for some time.  Eventually, you instead smell something and soon track the scent to a lava lamp.  Unplugged, the glass lamp is off its stand and is coated in a wet sheen of fluids.  Guessing the strange creature has been using it for some improvised fun, you wrap it in a paisley shirt and pack it away.";
		say "     Lava lamp collected.";
		add "lava lamp" to invent of player;
		increase score by 10;
		now Dinosaur Nest is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"lava lamp"	"     Inside the paisley shirt, you see a rather sticky lava lamp."	3	lava lamp

lava lamp is a grab object.
it is part of the player.
It is not temporary.
lavalamplick is a number that varies.

instead of using lava lamp:
	if lavalamplick is 0:
		say "     You look at the improvised lava lamp dildo.  It smells strongly of the triceratops woman's arousing scent.  You find yourself tempted to lick it.  Do you follow your urge? (Y/N)";
		if the player consents:
			say "[line break]     Following the strange compulsion, you lick the lava lamp a few times, tasting the saurian's female juices on it, finding them quite arousing.  For a moment there, it's almost as if you can hear music.";
			now lavalamplick is 1;
			increase libido of player by 10;
			if libido of player > 100:
				now libido of player is 100;
			decrease humanity of player by 5;
			infect "Triceratops";
		otherwise:
			say "[line break]     Probably for the best that you don't do anything so foolish.  You'd best be careful if you're starting to get ideas like that.";
	otherwise:
		say "     You look at the improvised lava lamp dildo.  It smells strongly of the triceratops woman's arousing scent.  You find yourself considering licking it again, but bundle it back up.  If you lick it further, you may end up cleaning it off and Dr Mouse will be out of luck.";


Section 7 - Museum Quests - Nermine

Instead of conversing the Nermine while nerminepackage is 1 and Nerminetalk > 0:
	say "     'You are here helping the mousey doctor at the hospital?  Nermine will play along with game,' the jackal woman says with a playful tone.  'I have been awaiting to hear back from the mousey customer after his kitties upset the rats.  Not thinking they would come back.  I have the item he wanted, but am wanting something in return.'";
	say "     'At the museum, there is a [italic type]drekar[roman type].  Is a Viking longboat.  Only one ever found.  It is very big; too much to take, would not fit in store.  But masthead has gemstones and these have seen much of the world in their time.  Valuable to Nermine.  Get them for me and I will trade them for the pelt, little helper.'";
	now nerminepackage is 2;
	now Viking Longboat is unresolved;

Instead of conversing the Rod while nerminepackage > 0 and rodhosp is 0:
	say "     'Those big, spotted hairballs that rolled in here the other day?  That was a bad scene, dude.  They started to get fresh with some of the girls in the atrium and drag them off.  Well, we wouldn't put up with that.  Never try to force a mall rat from their mall, man.  We don't want none of them goons and their friends in here again.'";
	now rodhosp is 1;

Instead of conversing the Ronda while nerminepackage > 0 and rondahosp is 0:
	say "     'You asking about those macho hairball rejects from Shock Therapy?  Suzie and Anna were talking to them after they rolled in here like they owned the place.  Just a little playful flirting to tease their boys.  No harm in it.  But the kitties started getting fresh.  They offered them a ride in their swanky helicopter, which was tempting, but that'd mean leaving the mall, so the girls said [']No way['].'";
	say "     'Well, those kitty-litter heads didn't like that and started to get pushy about it.  By that point, their boyfriends had had enough and rallied the troops to deal with them.  That slutty vixen came running out of the store and the dude on her radio was squawking to know what was happening.  We kicked the lot of them out.  They came poking back once or twice, but they're not allowed to shop here anymore.  We told Bruno, he's security, on them and that crazy wolverine and a few of the boys sent them packing.'";
	now rondahosp is 1;

Viking Longboat is a situation.
The sarea of Viking Longboat is "Museum";
Viking Longboat is resolved.		[unable to do this until activated]
lbfight is a number that varies.
longboatfind is a number that varies.
rondahosp is a number that varies.
rodhosp is a number that varies.

Instead of resolving a Viking Longboat:
	if longboatfind is 0:
		say "     Travelling through the museum, you come to the exhibits dealing with the Middle Ages in Europe and its centerpiece, the Viking longboat.  It is a huge ship with a carven dragon at its prow and wooden shields and spears along each side.  It is on display in the center of the room, taking up most of the space in the large hall, with a velvet rope barrier around it.  You are about to hop the barrier when you realize that you need to find a way to scale the ship and get aboard.";
		say "     Looking around, you spot a tall ladder off to the side where finishing touches to this wing's new display were being made.  Grabbing it, you bring it over to the ship with greedy glee in your eyes.  You hop the red rope and start towards the ship, only to be halted by a loud call of 'Stop right there!'  You freeze and turn, finding yourself being approached by a big, hulking brute of fur and menace wearing a security guard's uniform.  You drop the ladder and prepare to defend yourself.";
		now longboatfind is 1;
	otherwise:
		say "     You make your way back to the Medieval History wing of the museum and approach the longboat again.  The moment you put one foot over the rope barrier, the security guard is growling and charging at you with menace in his eyes.";
	now lbfight is 1;
	now wolvfightresult is 0;		[default 0 = flee]
	challenge "Wolverine Guard";
	now lbfight is 0;
	if wolvfightresult is 0:		[flee]
		say "     Unable to deal with the maddened wolverine, you have fled the scene and will have to come back again later to get the gemstones.";
	if wolvfightresult is 2:		[lose]
		say "     Having been bested, you can only stagger off and recover before trying to get on the boat again later.";
	if wolvfightresult is 1:		[win]
		say "     Having bested the wolverine guard, you leave it passed out and quickly put the ladder alongside the huge ship.  You climb up and head to the masthead across the old, creaking ship.  The wood is incredibly old and you grit your teeth with every soft step you make, worried you'll break through the deck and fall.";
		say "     Reaching the bow of the ship, you are glad to find handholds in it, perhaps for a sailor to act as lookout.  It seems sturdier as well, thankfully.  You climb up carefully and manage to eventually pry out the green gems from the wooden dragon's eyes.  You climb back down and step back onto the deck just as the wooden masthead groans loudly and breaks from the ship.  The deck starts to crumble away as well even as you try to run for the ladder.";
		let bonus be ( dexterity of player minus 10 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
		if bonus + dice is greater than 18:
			say "     Nimbly dashing across the collapsing ship, you manage to make it to the ladder and slide down it, barely touching the rungs at all.  You drop the last five feet onto all fours as more ancient lumber rains down and the ladder sways.  You scramble back quickly away from the devastated relic until the dust settles.  You pull out the two green gems from your pack and look at them before tucking them away again.  You look over the heap and decide to grab a souvenir for yourself, swiping one of the spears from the ruined display to add to your arsenal.";
			say "     Spear added to inventory.  Stabby-stabby!";
			add "spear" to the invent of player;
			increase score by 20;
		otherwise:
			say "     You try to make it back to the ladder, but part of the floor gives out beneath you.  You fall through the deck, crashing through the bottom of the ship and falling to the ground.  Terrified of getting buried under the rain of ancient lumber that continues, you scramble away as fast as you can manage.  You fall panting in a heap, entangled by the velvet ropes as the last of it comes crashing down with a cloud of dust.  You get up unsteadily and pull out the green gems, hoping they're worth the many aches and bruises you now have.  (20 Dmg taken)";
			decrease hp of player by 20;
			increase score by 10;
		now nerminepackage is 3;
		now Viking Longboat is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"spear"	"A Viking spear retrieved from the museum.  It is in very good condition for its age."	4	spear

spear is an armament. It is part of the player. It has a weapon "[one of]your spear[or]the Viking spear[at random]". The weapon damage of spear is 8. The weapon type of spear is "Melee". It is not temporary.


Instead of conversing the Nermine while nerminepackage is 3:
	add "package" to invent of player;
	say "     'Have you been finding the dragon's eyes for Nermine?' she asks.  'Wonderful.  Most beautiful,' she says as she holds them up to the light and gazes through them.  'Even older than I thought, long before put on that ship.  Long history.  Nermine is very pleased to have these.  So much so I will give you some advice.'";
	say "     'White mousey doctor is wanting something from Nermine's shop.  People who want things from my store often get exactly what they were looking for.  Be careful with mousey doctor, not get hurt,' the jackal woman says.  'The item in the box is quite old, much of its strength has faded, but it still came from a powerful creature long ago.'";
	say "     The package for Dr Mouse has been obtained.";
	let spearfound be 0;
	repeat with x running through invent of player:
		if x is "spear", increase spearfound by 1;
	if spearfound is 1:
		say "     'And you appear to be most lucky, little helper,' she adds, taking note of the spear you have.  'That is spear of great Viking chief who commanded the boat.  A rare fine, such a thing,' she says with a little greed in her eye, as if trying to come up with a suitable trade to tempt it away from you.";
	increase score by 10;
	now nerminepackage is 4;

Table of Game Objects (continued)
name	desc	weight	object
"package"	"The sealed package for Doctor Mouse from Nermine's shop.  There are some Greek letters scrawled on one side, but you are unable read it."	5	package

package is a grab object.
it is part of the player.
It is not temporary.

instead of using package:
	say "     You ponder the old box, string-tied box in your hands, wondering what the doctor's receiving.";



[ Edit this to have the correct Name as well]
Hospital for FS ends here.