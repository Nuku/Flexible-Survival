Qytat shifters by Hellerhound begins here.

Table of GameRoomIDs (continued)
Object	Name
Shifting Room	"Shifting Room"

Shifting Room is a room. "[shiftingroom][line break]A room in a tent. The walls are covered with glowing glyphs, each representing an infection you have seen outside. There are a few rows of them, with images of a human body on the top right. It looks like this is where shifting was invented. The text on the walls suggests you can concentrate on becoming a different creature of your choice. [line break](you can now [bold type]shift[roman type] into another infection.)".
It is private.
It is fasttravel.

ShiftingRoomConnection is a number that varies.[@Tag:NotSaved]

an everyturn rule:
	if shiftable is 1 and ShiftingRoomConnection is 0:
		change the north exit of Qytat Plaza to Shifting Room;
		now ShiftingRoomConnection is 1; [room connected]

to say shiftingroom:
	say "As you walk towards the tent to the north, you see a bunch of muddy footprints leading inside. You follow, but the mud seems to have been cleaned from in here, since the whole room is pristine. The acrid tang of nanites no longer permeates the air here, and the soft bluish glow warms you.";
	now shiftable is 2;

the scent of shifting room is "The scent in here is very strange and otherworldly, but also heavy with the many musky scents you've encountered in the city.".

Qytat shifters ends here.
