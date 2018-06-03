Version 1 of Banning by Core Mechanics begins here.
[Banning/Warding - Written by Speedlover]

flag is a kind of thing.
A flag has a list of text called infections.
A flag has a list of situations called badspots.
A flag can be banned. A flag is usually not banned.
A flag can be warded. A flag is usually not warded.
Furry is a flag.
Guy is a flag.
Girl is a flag.
Humorous is a flag.
Hermaphrodite is a flag.
Hellspawn is a flag.
Feral is a flag.
Transgender is a flag.
Incest is a flag.
Noncon is a flag.
Mindcontrol is a flag.
The player has a list of text called WardList.
The player has a list of text called BanList.

when play begins:
	add { "Awesome tree", "Cock Cannon" } to infections of humorous;
	add { "Slut Rat", "Female Husky", "Black Equinoid", "Ashen Breeder", "Lizard Girl", "Skunk", "Shemale Smooth Collie", "Bovine", "Feline", "Herm Hyena", "Bear", "Pit bull", "Painted Wolf Herm", "Sewer Gator", "Deer", "Sea Otter", "Ebonflame Draken", "Red Kangaroo", "German Shepherd", "Chinchilla" } to infections of furry;
	add { "Skunk", "Shemale Smooth Collie", "Bovine", "Tentacle Horror", "Demon Brute", "Cock Cannon", "Feral Sea Dragon", "German Shepherd", "Feline", "Felinoid" } to infections of guy;
	add { "Ashen Breeder", "Ebonflame Draken", "Slut Rat", "Parasitic Plant", "Herm Hyena", "Painted Wolf Herm", "Sewer Gator", "Deer", "Black Equinoid", "Spidergirl", "Mothgirl" } to infections of hermaphrodite;
	add { "Female Husky", "Lizard Girl", "Tentacle Horror", "Feline", "Bear", "Skunk", "Spidergirl", "Mothgirl", "Red Kangaroo", "City Sprite", "Feral Sea Dragoness", "Bovine" } to infections of girl;
	add { "Wyvern", "Yamato Dragon", "Yamato Dragoness", "Feral Sea Dragon", "Feral Sea Dragoness", "Snake","Sierrasaur", "Feral Wolf", "Latex Wolf", "Ebonflame Whelp", "Ebonflame Dragator", "Manticore", "Quilled Tousky", "Hydra Beast", "Feral Shaft Beast", "Flaming Lynx", "Cerberus", "Sabretooth", "Friendship Pony", "Pegasus", "Feral Gryphon", "Shadow Beast", "Behemoth", "Feral Cheetah", "Peculiar Dragon" } to infections of feral;

to new ban menu:
	let flaglist be {"Cockvore","Furry", "Guy", "Girl", "Humorous", "Hermaphrodite", "Hellspawn", "Feral", "Transgender", "Incest", "Mindcontrol", "Noncon", "Vore"};
	let countnumber be 1;
	let nbmexit be 0;
	while nbmexit is 0:
		say "[bold type]Select which categories you want banned/warded:[roman type][line break]";
		say "[bold type]Warding a monster will mean you can only find them by hunting for them, banning them removes them from the game entirely. (Banning is sure to choke off MANY threads of the story and quests as well. Use with caution. You have been warned.)[roman type][line break]";
		say "[line break]";
		while countnumber <= number of entries in flaglist:
			say "[link][countnumber] - [entry countnumber of flaglist][as][countnumber][end link]: [run paragraph on]";
			bancheck entry countnumber of flaglist;
			increase countnumber by 1;
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-[countnumber])>[run paragraph on]";
			get a number;
			if (calcnumber >= 0 and calcnumber <= countnumber):
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 0:
			now nbmexit is 1;
		else:
			banchange entry calcnumber of flaglist;
		now countnumber is 1; [Must reset to 1 or it wont print the list again]
			
to bancheck (name - text):
	if name is listed in BanList of player:
		say "[bold type]BANNED[roman type]";
	else if name is listed in WardList of player:
		say "[bold type]WARDED[roman type]";
	else:
		say "[bold type]Normal[roman type]";
	say "[line break]";
	
to banchange (name - text):
	if name is listed in BanList of player:
		remove name from BanList of player;
		oldflagunban name;
		if clearnomore is 0, clear the screen;
		say "[bold type][name] is now normal[roman type]";
	else if name is listed in WardList of player:
		remove name from WardList of player;
		oldflagunward name;
		add name to BanList of player;
		oldflagban name;
		if clearnomore is 0, clear the screen;
		say "[bold type][name] is now banned[roman type]";
	else:
		add name to WardList of player;
		oldflagward name;
		if clearnomore is 0, clear the screen;
		say "[bold type][name] is now warded[roman type]";
	WaitLineBreak;
	
to oldflagban (flagname - text):
	if flagname is:
		-- "Cockvore":
			now Cockvore is banned;
		-- "Furry":
			now Furry is banned;
		-- "Guy":
			now Guy is banned;
		-- "Girl":
			now Girl is banned;
		-- "Humorous":
			now Humorous is banned;
		-- "Hermaphrodite":
			now Hermaphrodite is banned;
		-- "Hellspawn":
			now Hellspawn is banned;
		-- "Feral":
			now Feral is banned;
		-- "Transgender":
			now Transgender is banned;
		-- "Incest":
			now Incest is banned;
		-- "Noncon":
			now Noncon is banned;
		-- "Mindcontrol":
			now Mindcontrol is banned;
		-- "Vore":
			now Vore is banned;

to oldflagward (flagname - text):
	if flagname is:
		-- "Cockvore":
			now Cockvore is warded;
		-- "Furry":
			now Furry is warded;
		-- "Guy":
			now Guy is warded;
		-- "Girl":
			now Girl is warded;
		-- "Humorous":
			now Humorous is warded;
		-- "Hermaphrodite":
			now Hermaphrodite is warded;
		-- "Hellspawn":
			now Hellspawn is warded;
		-- "Feral":
			now Feral is warded;
		-- "Transgender":
			now Transgender is warded;
		-- "Incest":
			now Incest is warded;
		-- "Noncon":
			now Noncon is warded;
		-- "Mindcontrol":
			now Mindcontrol is warded;
		-- "Vore":
			now Vore is warded;

to oldflagunban (flagname - text):
	if flagname is:
		-- "Cockvore":
			now Cockvore is not banned;
		-- "Furry":
			now Furry is not banned;
		-- "Guy":
			now Guy is not banned;
		-- "Girl":
			now Girl is not banned;
		-- "Humorous":
			now Humorous is not banned;
		-- "Hermaphrodite":
			now Hermaphrodite is not banned;
		-- "Hellspawn":
			now Hellspawn is not banned;
		-- "Feral":
			now Feral is not banned;
		-- "Transgender":
			now Transgender is not banned;
		-- "Incest":
			now Incest is not banned;
		-- "Noncon":
			now Noncon is not banned;
		-- "Mindcontrol":
			now Mindcontrol is not banned;
		-- "Vore":
			now Vore is not banned;

to oldflagunward (flagname - text):
	if flagname is:
		-- "Cockvore":
			now Cockvore is not warded;
		-- "Furry":
			now Furry is not warded;
		-- "Guy":
			now Guy is not warded;
		-- "Girl":
			now Girl is not warded;
		-- "Humorous":
			now Humorous is not warded;
		-- "Hermaphrodite":
			now Hermaphrodite is not warded;
		-- "Hellspawn":
			now Hellspawn is not warded;
		-- "Feral":
			now Feral is not warded;
		-- "Transgender":
			now Transgender is not warded;
		-- "Incest":
			now Incest is not warded;
		-- "Noncon":
			now Noncon is not warded;
		-- "Mindcontrol":
			now Mindcontrol is not warded;
		-- "Vore":
			now Vore is not warded;

Banning ends here.