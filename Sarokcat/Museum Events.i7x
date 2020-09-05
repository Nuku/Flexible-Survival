Museum Events by Sarokcat begins here.

"Adds a series of random events to Flexible Survival set in the Museum area."



Section 1- Sealed wing

Table of GameEventIDs (continued)
Object	Name
Sealed Wing	"Sealed wing"
Sealed Wing	"Sealed Wing"

Sealed Wing is a situation.
ResolveFunction of Sealed Wing is "[ResolveEvent Sealed Wing]".
Sarea of Sealed Wing is "Museum".

to say ResolveEvent Sealed Wing:
	say "     Traveling through the empty museum corridors, you come across some large, closed double doors. Looking closer, you can see that someone has wrapped chains around the door handles; and from the looks of things, tried to push a bench in front of the doors as well. Wondering what could be so dangerous, you note someone has scribbled a small note underneath a sign telling you about the wing. The note reads: 'Do NOT open! Really, I mean it. Seriously, you don't want to go in there; it's not fun, it's not pretty, so just turn around and leave now, while you can! Signed- Val.' Deciding to take the sign's advice, you turn around to leave; though you do you find yourself wondering what could be so dangerous about a 'Modern Art' exhibit?";
	now Sealed Wing is resolved;


Section 2- Moving painting

[revised in Misc Events file - Pandemonium]


Section 3- Updating artwork

Table of GameEventIDs (continued)
Object	Name
Updating Artwork	"Updating artwork"
Updating Artwork	"Updating Artwork"

Updating Artwork is a situation.
ResolveFunction of Updating Artwork is "[ResolveEvent Updating Artwork]".
Sarea of Updating Artwork is "Museum".

to say ResolveEvent Updating Artwork:
	say "     Wandering along the peaceful museum hallways, you take time to glance at some of the paintings hanging along the wall, only to stop and stare at them in shock. It appears someone has gone around with some paint and markers and 'updated' several of these valuable antiques, putting in glasses, mustaches, and funny hats on the characters within. Perhaps worst of all, you can see that all of the male subjects now have rather large genitalia painted on in lewd colors, and to add insult to injury, a closer inspection reveals that many of the cocks the unknown artist added are more suitable to animals then humans! Sighing at the absolute waste of art, you continue on your way down the hall; after a while though, you are forced to admit, that in the case of some of the artists, the new 'updates' are actually an improvement.";
	now Updating Artwork is resolved;


Section 4- Drunken satyrs

Table of GameEventIDs (continued)
Object	Name
Drunken Satyrs	"Drunken satyrs"
Drunken Satyrs	"Drunken Satyrs"

Drunken Satyrs is a situation.
ResolveFunction of Drunken Satyrs is "[ResolveEvent Drunken Satyrs]".
Sarea of Drunken Satyrs is "Museum".

to say ResolveEvent Drunken Satyrs:
	say "     Wandering along the museum hallways, you stop as you encounter a large group of satyrs sprawled across the hall, the reek of wine and booze permeating the air. This was obviously the site of a massive party, and from the looks of things was a great revel while it lasted; unfortunately, the participants seem to have finally passed out where they were standing (or laying), proving that even satyrs have their limits. You step lightly among the passed out bodies as you continue along your way, careful not to wake any of them from their no-doubt much-needed rest.";
	now Drunken Satyrs is resolved;


Section 5- Strange drums

Table of GameEventIDs (continued)
Object	Name
Strange Drums	"Strange drums"
Strange Drums	"Strange Drums"

Strange Drums is a situation.
ResolveFunction of Strange Drums is "[ResolveEvent Strange Drums]".
Sarea of Strange Drums is "Museum".

to say ResolveEvent Strange Drums:
	say "     Wandering the museum hallways, you are surprised to hear the sound of strange tribal drums echoing through the halls. Looking around, you try to trace the sound, but no matter which way you turn, they seem to fade. Finally, after frustrated searching for over an hour, you give up and continue on your way, wondering just what is going on within the museum.";
	now Strange Drums is resolved;


Section 6- Missing Sabretooth

Table of GameEventIDs (continued)
Object	Name
Missing Sabretooth	"Missing Sabretooth"

Missing Sabretooth is a situation.
ResolveFunction of Missing Sabretooth is "[ResolveEvent Missing Sabretooth]".
Sarea of Missing Sabretooth is "Museum".

to say ResolveEvent Missing Sabretooth:
	say "     Wandering around the museum, you come to the section on primitive lifestyles. Deciding to take a look, you see several displays with primitive men fighting something, but whatever was there before is gone now. Reading the little plaque on the display, you realize that the sabretooth tigers are missing; swiftly glancing around, you note that all the sabretooths from the area appear to be missing. You quickly hurry to leave, but as you do, a strange thought hits you; weren't the sabre-like teeth a primarily male characteristic, like a lion's mane? If that's the case, you worry about what they will do to get a female....";
	now Missing Sabretooth is resolved;


Section 7- Giant battleaxe

Table of GameEventIDs (continued)
Object	Name
Giant Battleaxe	"Giant battleaxe"
Giant Battleaxe	"Giant Battleaxe"

Giant Battleaxe is a situation.
ResolveFunction of Giant Battleaxe is "[ResolveEvent Giant Battleaxe]".
Sarea of Giant Battleaxe is "Museum".

to say ResolveEvent Giant Battleaxe:
	say "     Wandering around the roman section of the museum, you come across an area where someone or something has leaned a large battleaxe up against one of the displays. You can't help but gawk at the size of the thing; its shaft is a good four feet long, the blade almost another two feet long and two feet wide on each side. You try lifting the large weapon for a second, but can't even manage to budge the massive thing. Leaving it where it lies, you hurry on, hoping not to meet whatever kind of creature uses a weapon like that.";
	now Giant Battleaxe is resolved;



Section 8- Missing lamp

Table of GameEventIDs (continued)
Object	Name
Missing Lamp	"Missing lamp"
Missing Lamp	"Missing Lamp"

Missing Lamp is a situation.
ResolveFunction of Missing Lamp is "[ResolveEvent Missing Lamp]".
Sarea of Missing Lamp is "Museum".

LampVariable is a number that varies.

to say ResolveEvent Missing Lamp:
	if LampVariable is 0:
		say "     Wandering the museum hallways, you come across a display showing an ancient cave full of treasure, with an old Arabian-style lamp displayed in the center. The strange thing is, someone seems to have broken into the display and taken the lamp instead of the rest of the treasure. You don't suppose they believe in the old tale of a genie's lamp; do you?";
		if AmuranAwoken is 2:
			say "     A glint in the dim light catches your eye, however; there seems to be something inside the broken case! Your curiosity soon gets the better of you, and you can't stop yourself from cautiously approaching the destroyed exhibit, on the lookout for any enemies. Jumping over the display rope and carefully avoiding the spilt treasures and broken glass, the glinting object continues to grow brighter as you approach the display.";
			say "     Looking at what lays inside the case, you're stunned by the beauty and magnificence of the treasure inside. A shining metal scarab sits inside the broken case, gleaming bright in the dim light of the Arabian display. It looks to be constructed of some beautiful green metal and embedded with gemstones along the scarab's body. This has to be the object that Amuran needs; there's no way that such a beautiful object isn't of divine make. Carefully reaching in and grabbing the shining scarab, you're immediately overwhelmed with the sheer amount of power this object contains; the powers of the gods are strong indeed! Quickly slipping the godly conduit into your bag, you turn around and prepare to make your way out.";
			now Resolution of Missing Lamp is 1; [lamp found]
			now Missing Lamp is resolved;
			ItemGain jade scarab by 1;
		else:
			say "     Seeing as there is nothing you can salvage, you move past the broken display case and continue on your way.";
			now Resolution of Missing Lamp is 2; [lamp not found]
			now LampVariable is 1;
	else:
		say "     Once again stumbling upon the display cave full of treasures, you take a moment to examine the treasures the museum had on display in this exhibit. While they do look pretty set up like this, there's nothing here that could really help you out.";
		if AmuranAwoken is 2:
			say "     A glint in the dim light catches your eye, however; there seems to be something inside the broken case! Whatever is in there definitely wasn't there the last time you were here. Jumping over the display rope and carefully avoiding the spilt treasures and broken glass, your curiosity easily gets the better of you.";
			say "     Looking at what lays inside the case, you're stunned by the beauty and magnificence of the treasure inside. A shining metal scarab sits inside the broken case, gleaming bright in the dim light of the Arabian display. It looks to be constructed of some beautiful green metal and embedded with gemstones along the scarab's body. This has to be the object that Amuran needs; there's no way that such a beautiful object isn't of divine make. Carefully reaching in and grabbing the shining scarab, you're immediately overwhelmed with the sheer amount of power this object contains; the powers of the gods are strong indeed! Quickly slipping the godly conduit into your bag, you turn around and prepare to make your way out.";
			now Resolution of Missing Lamp is 3; [lamp found]
			now Missing lamp is resolved;
			ItemGain jade scarab by 1;
		else:
			say "     Deciding to move on, you put the exhibit out of your head as you continue forward.";
			now Resolution of Missing Lamp is 4; [nothing found]



Section 9- Night watchmen uniform

Table of GameEventIDs (continued)
Object	Name
Night Watchmen Uniform	"Night Watchmen Uniform"

Night Watchmen Uniform is a situation.
ResolveFunction of Night Watchmen Uniform is "[ResolveEvent Night Watchmen Uniform]".
Sarea of Night watchmen uniform is "Museum".

to say ResolveEvent Night watchmen uniform:
	say "     Wandering along the museum hallways, you notice a scrap of gray in an alcove and decide take a closer look. Upon closer inspection, you find that the gray color is scraps of cloth from what were once a night watchman's uniform. Looking around, you can't find any clues as to what might have happened to the guard; but if the scraps are any indication, it probably wasn't good.";
	now Night watchmen uniform is resolved;


Section 10- Art appreciation

Table of GameEventIDs (continued)
Object	Name
Art Appreciation	"Art appreciation"
Art Appreciation	"Art Appreciation"

Art Appreciation is a situation.
ResolveFunction of Art Appreciation is "[ResolveEvent Art Appreciation]".
Sarea of Art Appreciation is "Museum".

to say ResolveEvent Art Appreciation:
	say "     Wandering along the museum hallways, you find yourself pausing to take in the magnificent artwork gracing the halls. Deciding to relax and take your time, you wander through the rooms, enjoying the art and beauty surrounding you. Eventually, you come to a different section of the museum, but you feel much better for having stopped to appreciate the art.";
	SanBoost 30;
	now Art Appreciation is resolved;


Museum Events ends here.
