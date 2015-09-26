Version 5 of Hospital for FS by Stripes begins here.
[Version 5.1 - Hospital Quest 2 - Enhanced Chimera 'Reward']
"Adds a Hospital area with new monsters and a quest addition to Flexible Survival"
[Description text for this Extension.]


Section 1 - City Hospital

hospnav is a number that varies.
hospstairs is a number that varies.


City Hospital is a room. It is fasttravel.

The description of City Hospital is "     The exterior of the hospital is quite disheveled.  It seems like a large number of people were here when the outbreak started.  You can guess that several people, initially surprised by their changes, came to the hospital, leading to the rampant infection of everyone inside, patient and doctor alike.  You have to wonder if it is wise to investigate here further[if hospquest > 0].  But looking up at the hospital, you can see several rooms in one corner on the third floor are fully illuminated.  And not with the dim glow of the emergency lighting, nor the flicking flames of candles or fires, but the full, smooth light of electricity[end if].[line break]     Inside the lobby, there are further signs of the chaos of transformations while staff tried to figure out what was happening.  The waiting area is presently clear of people and creatures, through there is a lot of scattered clothes, as well as gurneys, crutches and other medical items.  In some cases, these are piled up in an attempt to barricade the doors.  It appears that searching will have another difficulty to it, as you won't be able to simply follow the hospital floor plans[if hospquest > 0] to that corner[end if].[line break]     From the shadows of one hall, you catch the glimpse of a strange, misshapen form before it slips further into the shadows of the hospital, away from the emergency lighting.  It moved quite unevenly on its two malformed legs.  Perhaps this place will be even more disturbing than the others you've searched before and you may want to rethink coming here.".

Hospital Halls is a door. "To the north are a pair of double-doors leading into the hospital.". It is dangerous. 

North of City Hospital is Hospital Halls.
North of Hospital Halls is Hospital interior.

The marea of Hospital Halls is "Hospital".

the scent of City Hospital is "The hospital smells predominantly of antiseptic, but beneath that is a layer of arousal and fear.".


Section 2 - Hospital Events


Hung Like A is a situation.
The sarea of Hung Like A is "Hospital".

Instead of resolving a Hung Like A:
	say "     You come across an examination room that has several patient charts tossed on a rumpled bed.  You glance over them quickly, finding them all mention cases of 'strange growths' and 'physiological anomalies' found in patients.  Those timestamped as the later ones even start commenting on the strange frequency of such occurrences the preliminary examiner's found that evening.  The last one talks about a patient with growing hair spreading over his body along with the stiffening of his fingers and nails.  It ends with the doctor's rough scrawls about the patient being hung like a horse, that it's so good and how she's letting him take her like his mare so she can properly test it.";
	increase score by 1;
	Now Hung Like A is resolved;


Pharmaceutical Storage is a situation.
The sarea of Pharmaceutical Storage is "Hospital".

Instead of resolving a Pharmaceutical Storage:
	say "     You manage to find the hospital's pharmaceutical storage room.  It has clearly been gone through already by someone, as the shelves are barren.  There are a few sticky stains and scattered bottles on the floor you carefully avoid stepping on.  Carefully, you poke through the remaining items to see if anything useful remains among the last scattered samples and bottles.";
	say "[drugsearch]";
	say "[drugsearch]";
	say "[drugsearch]";
	increase hospnav by 1;
	say "[hospprogress]";
	increase score by 5;
	now Pharmaceutical Storage is resolved;

to say drugsearch:
	let T be a random number between 1 and 13;
	if T is 1:
		say "     You find a medkit.";
		increase carried of medkit by 1;
	if T is 2 or T is 3:
		say "     You find some parts for a medkit among the scattered mess.  Maybe someone could put them together?";
		increase hasparts by 1;
	if T is 4:
		say "     You find a testosterone pill still in the sample pack.";
		increase carried of testosterone pill by 1;
	if T is 5:
		say "     You find an estrogen pill still in the sample pack.";
		increase carried of estrogen pill by 1;
	if T is 6:
		say "     You find an odd pill labelled as being [']estosterogen['] still in its sample pack.";
		increase carried of estosterogen pill by 1;
	if T is 7:
		say "     You find a cock pill still in the sample pack.";
		increase carried of cock pill by 1;
	if T is 8:
		say "     You find a birth control pill still in the sample pack.";
		increase carried of birth control pill by 1;
	if T is 9:
		say "     You find a fertility enhancement pill still in the sample pack.";
		increase carried of fertile pill by 1;
	if T is 10:
		say "     You find a novelty sex-aid pill.";
		increase carried of libido pill by 1;
	if T is 11 or T is 12:
		say "     You find a small syringe with clear, blue fluid in it and labelled as a [']healing booster['].";
		increase carried of healing booster by 1;
	if T is 13:
		say "     You find a small syringe with cloudy, orange fluid in it and labelled as a [']libido suppressant['].";
		increase carried of libido suppressant by 1;


Ambulance Dock is a situation.
The sarea of Ambulance Dock is "Hospital".

Instead of resolving a Ambulance Dock:
	say "     Most of the ambulances are out of the special parking entrance.  The only one here has been crashed into the dock.  Stepping over to it, you look in the open back.  Unsurprisingly, there is a huge, sticky mess in there.  Presumably the last patient they picked up jumped the response team for sex as they were returning to the hospital.  You consider searching in there for something that could still be usable, but it seems like a risky venture.  Do you proceed? (Y/N)";
	if the player consents:
		if a random chance of 2 in 3 succeeds:
			say "     You have a little luck while searching, managing to find a partially salvageable medkit from the mess.  It's only partially complete and will need some more parts to be usable.  Maybe someone could put them together?  Your search did unfortunately get quite a bit of that cum on you though.";
			increase hasparts by 1;
		otherwise:
			say "     You are successfully able to retrieve a medical kit from the mess.  Having been covered by the shock blanket before the fluids started flying, it is undamaged and still usable.  What luck!  Your search did unfortunately get quite a bit of that cum on you though.";
		weakrandominfect;				[random infection, followed by same infection]
		infect;
	otherwise:
		say "     You opt to play it safe and continue your search elsewhere.";
	increase hospnav by 1;
	say "[hospprogress]";
	increase score by 1;
	now Ambulance Dock is resolved;


Operating Room is a situation.
The sarea of Operating Room is "Hospital".

Instead of resolving a Operating Room:
	say "     As you are about to turn a corner, you spot a team of several jaguar orderlies marching down the hall towards you.  You duck back quickly before they spot you and dive quietly into the nearest room.  As you wait quietly around the edge of the door, you can see that this is one of the hospital's operating rooms.  Once you hear the group head past and continue on, you let out a sigh of relief and decide to search the room while you're here.";
	say "     It's clear there was some chaos in here, with overturned tables and surgical tools scattered across the floor.  Along with this are several sets of surgical scrubs and piles of clothing, much of it messy with stick fluids.  You steer clear of them and check the patient's chart, finding notes about exploratory surgery on an unusual and rapidly forming growth.  Clearly another case of a transforming patient gone amuck on the unprepared medical staff.";
	say "     You do have some good fortune though and spot a bonesaw on the floor.  You pick it up and add it to your arsenal.  As you slip out the back into the doctor's prep room, you find an exit that leads around one of the barricades, enabling you to get around more of the hospital.";
	say "     Bonesaw obtained.  Time to operate!";
	increase carried of bonesaw by 1;
	increase hospnav by 1;
	say "[hospprogress]";
	increase score by 5;
	now Operating Room is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"bonesaw"	"A stainless steel bonesaw used for medical procedures.  A little unwieldy, but sharp."	3	bonesaw

bonesaw is an armament. It is part of the player. It has a weapon "[one of]the bonesaw[or]your bonesaw[or]your medical blade[or]the stainless steel saw[at random]". The weapon damage of bonesaw is 6. The weapon type of bonesaw is "Melee". It is not temporary.  The objsize of bonesaw is 2.

the scent of the bonesaw is "The bonesaw smells faintly of antiseptic and blood.".


Staff Lounge is a situation.
The sarea of Staff Lounge is "Hospital".
when play begins:
	add Staff Lounge to badspots of guy;
	add Staff Lounge to badspots of furry;

Instead of resolving a Staff Lounge:
	say "     In one corner of the hospital, you come across a lounge for the staff.  Taking a glance inside, you find it unoccupied and go in to search.  There are a few chairs and couches, but it seems like some of the staff have used them for [']recreation['] recently.  Not wanting to run into a couple of them sneaking in here for more fun, you confine yourself to a quick search of the room.  Without power, the food in the fridge has gone bad, but you do manage to find an unopened bottle of water.";
	say "     Bottle of water obtained.";
	increase carried of water bottle by 1;
	say "     As you are about to head out, you bump into a girlish raccoon in a pink dress, carrying a large dildo in one paw.  It seems someone did come for a little fun in the break room.";
	challenge "Raccoon";
	say "     Your encounter with the boytoy raccoon over, you leave the lounge to continue your search.";
	increase score by 1;
	now Staff Lounge is resolved;


Interruption is a situation.
The sarea of Interruption is "Hospital".

Instead of resolving a Interruption:
	say "     While moving through the halls of the hospital, you poke into the patient rooms on each side, taking a quick glance for anything of interest.  At one, you are surprised to find a large jaguar with one of the vixen nurses in his lap, riding his hard cock.  He starts to growl and rise as he notices you, but the nurse, not seeing you, rides him harder and gives him a lustful kiss.  He purrrumbles as he settles back down, eyes closed as they kiss.  You decide to slip quietly back out of the room to leave the couple to their fun.";
	increase score by 1;
	now Interruption is resolved;


Maternity Ward is a situation.
The sarea of Maternity Ward is "Hospital".

Instead of resolving a Maternity Ward:
	say "     Reaching the hospital's maternity ward, you suppress a shudder and morbidly take a look in to see what has become of it.  Inside you find the place busy with vixen nurses.  Several are tending to the bassinets while a few others are nurse feeding little foxcub babies.  The staff dutifully tend over the cubs, cooing and playing with them happily.  You turn and quietly leave, unsure if you are disturbed by the scene inside or relieved that it was not as you feared within.";
	if hp of Doctor Medea is 3:
		say "     During your quick peek, you did note that the items of medical equipment Dr. Medea mentioned did not seem to be in there, saving you from having to go in and deal with the large group vixen nurses inside the ward.  It seems like you'll have to look elsewhere in the hospital though.";
		increase score by 4;
	if mlamiamet is true:
		say "     As you're leaving, you hear a familiar voice behind you.  'Oh, did you come here looking for me?' the creamy voice says as the door behind you opens and shuts.  Turning, you see it to be the white-scaled lamia you encountered before.  Her smile becomes briefly skewed as she struggles to close up her overstuffed nurse's outfit, her many nipples wet with milk.  It's easy to surmise that she does a lot of the wet nursing for the mutant offspring.  'It's so nice of you to come visit me at work.  It makes me all warm and happy inside to know you care.  Come, give me a hug,' she says playfully.";
		challenge "Lamia";
	increase hospnav by 1;
	say "[hospprogress]";
	increase score by 1;
	now Maternity Ward is resolved;


Radiology is a situation.  The level of Radiology is 5.
The sarea of Radiology is "Hospital".
when play begins:
	add Radiology to badspots of girl;
	add Radiology to badspots of guy;
	add Radiology to badspots of hermaphrodite;
	add Radiology to badspots of furry;

Instead of resolving a Radiology:
	say "     The radiology department, where the x-rays are taken, seems to have had recent use.  There are several fresh x-rays showing images of the altered physiology of transformees.  While some seem to have been taken during partial transformation, most are of completed changes.  Many are arranged out on the illuminated viewers with annotations marked on.  Most are circles or arrows marking key points with a red wax pencil, but others contain medical jargon about the bones or joints being changed.  Briefly distracted by all this, you don't hear the sound of approaching footsteps until it's too late and one of the hospital's creatures steps in.";
	if coonstatus is 0:
		say "[hospfight1]";
	otherwise:
		say "[hospfight2]";
	say "     After your confrontation with the creature, you leave the room, worried that more will be drawn by the noise.  You do find a back door out, letting you slip into another section of the hospital.";
	increase hospnav by 1;
	say "[hospprogress]";
	increase score by 1;
	now Radiology is resolved;


to say hospfight1:		[staff fight]
	let T be a random number between 1 and 7;
	if T is 1:
		challenge "Raccoon";
	if T is 2:
		challenge "Fluffy Owl";
	if T is 3 or T is 4:
		challenge "Vixen Nurse";
	if T is 5 or T is 6:
		if hospquest < 19 and hp of Doctor Matt < 19:
			challenge "Mismatched Chimera";
		otherwise:
			challenge "Enhanced Chimera";
	if T is 7:
		challenge "Jaguar";


to say hospfight2:		[prevents duplicate of raccoon, who is a unique individual]
	let T be a random number between 1 and 5;
	if T is 1:
		challenge "Fluffy Owl";
	if T is 2 or T is 3:
		challenge "Vixen Nurse";
	if T is 4:
		if hospquest < 19 and hp of Doctor Matt < 19:
			challenge "Mismatched Chimera";
		otherwise:
			challenge "Enhanced Chimera";
	if T is 5 or T is 6:
		challenge "Jaguar";


to say hospfight3:		[no Raccoon, Psycho Weasel instead... generic fight]
	let T be a random number between 1 and 7;
	if T is 1:
		challenge "Psycho Weasel";
	if T is 2:
		challenge "Fluffy Owl";
	if T is 3 or T is 4:
		challenge "Vixen Nurse";
	if T is 5 or T is 6:
		if hospquest < 19 and hp of Doctor Matt < 19:
			challenge "Mismatched Chimera";
		otherwise:
			challenge "Enhanced Chimera";
	if T is 7:
		challenge "Jaguar";


to say hospfight4:		[no Raccoon, flags handled internally]
	let T be a list of numbers;
	if guy is not banned:
		add 1 to T;		[Psycho Weasel]
		add 2 to T;		[Jaguar]
	if girl is not banned:
		add 3 to T;		[Fluffy Owl]
		add 4 to T;		[Vixen Nurse]
		add 4 to T;		[Vixen Nurse]
	if hermaphrodite is not banned:
		add 5 to T;		[Mismatched Chimera]
		add 5 to T;		[Mismatched Chimera]
	sort T in random order;
	if entry 1 of T is 1, challenge "Psycho Weasel";
	if entry 1 of T is 2, challenge "Jaguar";
	if entry 1 of T is 3, challenge "Fluffy Owl";
	if entry 1 of T is 4, challenge "Vixen Nurse";
	if entry 1 of T is 5:
		if hospquest < 19 and hp of Doctor Matt < 19:
			challenge "Mismatched Chimera";
		otherwise:
			challenge "Enhanced Chimera";


Pathology is a situation.  The level of Pathology is 5.
The sarea of Pathology is "Hospital".
when play begins:
	add Pathology to badspots of girl;
	add Pathology to badspots of guy;
	add Pathology to badspots of hermaphrodite;
	add Pathology to badspots of furry;

Instead of resolving a Pathology:
	say "     Hearing the sound of footsteps and talking approaching, you slip through a nearby door.  Inside you find yourself in a medical lab.  The room, unlike many of the others has been kept clean and seems largely undisturbed by the events which have struck the hospital.  Curious, you are about to look around further when the door opens and in strides the two creatures.  You seem to have inadvertently hidden yourself at their destination.  The first charges at you while the other, laden with several test tubes and samples, moves to set its burden down first.";
	if coonstatus is 0:
		say "[hospfight1]";
	otherwise:
		say "[hospfight2]";
	say "     Just having finished with the first, the second monster now moves up to have a go at you.";
	say "[hospfight2]";
	say "     After the confrontation with the pair of creatures, you leave the room, only noticing then that the room you were in was marked as 'Pathology'.  You feel a little quiver in your stomach.  Did you catch something in there, or was that just from worry?  As you try to convince yourself that you couldn't be feeling sick after such a short amount of time, you notice that a door around the corner is ajar.  This hallway, once locked, was opened by the creatures as they passed through it and is now another path you can use to explore the hospital.";
	increase hospnav by 1;
	say "[hospprogress]";
	increase score by 1;
	now Pathology is resolved;


Cafeteria is a situation.
The sarea of Cafeteria is "Hospital".

Instead of resolving a Cafeteria:
	say "     As you are passing through the dark halls of the hospital, you can hear quite a bit of noise from down one hall.  Approaching cautiously, you glance down and see leads to a pair of doors marked 'Cafeteria'.  You approach cautiously, glancing between the doors and the hall behind you.  At the doors, you peek through the window and see quite a few of the hospital's animal staff inside.";
	say "     Behind the food counter, an obviously herm raccoon lunchlady is fucking one of her assistants, a breasty cowgirl.  Some of the cowgirl's milk leaks from her teat-like nipples onto the food spread out, not that the creatures in line seem to mind.  If anything, they only end up taking more from that pile of glop.";
	say "     At the tables are several others, mainly vixen nurses and jaguar orderlies, though there are a few other creatures mixed in as well.  Some of the patrons are eating their food peaceably while others are slaking their appetite for sex.  Several of the vixens are being boned roughly by the jaguars.  At one table, one vixen is spread out while several furs lick, kiss or suck at her erogenous zones, much to her delight.  Another table has a rare female jaguar sitting on the table while two of the males nurse from her breasts and play with her pussy.";
	if humanity of player < 30 or libido of player > 50:
		say "     The sight of this decadent meal is quite alluring, but you do manage to draw yourself away before giving in.  With so many in there, you doubt you would emerge with your identity intact.";
	otherwise:
		say "     You turn away from the decadent meal and move back down the hall quietly, eager to get some distance between you and such a large group of creatures.";
	increase score by 1;
	now Cafeteria is resolved;


Chaplaincy is a situation.
The sarea of Chaplaincy is "Hospital".

instead of resolving Chaplaincy:
	say "     You find yourself in front of the hospital's Chaplaincy, there for the spiritual well-being of patients and family members.  Glancing around, you decide to slip inside and have a look around, briefly hoping things will be a little better in here.  Sadly, that is not the case and there are signs of several lustful outbursts in here just as everywhere else.  You even spot the torn remains of the clergyman's suit and clerical collar, as messy as the other piles of cum-laden clothes.  You spot several small vials nearby labelled [']libido suppressant['], most of them empty, though one still remains unused.  In the end, he must have decided to give into his urges rather than keep denying them.  You pick it up and store it away.  Perhaps it will be useful for you in a moment of need.";
	increase carried of libido suppressant by 1;
	increase score by 5;
	now Chaplaincy is resolved;


Records Room is a situation.  The level of Records Room is 5.
The sarea of Records Room is "Hospital".
when play begins:
	add Radiology to badspots of girl;
	add Radiology to badspots of guy;
	add Radiology to badspots of hermaphrodite;
	add Radiology to badspots of furry;

instead of resolving Records Room:
	say "     You come across the hospital's records room, where all the patient files are stored.  It is tightly packed with ceiling high filing cabinets and shelves.  There are a few files set out that seem to have been recently updated to include post-infection data, making you wonder who's still performing medical tests at the hospital.  Setting them aside, you move around the room, searching for anything of use and almost bump into a creature as it emerges from a door to another filing room.";
	if coonstatus is 0:
		say "[hospfight1]";
	otherwise:
		say "[hospfight3]";
	say "     After your encounter with the creature, you turn to leave the records room before any others come to check on the noise.  As you make your way to the door, you spot a syringe of orange liquid on a desk.  It is labeled as [']libido suppressant['], possibly left behind by whoever was trying to focus on their records work.";
	increase carried of libido suppressant by 1;
	increase score by 5;
	now Records Room is resolved;


Surrounding Area is a situation.
The sarea of Surrounding Area is "Hospital".

instead of resolving Surrounding Area:
	say "     Deciding to take a some time to check out the neighbourhood around the hospital, you proceed away from the large building and into the nearby residential area.  As you cautiously move around the houses, a few things stand out right away.  The doors to the homes are open or are broken into.  A closer examination shows splintered wood, ripped hinges and broken glass, often with heavy claw marks as well.  But far more telling is the fact that it is far too quiet.  The city certainly isn't as noisy as it used to be, but there's usually some sounds of activity from time to time.  Be it some more peaceful mutants skulking around, weaker creatures fleeing from your approach or the noises of conflict and/or sex (for it's often hard to tell the two apart these days), there is usually some background sounds, but not here.  It becomes increasingly disconcerting for you.";
	say "     As you continue to scout the area out, you consider slipping into one of the homes.  Just as you're about to step into the open and head for the open door, a trio of those jaguar orderlies come into view as they turn a corner.  They seem to be on patrol in the area, looking around very intently.  You slip further into the shadows and wait for them to pass before leaving the neighbourhood.  It seems the orderlies are still scouring the area for any survivors they can grab and you'd rather not risk being caught by them.";
	now Surrounding Area is resolved;


Stairwell is a situation.
The sarea of Stairwell is "Hospital".

Instead of resolving a Stairwell:
	if a random chance of 1 in 2 succeeds:
		say "     You manage to reach one to the stairwells, but find the door blocked and unable to open.  Glancing through the small window, you see that it's been barricaded from the inside as well as jammed with a heavy metal bar.  You will have to continue searching to find another way to the upper floors.";
	otherwise:
		say "     In a far corner of the hospital, you come to one of the stairwells and find the door stuck half-open.  There are several large and heavy items scattered behind it, including the overturned gurney which is keeping the door open.  From the mess of clothes and sticky stains among the mess, it looks like some people were trying to barricade the door, but the creatures forced their way in before the job could be completed.  You are able to slip through the mess and go up the stairs to explore the upper rooms.";
		increase hospstairs by 1;
		say "[hospprogress]";
		increase score by 5;
		now Stairwell is resolved;


Missing Powder is a situation. [Added by Blue Bishop]
the sarea of Missing Powder is "Hospital".

instead of resolving Missing Powder:
	say "     You manage to find a small, currently unoccupied patient room. It's unremarkable, save for a small bag with a note laying near it. Picking up the item, you read the note.";
	say "     [italic type]'Bring this shipment we got from the Warehouse District to the doctor. We figure he'll find it useful. If you screw this up again the only packages you'll be handling will be on the far end of some nameless horror's dick!'[roman type] The note appears to be slightly ruined, partially covered in the dry stain of some dubious fluid...";
	say "     Checking the bag, it appears to have a couple smaller bags containing a strange, white powder. Very carefully inspecting the contents, it doesn't appear to be anything illicit or infectious, though it does tingle slightly against your touch. You decide to take the bags along with you, for now.";
	add "nullifying powder" to invent of player;
	add "nullifying powder" to invent of player;
	now Missing Powder is resolved;

Section 3 - Helper Dog Event & Pet

[Helper Dog moved to Hobo file]

Section 4 - The Hidden Lab & Dr Mouse

An everyturn rule:
	if hospquest is 0 and hp of doctor matt > 7:	[Not started hospital quest & found susan (regardless of outcome) _or_ Dr Matt is only a recording]
		increase hospcountdown by 1;
		if hospcountdown >= 8 and skipturnblocker is 0:				[Will activate 'random' event in 8 turns]
			say "     You hear an unusual, loud noise and reflexively take cover, peeking out from a window.  As you watch, you can see some large jaguar men in hospital scrubs carrying an insensate husky girl.  They seem to be led by a silver-furred vixen in a nurse's uniform as she directs them to put her in the ambulance helicopter, the source of the unusual noise in the otherwise quiet city.  'Perhaps this bears looking into further,' you think as you watch it head off in the direction of the city hospital.";
			extend game by 4;
			increase score by 10;
			attempttowait;
			now hospquest is 1;
			now Finding a Way in is unresolved;


Locked stairwell is a door. "Off to one side are a pair of heavy, metal doors leading to a stairwell."
Locked stairwell is lockable and locked.
Locked stairwell is up of City Hospital.
The description of Locked stairwell is "Off to one side are a pair of heavy, metal doors leading to a stairwell."

Up of Locked stairwell is Hidden Lab

The description of Hidden Lab is "     Part of the hospital testing labs have been converted to be used by the white mouse to work on his analysis of the nanite infection.  The short fellow has set up several small experiments that are running, likely analyzing some of the biological changes caused by the nanites.  These are on the lab tables in the room while the mouse scurries around between them, occasionally having to climb up onto one of the stools to do his work.[line break]     Part of the room has been cleared out to make space for a small cot and collection of supplies.  The cot doesn't look like it's been used recently and the food supplies are in disarray.  The mouse is probably just grabbing a snack when he remembers to eat, being so focused on his work.[line break]     Off to one side of the room are a pair of collared and chained hybrids, a duo of those mismatched, patchwork chimeras.  They have water and food dishes, as well as a small chemical toilet within reach of their tethers.  At the moment, they are [one of]fucking[or]laying down[or]kissing[or]fondling one another[or]sleeping[or]eating[or]drinking[or]masturbating[at random].".

the scent of the Hidden Lab is "The doctor's lab smells primarily of the chemicals and samples from his experiments, but this only partially masks the scents of sex from his chained chimeras.".

The invent of Hidden Lab is { "nullifying powder" }.

[Message indicating progress]
to say hospprogress:
	if hospquest is 1:	[search still active]
		say "[line break]";
		if hospnav is 1:
			say "     You are starting to learn your way around the hospital and are able to access more of it.  You are making progress.";
		if hospnav is 2:
			say "     You are figuring out how to get around in here better and better now that you've gotten to reach more landmarks.  You still don't think you'll be able to reach that upper corner, though.  Best keep at it.";
		if hospnav > 2:
			say "     You have gotten quite good at circumventing the blocked rooms and fire doors in the hospital and should be able to get to most places";
			if hospstairs is 0:
				say ", but you still need to find a way to get upstairs if you're going to get into those rooms.  You should look around for an accessible [bold type]stairwell[roman type].";
			if hospstairs is 1:
				say ".  Between that and the open stairwell you've found to get upstairs, you should now be successful at [bold type]finding a way in[roman type] to reach those illuminated upper rooms with a little searching.";


Finding a Way in is a situation.
Finding a Way in is resolved.		[unable to do this until activated]
The sarea of Finding a Way in is "Hospital".


Instead of resolving a Finding a Way in:
	if hospnav > 2 and hospstairs > 0:		[at least 4 waypoints and the stairs up]
		say "     After taking many twists and turns through the hospital, you manage to find you way up several stories and over to the lit area.  There you pass by the operating theater and head down the hallway towards the door at the end.  It is partially open and light flows from it.  You approach cautiously, listening intently, but there is little sound coming from the room, labeled as [']Testing Labs['].";
		say "[meetdrmouse]";
		say "[line break]";
		now the player is in Hidden Lab;
		now locked stairwell is unlocked;
		now Finding a Way in is resolved;
		now battleground is "void";		[prevents a post-event fight]
	otherwise:
		say "     You continue searching the hospital, but are unable to find your way through, reaching another dead end.  It seems you will have to continue to explore the hospital further to learn your way around.";


Doctor Mouse is a person. Doctor Mouse is in Hidden Lab.
lastDrMousefucked is a number that varies.  lastDrMousefucked is usually 500.
understand "Mouse" as Doctor Mouse.
understand "Dr Mouse" as Doctor Mouse.
Doctor Mouse has a number called progress.

The description of Doctor Mouse is "     Dr Mouse is a small, white mouse with red eyes and a pink nose and ears.  He's only about three feet tall, and that's to the top of his ears.  He's dressed in a white labcoat that goes almost to the floor with his rodent-like feet and thin tail poking out from underneath it.  He is busily working away in the lab, always scurrying about for equipment or checking on one of his many experiments.".
The icon of Doctor Mouse is the figure of DrMouse_icon.

The conversation of Doctor Mouse is { "Squeak!" }.

the scent of Doctor Mouse is "The small lab mouse looks at you sternly as you sniff him.  He smells of mouse, chemicals and sleepless nights in the lab.".

the linkaction of Doctor Mouse is "Possible Actions: [link]talk[as]talk Doctor Mouse[end link], [link]smell[as]smell Doctor Mouse[end link], [link]fuck[as]fuck Doctor Mouse[end link][if hospquest >= 14], [link]volunteer[end link][end if][line break]";


to say meetdrmouse:
	say "     Unable to see more than a few work tables and testing equipment, you slip through the open door to get a better look.  Inside is more of the same, through part of the room has been cleared away.  Some of it seems to be in active use, with several beakers simmering over burners or sitting on running auto-stirrers.";
	say "     You start to take another slow step into the room when a noise to one side startles you.  There is a pair of those mismatched chimeras in here.  They moan lustfully and try to crawl towards you, but are held back by collars around their necks.  They are chained to a workbench in the far corner.";
	attempttowait;
	project the figure of DrMouse_icon;
	say "     You breathe a sigh of relief and turn back to the room, startled again by the sight of a white mouse poking his large head up over one of the tables.  This creature stares at you with blood red eyes as you are both frozen in surprise.  You start to raise your weapon slowly, but the mouse smiles happily and claps his hands together with glee.";
	attempttowait;
	say "     'This is such an unexpected surprise.  Do please come in.  The creatures of this hospital rarely provide good company.'  As the mouse moves around the work table, you can see his head barely clears it at all, only about three feet tall at the ears.  He grabs a wooden stool and pulls it over, scraping it across the floor.  As he climbs up to get a seat, he adds, 'you should call me Doctor Mouse, I guess.  A new name for a new me,' he chuckles as he scrambles into the seat with some effort and motions for you to pull one up as well.";
	say "     'I'm quite surprised you made it up here.  It's quite a mess downstairs and the creatures stop anyone from venturing in.  You should tell me what is happening out in the city.  I've not been able to leave here since the infection struck.  Far too dangerous for a little guy like me out there.  And so much to do here, studying the nanite infection.  It has such a capacity for healing.'  He starts to babble a little, perhaps from being isolated in here.";
	attempttowait;
	if scenario is "Researcher":
		say "     'The cause of all this are nanites of some unknown origin.  I bet you didn't know that.  Huh?  You did?  Most peculiar.  How did you come to discover this?  Ah, I see.  You are a researcher, not unlike myself.  Though, I guess I don't look much like one, despite my lab coat,' he titters a little, whiskers all atwitch.  'You do seem more a collector than an actual scientist though.  Paid to gather samples, are you?  Well still, even your limited expertise will be most welcome.";
	otherwise if hp of doctor matt is 100:
		say "     'The cause of all this are nanites of some unknown origin.  I bet you didn't know that.  Nanites are microscopic machines.  These little buggers are smaller than a red blood cell and they are altering people's bodies according to whatever whimsy their programming is telling them to do at any given moment.  There are a variety of strains, as you have no doubt seen.  Most strains are in conflict with one another, though some appear to be able to live in symbiosis.";
		say "     Almost universally, the nanites alter their hosts form and push them with increased sexual growth and carnal desires, most likely to further spread that nanite strain.  There have also been a wide range of, for lack of a better term, evolutionary traits that the nanites introduce to increase their host's potential success in this regard.  Universally though, the nanites bring with them an increased rate of healing.";
	otherwise:
		say "     'The cause of all this are nanites of some unknown origin.  I bet you didn't know that.  Huh?  You did?  Most peculiar.  How did you come to discover this?  You don't look like a scientist.  Though, I guess I don't look much like one, despite my lab coat,' he titters a little, whiskers all atwitch.";
		say "     You start to tell him that you have met another scientist in the city who's been trying to deal with the nanites and find a way to eradicate them.  'Oh no, that won't do at all,' Dr Mouse exclaims.  'That would be most unfortunate.  The nanites are what's keeping many of their hosts, the people out there, alive right now.";
	attempttowait;
	say "     'The nanites are constantly at work, making adjustments and repairs to their hosts.  If they are injured, the nanites speed the recovery.  You have probably noticed it in yourself.  It is quite evident in them,' he says, pointing to the pair of chimera, who have taken to mating with one another now that it's become clear that they won't get to play with the new arrival.";
	say "     'The human body, or any living organism for that matter, is a well-crafted and balanced machine that took millions of years to create and perfect.  And humans are far from perfect machines even now.  We break down.  We age.  Our bodies fail us.  For example, there is a constant balance maintained in the blood of salinity, pH, oxygenation, nutrients, hormones and so forth.  Changes to any of these may improve function somewhere, but severely harm it elsewhere, even fatally so.  But everything is interconnected and works as a whole.";
	say "     'Once you start changing things around and reprogramming how we're constructed, that delicate balance gets thrown off.  I'm quite certain that the nanites, by constantly working and repairing their hosts, are keeping them from experiencing the deleterious effects of their body's changes.  I fear, if they were somehow removed or shut down suddenly, many of the hosts would no longer be able to sustain themselves.  Or at least at this stage of development, perhaps.  It's hard to say.  So much of this is based off observational assumptions.  I need more hard data,' he says, striking the table with a weak thud.";
	attempttowait;
	say "     'And that's why I need to continue my research.  I need to learn more about the nanites, how they are changing their hosts and the capacity of their healing factor.'  He smiles up at you, twitching his whiskers.  'And that is why I am so glad to see you.  I am in need of more equipment to analyze the nanites.'  He waves to his lab.  'I have a wide array of medical equipment here, but the nanites are machines and there are limits to what I can discover about them with it.";
	say "     'You seem very resourceful and may be able to find a device I need to further my analysis.  While I have been able to learn much from working on them,' he says, waving off-handedly at the noisily mating pair, 'I have carried that research about as far as I can and need to move in a new direction to learn more.'";
	say "     Doctor Mouse tells you about the kind of scientific device he is looking for and describes its appearance in detail, as well as gives you a crude drawing for reference.  He pushes it into your hands and babbles something about some kind of reward for you and adds that the stairwell to his lab will be unlocked for you[if Outside Trevor Labs is known].  You look it over and think to yourself that you may be able to find one at Trevor Labs easily enough[end if].";
	wait for any key;
	now hospquest is 2;
	increase score by 25;


Instead of conversing the Doctor Mouse:
	if hospquest is 0:
		say "ERROR 0:     'My dear boy/girl, I don't believe you should be here yet.'";
	otherwise if hospquest is 1:
		say "ERROR 1:     'My dear boy/girl, I don't believe you should be here yet.'";
	if hospquest is 2:
		say "     The white mouse looks up from his work.  'I need you to find that device for me.  Significant portions of my research are at a standstill without it.  Please try searching within other labs in the city.'";
	if hospquest is 3:
		if scientific device is not owned:
			say "     'What do you mean you found the device but haven't brought it with you?  What fools I have to wo...'  He sighs and rubs his brow.  'Please, I need you to go back where you left it and get it for me.'";
		otherwise:
			say "     'Yes!  That is it,' Doctor Mouse says as he hops down from his stool to grab for it before thinking better of it.  'Uh, would you be so kind as to put it over there for me?' he asks, pointing to an open spot on the central work area.";
			say "[hospquestpt2]";
	if hospquest is 4:
		if girl is banned or guy is banned or furry is banned or hermaphrodite is banned:
			say "     'I had hoped to obtain some samples, but the creatures cannot be located.  I don't have anything further for you,' the mouse says, shaking his head.";
			say "     (Unable to proceed with current creature blocks.  Girl, guy, herm and furry are all needed for subsequent segments.)";
		otherwise if progress of doctor mouse minus turns is less than 8:
			say "     'Please leave me to my research for the moment.  I believe I shall have more need for you once I am done,' Doctor Mouse says as he waves you off dismissively while standing one of the lab stools to use one of the microscopes to examine a sample.";
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
	otherwise if hospquest is 9:
		say "[hospquestpt8]";
	otherwise if hospquest is 10:
		say "[hospquestpt9]";
	otherwise if hospquest is 12:
		say "ERROR 12:     'My dear boy/girl, I don't believe you should be able to get here right now.";
	otherwise if hospquest is 13:
		say "ERROR 13:     'My dear boy/girl, I don't believe you should be able to get back here.'";
	otherwise if hospquest is 14 or hospquest is 15:
		say "[hospquestpt11]";
	otherwise if hospquest is 16:
		say "     'Please proceed to the Zephyr location and make the exchange for the data.'";
	otherwise if hospquest is 17:
		say "     'I need you to finish that wretched task for Zephyr.'";
	otherwise if hospquest is 18:
		say "[hospquestpt12]";
	otherwise if hospquest is 19:
		say "     'Good job in taking care of that.  I have much to work on now.'";
		say "((Hospital Quest 2 ends here for now.))";


Section 5 - Dr Mouse's Quests

[	hospquest values        ]
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
[	10 Coon+proposal		]
[	11 Accepted proposal	]
[	12 Met w/Dr Matt		]
[	13 Chose Dr Matt - stop	]
[	14 Chose Dr Mouse		]
[	Hospital Quest 2		]
[	15 Mapping task			]
[	16 To Zephyr			]
[	17 NMD task				]
[	18 NMD completed		]
[	19 Enhanced Chimeras	]


hospquest is a number that varies.
hospcountdown is a number that varies.
nerminepackage is a number that varies.
sabtoothed is a number that varies.
triclamped is a number that varies.
nerminepackagematt is a number that varies.
sabtoothedmatt is a number that varies.
triclampedmatt is a number that varies.
hospbattlelost is a number that varies.
ec_fullcount is a number that varies.

instead of going to 2F Trevor Labs while hospquest is 2:		[Examining other labs]
	now the player is in 2F Trevor Labs;
	say "     You examine the other labs first, hoping to find one of the machines not in use, but have no luck.  You'll have to see if there is one in the primary lab.";

instead of going to Primary Lab while hospquest is 2:			[Searching the main lab]
	now the player is in Primary Lab;
	if hp of doctor matt is 100:						[recording]
		say "     You look around the lab and quickly find the VCR-sized device.  You unhook it and carry it off with you.  It is somewhat heavy though.  Better be worth it.";
	otherwise:									[physically there]
		say "     You take a look around the room and soon spot something that looks like the piece of equipment that the mouse described.  As you are looking it over to make sure it's the right one, Dr Matt notices your interest in it.  'I'm not really using that thing any more.  My research has progressed past that point.  So you can clear it out for me to make space, but why are you interested in it at all?  I'm not even sure you could understand how it works, let alone how to use it.  Do you explain? (Y/N)";
		if the player consents:
			say "     As you explain to Dr Matt about the strange state of the hospital and the mouse doctor working away deep inside, Dr Matt listens with increasing attention and some concern.  'This is quite unexpected.  You have found another person in the city searching into the mysteries of the nanite infection, but through a different avenue of research.  And using the infected as test subjected is...' he coughs as he notices the stern look you [if susan is visible]and Susan [end if]give him.  'That is, possibly using them as unwilling test subjects in such surgical experiments.  Most disturbing and unethical, even in such a crisis.'";
			say "     'I suggest you take that device to this Dr Mouse individual.  It will further ingratiate you to him and allow you to find out more about what's going on at the hospital.  Hopefully, I am wrong about my concerns and this doctor may be of help to us.  As well, we do need to know if his concerns about the nanites are valid.";
			say "     As he turns back to his work bench while you unhook the device, you hear him mumble, 'And perhaps I can get my volunteer to obtain his research so I may advance my own.' He gets back to his work with increased vigour.  Maybe the thought of competition is spurring him on.  With the device unhooked, you carry it off with you.  It is somewhat heavy though.  Better be worth it.";
			increase score by 5;			[additional score boost for honesty]
			now hp of doctor matt is 9;
			extend game by 8;
		otherwise:
			say "     You tell him you are working on something and would like to scavenge parts from it, since he doesn't need it anymore.  He doesn't have any objections, as he won't be taking any of the equipment once they are extracted by the military.  You carefully unhook the device and carry it off with you.  It is somewhat heavy though.  Better be worth it.";
	increase carried of scientific device by 1;
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

the scent of the scientific device is "     The large electronic device smells faintly of ozone and magic smoke.  Hopefully it still works.".


to say hospquestpt2:
	say "     'I have a lot of samples and tests I would like to run.  Many of my projects and analyses have been unable to progress without proper instrumentation.  I will need some time to run more tests before I can gain more information. I'm all abuzz with excitement; I want to tackle it all right away.  No sleep for me tonight,' he adds with a chuckle.";
	say "     'But as I promised, I do have a few things for you.'  He heads over to one of the cabinets under the work bench and digs around, pushing some of the items aside as he digs around.  'I set this aside for you if you were successful.  I know it's not much, but I expect to deliver better once my results start reaching fruition.'  From the back, he pulls out a large beaker with a bottle of water and two syringes sitting in it.";
	say "     'These are healing boosters and a libido suppressant that I created some time ago.  The healing booster provides important nutrients and stimulate the nanites to bring about a surge in their healing rate for a brief time, resulting in rapid repair of injuries.  The other contains a cocktail of anaphrodisiacs meant to help curb your arousal, for at time at least.  They should both be most helpful for you out there, I expect.  And a bottle of water as well, as you're probably thirsty after lugging that thing across the city.";
	delete scientific device;
	increase carried of healing booster by 1;
	increase carried of libido suppressant by 1;
	increase carried of water bottle by 1;
	now progress of Doctor Mouse is turns;
	extend game by 6;
	say "[line break]";
	increase score by 25;
	now hospquest is 4;

to say hospquestpt3:
	say "     The white mouse looks up from his research as you check in with him.  'You've done very well.  This has been a great boon in understanding the functioning of these little nanites.  I was hoping you'd be able to assist me with something further.  Through the use of the staff here, I have been able to secure several samples,' he says, pointing to various bottles and jars on one table, many of them filled with white fluids.  'But there's one creature, a large canine out looking for a mate, that they've seen rarely and have been unable to sample.  Being a twelve-foot dog, the orderlies are rather reluctant to approach it.  There are some times that the animal nature of the infection's changes do present a problem.";
	say "     I would like you to try tracking down this creature and obtaining a sample from it.  From their accounts, it is a rather impressive creature with rather a uncommon... shall we say... [']gender configuration[']?  It is a variation that should be investigated and I am curious to see if I can trace the source of its unusual pairing of features.";
	if dog milk is not owned:
		say "     'I can only make assumptions on why that creature is unique, but each possible reason has different implications and applications.  Proper testing is required to learn more.  Going forward without that knowledge may adversely bias the results of my other experiments.'";
		now hospquest is 5;
		increase score by 5;
	if dog milk is owned:
		say "     'What is this?' he exclaims as you pull out the bottle of dog milk.  'You already have some?  Astonishing!  I knew you would make a fine assistant, but this is most impressive.  There are numerous possibilities for why that dog creature is unique and some of them could affect the results of my other experiments.  Ascertaining or removing certain variables will greatly increase the likelihood of gaining meaningful results.'";
		delete dog milk;
		now progress of Doctor Mouse is turns;
		extend game by 6;
		increase score by 25;
		now hospquest is 6;

to say hospquestpt4:
	if dog milk is not owned:
		say "     'I need you to get a sample, preferably its milk, from that large canine.  Its shemale attributes are unusual and I wish to determine what factor or factors may have made it different and unique.'";
	if dog milk is owned:
		say "     'You have it?  Excellent work.  I knew when you showed up that you'd make a fine assistant.  There was just something about you.'  He takes the jar of dog milk and starts drawing samples from it, putting them into beakers for testing.  'It will take some time to complete my tests, but I expect I'll have something for you once the results are in.'";
		delete dog milk;
		now progress of Doctor Mouse is turns;
		extend game by 6;
		increase score by 20;
		say "[line break]";
		now hospquest is 6;

to say hospquestpt5:
	if progress of doctor mouse minus turns is less than 12:
		say "     'Please leave me to my research for the moment.  I believe I shall have something special for you when I am done.'";
	otherwise:
		say "     'I have been able to perform some research on the sample you brought back.  While some of the test results are inconclusive, I have been able to rule out several of my earlier hypotheses on its nature.  This knowledge will help me advance several of my other projects and better focus my research into ones which will yield results.  And I do believe I said I'd have a reward for you.'";
		say "     'From my research into the factors activated in the collie's physiology by the nanites, I have been able to create a stamina booster, which will increase one's physical endurance.'  He smiles as he takes a syringe from a refrigerated storage case.  'As you are acting as my agent in the field, it is important that you be hardy enough to deal with the creatures out there.  And so, this is for you,' he says as he merrily injects you with it.";
		increase stamina of player by 2;
		increase maxhp of player by level of player plus 1;
		say "     [bold type]Your stamina has been increased by 2.[roman type][line break]";
		increase score by 10;
		say "     'I do have another task for you, my helpful assistant,' the albino mouse continues.  'At the state fair across the city, there is a strange, rubber-like creature.  While I have obtained samples from the latex foxes and wolves running around, I wish to see how this feline's unusual body composition differs from theirs.  You should get three samples, as I know from experience working with the fox and wolf samples that it may require several to get any worthwhile data.  Being felines, these creatures seem able to entice the orderlies into becoming their mates and the vixens are not strong enough to deal with them on their own.  And when several vixens go together, these felines band together and repel them.  I'm hoping, as a lone individual, you will be successful where they have not.'";
		now hospquest is 7;

to say hospquestpt6:
	if carried of Tiger patch < 3:
		say "     Please remember, I need you to obtain three samples from those rubbery felines, so I can be certain to have enough to obtain results.  Please make your way to the State Fair and try to collect some.";
	if carried of Tiger patch >= 3:
		decrease carried of Tiger patch by 3;
		say "     Good work!  I shall set to work on these right away.  And while I work on that, I do have another project for you.  I have a pair of situations where my orderlies have upset the locals too much to complete their task and I need someone independent of the hospital to go in and complete the job.";
		say "     I have just obtained word that the museum contains a pair of prehistoric creatures.  Aside from representing an unprecedented opportunity to analyze ancient life, it may be important to examine their nanites and see how they affected such changes.  The reports from the hospital creatures are somewhat unspecific, but there appears to be a armoured, dinosaur-like creature and several smilodons.  I would have the others deal with this, but on their original foray into the museum, they must have caused a disruption and now the guardian will not let them re-enter.  I need you to obtain samples from both of these.";
		say "     'The last thing I need for you is to perform a simple pick-up while you are out.  There is a jackal shopkeeper who has set herself up in the mall.  She has a package for me.  The rats who live there will not allow the hospital staff to approach, having been set off by the appearance of one of the jaguars when the order was first placed.";
		now nerminepackage is 1;
		now Dinosaur Nest is unresolved;
		increase score by 25;
		now hospquest is 8;

to say hospquestpt7:
	if triclamped is 0:
		if lava lamp is not owned:
			say "     If you are not able to obtain a usable sample from this dinosaur creature, be sure to go to its nest and search there.  There may be eggs or something else with enough nanites to act as a proper sample.  They were very clear that it was female.";
		if lava lamp is owned:
			delete lava lamp;
			say "     The mouse dubiously looks at the lava lamp you[']ve pulled out, but goes to take it.  As you explain what you suspect it's been used for, he pulls his hands back quickly and puts on a pair of ill-fitting gloves over his mouse-paw hands.  Only then does he handle it, setting it on the lab table.  'I... this is a rather ingenious way to obtain a sample.  I... uhh... commend you.  Please continue,' he says.";
			now triclamped is 1;
	if sabtoothed is 0:
		if Chipped tooth is not owned:
			say "     There appear to be several of these smilodons in the museum.  Take care, smilodons, popularly known as sabretooth tigers, were the apex predators in their time and are larger than any current feline.  Any creatures based on them with nanite enhancement would be... quite powerful.";
		if Chipped tooth is owned:
			delete Chipped tooth;
			say "     The mouse looks at the large fang with a mix of awe and delight.  He takes it carefully from you and places on a sample tray.  Another successful mission completed.";
			now sabtoothed is 1;
	if nerminepackage < 5:
		if package is not owned:
			say "     The shopkeeper at the mall has a collection of... ahh... [']occult and mystical items[']', he says with a bit of disdain.  'But she does have some historically significant items and I wanted to obtain something from her.  She may want something of similar value in return,' he adds.";
		if package is owned:
			say "     The mouse takes the package from you with a smile and puts it on his sample table quietly.";
			delete package;
			now nerminepackage is 5;
	if nerminepackage is 5 and sabtoothed is 1 and triclamped is 1:
		say "     'Excellent work, my assistant.  Now I have much to do.  I hope you will understand if I ask you to leave me to my investigations for a time.  But as a reward, you may have this for the moment,' the small mouse says as he passes you a medkit.";
		say "     'For the reward to come, I would like to make an analysis of your nanites to better help you out there.'  You start to mumble an objection, but he brushes it off.  'Now, now.  You aren't afraid of a little needle, are you?  I am a doctor, after all.'  And then, while you start to consider the matter further, he pricks you with the needle and withdraws some blood.  'There.  All done.  Now, that wasn't so bad, was it?' he says, like a doctor speaking to a young patient.";
		say "     'Give me a couple of days to work on all this.  I hope to have a suitable reward for you at that time.'";
		now progress of Doctor Mouse is turns;
		extend game by 8;
		increase score by 40;
		say "[line break]";
		now hospquest is 9;

to say hospquestpt8:
	if progress of doctor mouse minus turns is less than 16:
		say "     'Please leave me to my research for the moment.  I believe I shall have something special for you when I am done.'";
	otherwise:
		say "     As you start to converse with Dr Mouse, one of the jaguar orderlies comes in signals for the little mouse's attention.  Dr Mouse goes over to him and speaks to him.  As you watch, you can't help noticing the jaguar's huge fangs, familiarly like those of the sabertooth tigers you faced.  He also seems to be larger and more muscled.  His shirt doesn't quite fit right and has popped its seams at the shoulders.  Dr Mouse eventually sends him off in frustration.";
		say "     Coming back to you, Dr Mouse smiles and opens a sample fridge, taking out another injection.  'As I promised, I have something special for you.  I have made progress in analyzing the nanites['] method of healing and have a formula which will increase your healing rate.'  As he starts to prepare your arm for the injection, he continues, 'It will increase your recovery over time.  It will also give you a little more effectiveness from any field medicine you practice.  It won't measure up to proper medical training,' the white mouse doctor says, 'but it's still an improvement.'";
		say "     Before you let the mouse inject you, you ask about the jaguars and if you should expect anything like that to happen.  Dr Mouse is briefly puzzled by your question.  'Oh, you mean the fangs?  Those are just the result of a test I did on them.  I needed to see how adjustments to the nanites would propagate through the population.  This one was more effective than the first attempt with the vixens.  Besides, the creatures out in the city are starting to form into factions and they need to be able to keep the hospital secure.  But don't worry.  This is just an increase to their healing protocols.'  Feeling reassured about the injection if not the jaguars, you allow him to inject you.";
		say "     You have gained the [']Rapid Healing['] feat.";
		add "Rapid Healing" to the feats of the player;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     As the nanite update runs through your system, you ask what the jaguar wanted that was so upsetting.  'Oh, I wasn't too upset about the news.  It's just harder to understand them now that they've got those big teeth.  There's a little pest running around the hospital, distracting the other staff at times.  Nothing you need concern yourself with, though.  They'll catch the pink perv sooner or later.'";
		say "     Dr Mouse heads back to his worktable.  'I have to get back to things now.  I don't think I'll have anything for you for at least a few days.  Please give me some time to process all of these results.'";
		now progress of Doctor Mouse is turns;
[		NanofabRewardReprogrammer; [places piece for nanofab in room.  move this line if/when a better place is found]	]
		now hospquest is 10;

to say hospquestpt9:
	if progress of doctor mouse minus turns is less than 12:
		say "     'I do not have any tasks for you at the moment, but please check back again later,' he white mouse replies to your enquiries about his research.";
	otherwise:
		now Staff Lounge is resolved;
		repeat with y running from 1 to number of filled rows in table of random critters:	[removes Raccoon monster from Hospital]
			choose row y in table of random critters;
			if name entry is "Raccoon":
				now monster is y;
				break;
		now area entry is "Nowhere";
		say "     'I do not have any tasks for...' the white mouse starts to reply when there is a commotion outside the door.  He hops off the stool and heads to the door.  Reflexively, you ready yourself for combat.  The door leading to the depths of the hospital opens and in come a pair of orderlies with a cross-dressing raccoon held firmly in their paws.  His grey fur has pink highlights and pink rings around his tail and his candy striper dress has gotten torn.  The coon is thrashing and struggling, spewing a mix of insults, pleas and offers of sex to let him go.";
		say "     As Dr Mouse steps around the worktables and becomes visible to the girly raccoon, his eyes go wide and he falls silent, but struggles all the harder.  The orderlies have no trouble holding the little guy and Dr Mouse looks him over critically.  His face is very stern and not at all the friendly expression you're used to seeing from the little mouse fellow.";
		say "     'You've been most disruptive to my hospital of late, you little perv.  I had hoped you might come around, as you were a volunteer here.  But you are only a distraction for my staff and my projects.  And I can't have that, so I can't have you running around unsupervised any longer,' he says ominously.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     The white mouse then turns to you with his usual smile.  'You have excellent timing.  As a reward for your service, I am going to give this troublemaker over to you.  Based on some of the findings I've made, there are conditions which the nanites can set up so one host is made subservient to another.  While it would only work on weaker creatures, I have been working on a formula to induce this effect.'  He motions to the orderlies and they shove the terrified coon boytoy into your arms.  'If you'd like, I could give it to him and make him an obedient pet for you,' he says, heading to his sample fridge.";
		say "     You look down at the coon in your arms and his eyes are locked on you.  He is trembling and whimpers.  'Just get me out of here.  He's crazy.  Please,' he whispers emphatically.  'I'll go with you.  I'll be good.  Just don't let him keep me.'";
		say "     As Dr Mouse comes over with the injection, the raccoon falls silent and buries his face in your chest, trembling in your arms.  The mouse holds it up, getting it ready.  'This injection will turn a weak creature like him into a useful pet.  Would you like to take him on as a pet?  He'd become obedient and helpful, and not so chatty as an added bonus.'";
		say "     (Will you let Dr Mouse give him the injection or do you want to take him as-is? Y for injection)";
		if the player consents:
			increase score by 10;
			decrease humanity of player by 5;
			now coonstatus is 101;
			say "     With a nod to Dr Mouse, he injects the raccoon, who releases one last whimper before growing quiet.  After a few moments, he looks up at you, eyes filled with adoration, but little intelligence.  He moans softly and nuzzles your chest as his paws run along your sides and down to your hips.";
			if cunts of player > 0 and cocks of player is 0:		[FEMALE]
				say "     The raccoon slides a paw between your legs to play with your pussy.  His fingers stroke and tease you as he lowers himself to his knees.  He gives the briefest of shivers, so faint you barely notice it, before he buries his muzzle between your thighs and starts licking you.  You moan softly and stroke his ears.  He may lack in experience, but there is no lack of zeal in the coon, eager to please his new mistress.";
				say "     His playful tongue teases your labia, lapping up your juices obediently.  His pink cock is quite hard, leaking pre onto the floor.  Dr Mouse watches quietly, having slipped a paw into his lab coat and between his legs.";
				say "     Seeing the raccoon boy becoming such a willing plaything is quite arousing and soon you can hold back no longer.  Your pussy quivers and your hot juices flow, soaking his muzzle.  He laps them up from you like a good little pet, churring happily.";
			otherwise if cunts of player is 0 and cocks of player > 0:	[MALE]
				say "     The raccoon slides his paw between your legs to play with your cock.  His fingers stroke and tease your shaft as he lowers himself to his knees.  He opens his muzzle and takes your cock in happily.  You moan softly and stroke his ears.  He certainly doesn't lack experience, giving you a wonderful blow job and is eager to please his new master.";
				say "     His talented tongue teases your shaft, playing along your penis as he sucks it.  His pink cock is quite hard, leaking pre onto the floor.  Dr Mouse watches quietly, having slipped a paw into his lab coat and between his legs.";
				say "     Seeing the raccoon boy becoming such a willing plaything is quite arousing and soon you can hold back no longer.  Your cock throbs and your hot seed shoots into his waiting muzzle.  He swallows it all down and licks you clean like a good little pet, churring happily.";
			otherwise:									[HERM]
				say "     The raccoon slides his paw between your legs to play with your cock.  His fingers stroke and tease your shaft as he lowers himself to his knees.  He gives the briefest of shivers, so faint you barely notice it, before he nuzzles down to start licking your pussy as well.  He makes sure to lick you all over before bringing his muzzle up and happily taking your cock into his mouth.  You moan softly and stroke his ears.  He certainly doesn't lack experience, giving you a wonderful blow job.  And though the fingers that have moved to your pussy fumble around a little, it is clear that he is eager to please his new master.";
				say "     His talented tongue teases your shaft, playing along your penis as he sucks it while his fingers caress your pussy.  His pink cock is quite hard, leaking pre onto the floor.  Dr Mouse watches quietly, having slipped a paw into his lab coat and between his legs.";
				say "     Seeing the raccoon boy becoming such a willing plaything is quite arousing and soon you can hold back no longer.  Your cock throbs and your hot seed shoots into his waiting muzzle while your pussy soaks his paw in your juices.  He swallows it all down and licks you clean like a good little pet, churring happily.";
			now pink raccoon is tamed;
			say "     (The pink raccoon is now tamed! You can make it your active pet by typing [bold type][link]pet pink raccoon[as]pet pink raccoon[end link][roman type]and initiate sex with him while active by typing [bold type][link]fuck pink raccoon[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type])";
		otherwise:
			increase score by 20;
			now coonstatus is 1;
			move Candy to Bunker;
			now lastCandyfucked is turns + 6;
			if hp of Sven is 8, now lastSvendrink is turns - 4;
			say "     Dr Mouse shrugs as you decide to pass on the injection and passes it to one of the orderlies to put away.  'I still do not want him in my hospital any longer.  You will have to take him away from here and keep him out of trouble.  Use him for your own enjoyment.'  He leans in and jabs the coonboi with a finger.  'You don't want to know what I'll do to you if you ever come back here,' he little mouse whispers harshly in his ear.  'Do you understand?'  The girly boi can only whimper louder and nod vigorously.  'Good.'";
		wait for any key;
		say "[line break]";
		say "[hospquestpt10]";

to say hospquestpt10:
	say "     Dr Mouse smiles and dusts his paws together, now that his raccoon problem is taken care of by his assistant.  'Actually, now I think it's time for you to take care of something for me.  Consider it repayment for your new playtoy,' he chuckles, putting an arm around your waist and walking with you.";
	if hp of doctor matt is 100:
		say "     'From the intelligence I've gathered, there is a lab in the city where a device capable of making adjustments to the nanites has been left behind.  It is capable of bestowing a variety of abilities onto a host, enhancing their skills.  If there is something capable of enhancing the abilities given by nanites, I am very interested in this and want you to retrieve it for me.  Coupled with my research, the adjustments I can give you and the hospital staff will be astonishing.  No one will be able to stop us.'";
		say "     'So,' he asks with a grin, 'will you get that machine for me?'";
		if the player consents:
			say "     'Excellent!  I knew I could rely on you,' the mouse says.  'I shall provide you with a radio to signal the helicopter once you have located it, so it can be transported here.'  The mouse gives you a pat on the back and drags his stool back over to his worktable, intent on resuming his work.  The orderlies grunt and motion for you to get on your way[if coonstatus is 1].  You take the coon's paw in yours, leading him out of the room and giving him directions back to the bunker, where he'll be safe until you return[end if].";
			now hospquest is 11;
			now player is in City Hospital;
		otherwise:
			say "     You shake your head and tell the doctor that you don't think you should remove the machine and bring it to him.  He growls angrily and reaches up to slap you across the face.  'Ungrateful fool!  I offer you power and you won't accept it?  Well, then I have no more use of you.'  He motions to his orderlies and they move in to deal with you.  The raccoon, too terrified to face the mad doctor's wrath, flees down the stairs.";
			say "[hospbigfight1]";
	otherwise:
		say "     'I recall you mentioning when we first met another scientist and their nanite adjustment research.  If he has something capable of enhancing the abilities given by nanites, I am very interested in this and want you to retrieve it for me.  Coupled with my findings, the adjustments I can give you and the hospital staff will be astonishing.  No one will be able to stop us.'";
		say "     Dr Mouse leads you over to another sample fridge and pulls out a syringe.  'Now, I honestly don't expect he'll be willing to part with such a useful research willingly, so I have this injection prepared.  It is a formulation based on several samples and should quickly turn anyone into a mindless slut.  No more rival to stand in the way of my work and some fun for you while you're at it.'";
		say "     'So,' he asks with a grin, 'will you get those research notes for me?'";
		if the player consents:
			say "     'Excellent!  I knew I could rely on you,' the mouse says as he passes you the syringe.  'I shall provide you with a radio to signal the helicopter once you have secured the device, so it can be transported here.'  The mouse gives you a pat on the back and drags his stool back over to his worktable, intent on resuming his work.  The orderlies grunt and motion for you to get on your way[if coonstatus is 1].  You take the coon's paw in yours, leading him out of the room and giving him directions back to the bunker, where he'll be safe until you return[end if].";
			now hospquest is 11;
			now player is in City Hospital;
		otherwise:
			say "     You shake your head and tell the doctor that you won't betray Dr Matt's help by attacking and transforming him.  He growls angrily and reaches up to slap you across the face.  'Ungrateful fool!  I offer you power and you won't accept it to protect a meddling pest?  Well, then I have no more use of you.'  He motions to his orderlies and they move in to deal with you.  The raccoon, too terrified to face the mad doctor's wrath, flees down the stairs.";
			say "[hospbigfight1]";


instead of going to Hidden Lab while hospquest > 10:
	if hospquest is 11:
		say "     The jaguar guarding the door won't let you in until you finish the deed.";
	otherwise if hospquest is 12:
		say "     You tell the jaguar orderly guarding the stairs that there's been a small snag and that you need to speak with Dr Mouse.  It seems the addition of primitive DNA to the strain has not helped their intellect and you are able to convince him to let you up.";
		now the player is in Hidden Lab;
		say "     Entering the lab, you find Dr Mouse taking a rare break to have some food.  He's got a plate of food, probably sent up from the cafeteria, that looks like a colourful selection of warm mushes.  The doctor looks up from his meal at the sound of your arrival.";
		say "     'I did not expect you back.  You did not call for the helicopter.  What has happened?  My orders were for you to only return when you had finished with the scientist.'  Noticing your expression, he stiffens and glares at you angrily with his blood red eyes.  'Unless you have no intention of doing so.  You dare betray me?'";
		say "     He hops off his stool and rushes towards the intercom button at one corner of the room.  You, already taking advantage of his brief confusion, were already moving in that direction to cut him off.";
		let bonus be ( dexterity of player minus 10 ) divided by 2;
		if bonus > 8, now bonus is 8;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
		if bonus + dice is greater than 9:
			say "     You easily block the doctor, grabbing the little mouse and shoving him back into the middle of the room.  This sends him into a rage.  He releases a high pitched growl and lunges at you, eyes flashing with red anger.  'Ungrateful fool!  The infection is too widely spread and cannot be stopped.  One can only take advantage of the power it offers.'";
			now hp of doctor matt is 11;
			say "[hospbigfight2]";
		otherwise:
			say "     As you grab for the little mouse, he ducks under your arms and gets past you.  Sometimes there are advantages to being small.  He slams his palm against the intercom button, calling to the security station at the end of the hall.  'Orderlies!  Code Silver!  Code Silver in the lab!'  Releasing the button, he turns back to you.  'Ungrateful fool!  The infection is too widely spread and cannot be stopped.  One can only take advantage of the power it offers.'  A pair of orderlies then burst into the room, moving in to attack.";
			now hp of doctor matt is 11;
			say "[hospbigfight1]";
	otherwise if hospquest is 13:
		say "     The stairwell is once again barred from the inside and you are not able to gain access.  You have a feeling the path through the hospital is blocked as well.";
	otherwise:
		now the player is in Hidden Lab;


instead of going to Primary Lab while hospquest is 11:		[heading to the main lab to get the feat machine]
	now the player is in Primary Lab;
	if hp of doctor matt is 100:						[recording]
		say "     You enter the lab and take stock of the enhancement device in the room.  You look it over briefly, then start to unhook it.  As you do, you hear a recording click on from the speakers.  'Unauthorized access to secure lab equipment.  Warning: This device is protected and its removal cannot be allowed to continue.'  An alarm sounds through the building.";
		say "     You shrug, knowing there is no one here aside from you to worry about and continue.  As you're unhooking the nearby terminal, you hear the alarm change to a countdown.  That gets your attention and you toss the terminal onto the equipment cart and hustle it out as fast as you can.  You wrench your shoulders as you wrestle the cart down the stairs in a hurry, but continue as the numbers reach the single digits.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     You hear the countdown inside reach zero and several blasts inside the building go off ten seconds later.  You are running down the handicap access ramp with the cart as the windows blow out.  Glass and rubble bloody your back, but thankfully the equipment was mostly shielded by you and seems undamaged.";
		say "     You take 15 damage![line break]";
		say "     Fighting back against the pain, you contact the helicopter for extraction.  Having once been a trained rescue team, they are there swiftly.  Under your supervision, two of the brutish orderlies move the large machine and the terminal into the helicopter.  Loaded up, you climb into the helicopter and ride back with them to the hospital.";
		decrease hp of player by 15;
		increase score by 20;
		now infection terminal is in Hidden Lab;
		now hp of doctor matt is 103;
		now hospquest is 12;
		now the player is in Hidden Lab;
		say "[posttlscene]";
	otherwise:									[Dr Matt physically there]
		say "     You enter the lab and take stock of the enhancement device you've been sent to collect.  Dr. Matt does not appear to have noticed you quite yet, buried in more work.  You slip the syringe from your pocket and look at it, considering what to do next.  Shall you inject Dr Matt? (Y-inject / N-talk)";
		if the player consents:
			say "[tlabsbigfight]";
		otherwise:
			say "     You decide you need to talk to Dr Matt about the mouse doctor's intentions.  Unwilling to go through with the mouse's plan, you get his attention and start to fill him in.";
			if hp of doctor matt is 8:
				say "     You begin by telling the scientist about hospital, the hidden lab within and the mouse working away there.  You tell him of what you saw there, the creatures of the hospital, apparently most if not all of them under the mouse's control.  You make sure to mention the mouse's findings and his hypotheses about the infection, noting they were part of the reason you assisted him despite any misgivings.";
				say "     You relate how you helped him collect some samples he needed to continue his research.  But then that research started to manifest as changes and increased power in the hospital denizens.  Dr Matt is quite perturbed to hear about this news, both that such experiments were happening and that he was not made aware of another potential source of information on the nanites.  You do have to wonder if he's most upset that someone else could have gotten further into their research than he has.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     You finish by showing Dr Matt the syringe and tell him that Dr Mouse has sent you to remove him from the picture and steal the nanite adjustment system he'd been creating.";
			say "     'If you're telling me this, I can assume you're not going to go through with it.  It has become clear that this Dr Mouse is not interested in a cure at all, but only exploiting the nanites and their hosts.  Enhancing the strains out there will only exacerbate the problem of controlling this chaos.'  He holds up the needle.  'While there would be some irony in returning this to you and asking you use it on him instead, I don't think he will give you that opportunity.  Provided he's not already made himself immune to it, for that matter.  I will have to ask you to return to the hospital and deal with him personally.'";
			if Susan is visible:
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "     Susan comes up to your side and holds your left in hers, clutching it tightly.  Her loving brown eyes look up at her mate.  'Please be careful, my brave buck.'  She leans in and gives your cheek a kiss before releasing you.";
			increase humanity of player by 5;
			if humanity of player > 100:
				now humanity of player is 100;
			increase score by 20;
			now hp of doctor matt is 10;
			now hospquest is 12;

hospfight is a number that varies.

to say hospbigfight1:
	now hospfight is 1;
	now fightstatus is 3;	[set to run away by default]
	now inasituation is true;
	challenge "Jaguar";
	now inasituation is false;
	if fightstatus is 3:
		now fightstatus is 0;
		say "[hospranaway]";
		stop the action;
	if fightstatus is 2:
		now fightstatus is 0;
		say "[hosploss]";
		stop the action;
	now fightstatus is 3;
	say "     The second jaguar moves around the worktables steps past his fallen comrade to attack you as well.";
	now inasituation is true;
	challenge "Jaguar";
	now inasituation is false;
	if fightstatus is 3:	[reset to run away by default]
		now fightstatus is 0;
		say "[hospranaway]";
		stop the action;
	if fightstatus is 2:
		now fightstatus is 0;
		say "[hosploss]";
		stop the action;
	say "     The two guards dealt with, you barely dodge in time as the mouse tries to jab you with a syringe.  You knock it from his paw, sending it to shatter on the floor.  The powerful scent of an array of hormones fills the air, having clearly intended to change you into a mindless sex beast before you could attack him.  That option gone, the little mouse strikes out at you with his fists.";
	say "[hospbigfight2]";

to say hospbigfight2:
	now hospfight is 1;
	now fightstatus is 3;	[set to run away by default]
	now inasituation is true;
	challenge "Albino Mouse";
	now inasituation is false;
	if fightstatus is 3:
		now fightstatus is 0;
		say "[hospranaway]";
		stop the action;
	if fightstatus is 2:
		now fightstatus is 0;
		say "[hosploss]";
		stop the action;
	say "     Battered and bloodied, the mad doctor turns and runs.  For a moment, you think he's trying to escape and move to cut him off from the exit, but he instead veers off to his storage unit and searches inside for a vial.";
	say "     'I had planned to further perfect this formula before ridding myself of this feeble body,' the white mouse exclaims.  'But you!  You force my hand.  And you will suffer for it!'";
	say "     With that, he slams back the formula and its effects are almost immediate.  You charge, hoping to dispatch him before whatever he's doing can be completed, but he's already begun to grow and manages to slam you back a few feet with a strong backhand.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     His muscles swell and he gains inches of height by the second.  His growing body fills the lab coat so much it starts to strain to contain it until it finally fails.  The buttons fly as he flexes his new, muscled body and tears the tattered remains from his shoulders.";
	say "     His head becomes more feral and frightening, with sharp teeth, a mix of predatory canines and rodent incisors.  The thick, leonine mane grows in as well as a trio or sharp horns, two on his brow and one at the end of his pointed muzzle.  His hands, once cute paws, gain vicious claws and bony plates.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     The mouse's maleness is not neglected either, gaining a large sheath and heavy balls.  Thick, dark yellow grow to replace the white coat over them and this spreads up over the monstrous mouse's chest as well.  Clearly excited by the power of the changes, his cock grows hard and starts to emerge.  It is thick and blood red, with a spaded tip and several firm ridges along its shaft.  There's a faint swelling at the base, signs of a knot as well.  Thick precum leaks down the monstrous prick.";
	say "     He chuckles madly as he looks himself over, clearly pleased with the results.  'I am going to enjoy showing you how disappointed I am with you.  In slow, agonizing detail,' he rumbles with a deep, threatening voice.";
	now hospfight is 2;
	now fightstatus is 3;	[set to run away by default]
	now inasituation is true;
	challenge "Albino Mouse";
	now inasituation is false;
	if fightstatus is 3:
		now fightstatus is 0;
		say "[hospranaway]";
		stop the action;
	if fightstatus is 2:
		now fightstatus is 0;
		say "[hosploss]";
		stop the action;
	now fightstatus is 0;
	say "[hospvictory]";

to say hospranaway:
	say "     Unable or unwilling to continue fighting the crazed mouse, you vault over one of the worktables and dash to the exit.  You slam against the door and dash down the hall to the emergency exit.  You rush down the stairs, hearing Dr Mouse yelling above you, but don't even stop to look.";
	say "     As you approach the bottom of the stairwell, you can see the jaguar orderly on guard inside.  His radio squawks with Dr Mouse's voice and you leap down the last four steps.  The added momentum lets you shove past the confused orderly and out the door before he can get his orders to stop you.  You push through the door and dash into the hospital lobby, then continue running out the door.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	now the player is in City Hospital;
	if hospquest is 10:	[Refused upon offer]
		say "     Panting for breath, you slam against the main entrance doors and stumble out into the [if remainder after dividing turns by 8 > 4]darkness[otherwise]light[end if].  The raccoon, it seems, has been waiting fretfully on the steps for you and rushes into arms.  You grab his paw and continue running, pulling him along.  He needs no encouragement to leave this place and keeps pace with you as you cross the large parking lot and cut down a side street.";
		if pink raccoon is tamed:
			say "     Hiding in a nearby building, you pant to catch your breath.  The pink coon cuddles up to you, vacant eyes looking up at you in adoration and relief.  You pet his ears and he churrs softly[if hp of doctor matt is not 100].  You feel that perhaps you should go talk to Dr Matt before doing anything else[otherwise].  Now without scientific help, you wonder what to do next[end if].";
		otherwise:
			say "     Hiding in a nearby building, you pant to catch your breath.  The pink coon thanks you for getting him out, but starts to fret about where he can now go.  You decide, on impulse, to tell him about the bunker under the abbey library and give him directions[if hp of doctor matt is not 100].  You feel that perhaps you should go talk to Dr Matt before doing anything else[otherwise].  Now without scientific help, you wonder what to do next[end if].";
	otherwise:
		say "     Panting for breath, you slam against the main entrance doors and stumble out into the [if remainder after dividing turns by 8 > 4]darkness[otherwise]light[end if].  You continue to run down the steps and across the large parking lot, afraid of pursuit by the hospital's horde.  You cut down a side street and eventually come to a stop in a nearby building to catch your breath[if hp of doctor matt is not 100].  You feel that perhaps you should go talk to Dr Matt before doing anything else[otherwise].  Now without scientific help, you wonder what to do next[end if].";
	now hp of doctor mouse is 1;
	now locked stairwell is locked;
	now hospquest is 13;

to say hosploss:
	now hospbattlelost is 1;
	say "     Your head is pounding and your vision is hazy even before you open your eyes.  Struggling to remember what happened, you try to look around.  As you attempt to open them, bright lights blind you and force them shut again, causing you to wince in pain.  You try to pull a hand to cover your eyes, but your arm won't move, tightly restrained.";
	say "     'Ahh, the patient is now awake.  We may begin,' you hear from one side.  The sound of Dr Mouse's voice rushes reality back to you and you struggle to get up.  At his point, you discover that you are tightly strapped down and cannot move.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     As the spots begin to clear from your vision, there is much to take in.  Foremost is the operating table you are strapped onto, held down by thick, leather straps.  Above that are large, bright lights shining down on you.  As the rest of the room becomes clearer, you start to make out the blurry forms around you.  There are several other figures on the operating floor around you, nurses and an orderly, as well as several trays of medical instruments.";
	say "     Above the operating floor, a larger viewing area above the floor level and surrounding the room comes into focus.  Most of the seats are filled with more vixen nurses, jaguar orderlies and canine doctors, but there are a few others as well.  There is a rather plastic-looking fish creature who is constantly wiping himself with a wet cloth and surrounded by big breasted owl women.  In one corner, there is a cluster crazed weasels in straightjackets secured to their seats, gibbering and snapping at one another.  They have a very busty gray skunk woman sitting behind them[if hp of Doctor Moffatt > 0], whom your recognize as Dr. Moffatt[end if].  A few other individual creatures fill scattered seats.  You are clearly in the operating theater, where demonstrations of medical procedures are performed for staff and med students.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     As Dr Mouse steps forward after washing his paws, the room quickly falls silent[if hospfight is 2].  The altered doctor has smoothed down his fur a little and found a much larger lab coat to put on.  It barely fits across his shoulders and hangs open, leaving his mutated body and groin uncovered.  There are some holes torn into the back by his dorsal spines to make it fit at all[end if].  One of the nurses puts a pair of ill-fitting gloves over his [if hospfight is 1]little[otherwise]twisted[end if] paws as he looks you over.  Despite his dispassionate, clinical expression, there is a malicious gleam in his blood red eyes.  The [if hospfight is 1]little mouse[otherwise]monstrous mouse[end if] steps up beside you, then turns to look up at the assembled group.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     'My fellow staff,' he begins.  'Today, we have a very special procedure.  As you are no doubt aware, I have been making substantial progress in my research.  This is, in part, thanks to my assistant's help,' he says, motioning to you.  'Now, my volunteer will further help me continue that important work.'  He stresses volunteer, making it clear to all just how voluntary your participation is.  'Furthermore, I hope to teach the staff more about the infection as well as the price of defiance.'";
	say "     Throughout his speech, the gathered mass of creatures is quiet.  Even the psychotic weasels are silent.  There is an aura of fear and respect in the air.  It is clear you will receive no help from anyone gathered here.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Unwilling to just give up, you continue to struggle against your bonds.  The [if hospfight is 2]mutated [end if]mouse gives you a cold look as the grunts of your attempts interrupt him.  He motions to the orderly, who gives your head a hard smack with his fist before gagging your mouth.  Your head spins while the mouse continues talking, moving on to medical jargon that you can only make out snippets of with your ears ringing from the blow.  It is something about the nanites and transformations, but the rest is lost to you.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     'We will begin the series with an injection to prepare the patient for multiple transformations,' the mad doctor says, taking the syringe from a tray of a half-dozen[if hospfight is 1].  The small mouse steps up onto a wooden crate beside you so he can look over the operating table and his patient[end if].  As he injects the formula into your arm, there is a mad gleam in his eyes.  An odd tingling sensation spreads up your arm and throughout your body, and you seem less solid.  As an impulse, you try to pull yourself free, but while your arms and body do deform somewhat, it is not enough to pull loose of the straps.  Dr Mouse chuckles and goes on to point out this very effect to the audience, informing them the temporary elasticity comes from the tigress samples you brought him the other day.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "[hosptfscene]";
	say "     Dr Mouse motions to the orderly attending to his procedure.  'Dump that trash on the steps along with its gear.  It is of no further use to me.'  With those coldly spoken words, the mouse turns his back on you entirely and walks out of the operating theater.  The orderly calls forth several of his companions and they drag you, beaten and mutated, to the hospital steps.  They toss you and your gear down onto them without a word and head back inside.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if bodyname of player is "Tiger Cop":
		now bodyname of player is "Tigress Hooker";
	if tailname of player is "Tiger Cop":
		now tailname of player is "Tigress Hooker";
	if facename of player is "Tiger Cop":
		now facename of player is "Tigress Hooker";
	if skinname of player is "Tiger Cop":
		now skinname of player is "Tigress Hooker";
	if cockname of player is "Tiger Cop":
		now cockname of player is "Tigress Hooker";
	decrease humanity of player by 20;
	increase libido of player by 20;
	decrease score by 50;
	if libido of player > 100:
		now libido of player is 100;
	now the player is in City Hospital;
	if humanity of player < 1:		[Succumbing then and there]
		if hospquest is 10:		[Refused upon offer]
			say "     You groan, still in some pain from the rough handling as you try to get up.  After the heavy dose of transformation and repeated infection, your mind is wavering and unraveling.  The pink raccoon, who had been waiting fretfully on the steps for you, rushes over to you.  Finding you radically transformed and succumbing, he helps take you to a nearby, unoccupied building.  There, he beds down with you, having sex with you again and again, turning you into another cute, girly raccoon like him, as it is the only thing he can do for you.";
			say "[totalcoonification]";
		otherwise:
			say "     You groan, still in some pain from the rough handling as you try to get up.  After the heavy dose of transformation and repeated infection, your mind is wavering and unraveling.  The random medley of infections your body has been subject to all vie for control.  Eventually the most prominent, that of your [bodyname of player] body, asserts its dominance over the new you.";
	otherwise if hospquest is 10:		[Refused upon offer]
		say "     You groan, still in some pain from the rough handling as you try to get up.  The pink raccoon, who had been waiting fretfully on the steps for you, rushes over to you.  He wraps his arm around you and helps you stand, leading you away from this blighted place.";
		if pink raccoon is tamed:
			say "     You don't go far, just to a nearby building to finish recovering and take stock of your situation.  The pink coon cuddles up to you, vacant eyes looking up at you with sadness at how you've been altered.  You pet his ears and he churrs softly[if hp of doctor matt is not 100].  You feel that perhaps you should go talk to Dr Matt before doing anything else[otherwise].  Now without scientific help, you wonder what to do next[end if].";
		otherwise:
			say "     You don't go far, just to a nearby building to finish recovering and take stock of your situation.  The pink coon looks you over with tears in the corners of his eyes, so sad that his saviour should be so treated.  This gets him to start fretting about where he can now go, as he definitely wants nothing to do with the hospital any more.  You decide, on impulse, to tell him about the bunker under the abbey library and give him directions[if hp of doctor matt is not 100].  You feel that perhaps you should go talk to Dr Matt before doing anything else[otherwise].  Now without scientific help, you wonder what to do next[end if].";
	otherwise:
		say "     You groan, still in some pain from the rough handling as you try to get up.  You eventually make it to your feet and pick up your pack.  You look back at the hospital and consider your options[if hp of doctor matt is not 100].  You feel that perhaps you should go talk to Dr Matt before doing anything else[otherwise].  Now without scientific help, you wonder what to do next[end if].";
	now hp of doctor mouse is 1;
	now locked stairwell is locked;
	now hospquest is 13;
	follow the turnpass rule;


to say hosptfscene:
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from the table of random critters;
	while ( there is a non-infectious in row monster of table of random critters and non-infectious entry is true ) or there is no name entry or name entry is tailname of player:
		sort table of random critters in random order;
		now monster is 1;
		choose row monster from the table of random critters;
	now tailname of player is name entry;
	now tail of player is tail entry;
	say "     'The first injection will adjust the volunteer's lower spine.  We shall begin there, as the changes may be the least visible, depending on the outcome.'  The mouse the jabs a second needle, quite painfully, into your ass.  As he watches, the doctor comments to the group about how your ass becomes malleable as [ass change entry].";
	while ( there is a non-infectious in row monster of table of random critters and non-infectious entry is true ) or there is no name entry or name entry is tailname of player or name entry is facename of player:
		sort table of random critters in random order;
		now monster is 1;
		choose row monster from the table of random critters;
	now facename of player is name entry;
	now face of player is face entry;
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     'We shall now move on to the head,' he states, motioning for the orderly to step up.  He grabs your neck and squeezes it painfully as he injects the next formula into your carotid artery, sending the fluid up into your head.  As a burning sensation courses through your head, the doctor discusses how [face change entry].  As your face shifts and changes, the orderly adjusts the various straps as necessary, keeping you restrained.";
	while ( there is a non-infectious in row monster of table of random critters and non-infectious entry is true ) or there is no name entry or name entry is tailname of player or name entry is facename of player or name entry is skinname of player:
		sort table of random critters in random order;
		now monster is 1;
		choose row monster from the table of random critters;
	now skinname of player is name entry;
	now skin of player is skin entry;
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     The mad mouse picks up a spray bottle and runs his gloved paw over your chest.  'Before we continue with the patient's body, we shall deal with his epidermal layer.'  The bottle contains a thin, milky fluid and you can readily guess what at least one of the ingredients is.  Taking care not to spray himself, he spritzes a mist of the sticky fluid across your body.  You can feel a tingle all over as the mixture is absorbed into your skin and starts to change you.  Shivers of pleasure run all over your skin as [skin change entry].";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     When those changes are complete, a pair of the vixen nurses step up and wash you and the table area clean using wet sponges.  They pay particular attention to your genitals, sending shivers of delight through you despite, or perhaps because of, your current situation.  They giggle and tease you, much to the delight of several of the audience members.";
	say "     Actually, during this brief break in the procedure, you are able to take stock of the group watching.  It seems that some have become rather aroused by your transformation.  Several of the female nurses are riding the laps of the jaguars and male dogs while one of the herm nurses has strapped a restrained weasel to the railing and is buggering him hard and fast.  Catching your eyes on her, she even winks at you.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if hospfight is 2:		[Dr Mouse is monstrous]
		say "     You can see that the monstrous mouse is not immune to the increasing sexual energy in the room, having grown quite hard during the procedure.  Another of the vixen nurses is on her knees, licking and kissing the large cock.  Her muzzle is pulled onto the thick shaft as Dr Mouse gets tired of foreplay and starts facefucking her with a low growl.  She takes it in eagerly, playing with his heavy balls until he cums down her throat.  Pushing her off after he's done, the last few spurts of his thick seed coat her face and muzzle.";
	otherwise:		[Dr Mouse is mouse]
		say "     You can see that the albino mouse is not immune to the increasing sexual energy in the room, having grown quite hard during the procedure.  His cock is small, perhaps about four inches to match his small height.  But his balls are quite large, perhaps each the size of a peach.  One of the vixen nurses is on her knees, licking and kissing his cock before taking it into her muzzle.  She fondles his balls and sucks his shaft obediently until he sends his ample load down her throat.  Pushing her off after he's done, the last few spurts of his thick seed coat her face and muzzle.";
	while ( there is a non-infectious in row monster of table of random critters and non-infectious entry is true ) or there is no name entry or name entry is tailname of player or name entry is facename of player or name entry is skinname of player or name entry is bodyname of player:
		sort table of random critters in random order;
		now monster is 1;
		choose row monster from the table of random critters;
	now bodyname of player is name entry;
	now body of player is body entry;
	attributeinfect;
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Satiated, the mouse straightens up and regains his composure.  'Ahem!  Now that the... intermission is over, let us proceed to the final stages.'  He grabs another syringe, the largest yet by far.  His paw feels along your body, finding a sensitive spot before jabbing the needle into it, making you wince in pain before the warm tingles of pleasant change flow through you.  The jaguar orderly adjusts the various straps as your body alters itself.  Continuing to comment, Dr Mouse observes your body as [body change entry].";
	[below section copied from infect algorithm, update as that is updated]
	follow the breast change rule;
	follow the sex change rule;
	say "[line break]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if cocks of player > 0:
		while ( there is a non-infectious in row monster of table of random critters and non-infectious entry is true ) or there is no name entry or name entry is tailname of player or name entry is facename of player or name entry is skinname of player or name entry is bodyname of player or name entry is cockname of player:
			sort table of random critters in random order;
			now monster is 1;
			choose row monster from the table of random critters;
		say "     The mouse doctor grins viciously as he looks over your changed form, then turns to the audience.  'There is one final injection to make, my colleagues.  And I'm sure this is the one you've all been anxiously awaiting.  He moves his paw to your cock(s), quite aroused by the earlier teasing, and gives it a squeeze.  Those watching are quite pleased by this and many shift forward in their seats to get a better look.";
		say "     The doctor fondles your balls teasingly and slides the syringe across your cock and balls, making you involuntarily whimper.  You sigh in relief as he moves the needle down further and injects your inner thigh close to your groin.  As the mouse observes the changes, an arousing heat flows up into your groin as [cock change entry].";
		now cockname of player is name entry;
		now cock of player is cock entry;
		follow the sex change rule;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if cocks of player is 0:	[now female]
			say "     The mouse doctor smiles as your final changes set in and you are left with only a wet pussy between your legs.  He teases your wet folds and turns to the audience.  'It seems I was mistaken.  There is one more injection to make,' he announces, slipping a pair of fingers into your vagina, making you moan in response despite yourself.  His other paw is at his groin, stroking his stiffening cock back to erection.  Many in the audience cheer or laugh at that.";
			wait for any key;
			say "[drmousesex]";
		otherwise:
			say "     The mouse doctor wraps his gloved paw around your cock and starts stroking you quickly for audience, going on about how sensitive and aroused a cock is after transformation.  He motions to one of the silvery vixens, who passes him a bottle of lubrication.  He applies it to your shaft and continues pumping, discussing the characteristics of your new cock clinically, but with a gleam of amusement in his eyes.  His stroking soon gets to be too much and your hot seed splatters across your body.";
			say "     The mad doctor discards his messy gloves with a grin.  He raises his arms to the crowd, who manage some dignified clapping despite the major orgy that's broken out across most of the audience section.";
	otherwise:
		say "     The mouse doctor grins viciously as he looks over your changed form, then turns to the audience.  'There is one final injection to make, my colleagues.  And I'm sure this is the one you've all been anxiously awaiting.'  He moves a paw to your groin and starts to play with your pussy.  His gloved fingers tease your wet folds, making you moan with pleasure despite yourself.  His other paw is at his groin, stroking his stiffening cock back to erection.";
		wait for any key;
		say "[drmousesex]";

to say drmousesex:
	[puts Albino Mouse as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Albino Mouse":
			now monster is y;
			break;
	if hospfight is 1:	[normal mouse]
		say "     The small mouse motions for the orderly, who gently lifts him up onto the operating table with you.  The white furred mouse grins down at you, lining up his cock with your pussy, making it clear what final injection he has in mind.  You struggle and try to shake your head, but the restraints keep you locked in place.  He grins and thrusts his cock hard into you.  Thankfully, due to his small size, there is little discomfort and it soon becomes quite pleasurable as mad mouse fucks you zealously.";
		say "     You can see the audience has become quite worked up again, most of them partaking in sex with their colleagues.  A jaguaress is getting pounded by one of the jaguars while several others spray their seed across her body.  One vixen herm, who you suspect is the same from earlier, has lured one of the owls away from the sturgeon and is giving her a lap ride on her cock while playing with those enormous, feathered tits[if hp of Doctor Moffatt > 0].  Dr. Moffatt, the hyperherm skunk has another of her weasel patients with his face buried in her lap, stuffed with her giant cock[otherwise].  The big-breasted skunk woman has one of the wild-eyed weasels between her legs[end if].";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     The mouse's paws fondling your breasts brings you back to focusing on him.  His gloved paws tease your nipples and he laughs happily, aroused with his power over you.  His cock, while small, is quite stimulating and you can feel your excitement growing as his heavy balls slap against your thighs with each thrust the little fellow makes.";
		say "     'Mmm... I am almost tempted to keep you as a little fucktoy.  I'd breed you full of cute little mice over and over again.  I bet you'd like that, you slut' he teases, tweaking your nipples.  'But I can't afford any distractions right now.  I'll just have to stuff you full of hot mouse cum and dump you like the trash you are.'  And with that, he slams hard into you, unleashing a torrent of thick mouse cum from his oversized balls.  You can feel it fill your pussy to capacity and overflowing as much of it pushes and flows up into your womb.";
	otherwise:			[monstrous mouse]
		say "     The monstrous mouse climbs onto the operating table, making it groan from the added weight.  That malformed, musine face grins down at you as he lines up his cock with your pussy, making it clear what final injection he has in mind.  You struggle and try to shake your head, but the restraints keep you locked in place.  He grins and thrusts his cock hard into you.  You release a muffled groan as the massive prick spreads your pussy open.  Thankfully, some of the elasticized effect still remains and your vagina stretches to accommodate the huge cock with minimal pain.";
		say "     You can see the audience has become quite worked up again, most of them partaking in sex with their colleagues.  A jaguaress is getting pounded by one of the jaguars while several others spray their seed across her body.  One vixen herm, who you suspect is the same from earlier, has lured one of the owls away from the sturgeon and is giving her a lap ride on her cock while playing with those enormous, feathered tits.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     The mouse's large paws fondling your breasts brings you back to focusing on him.  His gloved paws tease your nipples and he laughs happily, aroused with his power over you.  His monstrous cock is quite stimulating and you can feel your excitement growing as his heavy balls slap against your thighs with each thrust the mutated mouse makes.  That spaded tip presses at your cervix, trying to spread it open while the ridges along his shaft feel so delightful against your vaginal walls.";
		say "     'Mmm... I am almost tempted to keep you as a little fucktoy.  I'd breed you full of cute little mice over and over again.  I bet you'd like that, you slut' he teases, tweaking your nipples.  'But I can't afford any distractions right now.  I'll just have to stuff you full of hot mouse cum and dump you like the trash you are.'  And with that, he slams hard into you, unleashing a torrent of thick mouse cum from his oversized balls.  His spaded glans, pressed against your cervix, forces it to spread open, allowing the bulk of his mutated load to flow up into your womb in an attempt to breed you.[impregchance][impregchance]";
	say "     Panting, the mad doctor withdraws his spent shaft and hops down with a grin.  He raises his arms to the crowd, who manage some dignified clapping despite the major orgy that's broken out across most of the audience section.";


to say hospvictory:
	say "     The monstrous Dr Mouse has been dazed by your final blow and has collapsed against a worktable at the far end of the room.  He's overturned the nearby water dish and broken the chemical toilet.  As the pair of mismatched chimera poke their heads around behind it, having hidden during the fight, you realize just where he's landed.";
	say "     They scramble over to him, moaning softly with sexual need.  Their hard cocks and dripping pussies leak their fluids onto him.  One presses its breast to his lips and the addled doctor soon nurses from it, making the chimera coo happily.  The other grabs the doctor's cock and sinks itself down onto it, spurting cum onto his chest as it does.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if hp of doctor matt is 100:
		say "     Feeling that the doctor is in good hands, you quickly look around the room, gathering any notes and samples you can find from the doctor's work area into one big pile.  Worried that someone may notice the commotion and come up to investigate, you don't take any time to look at the stuff.  You toss the contents from the doctor's storage case onto the heap.  After tearing open his notebook and breaking his laptop, you add them to it.";
		say "     Reluctant to set a fire that could spread and take out the whole hospital, you instead pour a variety of chemicals onto the accumulated research.  Thankfully there are several strong acids used for testing which do an effective job of destroying the material.  Having seen what this twisted work has created, you don't want to leave someone else finding it and restarting it, nor do you know anyone you could trust with it.  That done, you turn back to check in on the mad doctor and his mismatched lovers.";
	otherwise:
		say "     Feeling that the doctor is in good hands, you quickly look around the room, grabbing what notes and samples you can from the doctor's work area.  Worried that someone may notice the commotion and come up to investigate, you rush to find as much as you can carry.  You take several interesting vials and concoctions from the storage case, carefully stowing them in some padding.  The doctor's laptop and research notebook go in there as well.";
		say "     Having gathered what you could and breaking or spilling chemicals onto the other stuff to keep anyone from following Dr Mouse's research, you turn back to see take another look at the mad doctor and his mismatched lovers.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     The chimeras have continued to feed and fuck him, resulting in a seemingly random array of changes to his body starting to arise.  His head has lost its mouse-like qualities entirely and becomes leonine.  While his right arm becomes that of some kind of lizard, his left one bifurcates into a pair of smaller limbs, one an avian wing and the other a monkey's arm.  One leg gains a horse's hoof while the other has a goat's.  His tail becomes long and serpentine, covered in red scales.";
	say "     When breasts start to form on what was once the mouse's chest, the chimera riding him pulls off his cock, which is now wholly canine in form, and drives its cock into the new pussy under his balls.  That is enough to stir Dr Mouse to wakefulness, but what little intelligence there is in those eyes is fading rapidly as the infection takes over fully.  The new herm moans lustfully and wraps her mismatched legs around the chimera's waist, yowling with mindless need.";
	say "     The second hybrid pulls its breast from their captive's muzzle and replaces it with its cock instead.  The ex-mouse takes it into its mouth eagerly, licking and sucking with need.  As the new hybrid continues to be mated by the fractured creatures of its own creation, there is nothing but lust in those vacant eyes as she succumbs fully.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Satisfied that the mouse is no longer a threat, you step over to the worktable and break off the anchor points for the chains.  The trio, too engrossed in sex, don't react more than looking up at you and mewling enticingly for you to join them.  Now freed, you are satisfied that the two unfortunate creatures will not be trapped to starve, and that they and their new companion can instead join the others like them in the hospital, where the doctor will never be heard from again.";
	say "     Your task done, you decide to linger no longer and quickly go down the stairs.  Acting as if nothing is amiss, you walk past the jaguar guarding the stairwell and exit the hospital.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	now the player is in City Hospital;
	if hospquest is 10:		[Refused upon offer]
		say "     Outside, you find the pink raccoon waiting for you fretfully on the steps.  Seeing you come out alive and well, he dashes into your arms and hugs you tightly.  Not wanting to cause a scene, you whisper to him to be quiet and come with you.  He takes your hand in his, prancing happily beside you.";
		if pink raccoon is tamed:
			say "     You go down a side street with him and duck into a vacant building to collect your thoughts safely away from the hospital.  The pink coon cuddles up to you, vacant eyes looking up at you with admiration, somehow knowing that you've dealt with the mouse that filled him with such fear.  You pet his ears and he churrs softly[if hp of doctor matt is not 100].  You know that you need to go see Dr Matt right away, wanting to turn over the research material to him before doing anything else[otherwise].  Now without scientific help, you wonder what to do next[end if].";
		otherwise:
			say "     You go down a side street with him and duck into a vacant building to collect your thoughts safely away from the hospital.  The pink coon cuddles up to you, thanking you again for helping to get him out of there.  While he doesn't say anything about it, he looks at you with considerable admiration, somehow knowing that you've dealt with the mouse that filled him with such fear.  As he starts to fret about where he can now go, you decide, on impulse to tell him about the bunker under the abbey library and give him directions[if hp of doctor matt is not 100].  You know that you need to go see Dr Matt right away, wanting to turn over the research material to him before doing anything else[otherwise].  Now without scientific help, you wonder what to do next[end if].";
	otherwise:
		say "     Outside, you go down the steps and walk across the large parking lot quietly but quickly.  You try not to draw attention to yourself, but want to flee the area as soon as possible, lest the events upstairs are discovered sooner rather than later.  As you walk off down a side street, you [if hp of doctor matt is not 100]know that you need to go see Dr Matt right away, wanting to turn over the research material to him before doing anything else[otherwise]wonder what to do next now that you are without scientific help[end if].";
	wait for any key;
	now hp of doctor mouse is 2;
	now Locked stairwell is locked;
	now hospquest is 13;
	increase the score by 50;
	if hp of doctor matt is not 100:
		now the player is in Primary Lab;


fightstatus is a number that varies.

to say tlabsbigfight:
	say "     You silently step up behind Dr Matt and stab the needle into him.  He cries out for Orthas and jabs a finger into an emergency button, sounding an alarm as well.  Trying to free himself from your grip, he struggles to reach the anti-infection microwave device he has on his desk.  As you fight to hold him, his now useless environment suit starts to come off.";
	attempttowait;
	project the icon of Sally;
	say "     You can see that he's becoming some strange hybrid of husky and rabbit, with a cute, rabbit-like muzzle and ears, but a coat of fluffy fur and curled tail like a husky.  As six breasts with perky nipples start to form on his chest and a wet slit grows in under his fuzzy sheath, the struggles to get away start to become lustful grinding against your body as the hormones course through her system, clouding the doctor's judgment.";
	attempttowait;
	say "     You are about to take advantage of the situation, finding the transformation and the doctor's aroused pheromones quite enticing, when the door slams open almost off its hinges as an angry dragon bursts in.  Orthas growls loudly, quickly taking stock of sight of you about to have your way with the transformed doctor, sending her into a blind rage.";
	if Susan is visible:
		attempttowait;
		say "     As Orthas steps forward to fight you, she is struck hard on the back of the head by Susan, surprising you both.  The heavy oscilloscope the doe used to hit her falls to the ground as the dragoness shoves her back violently, stunning her.  Without understanding the conflict, the doe has clearly sided with her mate.  Your nanite bond with her fills you with a warm rush of affection for her.";
	now fightstatus is 3;
	now inasituation is true;
	challenge "Dragon";
	now inasituation is false;
	if fightstatus is 3:
		now fightstatus is 0;
		say "[tlranaway]";
	if fightstatus is 2:
		now fightstatus is 0;
		say "[tlloss]";
	if fightstatus is 1:
		now fightstatus is 0;
		say "[tlvictory]";


to say tlranaway:
	say "     Scared to continue fighting the maddened dragoness, you make a run for it[if Susan is visible].  Susan, who is just starting to recover, sees you flee and follows you out[end if].  As you reach the stairs down, you glance back to see Orthas trying to work the microwave neutralizer over Dr Matt's body to halt the infection.  It seems that your attack was at least partially successful, for the new hybrid herm has difficulty stopping herself from rubbing her new body and the dragoness's.";
	say "     Orthas, catching sight of you out in the hall, growls and charges out after you.  You run down the stairs quickly and rush out the front door with her in hot pursuit.  As you rush down the steps, you are caught in a fiery blast that burns your flesh and sends you tumbling end over end.  The black dragoness growls from the doorway and slams it shut violently, heading back up to check on the doctor again.";
	say "     In terrible pain, you struggle to rise, managing to pull out the radio and call the hospital for extraction[if Susan is visible].  Susan, only partially caught in the blast, is only a little better off than you.  She helps you[otherwise].  With considerable effort, you[end if] get up and put some distance between you and the lab before the dragoness can return to finish the job.  You manage to get about a block away before the helicopter arrives, taking you [if susan is visible]both [end if]back to the hospital.";
	extend game by 20;
	say "[line break]";
	wait for any key;
	now hp of doctor matt is 101;
	move doctor matt to dark basement;
	move orthas to dark basement;
	if Susan is visible:
		move susan to Hidden Lab;
	now the door west of Outside Trevor Labs is locked;	[not sure how to do this]
	now hospquest is 12;
	now the player is in Hidden Lab;
	say "[posttlscene]";


to say tlloss:
	say "     While Orthas attempts to treat the doctor, [if susan is visible]Susan starts to recover and slips out of the room to join you in the hall, helping you to get up and get away[otherwise]you manage to get back on your feet and start to head down the hall away towards the exit[end if].  As you make it to the stairwell down, you glance back.  Orthas, catching sight of you out in the hall, growls and charges out after you.  You run down the stairs quickly and rush out the front door with her in hot pursuit.  As you rush down the steps, you are caught in a fiery blast that burns your flesh and sends you tumbling end over end.  The black dragoness growls from the doorway and slams it shut violently, heading back up to check on the doctor again.";
	say "     In terrible pain, you struggle to rise, managing to pull out the radio and call the hospital for extraction[if Susan is visible].  Susan, only partially caught in the blast, is only a little better off than you.  She helps you[otherwise].  With considerable effort, you[end if] get up and put some distance between you and the lab before the dragoness can return to finish the job.  You manage to get about a block away before the helicopter arrives, taking you [if susan is visible]both [end if]back to the hospital.";
	decrease score by 50;
	extend game by 20;
	say "[line break]";
	wait for any key;
	now hp of doctor matt is 101;
	move doctor matt to dark basement;
	move orthas to dark basement;
	if Susan is visible:
		move susan to Hidden Lab;
	now the door west of Outside Trevor Labs is locked;	[not sure how to do this]
	now hospquest is 12;
	now the player is in Hidden Lab;
	say "[posttlscene]";


to say tlvictory:
	if cocks of player > 0:
		say "     Dr Matt moans as she is clearly torn between the struggles to get to the microwave neutralizer and to enjoy the newly sexualized body.  'No, I need... mustn't give... but so good.  Why did I ever... ngg... but my work...'  Deciding to make the decision for her, you push the horny hybrid onto one of the tables and tease her six breasts.  The transformed doctor releases a soft yip and pants, reaching for your stiff penis despite the conflict in her failing mind.";
		say "     Happy to oblige, you line up your cock her pussy, then slowly slide it into her.  Dr Matt arches her back and moans loudly, spraying cum from her canine cock across her ample bosom as her virginity is taken.  'Oh my god, yes!' she cries in ecstasy.  The lustful huskybunny's pussy squeezes and tugs at your cock eagerly, the slutty body responding automatically to a hard shaft filling it.  You grunt as the herm's vagina works you over so eagerly, starting to thrust hard and fast into her.";
		attempttowait;
		say "     Pinned to the table beneath you, the transformed doctor moans and yips as you fuck her good and hard, fulfilling the instinctual needs that are rapidly becoming all she knows.  You grin as you watch her, once a brilliant scientist, become a mindless sextoy as you screw her.  Her cute, rabbitty face smiles up at you and her husky tail wags happily as she's quite literally fucked senseless.";
	otherwise:
		say "     Dr Matt moans as she is clearly torn between the struggles to get to the microwave neutralizer and to enjoy the newly sexualized body.  'No, I need... mustn't give... but so good.  Why did I ever... ngg... but my work...'  Deciding to make the decision for her, you push the horny hybrid down to the floor, straddle and tease her six breasts.  The transformed doctor releases a soft yip and pants, grinding her stiff cock up against you.";
		say "     Happy to oblige, you line up your pussy with her cock, then slowly slide it into you.  Dr Matt arches her back and moans loudly, releasing a spurt of cum from her canine cock, but remaining quite hard and starting to thrust up into you.  'Oh my god, yes!' she cries in ecstasy.  The lustful huskybunny's cock throbs inside you, pulsing with excitement as her slutty body responds automatically to the hot grip of a pussy around it.";
		attempttowait;
		say "     Pinned to the floor beneath you, the transformed doctor moans and yips as you fuck her good and hard, fulfilling the instinctual needs that are rapidly becoming all she knows.  You grin as you watch her, once a brilliant scientist, become a mindless sextoy as you ride her canine cock.  Her cute, rabbitty face smiles up at you and her husky tail wags happily as she's quite literally fucked senseless.";
	if susan is visible:
		attempttowait;
		say "     Hearing some soft moans behind you, you glance over to find Susan has gotten in on the action and is driving her cock into Orthas.  The black dragoness moans weakly, still largely incapacitated from her fight with you.  The smaller doe pounds away at the dragon's cunt aggressively.  'I've seen you eyeing my mate.  He's mine, you slut.  Take my fucking cum instead, you black bitch.'";
		say "     You have never known Susan to show any interest in using her cock before, so the sight of her pounding away at the dragon is quite surprising and arousing.  She pinches and squeezes the dragoness's huge breasts, teasing her nipples.  Orthas moans and starts rocking her hips up to meet each thrust, responding to the aggressive mating she's getting from the smaller doe herm.";
		attempttowait;
	if cocks of player > 0:
		say "     Your groin is thoroughly soaked with the huskybunny's feminine juices, as she's already cum several times.  You wrap a hand around her large, throbbing cock and focus on seeding her properly.  The feel of the new hybrid's pussy around you is so good.  Dr Mouse's formula has worked wonders on the scientist, making a wonderful fucktoy that is certainly one of the best fucks you've ever had.";
		attempttowait;
		say "     With a final, hard thrust into her, you push your cock as deep as you can and unleash your hot load.  Your cum spurts deep inside her and her body responds instantly, tugging and milking at your shaft for all you'll give and pulling it up into her womb.  Pulling your spent shaft free, you wipe it clean on one of her big, fuzzy rabbit feet.";
	otherwise:
		say "     Your groin is thoroughly soaked with the huskybunny's feminine juices, as she's already cum several times without even being filled.  You lean down, licking and nibbling at her nipples as you focus on the throb of that thick cock filling you.  It feels so good inside you, stimulating all your sensitive spots and instinctively taking on a rhythm to give you the most pleasure.  Dr Mouse's formula has worked wonders on the scientist, making a wonderful fucktoy that is certainly one of the best fucks you've ever had.";
		attempttowait;
		say "     With a final, hard push down onto her, you take her cock as deep as you can, moaning as the knot spreads you open and ties with you.  You can feel her heavy balls unleash her cum inside you, flowing up into your vagina and womb in an attempt to breed you.  You arch your back and moan loudly, clamping your vaginal walls firmly around it.  Her earlier spurts were nothing compared to the torrent of cum of her actually attempting to breed you.  It fills your womb and suffuses your body with an arousing warmth.";
		say "[sallyimpreg]";
		say "     As the knot starts to go down, you pull yourself off of the little slut's cock and grin happily.  You take a quick look around, taking stock of the situation in the lab.";
	if susan is visible:
		attempttowait;
		say "     You glance back over to the other pair and find Susan finishing up as well.  Her ballsac tightens up as she unleashes spurt after spurt of her seed into the dragoness.  Her orgasm lasts quite a long time, apparently having a considerable load saved up from lack of use.";
		if hp of Orthas > 1:
			say "     As the dragoness's belly starts to swell with the telltale sign of her eggs, the doe withdraws her shaft and grins to you.  'Bring that perv over here, hon.'  You nod and pull the huskybunny slut over, tossing her atop the dragoness.  She moans and grinds her cock against Orthas's belly as the dragoness's ovipositor starts to emerge.";
			say "     'No, doctor.  Don't,' she moans, but cannot help herself as her body's urges push the ovipositor into the dripping and eager snatch right above it.  She whimpers a little, but works the flexible, probing flesh deeper in, starting to rut the mindless sextoy whom she's failed to protect.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     You and Susan set to work gathering up the research material and nanite adjustment system.  You load the items onto a cart, adding the infection terminal as well.  This work is broken up by occasional glances over at the lustful pair, watching as the dragon eggs start sliding through the ovipositor and into the slut's womb.";
		otherwise:
			say "     Having finished thoroughly seeding the dragoness, the doe withdraws her shaft and grins to you.  'Bring that perv over here, hon.'  You nod and pull the huskybunny slut over, tossing her atop the dragoness.  She moans and grinds her cock against those smooth, hard scales.";
			say "     'No, doctor.  Don't,' Orthas moans, but cannot help herself as the huskybunny's cock is lined up with her pussy, then drives into her.  She whimpers a little, but arches her hips up into the thrusts, starting to rut with the mindless sextoy whom she's failed to protect.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     You and Susan set to work gathering up the research material and nanite adjustment system.  You load the items onto a cart, adding the infection terminal as well.  This work is broken up by occasional glances over at the lustful pair, watching as the huskybunny drives her cock into the muscled dragoness again and again.  As you are heading out, you can hear the huskybunny yip loudly, cumming hard into dragoness and stuffing her full of even more cum.";
	otherwise:
		say "     You glance over at Orthas and wonder what to do with her.  You have a lot of work to do and she's starting to recover.  She'll need something to keep her out of your hair.  Perhaps you can let her and the new Dr Matt get reacquainted.  Otherwise, you could try locking her up somewhere to keep her out of trouble, letting you keep the new fucktoy for yourself.  (Y=Use Dr Matt, N=Lock her up)";
		if the player consents:
			say "     You glance over at Orthas and decide not to leave her out of the action.  Grabbing the little slut, you pull her off the table and over to the dragoness.  Tossing her down onto her black body, you watch as the creature that was once Dr Matt starts to grind her cock against those smooth, hard scales.";
			say "     'No, doctor.  Don't,' Orthas moans, but cannot help herself as the huskybunny's cock is lined up with her pussy, then drives into her.  She whimpers a little, but arches her hips up into the thrusts, starting to rut the mindless sextoy whom she's failed to protect.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     You set to work gathering up the research material and nanite adjustment system.  You load the items onto a cart, adding the infection terminal as well.  This work is broken up by occasional glances over at the lustful pair, watching as the huskybunny drives her cock into the muscled dragoness again and again[if hp of Orthas > 1].  As you are heading out, you can see that the dragoness's belly is starting to swell with eggs and her ovipositor is pushing those eggs into the furry slut's womb[otherwise].  As you are heading out, you can hear the huskybunny yip loudly, cumming hard into dragoness and stuffing her full of even more cum in an attempt to breed with her[end if].";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		otherwise:
			now hp of doctor matt is 104;		[Claimed Dr Matt as pet]
			move Sally to bunker;
			now lust of Sally is a random number between 0 and 4;
			decrease humanity of player by 5;
			increase score by 50;
			say "     You grab battered dragoness and drag her out into the hall, wondering what you can do with her.  A quick glance at the other labs shows their doors to be just as flimsy as the one she already broke through, so that's no good.  You glance at the stairwell back to the main floor and that is when it hits you.  There is that sealed basement beneath the lab.  The heavy door should keep her contained for a while and the creature down below would certainly keep her occupied until you're done.  Following through on this plan, you toss her down into the sealed basement and call out to draw the monster's attention to the dazed dragoness before fleeing upstairs and barring the door.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     With her out of the way, you go back upstairs and find your new fucktoy bent over and sucking her own cock with wet moans of delight.  You grin and fondle her balls until she cums and get her to pump a load down her own throat, then coax her easily to come along with you.  Deciding to call her Sally now, you lead your plaything back to the bunker as quickly as you can.  Once inside, you leash her to one of the bunks to keep her out of trouble until you want to play with her again.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     Back at the lab, you can faintly hear the sticky sounds of Orthas and the creature below and grin.  Quite pleased with yourself, you get to work gathering up the research material and nanite adjustment system.  You load the items onto a cart, adding the infection terminal as well.  As you are heading out, you can hear the dragoness's loud, lustful roars as the creature has its way with her.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     With Dr Matt, Sally now, locked away for your amusement and Orthas certainly being further corrupted by the monster below, you bring your haul down the stairs in stages and then take it out the door.  Having called for the helicopter pickup earlier, it arrives and you instruct the orderlies to load up the equipment before you all return to the hospital and the laboratory hidden within.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     As the lab fades into the distance you can see the faint sign of incoming choppers coming to land there.  It seems that, with no one there to report in, the military has come to investigate the scene and recover any remaining research material.  Despite this major setback, without anyone reason to hold back in the hopes of more research, they will probably not delay their plans.";
	if hp of doctor matt is not 104:			[Did not claim as pet]
		now hp of doctor matt is 102;
		extend game by 56;
		say "     With Dr Matt in good hands, you [if Susan is visible]and Susan [end if]bring your haul down the stairs in stages and then take it out the door.  Having called for the helicopter pickup earlier, it arrives and you instruct the orderlies to load up the equipment before you all return to the hospital and the laboratory hidden within.";
		say "     As the lab fades into the distance you can see the faint sign of incoming choppers coming to land there.  It seems that Orthas called in the military to take the transformed doctor and any remaining research material.  They've been dealt a sizeable setback to their plans.";
	decrease the humanity of player by 5;
	increase score by 50;
	say "[line break]";
	wait for any key;
	move doctor matt to dark basement;
	move infection terminal to Hidden Lab;
	if Susan is visible:
		move susan to Hidden Lab;
		now hp of Susan is 50;
	now the door west of Outside Trevor Labs is locked;	[not sure how to do this]
	now hospquest is 12;
	now the player is in Hidden Lab;
	say "[posttlscene]";


altsealedentrance is a truth state that varies.

instead of going to Trevor Labs Lobby while hospquest > 11:		[Lab unenterable after attacking Dr Matt/stealing feat machine]
	if hp of doctor matt > 100:
		if altsealedentrance is false:
			if hp of doctor matt is 101:
				say "     After having fled the wrath of Orthas, you dare not try to enter again and risk facing her fiery breath.";
			otherwise if hp of doctor matt is 102:
				say "     Having picked up Orthas and the transformed Dr Matt from the lab, it seems the military blasted the inside of the building, preventing any further theft of any sensitive technology and notes they could not take with them.  The building is no longer accessible, not that anything of value could have survived.";
			otherwise if hp of doctor matt is 103:
				say "     The self-destruct charges have done their job and much of the inside of the building has collapsed.  It is no longer accessible, not that anything of value could have survived.";
			otherwise if hp of doctor matt is 104:
				say "     Having searched the facility and being unable to locate Dr Matt, and possibly even running afoul of a corrupted, lustful dragoness, it seems the military blasted the inside of the building, preventing any further theft of any sensitive technology and notes they could not take with them.  The building is no longer accessible, not that anything of value could have survived.";
			say "     Not wanting to give up entirely, you search around the area, heading down the hillside behind the building.  After a little looking, you find what you're looking for - a hidden loading dock for that underground area beneath Trevor Labs.  The security gate leading to the loading dock has been knocked down, pushed down by some great force from the inside - you hope just a fleeing truck - and the guardhouse is empty save for some torn clothes and messy stains.";
			say "     Cautiously, you head into the loading dock to look around.  There's a few more clothes and stains scattered around as well as several heavy loading doors leading deeper into the underground complex.  Careful examination of the clothing finds what you need, a keycard which is able to open the personnel door leading to an access stairwell, should you dare to enter the sealed area.";
			now altsealedentrance is true;
			increase score by 1;
			move player to Loading Dock;
		otherwise:
			move player to Loading Dock;
	otherwise:
		now the player is in Trevor Labs Lobby;


Loading Dock is a room.
The description of Loading Dock is "This loading dock is discretely placed behind and down the hill from Trevor Labs.  The security gate outside it has been broken open.  From the scattered clothes and splatters of dried, musky fluids around, it seems like some of those infected within got out before the security doors were closed.  Using the keycard you found, you can slip in this way to go [link]down[end link] into the underground labs if you'd like.  Otherwise, you can head [link]east[end link] around the hill again to get back to the main road.".

undergroundlab is a door. undergroundlab is dangerous.
Down of Loading Dock is undergroundlab.
Down of undergroundlab is darkbasement2.
The marea of undergroundlab is "Sealed". The description of undergroundlab is "A security-locked door that is armoured and sealed.  Thankfully, the security card you found opens it.".

the scent of Loading Dock is "This place has the stale smell of sex, as if nothing's left this place for some time.".

aroundthehill is a door.  east from Loading Dock is aroundthehill.
east of aroundthehill is darkbasement2.

instead of going east from Loading Dock:
	move player to Outside Trevor Labs;

darkbasement2 is a room.  [placeholder room for the doors]


to say posttlscene:
	say "     Returning to the hospital, you are greeted by Dr Mouse on the helipad.  As he and the orderlies escort you [if Susan is visible]and Susan [end if]down to his lab, you relate to him your [if hp of doctor matt is 101]partial [end if]success at Trevor Labs.  The mouse is [if hp of doctor matt > 101]very [end if]pleased with the results.";
	if hp of doctor matt is 101:		[fled/lost fight]
		say "     'While the infection was not complete, the partial effects you described should severely hamper his... ahem... her abilities to continue her research.  At the very least, it will slow down their progress and I can take the lead.  While it is unfortunate that you did not get their nanite adjustment system, its gains would have largely been short term.  I should still be able to provide the same service as Dr Matt did for you.  Simply ask to [bold type]volunteer[roman type] for an upgrade and I will take care of it for you.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     'Now, I have taken the liberty of perusing the hospital files and preparing a false identity from the patient records when the military finally do move into the city[if susan].  I will prepare one for your friend as well[end if].  They are physically similar to you, have no next of kin and won't be turning up to throw a wrench into things.'  It seems that the good doctor has been thinking ahead for you.";
	if hp of doctor matt is 102:		[won fight - did not keep Sally]
		say "     'From your report, you have done an excellent job.  The complete removal of my rival as competition to discover the nanites['] secrets will make my knowledge all the more valuable.  And these notes and equipment will be of great benefit in the here and now.'";
		say "     'With them, I can more readily test the parameters of the nanites['] abilities and distribute any improvements I discover much more easily.  Once I have this hooked up, I should be able to provide services like the doctor did, but with many more options to you.  Simply ask to [bold type]volunteer[roman type] for an upgrade and I will take care of it for you.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     'Now, I have taken the liberty of perusing the hospital files and preparing a false identity from the patient records when the military finally do move into the city[if susan].  I will prepare one for your friend as well[end if].  They are physically similar to you, have no next of kin and won't be turning up to throw a wrench into things.'  It seems that the good doctor has been thinking ahead for you.";
		now featunlock is 1;
	if hp of doctor matt is 103:		[took from empty lab]
		say "     'You have done an excellent job.  This device just what I need to more readily test the parameters of the nanites['] abilities and distribute any improvements I discover much more easily.  Once I have this hooked up, I should also be able to provide many more options to you with it.  Simply ask to [bold type]volunteer[roman type] for an upgrade and I will take care of it for you.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		now featunlock is 1;
	if hp of doctor matt is 104:		[kept Sally]
		say "     'From your report, you have done an excellent job.  Making my rival into a mindless slut completely removes him as competition to discover the nanites['] secrets and will make my knowledge all the more valuable.  The good doctor is of little use to me in his - or should I say her - current state, so you are welcome to keep her for your own amusement, as agreed.  And these notes and equipment will be of great benefit in the here and now.'";
		say "     'With them, I can more readily test the parameters of the nanites['] abilities and distribute any improvements I discover much more easily.  Once I have this hooked up, I should be able to provide services like the doctor did, but with many more options to you.  Simply ask to [bold type]volunteer[roman type] for an upgrade and I will take care of it for you.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     'Now, I have taken the liberty of perusing the hospital files and preparing a false identity from the patient records when the military finally do move into the city[if susan].  I will prepare one for your friend as well[end if].  They are physically similar to you, have no next of kin and won't be turning up to throw a wrench into things.'  It seems that the good doctor has been thinking ahead for you.";
		now featunlock is 1;
	if susan is visible:
		say "     'Your friend should stay here for the moment as well.  If this Dr Matt found value in observing her, I should do so also.  It sounds like he left you with nothing to do all day, my dear deer.  Perhaps you would be willing to help me out with a few simple tasks around the lab?'  Susan smiles and nods politely to the little white mouse.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	now hospquest is 14;
	say "     'Now, as a reward for your continued service,' he says, turning back to you.  'I have prepared an injection to boost your physical abilities.  It should result in increased physical strength, agility and endurance, as well as a more athletic body.  It will also work to keep you physically fit against weaker infections.  This should further obscure your identity should you not change species before being found.'";
	say "     With the promise of being stronger and better able to deal with the hardships of the infected city, you hold out your arm for the injection.  There is a shiver of activity inside you as the nanites go to work, bulking up your muscles and improving your physique as a whole.  You become a more rugged version of yourself[if susan is visible].  Susan seems quite impressed by this improved version of you[end if].";
	add "Physical Booster" to the feats of the player;
	increase strength of player by 2;
	increase dexterity of player by 2;
	increase stamina of player by 2;
	increase maxhp of player by ( level of player + 1 );
	increase hp of player by (level of player + 1);
	now hospcountdown is turns;
	now progress of Doctor Mouse is turns;
	say "[bold type]Your Strength, Dexterity and Stamina are all increased by 2.[roman type][line break]";


Section 6 - Museum Quests - Triceratops

Instead of conversing the Valerie while hospquest is 8 and valhosp is 0 and valtalk > 0:
	now valhosp is 0;
	say "     The jaguars who came by earlier?  How'd you hear about that?  Did the satyrs tell you?  They really got them worked up.  Broke up one of their drinking parties, which is what they're doing all the time.  Well, when they're not playing with the nymphs.  I'm not really sure what they intended to do, but I wasn't going to let them do it in my museum.  They're not very bright, so I posed them a couple of conundrums.  While they were trying to figure them out, I got some of the abstracts from the modern art wing to deal with them.  It hurts my head just to look at them, but it had to be done.  Drove them off and I won't let them back in now.";
	say "     'Anything else you needed to know?' the sphinx asks with an inscrutable grin.";
	if sabtoothed is 0:
		say "     There are several sabretooth cats roaming around the museum.  Don't mess with them if you don't have to.  They're pretty tough.  Not too bright, unfortunately.  They're nice and hung, but I want someone clever as well.";
	if triclamped is 0:
		say "     The triceratops woman is dancing around the halls to the music in her head all the time, but she doesn't wander too far from her nest in the dinosaur wing.  She's got lots of stuff in there.  She raided several of the modern history displays and probably a few stores in the neighbourhood as well for that stuff.  She's very possessive of her collection.  Having it around keeps her happy, so I don't bother the silly girl about it.  If you want to take any of it, she'll show you her moves.";
	if nerminepackage is 2:
		say "     The Viking great longboat?  It's a brand new exhibit.  One of the museum's archaeologists found it a year ago and it's finally ready and on display.  It dates back about a thousand years and is the only [italic type]drekar[roman type] ever found.  They were the largest of the Viking ships and feared by all.  I can certainly understand why you'd want to see it while you're here.  It's in the Medieval History wing.  Just follow the signs for the Viking Longboat.";
	now valhosp is 1;

Dinosaur Nest is a situation.
The sarea of Dinosaur Nest is "Museum".
Dinosaur Nest is resolved.		[unable to do this until activated]
nesteddino is a number that varies.
dinonest is a number that varies.
dnfightresult is a number that varies.
valhosp is a number that varies.

Instead of resolving a Dinosaur Nest:
	if nesteddino is 0:
		now nesteddino is 1;
		say "     Your search of the museum brings you to the dinosaur wing.  There the great thunderlizards are on display.  You try to move quietly between the displays, trying to fulfill, perhaps foolishly, Dr Mouse's request for dinosaur hunting.  You move around, eventually find a large pile of junk in one corner that may be what you're looking for.  A mound of debris, tacky cushions, kitschy knick-knacks and old clothes have been build into a large nest.  You head over to it and start poking through it in the hopes of finding something.";
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
		say "     Having bested the triceratops woman, you can finish searching her nest in the hopes of finding something to satisfy the mouse doctor.  You dig around in her collection of old stuff, but don't see anything for some time.  Eventually, you instead smell something and soon track the scent to a lava lamp.  Unplugged, the glass lamp is off its stand and is coated in a wet sheen of fluids.  Guessing the strange creature has been using it for some improvised fun, you wrap it in a paisley shirt and pack it away.";
		say "     Lava lamp collected.";
		increase carried of lava lamp by 1;
		increase score by 10;
		now Dinosaur Nest is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"lava lamp"	"     Inside the paisley shirt, you see a rather sticky lava lamp."	3	lava lamp

lava lamp is a grab object.
it is part of the player.
It is not temporary.
lavalamplick is a number that varies.

the scent of the lava lamp is "[smellingthelavalamp]".

to say smellingthelavalamp:
	if lavalamplick is 0:
		say "     You sniff the improvised lava lamp dildo.  It smells strongly of the triceratops woman's arousing scent.  You find yourself tempted to lick it.  Do you follow your urge? (Y/N)";
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
		say "     You give the improvised lava lamp dildo another sniff.  It smells strongly of the triceratops woman's arousing scent.  You find yourself considering licking it again, but bundle it back up.  If you lick it further, you may end up cleaning it off and Dr Mouse will be out of luck.";

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

[  --  Moved to their dialog sets
Instead of conversing Rod Mallrat while nerminepackage > 0 and rodhosp is 0:
	say "     'Those big, spotted hairballs that rolled in here the other day?  That was a bad scene, dude.  They started to get fresh with some of the girls in the atrium and tried to drag them off.  Well, we wouldn't put up with that.  Never try to force a mall rat from their mall, man.  We don't want none of them goons and their friends in here again.'";
	now rodhosp is 1;

Instead of conversing the Ronda Mallrat while nerminepackage > 0 and rondahosp is 0:
	say "     'You asking about those macho hairball rejects from Shock Therapy?  Suzie and Anna were talking to them after they rolled in here like they owned the place.  Just a little playful flirting to tease their boys.  No harm in it.  But the kitties started getting fresh.  They offered them a ride in their swanky helicopter, which was tempting, but that'd mean leaving the mall, so the girls said [']No way['].'";
	say "     'Well, those kitty-litter heads didn't like that and started to get pushy about it.  By that point, their boyfriends had had enough and rallied the troops to deal with them.  That slutty vixen came running out of the store and the dude on her radio was squawking to know what was happening.  We kicked the lot of them out.  They came poking back once or twice, but they're not allowed to shop here anymore.  We told Bruno, he's security, on them and that crazy wolverine and a few of the boys sent them packing.'";
	now rondahosp is 1;
]

Viking Longboat is a situation.
The sarea of Viking Longboat is "Museum".
Viking Longboat is resolved.		[unable to do this until activated]
lbfight is a number that varies.
longboatfind is a number that varies.
rondahosp is a number that varies.
rodhosp is a number that varies.

Instead of resolving a Viking Longboat:
	if longboatfind is 0:
		say "     Travelling through the museum, you come to the exhibits dealing with the Middle Ages in Europe and its centerpiece, the Viking longboat.  It is a huge ship with a carved dragon at its prow and wooden shields and spears along each side.  It is on display in the center of the room, taking up most of the space in the large hall, with a velvet rope barrier around it.  You are about to hop the barrier when you realize that you need to find a way to scale the ship and get aboard.";
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
			increase carried of spear by 1;
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

spear is an armament. It is part of the player. It has a weapon "[one of]your spear[or]the Viking spear[at random]". The weapon damage of spear is 9. The weapon type of spear is "Melee". It is not temporary.

the scent of the spear is "The Viking spear smells of ancient battles.  The scent gets your blood pumping for battle.".

Instead of conversing the Nermine while nerminepackage is 3:
	increase carried of package by 1;
	say "     'Have you been finding the dragon's eyes for Nermine?' she asks.  'Wonderful.  Most beautiful,' she says as she holds them up to the light and gazes through them.  'Even older than I thought, long before put on that ship.  Long history.  Nermine is very pleased to have these.  So much so I will give you some advice.'";
	say "     'White mousey doctor is wanting something from Nermine's shop.  People who want things from my store often get exactly what they were looking for.  Be careful with mousey doctor, not get hurt,' the jackal woman says.  'The item in the box is quite old, much of its strength has faded, but it still came from a powerful creature long ago.'";
	say "     The package for Dr Mouse has been obtained.";
	if spear is owned:
		say "     'And you appear to be most lucky, little helper,' she adds, taking note of the spear you have.  'That is spear of great Viking chief who commanded the boat.  A rare find, such a thing,' she says with a little greed in her eye, as if trying to come up with a suitable trade to tempt it away from you.";
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

the scent of the package is "The old box smells of dust and times long past that may never have been at all.".


Section 8 - Hospital Quest 2

to say hospquestpt11:
	if hospquest is 14:
		if progress of doctor mouse - turns < 20:
			say "     'I don't have anything more for you to assist me with at the moment,' the white mouse replies to you inquiry. 'I have a lot of material to study.  It should be very enlightening.  I'll need more time to figure out what can be done with all of this,' he adds with a dismissive wave as he checks some readings.";
			if hp of Susan is 50:
				say "     'Why not talk to your doe friend?  Perhaps you could entertain her for a bit,' he adds, not looking up from his work.";
		otherwise:
			say "     'I'd mentioned needing time to analyze the materials you've obtained for me and, while progress on this is being made, it is proving more difficult than first anticipated.  I am learning much, but have little in the way of new substantial results.  Regardless, I do have a task for you while I work on that.  I have been in contact with some concerned parties about the state of matters here in the city, as they are interested in the events taking place.  But before they can move, they'd prefer some better information from someone [']in the field['], as it were.  I told them I know just the one for the job,' he says with a friendly smile and a pat on your back.";
			say "     'What they're looking is pretty straightforward, needing more information on key locations throughout the city.  It'd be much easier for their associates to do their work if knew some of the safer routes around the city.  These men can then use these key locations as starting points or pick-up spots once they're successful in their... operations.  You should begin exploring the city, finding as many points that you can navigate between as you can.  Being aware of these and knowing routes to travel between them will help keep my associate's men safer while trying to do their work.  They are requesting a report on at least 50% of the city.'";
			now hospquest is 15;
	if hospquest is 15:
		if number of fasttravel rooms > ( number of known fasttravel rooms * 2 ):
			say "     You fill Dr Mouse in on what you've been able to learn about the city and the safer paths to travel through it.  'Based on the information you've been able to provide me, you only have about [ ( number of known fasttravel rooms * 100 ) / ( number of fasttravel rooms )]% of the city covered.  The associates I'm dealing with are requesting information on at least 50% of these locations.'";
		otherwise:
			say "     You fill Dr Mouse in on what you've been able to learn about the city and the safer paths to travel through it.  'Based on the information you've been able to provide me, you have roughly [ ( number of known fasttravel rooms * 100 ) / ( number of fasttravel rooms )]% of the city covered.  That should greatly assist those interested parties with their endeavours.'";
			now tempnum is 100 + ( 4 * number of known fasttravel rooms);
			increase freecred by tempnum;
			increase score by (number of known fasttravel rooms) * 2;
			say "     You have gained [special-style-1][tempnum][roman type] freecred and now have [freecred] freecred.";
			now hospquest is 16;
			attempttowait;
			say "     You'll notice that I was able to provide you with a sum of [']free credits.[']  These are a form of cryptocurrency that the Zephyr conglomorate has implemented.  My few contacts outside the city do confirm that the bulk of the federal government is in disarray and will likely never recover.  As such, Zephyr is clearly positioning themselves to exploit this crisis to place themselves as the new driving force in the nation, if not the world.  As such, it is worth the effort to build ties with them... discretely, of course.  It is certainly clear that they are prepared and in possession of considerable knowledge about the infection and the nanites, so much so that one has to wonder about their role in all of this,' he adds.";
			say "     'I want you to make contact with their representatives on my behalf,' Dr Mouse says as he passes you a manila envelope.  'I've already made an [']arrangement['] with one of their junior executives.  Some [']goods['] will be discretely provided to her and the papers I've given you are authorizations to turn over certain items and data they have in their possession.  These materials will be very useful to my research into the nanites.  As you'll be dealing with the local division of the company, it's unlikely they'll just hand over the data like that, even with these papers.  I'm quite certain they know a lot more than they're letting on, so be wary and don't disclose any unnecessary information to them.'  You nod in understanding.  Were a big, faceless corporation out for power like Zephyr to learn of the kind of enhancements the doctor's been able to provide to you, they'd be quite eager to squash his operation, grab everything and then either resell it as their own product or use it in their own grab for power.";
			say "     The doctor shuffles a few items around on his work table.  'The exec should have contacted the corporate office as well to push through my request.  But this likely won't fully satisfy the peons working at their local office.  In addition to your discretion, I am specifically sending you as a courier for this so you might take care of any further demands these local functionaries may make.  I was told such [']bureaucratic backscratching['] might be necessary.  Given your experience in dealing with the city, you should be able to handle such a request from them.  Get it done by the most expedient means possible that'll satisfy them.  You're too valuable to me to be wasted doing their busywork.'";
			if mattcollection is not 1:
				attempttowait;
				say "     He goes rummaging through a couple of drawers.  'I did come across something which might be of use to you... ah ha!' he says, finally pulling something out.  He's retrieved a cobbled-together device that looks like it was made from an array of wires and lights on a Velcro wristband connected to a handheld game console.  'I found this attached to the infection terminal you had obtained for me recently[if hp of Doctor Matt is not 103] from my would-be rival[end if].  I didn't pay much attention to it at first, thinking it simply a toy left to charge, but it seems to be something more useful.  Once I examined it, I discovered it acts as a personalized infection status monitor, or PISM.  Given its hodge-podge nature, it seems to have been a prototype.'";
				say "     He hands the device over to you to examine.  'Should you make contact with an unknown infection source, you can use the device to check to what degree and which strain has infected your body.  Being out in the field, I suspect such a device will be of some use to you as some strains may be difficult to diagnose until further secondary features or behaviors arise.'";
				attempttowait;
				say "     'The strap can be placed around your wrist, ankle or other limb.  It could even be used with the contacts pressed to your body, if you were ever changed to such a radical degree.  To check yourself, simply connect it to the analysis unit and press these buttons,' he says as he indicates them, 'to show you how the infection has spread through your body.  It has a catalog drawn from this terminal, but unfortunately must remain keyed to you to work and so it presently can't be used to check others.'";
				say "     Infection monitor obtained.  (Quick command: [bold type]pism[roman type])[line break]";
				increase carried of infection monitor by 1;
				increase score by 10;

to say hospquestpt12:
	say "     'I want to thank you very much for all your hard work.  I understand that you were made to do some of the local officials['] work.  The extra effort on your part is appreciated,' he says, organizing the cd-rom among his other materials.  'The addition of this new data should be very revealing and I should be able to advance several of my research projects thanks to it.  Speaking of, I have some preliminary results from my efforts I wish to show you.";
	say "     Doctor Mouse climbs down from his work stool[if Susan is visible] with Susan's assistance[end if] and removes a syringe of fluid from one of the sample fridges.  'I have another enhancement for you,' he says, readying the injection.  At this point, you accept the doctor's offer readily with a nod, holding out your arm to him.  After the injection, you feel a tingling rush pass through you, but don't notice any changes occur.  You're about to ask him what's up when he removes a second needle from storage.";
	attempttowait;
	say "     'One of my projects has been working on an enhanced infection formula for myself.  Some of the materials you've obtained were very helpful in improving upon my earlier iterations.  While I do wish to be free of this feeble form of mine, I'm still not satisfied that I've quite found what I personally want.  As it contains some basic enhancements you should find useful, what I've given you is the first of a two-part injection for the [']Enhanced Chimera['] strain that I've been working on.  It turned out a bit more combat-oriented than I'm looking for, but I felt it might come in helpful for you.  It simply needs the activator,' he says while holding up the second shot, 'to come into effect.  In this manner, I can easily stimulate a full restoration for you should some unforeseen contamination occur.  And don't worry; it has been fully tested.  You'll get results similar to these,' he adds with a dark grin.";
	say "     Taking a file folder[if Susan is visible] from Susan[end if], he passes it to you.  You find it contains several series of photos of before and after images of a few [']volunteer['] test subjects.  'As you can see, the form is quite powerful and very hardy, though your version has been slightly tweaked.  I think it will prove very useful to you while out in the city, granting extra durability and combat aptitude - maximized when you are fully in your chimeric form.  I may be able to provide it with further tweaks and improvements in the future to further fortify my top agent,' he adds with a grin and a pat on the back.  'In addition, you'll find that the chimeras of the hospital will also leave you alone while you bear this infection.'";
	attempttowait;
	say "     You flip through the images quickly, obviously taken from a few test subjects over a couple of iterations, but there's several overall similarities to the large hybrids they've become.  Somewhere between eight and nine feet tall, they have a powerfully muscled body with a broad chest and strong limbs.  The face and muzzle generally vary between canines and felines mostly (depending on the initial subject), but with a leonine mane that cascades over their broad shoulders.  Most have grown a set of horns of some kind, be they bull, ram or other.  Their chests are armoured with heavy scales which, on the females and herms, follow the curves of their breasts to preserve their shapely form and perky nipples intact.  Except for armoured plates on the exterior or the arms and legs, the remainder of the body is covered in dark yellow fur, with thicker tufts of it at the wrists and ankles.  Hands have become paw-like, with plated digits ending in claws that are still nimble enough for fine use.  Growing from the base of the spine is a thick tail, commonly with scale and spiny ridges or spikes.  The males and herms among them possess a plump sheath and sac covered in the same fur.  Their cock structure vary somewhat as well, though most are a hybrid mix of pointed glans, equine length and canine knot at the base.";
	say "     Overall, their forms are large and imposing, projecting strength and toughness.  It's clear they'd be quite formidable in either a fight or a fuck[if player is submissive].  The idea of being a big submissive chimera like these is quite alluring to you[otherwise if the player is dominant].  The idea of being a big chimera like these excites your dominant urges[otherwise].  The possibility of being such a powerful creature is quite enticing[end if].  You find yourself eager to try it out[if Susan is visible] and Susan seems excited by the prospect as well for some reason[end if].  Shall you ask the musine doctor's to activate the form?";
	say "((You've received a boost to your natural armour.  You'll also get other combat bonuses and your natural armour boost will be greater while in Enhanced Chimera form, especially while pure.))[line break]";
	if the player consents:
		say "[ec_activation]";
	otherwise:
		say "     Resisting the impulse, you thank the doctor for the offer, but tell him you're happy as you are for the moment.  He nods and puts the [bold type]activator[roman type] away, reminding you that you can ask him for it at any time.";
	setmonster "Enhanced Chimera";
	choose row monster from the table of random critters;
	now area entry is "Hospital";
	now non-infectious entry is false;
	setmonster "Mismatched Chimera";
	choose row monster from the table of random critters;
	now area entry is "nowhere";
	now hospquest is 19;

ec_activating is an action applying to nothing.
understand "activator" as ec_activating.

check ec_activating:
	if hospquest < 19, say "I don't know what you're talking about." instead;
	if Doctor Mouse is not visible, say "You need to go see Doctor Mouse about that." instead;
	if bodyname of player is "Enhanced Chimera" and player is pure, say "There's no need for another dose of the activator.  You're already fully in that form." instead;

carry out ec_activating:
	say "[ec_activation]";

to say ec_activation:
	increase ec_fullcount by 1;
	setmonster "Enhanced Chimera";
	choose row monster from the table of random critters;
	say "     Receiving a dose of the activator from Doctor Mouse, you feel a rush of energy run through you.  It's as if you can feel the excitement of the dormant infection inside you rushing into action.  An aching warmth spreads across your body, making you tingle from head to food.  Your head throbs and your vision goes blurry as the process goes on.  You can feel a myriad of shifts and changes going on all over you, so many it's hard to focus on any one of them at a time.  It's almost as if several different transformations are all taking place together or in sequence, building you up through several successive infections.";
	if the remainder after dividing ec_fullcount by 4 is 0 and cocks of player > 0:
		say "     Turning your attention to your groin, you watch your cock go through several stages of transformation.  First comes the furry sheath and ballsac over your junk.  Your manhood[smn] poke[smv] from the former, first becoming mostly human-like, though having an unnaturally black colour.  As you watch, [ittheym] change[smv] further, the glans growing more pointed and forward-facing.  Unable to resist, you take [if cocks of player > 1]one of them[otherwise]it[end if] in your changing hands and stroke yourself.  It grows thicker and becomes more equine in shape[if cock length of player < 16] and growing longer as well[end if].  As you continue stroking, you feel ridges being added to your length to further stimulate and (if need be) subdue your lovers.  The base of your cock starts to swell as a knot forms, so you can finish by tying with them to ensure they're properly filled with the hot load your churning balls are producing[if cock width of player < 10].  Speaking of which, these swell up further as they become more productive[end if].  As your transformation is completing, you release a pleasured growl and blast [if cock width of player < 20]several gooey ropes of seed across the floor[otherwise]a sticky stream of thick seed onto the floor[end if].";
	otherwise if the remainder after dividing ec_fullcount by 4 is 2:
		say "     Placing your hands on your head this time, you can feel it transform several times.  It is difficult to monitor its transformation as your hands are also changing even as you try to use them.  The first change has your head shift to that of a proud stag with a solid square jaw.  The start of a pointed horn on your nose and the nubs of your new antlers grow in shortly afterwards.  Even as they're growing, your muzzle shifts, adding some sharper teeth to your ruminant dentition.  Touching your ears, you feel them first shift to those of a deer before later becoming more pointed at the tip, having adding a bit of wolf to them.  You can feel increased fur at the back of your head and neck, soon filling out into a blend of flowing hair and a leonine mane.";
	otherwise if the remainder after dividing ec_fullcount by 4 is 3:
		say "     Having a tougher time focusing this time around, you keep your attention on your hands.  Holding them up in front of your face, you watch as they go through a succession of transformations.  They start out turning into hoof-like hands, but they don't stay like this for long.  The hard hoof portion starts to recede the moment it's finished forming, reshaping itself into dark claws that eventually sink into sheathes like a cat's.  As this is happening, your hands are also getting larger and stronger, with both a strong grip and fine control.  Your fingers become plated across the top and over the back of your hand.  You ball your hand into an impressive armoured fist, confident it'll pack quite the wallop.";
	otherwise:
		say "     Focusing your attention on your body, your watch as it shifts, becoming strong and well-toned even as brownish fur spreads across it.  Even as the fur continues to spread outwards, that change is overwritten in places as armoured plates form to cover the front of your torso.  Feeling them, you find these tough, but with enough flex for movement[if breast size of player > 0].  They cup your breasts like an armoured bodice, both supporting and emphasizing your cleavage while also leaving your nipples exposed for fun[otherwise].  They are placed on your chest such to emphasize your strong pecs and firm abs[end if].  Meanwhile, your arms and legs have become strong, growing to match your large, buff body.  More toughened plates are added to your outer thighs and forearms as further protection.";
	now tailname of player is "Enhanced Chimera";
	now facename of player is "Enhanced Chimera";
	now skinname of player is "Enhanced Chimera";
	now bodyname of player is "Enhanced Chimera";
	now cockname of player is "Enhanced Chimera";
	attributeinfect;
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if cocks of player > 0:
		if cock length of player < 16:
			increase cock length of player by 3;
			if cock length of player > 16:
				now cock length of player is 16;
		if cock width of player < 10:
			increase cock width of player by 2;
			if cock width of player > 10:
				now cock width of player is 10;
	if cunts of player > 0:
		if cunt length of player < 16:
			increase cunt length of player by 3;
			if cunt length of player > 16:
				now cunt length of player is 16;
		if cunt width of player < 10:
			increase cunt width of player by 2;
			if cunt width of player > 10:
				now cunt width of player is 10;
	if breasts of player > 0 and breast size of player > 0:
		if breast size of player < 6:
			increase breast size of player by 1;


Section 9 - Endings

when play ends:
	if hospquest is 13 and humanity of player > 9:			[helped Dr Matt]
		if hp of doctor mouse is 1:					[Dr Mouse not defeated]
			say "When the military comes into the city, they are helped by Dr Matt's findings.  This research keeps more of the soldiers safe and helps them rescue and treat more borderline infection cases, saving many more lives from succumbing to instinctual changes.  Over the years, you do hear rumours of a bizarre mouse scientist working in distant countries, selling nanite-based technology and weapons to foreign governments or guerrilla factions of the infected.";
		if hp of doctor mouse is 2:					[Dr Mouse defeated]
			say "When the military comes into the city, they are helped by Dr Matt's findings.  This research keeps more of the soldiers safe and helps them rescue and treat more borderline infection cases, saving many more lives from succumbing to instinctual changes.  You are quietly awarded a medal at a small ceremony for your services.  Over the years, the doctor's research helps many, stemming the tide of anarchy across the nation, and even the world.";
	otherwise if hospquest > 13 and humanity of player > 9:	[helped Dr Mouse]
		if bodyname of player is not "Wolverine Guard":
			if hp of doctor matt is 101:				[Dr Matt not defeated]
				say "When the military comes through, you are taken in by the army.  In the chaos of trying to deal with so many infected, you receive little scrutiny and your false identity is not questioned.  You discretely ask a few questions and hear that the military's chief scientist is little help to them, with most of her developments having [']sexual side-effects['] that make a lot of the men worried to use them.  After you are cleared, you start to settle into your new life, occasionally hearing from Dr Mouse and helping the underground scientist with [']samples['] when needed.  He continues his research, selling his enhancements and customized strains to the highest bidder.  Occasionally, he has a new one for you.  It is always something subtle that will go unnoticed, but helps you in your new life[if Susan is in Hidden Lab].  Susan continues to accompany him as an assistant and a lover for you[end if].";
			otherwise if hp of doctor matt is 102 or hp of doctor matt is 104:		[Dr Matt defeated]
				say "When the military comes through, you are taken in by the army.  The situation at the military base is chaos, with little ability to understand or control the infection.  As such, you receive little scrutiny and your false identity is not questioned.  After you are discharged, you start to settle into your new life, occasionally hearing from Dr Mouse and helping the underground scientist with [']samples['] when needed.  He continues his research, selling his enhancements and customized strains to the highest bidder[if Susan is in Hidden Lab].  Susan continues to accompany him as an assistant and a lover for you[end if].  Occasionally, he has a new one for you.  It is always something subtle that will go unnoticed but helps you in your new life.";
			otherwise if hp of doctor matt is 103:		[Feat machine stolen]
				say "When the military comes through, you are taken in by the army.  In the chaos of trying to deal with so many infected, you receive little scrutiny and your false identity is not questioned.  After you are cleared, you start to settle into your new life, occasionally hearing from Dr Mouse and helping the underground scientist with [']samples['] when needed.  He continues his research, selling his enhancements and customized strains to the highest bidder[if Susan is in Hidden Lab].  Susan continues to accompany him as an assistant and a lover for you[end if].  Occasionally, he has a new one for you.  It is always something subtle that will go unnoticed, but helps you in your new life.";

[ Edit this to have the correct Name as well]
Hospital for FS ends here.
