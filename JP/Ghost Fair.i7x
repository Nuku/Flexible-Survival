Version 1 of Ghost Fair by JP Begins here.

"Adds Ghost Fair to Flexible Survival."

Table of GameRoomIDs (continued)
Object	Name
Fair's Edge	"Fair's Edge"

Fair's Edge is a room.
Description of Fair's Edge is "[Fair's Edgedesc]".
the scent of Fair's Edge is "The scents of popcorn, cotton candy, and other treats are still faintly present, and so are those scents of arousal. Weirdly enough, you can't feel the scent of any creature around this area.";

to say Fair's Edgedesc:
	say "     You are at the Fair's Edge of the fair, marked by a small fence. You can see multiple trailers and small, colorful tents. This must have been where the staff used to rest, but now it's empty of life. Not even those wild sex-crazed creatures seem to wonder around here.";

Fair's Edge is north of State Fair.

Table of GameRoomIDs (continued)
Object	Name
Ghost Fair	"Ghost Fair"

Ghost Fair is a room.
Description of Ghost Fair is "[GhostFairdesc]".
the scent of Ghost Fair is "Weirdly enough, the usual scent of treats and arousal from the fair are no longer present. Instead The scents of cold water and dust fill the air.";

to say GhostFairdesc:
	if "Touched by Madness" is listed in Feats of Player:
		say "     You seem to be in an abandoned part of the fair. You can see some damaged, old game booths and shops through the thick fog of unknown origin. Despite the absence of creatures in the area, you fell like something is watching you.";
	else:
		say "     You seem to be in an abandoned part of the fair. You can see some damaged, old game booths and shops through the thick fog of unknown origin.";

Ghost Fair is west of Fair's Edge.


Ghost Fair ends here.