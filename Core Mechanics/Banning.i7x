Version 1 of Banning by Core Mechanics begins here.
[Banning/Warding - Written by Speedlover]
[Updates to have Tags for content and Flags for creatures / situations - Dys]

flag is a kind of thing.
A flag has a list of text called infections.
A flag has a list of situations called badspots.
A flag can be banned. A flag is usually not banned.
A flag can be warded. A flag is usually not warded.
tag is a kind of thing.
A tag has a list of text called infections.
A tag has a list of situations called badspots.
A tag can be warded. A tag is usually not warded.
A tag can be banned. A tag is usually not banned.
Body Horror is a flag.
Furry is a flag.
Guy is a flag.
Girl is a flag.
Transgender is a flag.
Hermaphrodite is a flag.
Humorous is a flag.
Humanoid is a flag.
Hellspawn is a flag.
Feral is a flag.
Incest is a tag.
Noncon is a tag.
Mindcontrol is a tag.
Vore is a tag.
Cockvore is a tag.
The player has a list of text called WardList.
The player has a list of text called BanList.

when play begins:
	add { "Awesome tree", "Cock Cannon" } to infections of humorous;
	add { "Slut Rat", "Female Husky", "Black Equinoid", "Ember Breeder", "Lizard Girl", "Skunk", "Shemale Smooth Collie", "Bovine", "Feline", "Herm Hyena", "Bear", "Pit bull", "Painted Wolf Herm", "Sewer Gator", "Deer", "Sea Otter", "Ebonflame Drake", "Red Kangaroo", "German Shepherd", "Chinchilla" } to infections of furry;
	add { "Skunk", "Shemale Smooth Collie", "Bovine", "Tentacle Horror", "Demon Brute", "Cock Cannon", "Feral Sea Dragon", "German Shepherd", "Feline", "Felinoid" } to infections of guy;
	add { "Ember Breeder", "Ebonflame Drake", "Slut Rat", "Parasitic Plant", "Herm Hyena", "Painted Wolf Herm", "Sewer Gator", "Deer", "Black Equinoid", "Spidergirl", "Mothgirl" } to infections of hermaphrodite;
	add { "Female Husky", "Lizard Girl", "Tentacle Horror", "Feline", "Bear", "Skunk", "Spidergirl", "Mothgirl", "Red Kangaroo", "City Sprite", "Feral Sea Dragoness", "Bovine" } to infections of girl;
	add { "Wyvern", "Yamato Dragon", "Yamato Dragoness", "Feral Sea Dragon", "Feral Sea Dragoness", "Snake", "Sierrasaur", "Feral Wolf", "Latex Wolf", "Ebonflame Whelp", "Ebonflame Dragator", "Manticore", "Quilled Tousky", "Hydra Beast", "Feral Shaft Beast", "Flaming Lynx", "Cerberus", "Sabretooth", "Friendship Pony", "Pegasus", "Feral Gryphon", "Shadow Beast", "Behemoth", "Feral Cheetah", "Peculiar Dragon" } to infections of feral;

to new ban menu:
	let flaglist be { "Body Horror", "Furry", "Guy", "Girl", "Transgender", "Hermaphrodite", "Humorous", "Humanoid", "Hellspawn", "Feral"};
	let taglist be {"Noncon", "Incest", "Vore", "Cockvore", "Mindcontrol"};
	let countnumber be 1;
	let nbmexit be 0;
	while nbmexit is 0:
		say "[bold type]Select which categories you want banned/warded:[roman type][line break]";
		say "[bold type]Warding a monster will mean you can only find them by hunting for them, banning them removes them from the game entirely. (Banning is sure to choke off MANY threads of the story and quests as well. Use with caution. You have been warned.)[roman type][line break]";
		say "[line break][bold type]FLAGS[roman type][line break]";
		while countnumber <= number of entries in flaglist:
			say "[link][countnumber] - [entry countnumber of flaglist][as][countnumber][end link]: [run paragraph on]";
			bancheck entry countnumber of flaglist;
			increase countnumber by 1;
		say "[line break][bold type]TAGS[roman type][line break]";
		while countnumber <= (number of entries in flaglist + number of entries in taglist):
			say "[link][countnumber] - [entry (countnumber - number of entries in flaglist) of taglist][as][countnumber][end link]: [run paragraph on]";
			bancheck entry (countnumber - number of entries in flaglist) of taglist;
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
		let turq be number of entries in flaglist;
		if calcnumber is 0:
			now nbmexit is 1;
		else if calcnumber <= turq:
			banchange entry calcnumber of flaglist;
		else:
			banchange entry (calcnumber - number of entries in flaglist) of taglist;
		now countnumber is 1; [Must reset to 1 or it wont print the list again]

to bancheck (name - text):
	if name is listed in BanList of Player:
		say "[bold type]BANNED[roman type]";
	else if name is listed in WardList of Player:
		say "[bold type]WARDED[roman type]";
	else:
		say "[bold type]Normal[roman type]";
	say "[line break]";

to banchange (name - text):
	if name is listed in BanList of Player:
		remove name from BanList of Player;
		oldflagunban name;
		if clearnomore is 0, clear the screen;
		say "[bold type][name] is now normal[roman type]";
	else if name is listed in WardList of Player:
		remove name from WardList of Player;
		oldflagunward name;
		add name to BanList of Player;
		oldflagban name;
		if clearnomore is 0, clear the screen;
		say "[bold type][name] is now banned[roman type]";
	else:
		add name to WardList of Player;
		oldflagward name;
		if clearnomore is 0, clear the screen;
		say "[bold type][name] is now warded[roman type]";
	WaitLineBreak;

to oldflagban (flagname - text):
	if flagname is:
		-- "Body Horror":
			now Body Horror is not banned;
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
		-- "Body Horror":
			now Body Horror is not warded;
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
		-- "Body Horror":
			now Body Horror is not banned;
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
		-- "Body Horror":
			now Body Horror is not warded;
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
