manualy infects by Zero begins here.

 Freemilk is an action applying to nothing.
Taggiver is an action applying to nothing.
Powergiver is an action applying to nothing.
Itemgiver is an action applying to nothing.
Drinkgiver is an action applying to nothing.


Understand "foxmilk" as Freemilk.
Understand "sluttag" as Taggiver.
Understand "power" as Powergiver.
Understand "giveitem" as Itemgiver.
Understand "drinker" as Drinkgiver.

carry out Freemilk:
	add "latex milk" to invent of player;
	

carry out Taggiver:
        say "slut tags added";
	add "sluts tag" to invent of player;
	add "slut tag" to invent of player;

carry out Powergiver:	
        say "power has been given";
        increase Strength of player by 50;
	increase Dexterity of player by 50;
	increase Stamina of player by 50;                    
	increase Perception of player by 50;
	increase Intelligence of player by 50;
	increase Charisma of player by 50;
	
carry out Itemgiver:
        say "items added";
	add "demonic sword" to invent of player;
	add "bloody sword" to invent of player;
	add "kunai" to invent of player;
	add "durable backpack" to invent of player;
	add "durable backpack" to invent of player;
	add "small pouch" to invent of player;
	add "small pouch" to invent of player;
	add "small pouch" to invent of player;					
	
carry out Drinkgiver:
        say "items added";
	add "protein shake" to invent of player;
	add "protein shake" to invent of player;	
	add "protein shake" to invent of player;
	add "protein shake" to invent of player;	
	add "protein shake" to invent of player;
	add "protein shake" to invent of player;	
	add "protein shake" to invent of player;
	add "protein shake" to invent of player;	
	add "protein shake" to invent of player;
	add "protein shake" to invent of player;					
	
Tanukiloving is an action applying to nothing.

Understand "sitontak" as Tanukiloving.

carry out Tanukiloving:
	say "sighing to yourself that you have been court up in this whole situation you sit down next to the shrine, your hand maniging to rub a tanuki statue";
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Tanuki":
			now monster is y;
			break; 
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;	
	
Slutloving is an action applying to nothing.

Understand "sitonslut" as Slutloving.

carry out Slutloving:
	say "infect male slut";
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Female Slut":
			now monster is y;
			break; 
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
		
when play ends:
	if bodyname is "Male Slut":
		if humanity of player is less than 10:
			if cocks of player is greater than 0:
				if cunts of player is greater than 0: [herm]
					say "  "; 
				otherwise:   [male]
					say " "; 
			otherwise:
				if cunts of player is greater than 0: [female]
					say "";
				otherwise: [no gender]
					say "";
		otherwise: [smart]
			if cocks of player is greater than 0:
				if cunts of player is greater than 0: [herm]
					say "  "; 
				otherwise:   [male]
					say " "; 
			otherwise:
				if cunts of player is greater than 0: [female]
					say "";
				otherwise: [no gender]
					say "";
		
when play ends:
	if bodyname is "Female Slut":
		if humanity of player is less than 10:
			if cocks of player is greater than 0:
				if cunts of player is greater than 0: [herm]
					say "  "; 
				otherwise:   [male]
					say " "; 
			otherwise:
				if cunts of player is greater than 0: [female]
					say "";
				otherwise: [no gender]
					say "";
		otherwise: [smart]
			if cocks of player is greater than 0:
				if cunts of player is greater than 0: [herm]
					say "  "; 
				otherwise:   [male]
					say " "; 
			otherwise:
				if cunts of player is greater than 0: [female]
					say "";
				otherwise: [no gender]
					say "";
					

		
manualy infects ends here.
