Combat Helmet by Nuku Valente begins here.

"Adds a combat helmet, and a situation to find it."


Table of Game Objects (continued)
name	desc	weight	object
"combat helmet"	"A basic army helmet. It should provide some minor protection while worn."	4	combat helmet

combat helmet is equipment.
It is not temporary.
The AC of combat helmet is 25.
The effectiveness of combat helmet is 60.
The placement of combat helmet is "face".
The descmod of combat helmet is "A green and brown camo army helmet rests atop your head.".
The slot of combat helmet is "head".

lost gear is a situation.
lgnumber is a number that varies.

instead of resolving lost gear:
	say "You happen across an old army surplus store. Your heart swells at the possibilities, only to sink as you notice that the door's been forced open. The place has already been looted, likely by other, desperate, but faster, survivors. It might be worth a look anyway?";
	if player consents:
		say "You enter the store and begin to forage around. There has to be something worth having in here. A sudden noise comes from behind a rack of rotting clothes. A mutant!";
		now lgnumber is 0;
		while lgnumber is 0:
			fight;
			if lost is 1:
				say "When you recover, it looks like the store has been emptied of what little it had to start. This is a loss. You make your way back to safer places.";
				now lost gear is resolved;
				now lgnumber is 1;
			else:
				say "With the way clear, you begin your search in earnest...";
				let dice be a random number from 1 to 20;
				let the bonus be (( the perception of the player minus 10 ) divided by 2);
				if "Scavenger" is listed in feats of player:
					increase bonus by 4;
				say "You roll 1d20([dice])+[bonus] = [dice + bonus]: ";
				if dice + bonus > 20:
					say "Hidden under the counter, you find an old army helmet. You snatch it up and tuck it into your backpack before leaving the, otherwise empty, store.";
					increase carried of combat helmet by 1;
					increase score by 5;
					now lost gear is resolved;
					now lgnumber is 1;
				else:
					say "You come up empty for your efforts. There has to be something here! Do you want to look further?";
					if player consents:
						say "You restart your search, time passes as you dig around the store...";
						follow the turnpass rule;
						wait for any key;
						say "Your activity draws the attention of a local mutant!";
						next;
					else:
						now lost gear is resolved;
						say "Dejected, you head for safer places.";
						now lgnumber is 1;


Combat Helmet ends here.
