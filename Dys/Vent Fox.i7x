Version 1 of Vent Fox by Dys begins here.

"Adds a random encounter in the mall, and an 'NPC' that can be interacted with."

Section 0 - Variables
VentFoxEncounterCount is a number that varies.
VentFoxRelationship is a number that varies. [0 = not met, 1 = met and helped, 2 = met twice and helped, 3 = vent location known, 100 = didn't help]
VentFoxContentLevel is a number that varies. [What level of content the player has unlocked with the fox after helping it.
0 = never interacted
1 = one interaction. Unlocks scenes where the fox dominates the player
2 = two interactions. Unlocks kinkier scenes with the fox
3 = three+ interactions. Unlocks extreme content with fox.]
VentFoxLastFed is a number that varies. VentFoxLastFed is usually 1000.

Section 1 - Event

instead of going east from Mall Atrium while (VentFoxEncounterCount < 2 and a random chance of 1 in 3 succeeds): [33% chance of the player finding the vent fox.]
	move player to Mall East Wing;
	if debugactive is 1:
		say "     DEBUG: Vent Fox: [VentFoxEncounterCount][line break]";
	if VentFoxEncounterCount is 0: [first encounter with the derpy fox]
		say "     As you make your way to the east wing, you hear a squeaking noise coming from one of the abandoned storefronts.";
		say "     [bold type]Do you want to investigate?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Check out the source of the sounds.";
		say "     ([link]N[as]n[end link]) - Continue past without looking.";
		if player consents:
			now VentFoxEncounterCount is 1;
			say "     [line break]";
			say "     Opting to investigate the strange noises, you step through the doorway of the store. Looking around, most of it looks like it's been looted already, with shelves and displays being left barren. Towards the back of the shop, you can make out a vent. Looking closer, you see a red and white latex paw poking through the grating! The foreleg wiggles back and forth, it's owner seeming to have gotten stuck. The squeaks you were hearing are louder now, and there's a definite distressed sound to them that makes you feel almost bad for the stuck feral. Looking at the ground directly in front of the vent, you see what looks like a bike tire inner tube. It's just a few feet away from the fox's paw, and it's clear he was attempting to get a snack for himself when he got stuck.";
			say "     [bold type]Do you help the stuck feral out?[roman type][line break]";
			say "     [line break]";
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				now VentFoxRelationship is 1;
				say "     [line break]";
				say "     Sighing, you step towards the vent before unfastening the latch that keeps it held in place. You pull the cover off, dragging the stuck fox out of the vent with it. He lets out a rather startled yelp and begins yanking harder on his arm. You mumble something under your breath, wishing it would stop squirming so you could help it, and almost as if it can understand you, it calms down. With it relaxed, you put manage to slide the vent cover off of his paw. As soon as he's free, the rubber vulpine squeaks happily and darts back into the vent, disappearing from sight.";
				say "     With that problem solved, you place the grate back over the duct and fasten it in place before making your way out of the store and into the East Wing, wondering if you'll ever see [']Vent['] again.";
			else:
				now VentFoxRelationship is 100;
				now VentFoxEncounterCount is 3;
				say "     [line break]";
				say "     Deciding to leave the fox in the predicament he got himself into, you leave, continuing on to the East Wing. As you exit the store, you can hear a pitiful whine as the fox senses you deserting him.";
		else:
			say "     [line break]";
			say "     Deciding it's probably best to just move along, you continue making your way to the East Wing.";
	else if VentFoxEncounterCount is 1: [second time]
		say "     As you head to the East Wing, you hear squeaking coming from the same shop you'd found [']Vent['] in. Sighing, you decide to make your way to the store to help the silly latex vulpine. Stepping inside, you don't even bother looking around before you go to the vent. You unfasten the cover again, pulling it, and the fox towards you. This time, he doesn't seem startled or scared. As a matter of fact, he almost looks, relieved. You gently free him from the grate, but this time, he doesn't dash back into the ductwork immediately. Instead, he leans down to grab the inner tube that's still laying there, picking it up. He turns to look at you before running back into the vents.";
		say "     Not bothering to put the cover back in place, you continue heading to the East Wing, a small smile on your [face of player] face. [bold type]Perhaps you could search around the mall to find how the fox got inside in the first place...[roman type]";
		now VentFoxEncounterCount is 2; [did the event twice]
		now VentFoxRelationship is 2;

Section 2 - Location

vent cover is an object. It is in Smith Haven Mall Lot West. It is fixed in place. Understand "vent" as vent cover.
The description of vent cover is "[VentDescription]".

KnockOnVent is an action applying to nothing.
Understand "knock on it" as KnockOnVent.
Understand "knock vent" as KnockOnVent.
Understand "knock cover" as KnockOnVent.
Understand "knock on vent" as KnockOnVent.
Understand "knock on the vent" as KnockOnVent.
Understand "knock on cover" as KnockOnVent.
Understand "knock on the cover" as KnockOnVent.
Understand "knock on vent cover" as KnockOnVent.
Understand "knock on the vent cover" as KnockOnVent.

Check KnockOnVent:
	if vent cover is not visible, say "What?" instead;

Carry out KnockOnVent:
	say "[KnockedOnVent]";

Section 3 - Interactions

To say VentDescription:
	say "     You can see a large, grated vent on the wall of the building. It's close enough to the ground that a creature or two might've been able to slip inside. Maybe you could try [link]knocking on it[as]knock on it[end link] to draw something out?";

To say KnockedOnVent:
	if VentFoxRelationship is 0:[not met]
		say "     You tentatively knock on the vent cover, seeing if you can draw the attention of... well, you don't really know what. A few seconds of silence pass before you decide to go do something else.";
	else if VentFoxRelationship is 1:[met & helped]
		say "     You knock lightly on the vent cover, trying to draw the attention of whatever may be inside it. A few seconds of silence pass, and just as you're about to move on, you hear a soft shuffling, moving away from you through the vents. It's pretty obvious that [italic type]something[roman type] is in there.";
	else if VentFoxRelationship is 100:[met, didn't help]
		say "     You decided to knock on the vent grating, trying to draw the attention of whatever creatures may be residing inside it. However, you're almost instantly met with a soft growl. Frowning, you continue on your way.";
	else if VentFoxRelationship is 2:[met, helped twice.]
		say "     You knock lightly on the vent cover, trying to draw the attention of whatever may be inside it. A few seconds of silence pass, and just as you're about to move on, you begin to hear a soft shuffling, drawing closer to you with each passing moment. A couple seconds later, the shuffling stops and a black, red, and white rubber vulpine sticks his head through the grating with a determined squeak. Seeing that you're his visitor, the Vent Fox yips happily before moving back into the vent. Maybe next time you visit you could [']play['] with him...";
		now VentFoxRelationship is 3;[vent known]
	else if VentFoxRelationship is 3:[vent known]
		say "     You knock lightly on the vent cover, trying to draw the attention of whatever may be inside it. A few seconds of silence pass, and just as you're about to move on, you begin to hear a soft shuffling, drawing closer to you with each passing moment. A couple seconds later, the shuffling stops and a black, red, and white rubber vulpine sticks his head through the grating with a determined squeak. After seeing who his visitor is, the latex vulpine yips happily in greeting before his body flows into a liquid blob, dripping out of the vent and onto the ground. Why he couldn't have done that when he was stuck inside, you're really not sure. Once all of his mass is outside, he quickly reforms into his normal shape, staring at you patiently, as if asking you what you wanted to do. [VentFoxSexMenu]";
	else:
		say "     DEBUG: You shouldn't be able to see this! If you are, contact @Dys on the FS Discord, and give him the error code: VentFox:[VentFoxEncounterCount],[VentFoxRelationship]";

to say VentFoxSexMenu:
	say "     Well, what do you do with the fox?";
	choose row monster from table of random critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Help the rubber fox find some food";
	now sortorder entry is 1;
	now description entry is "Assist the Vent Fox in finding something to eat";
	[]
	if cocks of player > 0 and anallevel > 1 and player is not submissive:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 2;
		now description entry is "Use the rubber vulpine for your own pleasure";
	[]
	if anallevel is 3 and player is submissive and VentFoxContentLevel > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get rimmed by the fox";
		now sortorder entry is 3;
		now description entry is "Get that latex tongue inside of you";
	[]
	if anallevel > 1 and player is submissive and VentFoxContentLevel > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked by the fox";
		now sortorder entry is 4;
		now description entry is "Let him take your ass";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[line break][link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is:
					-- "Help the rubber fox find some food":
						say "[VentFoxScavengeFood]";
					-- "Fuck his ass":
						say "[FuckVentFoxAssNormal]";
					-- "Get rimmed by the fox":
						say "[VentFoxRimsPlayerNormal]";
					-- "Get fucked by the fox":
						say "[VentFoxFucksPlayerNormal]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "     Change your mind and do something else?";
			if player consents:
				now sextablerun is 1;
				say "     Opting to leave for now, you wave goodbye to the fox. He let's out a disappointed whine as you leave.";
				WaitLineBreak;
			else:
				say "Pick an option.";
		else:
			say "Invalid selection made. Please pick an option from 1 to [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say VentFoxScavengeFood:[Player helps the fox find some rubber to eat.]
	if VentFoxLastFed - turns >= 8:
		if VentFoxContentLevel is 0:[first time interacting.]
			say "     You happily suggest to the fox that you two can go look for some food together, not really expecting any form of comprehension. To your surprise, however, the rubber vulpine swishes its tail happily and nods its head. His body then shrinks down to be roughly the size of a lap-dog, and he hops up onto your shoulder. You can't help but let a smile grace your [face of player] face as the you begin walking aimlessly. It's very apparent to you that this feral is at least intelligent.";
			say "     You make your way around the building with no real destination in mind when you come across a garage. It looks like it used to be used for maintenance vehicles, with jacks and tools scattered around on workbenches pushed up against the walls. As you're taking in the room, Vent yips, startling you slightly. You look at the small fox on your shoulder to see his gaze is firmly locked with a stack of tires in the corner of the room. It seems he wants to eat those. You decide that no real harm can come from it, and you take him over to the stack of rubber. He hops off your shoulder, squeaking quietly as he lands. Deciding that he can handle it from there, you continue looking around the room, trying to see if there's anything you could use in here...";
			WaitLineBreak;
			say "     You're startled out of your search by a sudden bark. Whirling around, you're greeted by a much larger Vent, who is sitting on his haunches where the tires used to be. He's about the size of a wolf now. The latex vulpine gives you a grin before he shrinks his body back down to the size he was upon arrival, before hopping back up onto your shoulder and nuzzling you. He seems to be rather thankful.";
			say "     [italic type]You've helped Vent assimilate some material. Not only is the fox able to grow larger, but he also seems to be more confident around you. You can now do more with him.[roman type]";
			now VentFoxContentLevel is 1;
			now VentFoxLastFed is turns;
		else if VentFoxContentLevel is 1:
			say "     Locked shed with str check here.";
			now VentFoxContentLevel is 2;
			now VentFoxLastFed is turns;
		else if VentFoxContentLevel is 2:
			say "     Parking lot with Logan argument here.";
			now VentFoxContentLevel is 3;
			now VentFoxLastFed is turns;
		else:
			say "     You think about going to find more food for Vent, but he's honestly so big at this point that there's really no point.";
	else:
		say "     You make your suggestions to Vent, but he simply shakes his head, still too full from his last meal.";

to say FuckVentFoxAssNormal:[Player fucks the fox's ass. No extreme fetishes.]
	say "     Placeholder.";

to say VentFoxRimsPlayerNormal:[Player gets rimmed by the fox. No extreme fetishes.]
	say "     Placeholder.";

to say VentFoxFucksPlayerNormal:[Player gets fucked by the fox. No extreme fetishes.]
	say "     Placeholder."

Vent Fox ends here.
