Combat Helmet by Nuku Valente begins here.

"Adds a combat helmet, and a situation to find it."

[lgnumber is a number that varies.]

[combat helmet moved to Core Mechanics/Equipment.i7x]

Table of GameEventIDs (continued)
Object	Name
Lost Gear	"Lost Gear"

Lost Gear is a situation.
ResolveFunction of Lost Gear is "[ResolveEvent Lost Gear]".

to say ResolveEvent Lost Gear:
	say "     You happen across an old army surplus store. Your heart swells at the possibilities, only to sink as you notice that the door's been forced open. The place has already been looted, likely by other, desperate, but faster, survivors. It might be worth a look anyway?";
	if Player consents:
		LineBreak;
		say "     You enter the store and begin to forage around. There has to be something worth having in here. A sudden noise comes from behind a rack of rotting clothes. A mutant!";
		while Resolution of Lost Gear is 0:
			fight;
			if lost is 1:
				say "     When you recover, it looks like the store has been emptied of what little it had to start. This is a loss. You make your way back to safer places.";
				now Resolution of Lost Gear is 1; [fought and lost, equipment lost]
			else:
				say "     With the way clear, you begin your search in earnest...";
				let dice be a random number from 1 to 20;
				let the bonus be ( Perception of Player minus 10 ) divided by 2;
				if "Scavenger" is listed in feats of Player:
					increase bonus by 4;
				say "[line break]     You roll 1d20([dice])[if bonus >= 0]+[end if][bonus] = [special-style-1][dice + bonus][roman type] vs [special-style-2]21[roman type] (Perception Check): ";
				if dice + bonus > 20:
					say "Hidden under the counter, you find an old army helmet. You snatch it up and tuck it into your backpack before leaving the, otherwise empty, store.";
					ItemGain combat helmet by 1;
					increase score by 5;
					now Resolution of Lost Gear is 2; [found helmet]
				else:
					say "You come up empty for your efforts. There has to be something here! Do you want to look further?";
					if Player consents:
						LineBreak;
						say "     You restart your search. Time passes as you dig around the store...";
						follow the turnpass rule;
						WaitLineBreak;
						say "     Your activity draws the attention of a local mutant!";
					else:
						LineBreak;
						say "     Dejected, you head for safer places.";
						now Resolution of Lost Gear is 3; [found nothing]
		now Lost Gear is resolved;
	else:
		LineBreak;

Combat Helmet ends here.
