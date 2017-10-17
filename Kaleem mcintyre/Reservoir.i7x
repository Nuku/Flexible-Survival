Reservoir by Kaleem mcintyre begins here.

"Adds a new adventuring area to Flexible Survival with a special event and some searching."

Section 1 - Reservoir facility

Resevquest is a number that varies.
bloblost is a truth state that varies.  bloblost is usually false.
waterworks is a number that varies.

[ *** Content removed due to size issues and need for repairs ]
[

Reservoir is a room. It is fasttravel.

The description of Reservoir is "[reservoirdesc]".

To say reservoirdesc:
	if waterworks is 0:
		say "At the entrance to the reservoir you find yourself disgusted at the sight before you. Where once there had been a clean and somewhat pristine work facility distributing water throughout the city, there now stands a festering nest of cum, urine, musk and other associated fluids lining almost every corner of the building. Machines that had once been kept in top condition to preserve the city's water supply now stand in slight disrepair and dysfunction as globs of… unknown 'substance' cover their surfaces, not to mention sides, panels and up onto the ceiling above.";
		say "You fight not to lose your lunch at the smell and wonder who could do such a thing to the lifeblood of the city, when suddenly you find your answer skulking about as if they owned the place. All around the inner sanctum of the building are mutants and other assorted creatures that have literally taken over the reservoir to make it into their nesting ground. Caution makes you yearn to turn tail and run, but if you do then who will restore some measure of civility to the city? What to do? [if level of player < 18][bold type]You must be at level 18 to start this quest-line[roman type][end if]";
	else if waterworks > 0:
		say "Having cleaned up the mess that had once been the reservoir the facility is now bright and sparkly as it was before the madness with the infection going throughout the city began. You nod to some of the military people walking around. You take care not to head any further inside of the building, being as the soldiers have put blockades up and around while assigning guards to watch over the place. Having done your duty as a citizen you don't have much of a reason to come here now so it would probably be good time to vamoose.";

instead of sniffing Reservoir:
	if waterworks is 0:
		say "The reservoir reeks of the scents of too many odors to discern one by one who or what left them behind. However, the pervasive smell of musk and sexual fluids is not hard to miss in the least.";
	else if waterworks > 0:
		say "A clean scent permeates the area of the reservoir making you want to breathe in as much of the refreshing odor until your [bodyname of player]lungs bursts.";

Section 1a - Reservoir Main Pathway

Reservoir Main Pathway is a room.
Reservoir Main Pathway entry is a door. It is dangerous.

The description of Reservoir Main Pathway entry is "There's something you may need important over here!" It is dangerous.

West of Reservoir Main Pathway entry is Reservoir Main Pathway.
North of Reservoir is Reservoir Main Pathway entry.

The description of Reservoir Main Pathway is "[pathwaydesc]".

to say pathwaydesc:
	if waterworks is 0:
		say "The pathway of the reservoir leads deeper into the interior of the slime soaked and depraved waterways that make up the water reserves of the city.";
	if waterworks > 0:
		say "Since the pathway has been cleaned up now, thanks to your efforts, the place is now very pristine looking.";

instead of sniffing Reservoir Main Pathway:
	if waterworks is 0:
		say "The main pathway smells like cum, piss, other bodily fluids as well as something...pervasive like...sorrow?";
	else if waterworks > 0:
		say "A clean scent pervades the area of the pathway of the reservoir. The place feels much more lively now. Happy even...";

The marea of Reservoir Main Pathway entry is "Reservoir".



Section 2 - Reservoir Events

resevquest is a number that varies.

For Purity's Sake is a situation. The Level of For Purity's Sake is 18.

Technical Assistance is a situation. Technical Assistance is resolved.

Slightly Sidetracked is a situation. Slightly Sidetracked is resolved.

Flight of stairs is a situation. Flight of stairs is resolved.

ThreeDoors is a situation. ThreeDoors is resolved.

The beast of the tainted waters is a situation. The beast of the tainted waters is resolved.

A Fight to remember is a situation. A fight to remember is resolved.

PassionAfterTheBattle is a situation. PassionAfterTheBattle is resolved.

Sanctuary is a situation. Sanctuary is resolved.


The sarea of For Purity's Sake is "Reservoir".

Instead of resolving For Purity's Sake:
	If resevquest is 0:
		say "You come across a room filled with mechanical equipment as well more of the sickly viscous slime that seems to have pervaded the entire area. Trying to fight off a wave of nausea that threatens to make you swoon, you muster up the will to look around while fighting off the onset of a headache. All around the room you can see much of what would be needed to restore the city's water supply into good standing order, however you're not exactly sure what still works verses what doesn't and what you should do or shouldn't touch.";
		say "This small dilemma frustrates you for a moment before you calm yourself down and realize that if there is something that you can do then you'll just have to do it to the best of your own natural ability. Come what may you can't make the situation any worse than it already is.";
		now resevquest is 1;
		increase score by 2;
		now For Purity's Sake is resolved;
		now Technical Assistance is unresolved;


Technical Assistance is a situation.
The sarea of Technical Assistance is a "Reservoir".

bookfind is a number that varies.

Instead of resolving a Technical Assistance:
	If resevquest is 1:
		say "Looking around you manage to find a door way with the stamp of [']Technician['] placed securely onto the front of the metal barrier. Slightly stained with what appears to be male sexual fluids you toughen your resolve and enter into the room. The room is darkened; most probably because the lights are switched off and yet you recall the facilities personal backup generators should still be supplying the place power. Hesitant, but knowing that you'll need light to see by, you reach out to search the wall to flip on a light. Finding the small nub, you then flip the switch. With a telltale 'click' the room in suddenly brightened for all the world to see.";
		say "And sadly all of the world does see...you. Or rather to say the large creature that's standing before you see you as it blinks in confusion at having someone interrupt its nap. Frantically you hope that civil conversation will stop any possible altercation you might have with the creature, but too late, it's already ambling towards you with eyes filled with intent on nothing good.";
		say "[resevfight1]";
		say "After dealing with the creature in question you shake your head in pity. A small part of you wonders if the thing you just beat was once one of the technicians you so desperately need right now. Finding that it doesn't matter you go ahead and search around the room for something that will help you clean up the city's water supply.";
		now bookfind is 0;
		while bookfind is 0:
			let bonus be (( the Perception of the player minus 15 ) divided by 3);
			let diceroll be a random number from 1 to 20;
			say "you roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll is greater than 10:
				say "Ten minutes of searching leads you to an instruction manual, somehow kept perfectly clean and intact despite the creature that dominated the room having taken over and defiled just about everything in the place, and eagerly you find yourself flipping through the instruction book to read its contents. A few minutes of reading later -- thankfully without any interruption from outside forces -- you feel that you would be successful in working with the machines in the Reservoir to clean up the water supply. Closing the book you sigh in relief, right before you have to moan in grief as you now you just have to deal with some other…minor…nuisances.";
				say "[resevfight1]";
				say "[resevfight1]";
				say "[resevfight1]";
				now resevquest is 2;
				increase score by 5;
				now Technical Assistance is resolved;
				now Slightly Sidetracked is unresolved;
				now bookfind is 1;
			else:
				say "Searching over and under you can't seem to find anything remotely useful to your needs. Grunting you begin to feel somewhat annoyed, but before you can you sigh and realize that you need to look a little harder. Maybe you should try a little harder to find the material you need?";
				if the player consents:
					say "You find yourself looking around the room, though as quietly as you can so as not to alert more trouble.";
					follow the turnpass rule;
					wait for any key;
					next;
				else:
					say "Thinking that you may not need to go through all of this since it can't be [bold type]THAT[roman type] hard to operate a bunch of systems here in the reservoir you turn to go about your way, but just as you are heading out you spy something out of the corner of your eye. Blinking and then making your way over you find yourself coming across a small manual with the title WaterWorks printed on the front. Picking up the book and flipping through it you realize that this is exactly what you need!";
					say "Happily you read over the manual to try and gain as much insight to the world as you can into the reservoir. Once you are done you place the book down and then head out the door to leave...however, before you can get too far several form descend upon you.";
					say "[resevfight1]";
					say "[resevfight1]";
					say "[resevfight1]";
					say "[resevfight1]";
					say "[resevfight1]";
					say "Having dealt with those pests you grumble before moving on about your way. What a day...";
					now resevquest is 2;
					increase score by 5;
					now Technical Assistance is resolved;
					now Slightly Sidetracked is unresolved;
					now bookfind is 1;

to say resevfight1:
	let T be a random number between 1 and 3;
	if T is 1:
		challenge "Goo Girl";
	if T is 2:
		challenge "Demon Brute";
	if T is 3:
		challenge "spidergirl";


Slightly Sidetracked is a situation.
The sarea of Slightly Sidetracked is "Reservoir".

Instead of resolving Slightly Sidetracked:
	If resevquest is 2:
		say "Making your way from technical assistance room you find yourself cautiously listening to various noises that seem to be coming from all around you. Instantly you put yourself on guard as your pervasive sense of danger starts to ring through your spirit like a church bell of on Sunday. When a somewhat familiar sound comes from behind you your feet are running without you having to tell them to move as you find yourself moving throughout the reservoir at top speeds. The raw need to [italic type]be away[roman type] taking hold of you until soon your mind is all but screaming at you to flee.";
		say "Sadly this leads you on a merry little romp throughout through the reservoir and directly into the arms of danger. Several forms all look at you with various smirks, scowls, leers and grins and instantaneously you're preparing yourself to fight as your feet skid to a halt roughly five yards between you and the creatures ahead of you.";
		say "[resevfight2]";
		say "[resevfight2]";
		say "[resevfight2]";
		say "[resevfight2]";
		say "[resevfight2]";
		say "After your second set of confrontations of the day you find yourself exhausted slightly as you wonder just what kind of pit of hell have you walked into. What started as a valiant journey is now looking to be a desperate struggle to stay sane in this twisted maze of pipes, slime and tainted water.";
		now resevquest is 3;
		increase score by 3;
		now Slightly Sidetracked is resolved;
		now Flight of stairs is unresolved;


To say resevfight2:
	let T be a random number between 1 and 4;
	if T is 1:
		challenge "Goblin";
	if T is 2:
		challenge "Goo Girl";
	if T is 3:
		challenge "Demon Brute";
	if T is 4:
		challenge "spidergirl";


Flight of stairs is a situation.
The sarea of Flight of stairs is "Reservoir".

Instead of resolving a Flight of stairs:
	If resevquest is 3:
		say "Upon getting away from the horde that you just had to deal with you find yourself panting slightly as a sweat dribbles down onto your [facename of player] face. Reaching an [bodyname of player] arm up to rub at your forehead only realize that you've gotten some goop onto your scalp. Quickly you rub the sticky substance off before moving more hurriedly up the stairwell. Once you are at the top of the stairs you turn and look up to see what it was that dropped onto you…and then wished you hadn't. Trailing across the ceiling in small lines of multicoloured slime is -- what you're almost positive it could only be -- a mishmash of mutant cum lining the walls.";
		say "By the looks of all of the gunk it appears as though the creatures here were having some kind of contest to see who, or rather what, could inseminate the top of the building the most. You're almost frightened by your curiosity to know what won as more and more sticky trails dribble down onto the concrete of the stairs you just walked up. A fleeting sense of gratefulness overcomes you that you are not found by any more mutants right now as the smell of the musk and cum is making you somewhat lightheaded. Turning back and walking onwards you focus your thoughts on looking for the main computer terminal to the reservoir.";
		increase libido of player by 20;
		if libido of player > 100, now libido of player is 100;
		now resevquest is 4;
		increase score by 10;
		now Flight of stairs is resolved;
		now ThreeDoors is unresolved;


ThreeDoors is a situation;

The sarea of ThreeDoors is "Reservoir".

ldoor is a number that varies.
rdoor is a number that varies.
doorsearch is a number that varies.

Instead of Resolving ThreeDoors:
	If resevquest is 4:
		say "Before you stands three doors, each of them lined together perfectly in a row. Suspicion wells within you as all three are covered in slimy mucous like substance, yet you are sure that one of the doors must be the main terminal room for the Reservoir. The problem is if 'one' of them is the main room…then just what's behind the other two? A small bud of fear wells inside of your belly as you try not to imagine just what could be waiting in store for you behind the other two false doorways. The terror at what might be waiting on the other side of the correct entryway already making you nervous enough as is.";
		say "However, you have to pick one to move forward. But which one? Trying to recall your memories of the Technical manual you glanced through before coming up this way, you find yourself coming to a blank as to which path to take. Aside from knowing that you need whichever leads down, you're uncertain which door lead that way.  It's not like you can you really go back and ask one of the creatures here for help.  Well, not and expect to get a useful answer anyway.  You have something of a dilemma on your hands.";
		say "[doorcheck]";

descriptionmessage is a text that varies.

to say doorcheck:
	say "Looking over the doors you wonder which you should chose.";
	wait for any key;
	now descriptionmessage is "";
	sort the table of Door Choice in sortorder order;
	change the current menu to table of Door Choice;
	carry out the displaying activity;
	clear the screen;
	wait for any key;
	try looking;

Table of Door Choice
title		subtable	description	sortorder	toggle
"Left Door"		--	--	1	doorcheck rule
"Center Door"		--	--	2	doorcheck rule
"Right Door"		--	--	3	doorcheck rule
with two blank rows.


This is the doorcheck rule:
	choose row current menu selection in the current menu;
	if title entry is "Left Door":
		if ldoor is 0:
			say "Looking at the door with the yellowish stains covering its front you bolster your courage and chose that door to walk in through. Grabbing the knob, while trying very hard not to touch any of slime covering the wood frame, you twist the handle and then push open the door. It's jammed!! Now this is a slight problem. On the one hand, this could be a sign to leave well enough alone. On the other it could mean that you need to use some force to open the stubborn barrier. What should you do? (Y=Go in, N=Don't)";
			If player consents:
				now doorsearch is 0;
				while doorsearch is 0:
					let bonus be (( the Strength of the player minus 10 ) divided by 2);
					let diceroll be a random number from 1 to 20;
					say "you roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
					increase diceroll by bonus;
					if diceroll is greater than 12:
						say "A firm push and then a resound crack and you're in. Stumbling into the room and then looking around you find that there's very little of interest to you as you see look around at the cum stained and ruined break room that had once been a resting place for tired and overworked employees within the facility. All across the floor you can see that cum has stained just about everything from one side of the room to another, though thankfully not the ceiling. You mildly wonder then, if others had been in here, why, or rather how the door got jammed. Your answer comes when you turn to see dried cum crusted onto the sides of wood barrier.";
						say "Ignoring this you try to look around to find something useful to your quest. Nose quivering at the smells coming from in here you find your eyes widening slightly as you spot an intact refrigerator that seems to have missed the carnage that had dominated the 20' x 15' foot room. Going over and listening to the sounds of the machine still working, a surprise you really hadn't been expecting - with what luck you're having today - you quickly open the fridge door and peek your [facename of player] head in to have a look at the contents. Most of whatever had been inside of here has been cleaned out, no small shocker there, but upon looking onto the side shelves you find both food, chips, and water waiting for you. Lady luck really does smile on the foolish sometimes…or was that the brave?";
						wait for any key;
						increase carried of water bottle by 1;
						increase carried of chips by 1;
						increase carried of food by 1;
						now ldoor is 1;
						now doorsearch is 1;
					else:
						say "Bumping into the door with your minuscule effort only serves in bruising your shoulder. You growl into the depths of your throat as you suddenly curse your lack of strength. You can do better than this, right? (Y=Yes, N= No)";
						if player consents:
							follow the turnpass rule;
							wait for any key;
							say "You know you're stronger than this! Come on! Put some muscle into!";
							next;
						else:
							say "Not feeling like being bothered anymore with this you decide to turn around and go about your way.";
			else:
				say "Trusting in your feelings more than in some unknown possibility behind a random door you decide not to bother with this door. Though you may have to come back later if the other two prove to be the wrong choice in your search.";
		if ldoor is 1:
			say "Having already come this way you see that there is nothing of value inside of the breakroom. That being the case you turn to go about your way.";
	else if title entry is "Center Door":
		now lastResevoirfix is turns + 10;
		say "A good feeling surges throughout your body as you reach out for this door, despite the stains leaking down the once richly polished frame. Giving the doorknob a tentative shake you twist your hand to turn the handle forty-five degrees to the right. Yours eyes nearly pop from your head in amazement when the door opens without incident. Pushing open the barrier with minimal strength you find yourself hurriedly entering into the room and then looking around rapidly as you try to find the main terminal to the Reservoir. You decide that this room is indeed the main terminal of the facility, if the high tech and astonishingly intact machinery is anything to go by.";
		say "Seeing that much of what you need has already been provided, and remembering the technical manual you had read prior to coming here, you swiftly move about switching on panels and pressing in on knobs, after boarding the door of course with a file cabinet. No sense testing the length of your string of good luck by taking needless chances.";
		say "Getting to work you try not to wince as alarms begin to sound as the warning system indicates that there is going to be a massive happening in the reservoir come the next sixty seconds and that all personnel should get out of dodge before that happens. Mind working furiously on the controls as you check the pressure of the water, which seems a too high to be normal, the gauges for the pumps working to filter excess filth and slime into the cleaning portion of the facility's heating and treatment tank, and the monitors which are showing how fluidly the water is flowing throughout the city's pipe system you barely stop to wonder about the sense of elation that courses throughout your body.";
		say "Your mind does pause to consider the various creatures down below getting swept up into the water and then dragged down to be 'purified' by the massive cleaning system, but there's little that can be done about that now. An hour later an actual smile crosses your face as you see that almost 90% of all of the toxins - aka infected cum/piss/and other fluids -- in the water are almost gone. With this the city should be able to get back to some level or normalcy, however, all too soon the party grinds to a screeching halt when buzzers alert you to something foreign swelling up inside of the main pool of water.[line break]";
		say "Wondering what in the nine hells could be trying to go wrong now you step away from the control terminal and look out to the one-sided glass windows overlooking the entire reservoir…and then your mouth just drops at the sight lumbering up out of the water. As though coming from out of a nightmare a massive ball of…slime, flesh, and writhing indefinable forms surges up through the clear aqua blue water as though offended that something had bothered it from its quiet reprieve. In a flash all of your hard work comes to an end as the creature, or rather BLOB, snakes fleshy tentacles out all over the place to try and restore its home to some kind of debased and disgusting order.";
		say "Rapidly your brain goes to work trying to think of a way to stop the creature and in seconds you find your answer coming to you. While you're sure that, if broken up into smaller pieces, the heating tank could evaporate the monster and subsequently destroy it you realize that the thing is just too big and probably has no intentions of nicely disassembling itself for your benefit. That being the case you would probably have to go down and try to tear the creature into bits with whatever you could find on hand in order to make it cease and desist what it's doing. But that would also mean putting yourself at the mercy of the creature in order to do so...[line break]";
		say "By the look of the monster it has to be almost four times bigger than the average wolftaur, not to mention almost five times as long. What in the hell could you do to stop that thing? An answer comes, not from on high but from down below as you spot the creature shuddering and writhing in silent pain. Apparently the dumb thing managed to knock over some canisters of... something and now one of its tentacles was frozen solid. The solidified limb reaches up as far as the six feet along the monster's limb before the whole thing starts to disintegrate and then burst into powder.";
		say "It would seem that someone doesn't like the cold, you think maliciously. Jumping over one of the terminals and then checking the system you find that - yes - there is a protocol to flash freeze the entire facility close to 32* F. This was probably in case of…you shake your head as you realize that you don't have time for the security lesson as you hear the creature shambling around and trying to destroy the place. Activating the system you hear more warnings and know that in a few minutes the problem will be solved, that is right before you see a large tentacle coming directly for the room you're in via the glass windows.";
		say "A sudden slam of the massive flesh into the glass has you scrambling away for safety. Your good fortune is holding as you notice that the fiber glass is standing strong, but it won't be long before the window gives way, if the splintering of the glass is anything to go by, and the creature finds a way in. However, the system hasn't fully activated itself yet! If the creature destroys the machinery in here then the reservoir might never get cleaned…and if that happens then who knows what might become of the people in the town, supposing the military doesn't come, or the cubs and other patients in the hospital. This city cannot survive indefinitely without some form of running water. Hygiene alone demands that something other than rainwater has to flow throughout the town in order to keep the place at least moderately clean.";
		say "Can you really turn tail and run from this situation? Looking at the monster still batting at the window can you say yes with your eyes open as you see it continue to batter the creaking and straining glass?";
		wait for any key;
		now resevquest is 5;
		now lastResevoirfix is turns;
		now ThreeDoors is resolved;
		now The beast of the tainted waters is unresolved;
	else if title entry is "Right Door":
		if rdoor is 0:
			say "Taking hold of the door's handle you are mildly astonished when the door opens without any protest. That elation doesn't last long because soon said door is taking from your hand and then you are grabbed bodily!";
			let bonus be (( the Strength of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "you roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll is greater than 8:
				say "You manage to knock the unknown person away from you with an elbow and then duck into a defensive crouch as you wonder what to expect next. What you come to find is that your 'captor' is actually a German Shepherd that seems to be looking at you in confusion. All the standard markings apply to this creature and you guess that it must have been someone's pet before the canine changed into the bipedal creature it is now. Growling at you in aggression as it sees that you are not willing to cooperate the German Shepherd is soon stalking over to you. The intent to dominant you shines clearly in the mutants dark eyes.";
				challenge "German Shepherd";
				say "Having driven the creature off you to begin looking around the room. Nothing of interest pops out at you, or anything else for that matter. The room actually looks as though it were some manner of storage closet that happened to have modified into a makeshift doggy room for 'Rover' back there. You see a standard doggy bed set in the corner, a dish with some drinking water, though no food, a TV on a stand, some chairs and a desk dominating the center of the room. Mops, buckets, and brooms lie around on the floor and you can't help but wonder what the janitor, or other figure that dressed up the room as such, was like before things all went to hell. Giving a shrug you decide that it doesn't matter. Time won't come back or change the fact that the world as it is no longer how it once was. Shaking your head you decide to leave.";
			else:
				say "You find the grip of the creature, which turns out to be a German Shepherd, too strong and quickly you are thrown to the ground by the newly mutated canine. Intent to use you like a cheap sex toy you find yourself getting up and then snarling at the mutt as it walks over to you. With its cock hard as it stands up from out of it sheath you decide that it's time to teach your would-be canine rapists who's the master around here.";
				challenge "German Shepherd";
				say "Having driven the creature off you to begin looking around the room. Nothing of interest pops out at you, or anything else for that matter. The room actually looks as though it were some manner of storage closet that happened to have modified into a makeshift doggy room for 'Rover' back there. You see a standard doggy bed set in the corner, a dish with some drinking water, though no food, a TV on a stand, some chairs and a desk dominating the center of the room. Mops, buckets, and brooms lie around on the floor and you can't help but wonder what the janitor, or other figure that dressed up the room as such, was like before things all went to hell. Giving a shrug you decide that it doesn't matter. Time won't come back or change the fact that the world as it is no longer how it once was. Shaking your head you decide to leave.";
				wait for any key;
				now rdoor is 1;
		else if rdoor is 1:
			say "Having already come in here once there's not much inside of this room that grabs you attention. Time to leave.";
	decrease the menu depth by 1;
	rule succeeds;



Section 3 - Reservoir Fight (Preparation)

The beast of the tainted waters is a situation.
The sarea of The beast of the tainted waters is "Reservoir".

lastResevoirfix is a number that varies.

Instead of Resolving a The beast of the tainted waters:
	if resevquest is 5:
		If lastResevoirfix - turns > 10:
			say "Having let the beast of ooze do what it wishes you have let the main terminal become destroyed beyond repair, at least from what your limited skills with working with machines tells you. Sighing and shaking your head you realize that there is little you can do as the Blob monster has disappeared, probably haven sunken back into its watery home, and there is now no way to currently fix the area. Defeated by this all you can do is turn your head and walk away out of the reservoir.";
			now The beast of the tainted waters is resolved;
		else :
			say "Deciding that you've come too far to quit now, even though any other sane person might have already tucked tail and fled, you realize that spending your time here has either made you insanely brave…or just insane. Shaking your head you watch as the tentacles of the fleshy BLOB strikes at the window again and then you curl your legs underneath you so that you can raise up onto your feet.";
			say "Doing so, albeit somewhat unsteadily, you breath out a heavy gust of air which is visible to the naked eye. Blinking you breathe in and out again and then realize that the room is rapidly drooping in temperature. Walking over to the main terminal you find that - just as you had thought - the facility is entering into flash freeze mode. Seeing your window of opportunity coming closer to opening fully you look around the room for something to use to help you ward off the creature and then you smile victoriously as you spot several lockers that you had failed to notice when coming into the room standing idle, as though in wait for you.";
			say "Rushing over to the metal containers you jar each of the doors open and then look inside to see if you can find something of meaningful use. Seeing what you need you take enough provisions for the fight ahead. Once that's done you decide that now it's time to the beast. [bold type]It might do well for you to make sure you're equipped and fully healthy before going out to battle. This fight will be…difficult…[roman type]";
			increase carried of medkit by 1;
			increase carried of healing booster by 1;
			now resevquest is 6;
			now lastResevoirfix is turns;
			now The beast of the tainted waters is resolved;
			now A Fight to remember is unresolved;


Section 4 - Reservoir (Fight)

A Fight to remember is a situation.
The sarea of A Fight to remember is "Reservoir".

lastResevoirfix is a number that varies.
oozing is a number that varies.

Instead of resolving a A Fight to remember:
	if resevquest is 6:
		If lastResevoirfix - turns > 10:
			say "Having spent too much time preparing, or else becoming occupied, you've allowed the beast of ooze to destroy the main terminal beyond repair. At least destroyed beyond what your limited skills with working with machines can handle. Sighing and shaking your head you realize that there is little you can do as the Blob monster has disappeared, probably haven sunken back into its watery home, and there is now no way to currently fix the area. Defeated by this all you can do is turn your head and walk away out of the reservoir.";
			now a Fight to remember is resolved;
		else :
			say "Geared up and ready to roll you head out of the room and then down back the way you came to the main area of the reservoir. Once there you find yourself wincing a little bit in disbelief as you note that the Blob monster is somewhat…bigger…than what you had first thought it should have been.";
			let bonus be (( the Intelligence of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll is greater than 14:
				say "You shake off your fear as you note that the thing before you was hurt once just recently, by its own ignorance no less, and you feel certain that you can take it on again. Glaring up at the thing you watch as it seems to [italic type]recognize[roman type] you as a threat and then turns its massive gelatinous form in your direction before shooting out tentacles to attack you. You smirk in glee. You're ready for it.";
				wait for any key;
				challenge "Blob";
				if fightoutcome >= 10 and fightoutcome <= 19:
					say "Seeing the gelatos creature broken into a million pieces you let out a roar of triumph as you pump your fist up into the air. That battle may have been daunting but in the end you triumphed and for that you now can take a moment to feel proud about yourself. … Done? Ok, now go and unfreeze the reservoir and then finish cleaning it up so that the city can have water again!";
					now resevquest is 7;
					now Fight to remember is resolved;
					now PassionAfterTheBattle is unresolved;
				else if fightoutcome >= 20 and fightoutcome <= 29:		[***partially fixed]
					now A Fight to remember is resolved;
					now oozing is 1;
					now humanity of player is 0;
					now tailname of player is "Blob";
					now facename of player is "Blob";
					now skinname of player is "Blob";
					now bodyname of player is "Blob";
					now cockname of player is "Blob";
					now scalevalue of player is 5;
					now bodydesc of player is "gleatinous";
					now bodytype of player is "ooze";
					now the daycycle of player is 0;
					end the story saying "You have been absorbed by the blob creature.";
					now battleground is "void";
					wait for any key;
					follow the turnpass rule;
					stop the action;
				else:
					say "Turning tail to run you realize that you're going to have to rethink this battle entire battle! [bold type]Remember you only have so long before the blob breaks the window![roman type]";
					now lastResevoirfix is turns;
			else:
				say "You feel a throng of nervousness come over you as you watch the monster [italic type]burble[roman type] and then turn your way, as if sensing that you were the cause of its current distress. Not feeling the courage that you know you possess your body locks up just as your eyes see massive tentacles surge their way towards you.";
				let bonus be (( the dexterity of the player minus 8 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
				increase diceroll by bonus;
				if diceroll is greater than 10:
					say "You find yourself dodging out of the way just in time not to be hurt. Obviously, even if your mind has turned to jelly your feet haven't and you dance skillfully out of the way of the creature's oozing appendages.";
					wait for any key;
					challenge "Blob";
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "Seeing the gelatos creature broken into a million pieces you let out a roar of triumph as you pump your fist up into the air. That battle may have been daunting but in the end you triumphed and for that you now can take a moment to feel proud about yourself. … Done? Ok, now go and unfreeze the reservoir and then finish cleaning it up so that the city can have water again!";
						now resevquest is 7;
						now A Fight to remember is resolved;
						now PassionAfterTheBattle is unresolved;
					else if fightoutcome >= 20 and fightoutcome <= 29:		[***partially fixed]
						now A Fight to remember is resolved;
						now oozing is 1;
						now humanity of player is 0;
						now tailname of player is " Blob ";
						now facename of player is "Blob ";
						now skinname of player is "Blob";
						now bodyname of player is "Blob ";
						now cockname of player is " Blob ";
						now scalevalue of player is 5;
						now bodydesc of player is "gleatinous";
						now bodytype of player is "ooze";
						now the daycycle of player is 0;
						end the story saying "You have been absorbed by the blob creature.";
						now battleground is "void";
						wait for any key;
						follow the turnpass rule;
						stop the action;
					else:
						say "Turning tail to run you realize that you're going to have to rethink this battle entire battle! [bold type]Remember you only have so long before the blob breaks the window![roman type]";
						now lastResevoirfix is turns;
				else:
					say "You find yourself meeting the wall and losing some of your health as the lashing tentacle knocks you back into the concrete. Your breath wisps out from your mouth at an alarming speed because of this. So much so in fact that you can actually see much of it very clearly as it forms into a cloud of diamond dust in front of your face. Coughing to try and absorb some of the cold air into your lungs in order to ease the growing ache building up within you shakily get back up onto your feet and then growl fiercely at the monster. Oh there's no way you're going to take that lying down! A savage battle cry rips free from your lips a second later and soon you are charging right at the BLOB!";
					decrease hp of player by 10;
					wait for any key;
					challenge "Blob";
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "Seeing the gelatos creature broken into a million pieces you let out a roar of triumph as you pump your fist up into the air. That battle may have been daunting but in the end you triumphed and for that you now can take a moment to feel proud about yourself. … Done? Ok, now go and unfreeze the reservoir and then finish cleaning it up so that the city can have water again!";
						now resevquest is 7;
						now A Fight to remember is resolved;
						now PassionAfterTheBattle is unresolved;
					else if fightoutcome >= 20 and fightoutcome <= 29:		[***partially fixed]
						now A Fight to remember is resolved;
						now oozing is 1;
						now humanity of player is 0;
						now tailname of player is " Blob ";
						now facename of player is "Blob ";
						now skinname of player is "Blob";
						now bodyname of player is "Blob ";
						now cockname of player is " Blob ";
						now scalevalue of player is 5;
						now bodydesc of player is "gleatinous";
						now bodytype of player is "ooze";
						now the daycycle of player is 0;
						end the story saying "You have been absorbed by the blob creature.";
						now battleground is "void";
						wait for any key;
						follow the turnpass rule;
						stop the action;
					else:
						say "Turning tail to run you realize that you're going to have to rethink this battle entire battle! [bold type]Remember you only have so long before the blob breaks the window![roman type]";
						now lastResevoirfix is turns;


Section 5 - Water At Last

PassionAfterTheBattle is a situation.
The sarea of PassionAfterTheBattle is "Reservoir".

waterworks is a number that varies.

Instead of resolving a PassionAfterTheBattle:
	If resevquest is 7:
		say "Having rested up and finished unthawing the reservoir you go about treating and filtering the water, after cleaning up the facility of the frozen Blob monster, and then proceed to set the system to run on automatic just as it had been done before. While there might be a strong possibility that more mutants could show up later you make a plan to inform the local soldiers in this area in hopes that they will send a unit here to protect the place. After all, you've basically done their job for them with cleaning up the mutants and the facility.";
		say "Taking no mind about the possibilities to come in the near future, you go ahead and prepare to leave out of the facility with pride burning deep inside of your chest. Holding yourself up just a little bit more proudly you realize that you've done something that no one else probably could have done, singlehandedly, as you had. Congratulations.";
		say "With the water back on this should make life a little easier here for everyone, and maybe, if you play your cards right you might be able to [bold type]get rewarded[roman type] for your efforts in a number of ways later on. The thought of being praised doesn't so much spurn you on as the idea of that special someone outside treating you to a nice round of hot shower sex. Shivering slightly you quickly go over the commands of the main terminal once again to see if you have everything straightened out as it should be before making your way out of the reservoir.";
		say "Before you can fully exit the reservoir though you find yourself stopping to look at the now crystal clear waters inside of the edifice. Seeing your [facename of player] face looking back at you, a little bit haggard than before, but no less charming, you fail to see something rising up out of the water until it's too late. Jumping back into a crouch when the waters suddenly splash up into your face you sputter and shake your head before looking at the thing that is now floating into the air.";
		say "Cold as a winter's morning, blue as the sky during a clear afternoon, sharp with twin lethal edges that beckons to be used against any who stand before you, you see a pair of curved knives gleaming at you somewhat in an otherworldly manner. Not understanding this strange happening you aren't prepared for the twin weapons to float over to you and then stand in front of you. However, a sense of awe makes you reach out for the hilts of the knives before you can stop yourself. A shudder racks throughout your body as a pervasive chill runs down along your spine. When the daggers rest gently into your hand you can feel a sorrowful weight to them as you recall all of those who got trapped inside of the Blob and then frozen with the creature.";
		say "There are no words that can help you to understand what is going on here, but you have a good feeling that you just received a kind gift that comes around only once in a lifetime. Taking the knives firmly into hand you clutch the twin blades close to your chest before turning to head out of the reservoir.";
		wait for any key;
		now carried of icicle knives is 1;
		now waterworks is 1;
		now PassionAfterTheBattle is resolved;
		now Sanctuary is resolved;

Section 6 - Sanctuary

Sanctuary is a situation.

Instead of resolving a Sanctuary:
	If waterworks is 1:
		Say "Because of your efforts the military is able to work at speeding up the process of trying to restore some form of order to the city, now that they have an infinite supply of water on their hands. Though they're not too sure how to act around you, given your [facename of player] face and [bodyname of player] form, despite you being the one to help make the improbable here possible, they do give you a few nods and words of congratulations. Speaking with some of them you come to find out that the military men and women aren't as bad as you would have first believed, and though they don't offer you any provisions and the likes, you do end up chatting many of them up and learning about their thoughts and feelings about dealing with the [italic type]problems[roman type] here in the metropolis. Maybe you can offer to help them out sometime? [bold type](There's nothing left to do here, but if you come back to talk to the military you will get a chance to work with them to speed up their efforts to help out in the city via time loss…wait…is that a good thing or no? This event is repeatable.)[roman type]";
		Extend game by -16;



Table of Game Objects(continued)
name	desc	weight	object
"icicle knives"	"Twin pair of daggers made from the thoughts and feelings of those who were devoured by a monster and then frozen in an icy tomb of flesh and slime. Carry a chilly sharp edge to them that can pierce as well as cut."	5	icicle knives

icicle knives is an armament.
It is part of the player.
It has a weapon "[one of]frozen blades of cold[or]whispering twins of water and ice[or]thin, but sharp blades[at random]". The weapon damage of icicle knives is 16. The weapon type of icicle knives is "Melee". It is not temporary. the objsize of icicle knives is 2.

Instead of sniffing icicle knives:
	Say "These frozen blades both breathe and smell of a perpetual frost made of the forgotten thoughts and chilled promises left abandoned in a watery reservoir.";



when play ends:
	if oozing is 1:
		say "Having lost to the blob monster you are no longer aware of yourself as an individual but as one who is part of a greater whole. Sloshing and moving throughout the reservoir many other mutants have found their way here to your home. Those unable to get away from your tentacles have been dragged underneath the murky waters to become one with you. However, those able to get away have moved on and long since become but a distant memory. Yet when the [italic type]new ones[roman type] come along you feel a sudden fear as a burning heat begins to churn your waters. Memories of long ago surface and instantly you feel threatened beyond measure.";
		say "Rising up from out of your watery home you find attacking the newcomers without thought. The sheer need to survive makes you try to either engulf the newcomers or disembowel them with your tentacles. There's much shouting and noise coming from all around but when the [italic type]new ones[roman type] begin to retreat you feel a sense of nervousness that makes you hesitant to return back into the reservoir. Perhaps it's time to move into deeper waters outsider. The faint memory of the ocean has you warbling in glee and quickly you sink down into the waters to try and plan your escape.";
		stop the action;

when play ends:
	if waterworks is 1:
		say "Because of your efforts in restoring the water to flowing properly within the city the military is able to speed up restoring the lives of those who haven't succumbed to the infection back to something close to normalcy. Even better though, at least for those who have to walk the streets during the sweltering days and stifling nights, is that because of the water running as it should now the military is able to call the local firefighters in to help clean up the sludge covering both the buildings and the streets. Having someone finally do something about that [italic type]smell[roman type] lingering in the air is much a boon to those citizens who have to still fight off certain crazy mutants as anything else they could hope to wish for.";

]

Reservoir ends here.
