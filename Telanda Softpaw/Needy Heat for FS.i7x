Needy Heat for FS by Telanda Softpaw begins here.

"Addon for adding an 'in heat' Event to infections, Designed to work with all monster type infections by default. with the option to be customisable if you want to add specifics for your monster."

Book 1 - Variables

heat enabled is a truth state that varies. heat enabled is usually True. [This variable turns the heat mod on an off.]
animal heat is a truth state that varies. animal heat is usually False. [This variable is used to check to see if you've started an animalistic breeding cycle.]
turns in heat is a number that varies. turns in heat is usually 0. [ Counter to say how long you've been in heat.]
inheat is a truth state that varies. inheat is usually False. [ Variable for other mods to easily check if you are in heat right now.]
slutfucked is a number that varies. slutfucked is usually 0. [ Variable to prevent too many random husky encounters.]
lastturn is a number that varies. lastturn is usually 240. [This is used so that we only trigger events once per GAME turn(3 hr period) rather then each event turn.]

Table of infection heat
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
"Default"	7	1	"You shift uncomfortably, a warmth spreading between your legs,seeming to build rapidly.  It's not until you feel the warm trickle down your leg that you realise with a start what's happening, glancing down to see your sex become swollen and red as your body advertises it's fertility and readiness. [line break][line break] You are in heat."	--	--	--	"[defaultheat]"
"Female Husky"	7	7	"A sharp strike of pain in your lower belly makes you clutch at it and drop to your knees with a gasp,  as you struggle for breath through the fading pain you can feel a hot trickle from between your legs. looking down you watch in horrified fascination as your sex twists and warps into that of a bitches, then begins to swell and puff up rapidly. your dripping nethers now exactly the same as the wanton husky bitch that infected you, dripping lewdly and throbbing with the fertility and lust of canine heat."	"swollen and dripping Husky Bitch twat "	"[huskyheatstart]"	"[huskyheatend]"	"[huskyheat]"

Book 2 - Logic & Rules

to say defaultheat:
	[say "You shift uncomfortably. still being driven by the swollen needy heat between your legs.";]
	if libido of player is less than 96, increase libido of player by 5;
	
to say huskyheatstart:
	increase Cunt length of player by 2;
	increase Cunt width of player by 1;

to say huskyheatend:
	decrease Cunt width of player by 1;
	if cunt width of player < 1, now cunt width of player is 1;
	decrease Cunt length of player by 2;
	if cunt length of player < 1, now cunt length of player is 1;

to say huskyheat:  	[ Husky stays in heat permanently. lets make a interesting events that can happen if she doesn't get any satisfaction ]
	increase libido of player by 5;
	if libido of player > 100, now libido of player is 100;
	if (libido of player is greater than 90) and (location of player is fasttravel ) and (slutfucked is greater than 8):
		say "A waft on the breeze catches your nose, your head snapping around as the need between your legs throbs.  Unable to control your lust, you strike out in the direction of the infected monster.";
		now slutfucked is 0;
		let hmonlist be a list of numbers;
		repeat with X running from 1 to number of filled rows in table of random critters:	[ Loop through and select all monsters that appear "outside" ] 
			choose row X from the table of random critters;
			if there is no area entry, next;
			if area entry is "Outside":
				add X to hmonlist;
		sort hmonlist in random order;
		repeat with Z running through hmonlist:		[Pick one of the monsters at random]
			now monster is Z;
			break;
		choose row monster from the table of random critters;
		say "The enticing scent leads to a [name entry].  Immediately upon seeing the infected monster, you immediately submit, offering yourself freely in the hopes of satisfying your body's lustful, heat-fueled needs.";
		wait for any key;
		follow the cock descr rule;
		follow the breast descr rule;
		say "[victory entry]";
		infect;
		decrease the score by 5;
		decrease the morale of the player by 3;
	else if libido of player is greater than 90:
		increase slutfucked by 1;

every turn (This is the check heat rule): [ May need to change this so that it only procs when theres a 'time' change]
	if heat enabled is true:
		if lastturn is not turns:	[This is used so that we only trigger events once per GAME turn (3 hr period) rather then each event turn.]
			if cunts of player is greater than 0 and (cockname of player is not "human") and gestation of child is 0:	[Only run if female. and has groin infection]
				if animal heat is not True:	[ Check if it's just triggered]
					say "You feel a warning tingle deep within yourself, as a part of your body deep within alters to suit your more Tainted Sexuality.";
					now turns in heat is 0;
					now animal heat is True;
				now lastturn is turns;				
				increase turns in heat by 1;
				[She's vulnerable to heat, Time to calculate if she's actually Triggered or reverted.]
				if the cockname of player is a infect name listed in Table of infection heat:	[ If the species is in the table use it]
					choose a row with a infect name of (cockname of player) in Table of infection heat; 
				else: [No specific Data, use Generic entry.]
					choose a row 1 in Table of infection heat;
				if turns in heat is greater than (heat cycle entry times 8):
					now turns in heat is 0;
					[ say "reset!"; ]
				if turns in heat is greater than ( (heat cycle entry - heat duration entry ) times 8) and (inheat is not True):
					say "[trigger text entry]";
					if there is heat start entry, say "[heat start entry]";[Heat start Trigger]
					now inheat is True;	[Player is now in heat. each cycle from now will run heat events]
				else if turns in heat is greater than ( (heat cycle entry - heat duration entry ) times 8) and (inheat is True): [ still in heat, previously triggered.]
					if there is inheat entry, say "[inheat entry]"; [inheat Trigger]
				else if inheat is true:
					say "Without any warning the feral lust that had been growing inside you has faded, you are no longer in heat.";
					if there is heat end entry, say "[heat end entry]"; [Heat start Trigger]
					now libido of player is libido of player divided by 2;	[Halve the players libido.]
					now inheat is False;
			else:
				if animal heat is True:
					say "As your body shifts you feel a cool sensation deep within, you will no longer be at the mercy of an animal heat anymore";
					now turns in heat is 0;
					now animal heat is False;
					now inheat is False;
				
Book 3 - Debugging Commands - not for release

showheat is an action applying to nothing.
understand "show heat" as showheat.

carry out showheat:
	say "You've been vulnerable to animal heat for [turns in heat] Turns.";

setheat is an action applying to one number.
understand "set heat [a number]" as setheat.

carry out setheat:
	now turns in heat is the number understood;
	say "turns in heat set to [turns in heat]"

Needy Heat for FS ends here.