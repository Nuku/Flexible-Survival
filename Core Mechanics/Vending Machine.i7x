Version 1 of Vending Machine by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

There is a Cola Vending Machine in Mall Foodcourt. "A broken down vending machine lurks nearby with several large soda brands brightly painted onto it." It is fixed in place. It has a description "A vending machine. It appears to dispense soda, but it's broken.".
Cola Vending Machine has a number called dispensed.
understand "vending machine" as Cola Vending machine.

Vending is an action applying to one thing.
understand "use [cola vending machine]" as vending.

Carry out vending:
	say "It's broken! Damn. All that soda. How to get it out?";

Instead of attacking the Cola Vending machine:
	say "You give the soda machine a solid whack.";
	let the bonus be (( Strength of Player minus 10 ) divided by 2);
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] = [dice plus bonus]: ";
	increase dice by bonus;
	if dice > 15:
		say "A soda can pops out!";
		ItemGain soda by 1;
		increase score by 1;
		increase dispensed of cola vending machine by 1;
	else:
		say "Nothing happens...";
	if ( a random chance of 5 in 100 succeeds ) or dispensed of noun > 9:
		say "The machine gives a final spark of defeat. You are certain there is no more soda to be had.";
		now Cola Vending Machine is nowhere;

Vending Machine ends here.
