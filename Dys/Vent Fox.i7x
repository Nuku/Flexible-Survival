Version 1 of Vent Fox by Dys begins here.

"Adds a random encounter in the mall, and an 'NPC' that can be interacted with."

Section 1 - Event

VentFoxEncounterCount is a number that varies.
VentFoxRelationship is a number that varies. [0 = not met, 1 = met and helped, 2 = met twice and helped, 100 = didn't help]


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
				say "     With that problem solved, you place the grate back over the duct and fasten it in place before making your way out of the store and into the East Wing.";
			else:
				now VentFoxRelationship is 100;
				now VentFoxEncounterCount is 3;
				say "     [line break]";
				say "     Deciding to leave the fox in the predicament he got himself into, you leave, continuing on to the East Wing. As you exit the store, you can hear a pitiful whine as the fox senses you deserting him.";
		else:
			say "     [line break]";
			say "     Deciding it's probably best to just move along, you continue making your way to the East Wing.";
	else if VentFoxEncounterCount is 1: [second time]
		say "     As you head to the East Wing, you hear squeaking coming from the same shop you'd found the 'Vent Fox' in. Sighing, you decide to make your way to the store to help the silly latex vulpine. Stepping inside, you don't even bother looking around before you go to the vent. You unfasten the cover again, pulling it, and the fox towards you. This time, he doesn't seem startled or scared. As a matter of fact, he almost looks, relieved. You gently free him from the grate, but this time, he doesn't dash back into the ductwork immediately. Instead, he leans down to grab the inner tube that's still laying there, picking it up. He turns to look at you before running back into the vents.";
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
	say "     Placeholder for interactions with the fox.";

Vent Fox ends here.
