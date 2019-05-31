Version 3 of Needy Heat by Core Mechanics begins here.
[ Version 3.3 - Improved 'drive heat' subroutine created and moved here. ]
[- Originally Authored By: Telanda Softpaw -]

"Addon for adding an 'in heat' Event to infections, designed to work with all monster type infections by default, with the option to be customizable if you want to add specifics for your monster."

Book 1 - Variables

heat enabled is a truth state that varies. heat enabled is usually True. [This variable turns the heat mod on an off.]
animal heat is a truth state that varies. animal heat is usually False. [This variable is used to check to see if you've started an animalistic breeding cycle.]
turns in heat is a number that varies. turns in heat is usually 0. [Counter to say how long you've been in heat.]
inheat is a truth state that varies. inheat is usually False. [Variable for other mods to easily check if you are in heat right now.]
slutfucked is a number that varies. slutfucked is usually 0. [Variable to prevent too many random husky encounters.]
lastturn is a number that varies. lastturn is usually 240. [This is used so that we only trigger events once per GAME turn (3 hr period) rather than each event turn.]
heatform is a number that varies. [This is used to denote whether the player's last turn was spent in female heat or mpreg heat]
heatlevel is a number that varies. heatlevel is usually 2. [This is used to denote the intensity of Player heat (1=off / 2=normal / 3=intense)]
heatdrive is a number that varies. heatdrive is usually 0. [heatdrive controls how outside events drive a player's heat (0=combat, 1=regular play)]

Table of infection heat
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
"Default"	7	1	"You shift uncomfortably, a warmth spreading between your legs, seeming to build rapidly. It's not until you feel the warm trickle down your leg that you realize with a start what's happening. Glancing down to see your sex become swollen and red as your body advertises its fertility and readiness. [line break][line break]You are in heat."	--	--	--	"[defaultheat]"	true	true	"Your lower belly quivers as some hidden part of you wakens to a heated need. Your bowels squeeze and throb, feeling empty and needing to be filled, preferably by something large and virile.[line break]Your altered body is in heat."
"Husky Bitch"	400	400	"A sharp strike of pain in your lower belly makes you clutch at it and drop to your knees with a gasp. As you struggle for breath through the fading pain, you can feel a hot trickle from between your legs. Looking down you watch in horrified fascination as your sex twists and warps into that of a bitch's, then begins to swell and puff up rapidly. Your dripping nethers now exactly the same as the wanton husky bitch that infected you, dripping lewdly and throbbing with the fertility and lust of canine heat."	"swollen and dripping husky bitch twat "	"[huskyheatstart]"	"[huskyheatend]"	"[huskyheat]"	true	true	"A sharp strike of pain in your lower belly makes you clutch it and drop to your knees with a gasp. As you struggle for breath through the fading pain, you can feel a pulsing emptiness in your ass. Your anus quivers and darkens, relaxing as it becomes more accommodating in its need to be filled as a strange [if Player is male]male [end if]heat overtakes you."

[  note -
fheat entry - truth state states if there is a female heat
mpregheat entry - truth state states if there is an mpreg heat
mpregtrigger - trigger text for mpreg heat starting
]

Book 2 - Logic & Rules

to say defaultheat:
	[say "You shift uncomfortably. still being driven by the swollen needy heat between your legs.";]
	increase Libido of Player by 5;
	if heatlevel is 3:
		increase Libido of Player by 2;
	if Libido of Player > 100, now Libido of Player is 100;

to say huskyheatstart:
	if heatform is 0:	[starting female heat]
		increase Cunt Depth of Player by 2;
		increase Cunt Tightness of Player by 1;
	else:			[starting mpreg heat]
		increase Libido of Player by 5;

to say huskyheatend:
	if Player is female:
		decrease Cunt Tightness of Player by 1;
		if Cunt Tightness of Player < 1, now Cunt Tightness of Player is 1;
		decrease Cunt Depth of Player by 2;
		if Cunt Depth of Player < 1, now Cunt Depth of Player is 1;
	decrease slutfucked by 2;
	if slutfucked < 0, now slutfucked is 0;
	if slutfucked > 6, now slutfucked is 6;

to say huskyheat: 	[Husky stays in heat permanently. Let's make an interesting event that can happen if he/she doesn't get any satisfaction]
	increase Libido of Player by 5;
	if Libido of Player > 99, now Libido of Player is 99;
	if (Libido of Player > 90) and (location of Player is fasttravel or there is a dangerous door in location of Player) and (slutfucked > 8):
		say "A waft on the breeze catches your nose, your head snapping around as the need between your legs throbs. Unable to control your lust, you strike out in the direction of the infected monster.";
		now slutfucked is 0;
		let hmonlist be a list of numbers;
		let heatzone be "Outside";
		let zz be a random visible dangerous door;
		if zz is not nothing, now heatzone is the marea of zz;
		repeat with X running from 1 to number of filled rows in Table of Random Critters:	[ Loop through and select all monsters that appear nearby (Outside by default) ]
			choose row X from the Table of Random Critters;
			if there is no area entry, next;
			if area entry is heatzone:
				add X to hmonList;
				if Name entry is "Husky Alpha" or Name entry is "Husky Bitch":		[Huskies are more likely]
					add X to hmonList;
		if hmonlist is empty and heatzone is not "Outside":		[if none valid found, default back to Outside]
			repeat with X running from 1 to number of filled rows in Table of Random Critters:	[Loop through and select all monsters that appear nearby (Outside by default)]
				choose row X from the Table of Random Critters;
				if there is no area entry, next;
				if area entry is "Outside":
					add X to hmonList;
					if Name entry is "Husky Alpha" or Name entry is "Husky Bitch":		[Huskies are more likely]
						add X to hmonList;
		sort hmonlist in random order;
		now MonsterID is entry 1 of hmonList;
		choose row MonsterID from the Table of Random Critters;
		say "The enticing scent leads to a [Name entry]. Immediately upon seeing the infected monster, you immediately submit, offering yourself freely in the hopes of satisfying your body's lustful, heat-fueled needs.";
		wait for any key;
		follow the cock descr rule;
		follow the cunt descr rule;
		follow the breast descr rule;
		say "[victory entry]";
		infect;
		decrease the score by 5;
		decrease the morale of the player by 3;
		if Player is kinky, increase the morale of the player by 6;
	else if Libido of Player > 90:
		increase slutfucked by 1;
		if heatlevel is 3:
			increase Libido of Player by 2;
			if a random chance of 1 in 4 succeeds, increase slutfucked by 1;


This is the check heat rule:
	if heat enabled is true and heatlevel is not 1:
		if humanity of Player > 0 and skipturnblocker is 0:	[Effects don't occur if turns are skipped.]
			if Player is female and (CockName of Player is not "Human") and player is impreg_able:	[Only run if female w/groin infection and able to get preggers]
				if animal heat is not True:	[Check if it's just triggered]
					say "You feel a warning tingle deep within yourself, as a part of your body deep within alters to suit your more tainted sexuality.";
					now turns in heat is 0;
					now animal heat is True;
				now lastturn is turns;
				increase turns in heat by 1;
				[She's vulnerable to heat, Time to calculate if she's actually Triggered or reverted.]
				if CockName of Player is a infect name listed in Table of infection heat:	[If the species is in the table use it]
					choose a row with a infect name of (CockName of Player) in Table of infection heat;
					if fheat entry is false:	[no female heat for that form]
						choose row 1 in table of infection heat;
				else: [No specific Data, use Generic entry.]
					choose a row 1 in Table of infection heat;
				if turns in heat > (heat cycle entry times 8):
					now turns in heat is 0;
					[say "reset!";]
				if turns in heat >= ( heat cycle entry - heat duration entry ) * 8 and inheat is not true:		[time to enter heat]
					now inheat is True; [Player is now in heat. Each cycle from now will run heat events]
					now heatform is 0; [in female heat]
					say "[trigger text entry]";
					if there is heat start entry, say "[heat start entry]"; [Heat start Trigger]
				else if turns in heat >= ( heat cycle entry - heat duration entry ) * 8 and inheat is True:	[still in heat, previously triggered.]
					if heatform is 1:		[last turn was mpreg heat]
						say "That heated need that has been burning deep inside you spreads to encompass your new pussy. Hot juices soak your thighs as your female sex goes into heat and you're left wanting to be mounted and bred.";
						now heatform is 0; [swap to female heat]
					else:
						if there is inheat entry, say "[inheat entry]"; [inheat Trigger]
						if heatlevel is 3 and a random chance of 1 in 5 succeeds:
							decrease turns in heat by 1; [25% duration of heated period due to compounding rollback]
				else if inheat is true:	[heat period over]
					say "Without any warning, the feral lust that had been growing inside you has faded. You are no longer in heat.";
					now heatform is 0; [ensuring treats as female heat for end]
					if there is heat end entry, say "[heat end entry]"; [Heat start Trigger]
					now Libido of Player is Libido of Player divided by 2; [Halve the players libido.]
					now inheat is False;
				else:		[not in heat period]
					if heatlevel is 3 and a random chance of 1 in 4 succeeds:
						increase turns in heat by 1; [20% duration of non-heated period lost]
			else if Player is not female and CockName of Player is not "Human" and player is mpreg_able:	[Only run if male/neuter w/groin infection and able to get mpreggers]
				if animal heat is not True:	[Check if it's just triggered]
					say "You feel a hot rush in your lower belly as some hidden part of you is affected by your tainted sexuality.";
					now turns in heat is 0;
					now animal heat is True;
				now lastturn is turns;
				increase turns in heat by 1;
				if CockName of Player is a infect name listed in Table of infection heat:	[If the species is in the table use it]
					choose a row with a infect name of (CockName of Player) in Table of infection heat;
					if mpregheat entry is false:	[no mpreg heat for that form]
						choose row 1 in table of infection heat;
				else: [No specific Data, use Generic entry.]
					choose a row 1 in Table of infection heat;
				if turns in heat > (heat cycle entry times 8):
					now turns in heat is 0;
					[ say "reset!"; ]
				if turns in heat >= ( heat cycle entry - heat duration entry ) * 8 and inheat is not True:	[not yet in heat]
					now inheat is True; [Player is now in heat. Each cycle from now will run heat events]
					now heatform is 1; [in mpreg-heat]
					say "[mpregtrigger entry]";
					if there is heat start entry, say "[heat start entry]"; [Heat start Trigger]
				else if turns in heat >= ( heat cycle entry - heat duration entry ) * 8 and inheat is True:	[still in heat, previously triggered.]
					if heatform is 0:		[last turn was female heat]
						say "That heated need you've been feeling doesn't go away with your pussy, instead sinking inside you to smolder in your lower belly. You are left still wanting to be mounted and filled despite being [if Player is male]male[else]neuter[end if].";
						now heatform is 1; [swap to mpreg-heat]
					else:
						if there is inheat entry, say "[inheat entry]"; [inheat Trigger]
						if heatlevel is 3 and a random chance of 1 in 5 succeeds:
							decrease turns in heat by 1; [25% duration of heated period due to compounding rollback]
				else if inheat is true:
					say "As swiftly as it came, the feral lust that had been growing inside you has faded. You are no longer in heat.";
					now heatform is 1; [ensuring treats as mpreg heat for end]
					if there is heat end entry, say "[heat end entry]"; [Heat start Trigger]
					now Libido of Player is Libido of Player divided by 2; [Halve the players libido.]
					now inheat is False;
				else:		[not in heat period]
					if heatlevel is 3 and a random chance of 1 in 4 succeeds:
						increase turns in heat by 1; [20% duration of non-heated period lost]
			else:
				if animal heat is True:
					say "As your body shifts you feel a cool sensation deep within, you will no longer be at the mercy of an animal heat anymore.";
					now turns in heat is 0;
					now animal heat is False;
					now inheat is False;

[This accelerates a new heat or extends the duration of a current heat. If the trigger is during combat, post-combat or otherwise during an event that might be thrown off by heat effects occurring, make sure heatdrive is set to 0 before running.]
to drive heat:
	if animal heat is true:
		if Player is female and (CockName of Player is not "Human") and player is impreg_able:
			if CockName of Player is a infect name listed in Table of infection heat:	[If the species is in the table use it]
				choose a row with a infect name of (CockName of Player) in Table of infection heat;
				if fheat entry is false:	[no female heat for that form]
					choose row 1 in table of infection heat;
			else: [No specific Data, use Generic entry.]
				choose a row 1 in Table of infection heat;
		else if Player is not female and CockName of Player is not "Human" and player is mpreg_able:
			if CockName of Player is a infect name listed in Table of infection heat:	[If the species is in the table use it]
				choose a row with a infect name of (CockName of Player) in Table of infection heat;
				if mpregheat entry is false:	[no mpreg heat for that form]
					choose row 1 in table of infection heat;
			else: [No specific Data, use Generic entry.]
				choose a row 1 in Table of infection heat;
		if inheat is false:
			increase turns in heat by 1; [accelerate beginning of heat]
		else if inheat is true and ( turns in heat is ( heat cycle entry - heat duration entry ) * 8 ):
			now heatdrive is 0;
		else if inheat is true and ( turns in heat > ( heat cycle entry - heat duration entry ) * 8 ):
			if heatdrive is 0:
				decrease turns in heat by 1; [delay ending of heat]
			else:
				decrease turns in heat by 2; [delay ending of heat - bumped twice to make up for advancing during 'check heat rule' below]
		if heatdrive is 0:
			increase score by 0;
		else if heatdrive is 1:
			follow the check heat rule;
		now heatdrive is 0;


[  - old version... buggy?
This is the check heat rule:
	if heat enabled is true:
		if humanity of Player > 0 and skipturnblocker is 0:	[Effects don't occur if turns are skipped.]
			if Player is female and (CockName of Player is not "Human") and player is fpreg_able:	[Only run if female w/groin infection and able to currently get f-preggers]
				if animal heat is not True:	[Check if it's just triggered]
					say "You feel a warning tingle deep within yourself, as a part of your body deep within alters to suit your more tainted sexuality.";
					now turns in heat is 0;
					now animal heat is True;
				now lastturn is turns;
				increase turns in heat by 1;
				[She's vulnerable to heat, Time to calculate if she's actually Triggered or reverted.]
				if CockName of Player is a infect name listed in Table of infection heat:	[ If the species is in the table use it]
					choose a row with a infect name of (CockName of Player) in Table of infection heat;
					if fheat entry is false:	[no female heat for that form]
						choose row 1 in table of infection heat;
				else: [No specific Data, use Generic entry.]
					choose a row 1 in Table of infection heat;
				if turns in heat > (heat cycle entry times 8):
					now turns in heat is 0;
					[ say "reset!"; ]
				if turns in heat > ( (heat cycle entry - heat duration entry ) times 8) and (inheat is not True):
					now inheat is True; [Player is now in heat. Each cycle from now will run heat events]
					now heatform is 0; [in female heat]
					say "[trigger text entry]";
					if there is heat start entry, say "[heat start entry]"; [Heat start Trigger]
				else if turns in heat > ( (heat cycle entry - heat duration entry ) times 8) and (inheat is True): [still in heat, previously triggered.]
					if heatform is 1:		[last turn was mpreg heat]
						say "That heated need that has been burning deep inside you spreads to encompass your new pussy. Hot juices soak your thighs as your female sex goes into heat and you're left wanting to be mounted and bred.";
						now heatform is 0; [swap to female heat]
					else:
						if there is inheat entry, say "[inheat entry]"; [inheat Trigger]
				else if inheat is true:
					say "Without any warning, the feral lust that had been growing inside you has faded. You are no longer in heat.";
					now heatform is 0; [ensuring treats as female heat for end]
					if there is heat end entry, say "[heat end entry]"; [Heat start Trigger]
					now Libido of Player is Libido of Player divided by 2; [Halve the players libido.]
					now inheat is False;
			else if Player is not female and CockName of Player is not "Human" and player is mpreg_able:	[Only run if male/neuter w/groin infection and able to currently get m-preggers]
				if animal heat is not True:	[Check if it's just triggered]
					say "You feel a hot rush in your lower belly as some hidden part of you is affected by your tainted sexuality.";
					now turns in heat is 0;
					now animal heat is True;
				now lastturn is turns;
				increase turns in heat by 1;
				if CockName of Player is a infect name listed in Table of infection heat:	[If the species is in the table use it]
					choose a row with a infect name of (CockName of Player) in Table of infection heat;
					if mpregheat entry is false:	[no mpreg heat for that form]
						choose row 1 in table of infection heat;
				else: [No specific Data, use Generic entry.]
					choose a row 1 in Table of infection heat;
				if turns in heat > (heat cycle entry times 8):
					now turns in heat is 0;
					[ say "reset!"; ]
				if turns in heat > ( (heat cycle entry - heat duration entry ) times 8) and (inheat is not True):
					now inheat is True; [Player is now in heat. Each cycle from now will run heat events]
					now heatform is 1; [in mpreg-heat]
					say "[mpregtrigger entry]";
					if there is heat start entry, say "[heat start entry]"; [Heat start Trigger]
				else if turns in heat > ( (heat cycle entry - heat duration entry ) times 8) and (inheat is True): [still in heat, previously triggered.]
					if heatform is 0:		[last turn was female heat]
						say "That heated need you've been feeling doesn't go away with your pussy, instead sinking inside you to smolder in your lower belly. You are left still wanting to be mounted and filled despite being [if Player is male]male[else]neuter[end if].";
						now heatform is 1; [swap to mpreg-heat]
					else:
						if there is inheat entry, say "[inheat entry]"; [inheat Trigger]
				else if inheat is true:
					say "As swiftly as it came, the feral lust that had been growing inside you has faded. You are no longer in heat.";
					now heatform is 1; [ensuring treats as mpreg heat for end]
					if there is heat end entry, say "[heat end entry]"; [Heat start Trigger]
					now Libido of Player is Libido of Player divided by 2; [Halve the players libido.]
					now inheat is False;
			else:
				if animal heat is True:
					say "As your body shifts you feel a cool sensation deep within, you will no longer be at the mercy of an animal heat anymore.";
					now turns in heat is 0;
					now animal heat is False;
					now inheat is False;
]

Book 3 - Debugging Commands - not for release

showheat is an action applying to nothing.
understand "show heat" as showheat.

carry out showheat:
	say "You've been vulnerable to animal heat for [turns in heat] Turns.";

setheat is an action applying to one number.
understand "set heat [a number]" as setheat.

carry out setheat:
	now turns in heat is the number understood;
	say "turns in heat set to [turns in heat].";

Needy Heat ends here.
