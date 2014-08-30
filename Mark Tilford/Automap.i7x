Version 3 of Automap by Mark Tilford begins here.

"An extension to automatically draw a map."

Section 1 - Global constants, Memory management, Kinds, and verbs

Use automap manual exploration translates as (- Constant AUTOMAP_MANUAL_EXPLORATION 1; -).
Use automap manual display translates as (- Constant AUTOMAP_MANUAL_DISPLAY 1; -).
Use automap visible background translates as (- Constant AUTOMAP_VISIBLE_BACKGROUND 1; -).
Use automap hide paths through closed doors translates as (- Constant AUTOMAP_HIDE_CLOSED_DOORS 1; -).

Use automap reserved area of at least 400 translates as (- Constant USEOP_MAP_ALLOC_AREA {N};  -).
Use automap static allocation translates as (- Constant AUTOMAP_ALLOCATE_STATIC 1; -).
Use automap hyperlinks translates as (- Constant AUTOMAP_HYPERLINKS 1; -).
[Include Text Capture by Eric Eve.
Use maximum capture buffer length of at least 512.]

Include (- 

Constant AUTOMAP_CHAR_IN 3;
Constant AUTOMAP_CHAR_OUT 4;
Constant AUTOMAP_CHAR_INOUT 5;

Constant AUTOMAP_CHAR_PRESENT_IN 6;
Constant AUTOMAP_CHAR_PRESENT_OUT 7;
Constant AUTOMAP_CHAR_PRESENT_INOUT 8;

Constant AUTOMAP_CHAR_DARK 9;
Constant AUTOMAP_CHAR_PRESENT_DARK 10;

#ifdef TARGET_ZCODE;
	#ifndef AUTOMAP_ALLOCATE_STATIC;
		Constant AUTOMAP_ALLOCATE_STATIC 1;
	#endif;
#endif;

#ifdef AUTOMAP_ALLOCATE_STATIC;
	Constant MAP_ALLOC_AREA USEOP_MAP_ALLOC_AREA;
	Array Automap_Chars -> MAP_ALLOC_AREA;
	#ifdef AUTOMAP_HYPERLINKS;
		Global Automap_links --> MAP_ALLOC_AREA;
	#endif;
#ifnot;
	Global MAP_ALLOC_AREA = 0;
	Global Automap_Chars = 0;
	Global printed_nomalloc_message = 0;
	#ifdef AUTOMAP_HYPERLINKS;
		Global Automap_links = 0;
	#endif;
#endif;


Global MAP_WIDTH = 0;
Global MAP_HEIGHT = 0;

[ Reserve_Map_Memory rows cols link_memory;
	if (rows == 0) {
		rows = 0;
		cols = 0;
		return;
	}
	if (rows * cols > MAP_ALLOC_AREA) {
		!#ifdef TARGET_ZCODE;
		#ifdef AUTOMAP_ALLOCATE_STATIC;
			if (rows > MAP_ALLOC_AREA) {
				MAP_WIDTH = 0;
				MAP_HEIGHT = 0;
				return;
			}
			MAP_HEIGHT = rows;
			MAP_WIDTH = MAP_ALLOC_AREA / rows;
			return;
		#ifnot;
			if (~~check_for_malloc()) {
				if ( (+ current zoom +) == (+ map absent +) )
					return;
				if (~~Printed_nomalloc_message) {
					print "[Your interpreter does not support dynamic memory allocation.  Automap features will not function.]^";
					Printed_nomalloc_message = true;
				}
				(+ current zoom +) = (+ map absent +);
				return;
			}
			printed_nomalloc_message = false;
			if (Automap_Chars ~= 0) {
				@mfree Automap_Chars;
				Automap_Chars = 0;
			}
			MAP_ALLOC_AREA = rows * cols;
			@malloc MAP_ALLOC_AREA Automap_Chars;
			if (Automap_Chars == 0) {
				MAP_ALLOC_AREA = 0;
				MAP_WIDTH = 0;
				MAP_HEIGHT = 0;
				rfalse;
			}
			#ifdef AUTOMAP_HYPERLINKS;
				if (Automap_Links ~= 0) {
					@mfree Automap_links;
					Automap_Links = 0;
				}
				link_memory = MAP_ALLOC_AREA * WORDSIZE;
				@malloc link_memory Automap_links;
			#endif;
		#endif;
	}
	MAP_WIDTH = cols;
	MAP_HEIGHT = rows;
];
	
[ Check_for_malloc rv;
	#ifndef AUTOMAP_ALLOCATE_STATIC;
	@gestalt 7 0 rv;
	return rv;
	#ifnot;
	return 1;
	#endif;
];
!#Endif;
-) after "Definitions.i6t".

To decide whether there is no dynamic allocation conflict:
	(- Check_for_malloc() -).

To reserve automap memory of (rows - a number) rows by (cols - a number) cols/columns :  (- Reserve_Map_Memory ({rows}, {cols}) ;-).
To reserve automap memory of (cols - a number) cols/columns by (rows - a number) rows:  (- Reserve_Map_Memory ({rows}, {cols}) ;-).
To reserve automap memory of (rows - a number) by (cols - a number):  (- Reserve_Map_Memory ({rows}, {cols}) ;-).
To reserve automap memory of (rows - a number) rows: (- Reserve_Map_Memory ({rows}, VM_ScreenWidth()-2); -).

Include Basic Screen Effects by Emily Short.

[A Mappable Room is a kind of room.
A mappable room has a number called map_x.
A mappable room has a number called map_y.

A mappable room can be currently_mapped.  A mappable room is usually not currently_mapped.]

A room can be mappable or unmappable.  A room is usually mappable.
A room has a number called map_x.  A room has a number called map_y.
A room can be currently_mapped.  A room is usually not currently_mapped.

To decide what number is the distance (d - a direction) from (r - a room): decide on 1.

[Coregionality relates mappable rooms to each other in groups.  The verb to be coregional with implies the coregionality relation.]
Coregionality relates rooms to each other in groups.  The verb to be coregional with implies the coregionality relation.

Map zoomedness is a kind of value.  The Map zoomednesses are map zoomed out, map zoomed in, and map absent.

Current zoom is a map zoomedness that varies.  [The current zoom is map zoomed in.] [The current zoom is map absent.]

To report dynamic allocation conflict:
	say "[bracket]Your interpreter does not support dynamic allocation, so the automap will not function.[close bracket][line break]";
	now current zoom is map absent;
		
Zooming in is an action out of world applying to nothing.  Understand "zoom in" as zooming in.
Carry out zooming in: if there is no dynamic allocation conflict begin; say "Zooming in!"; now current zoom is map zoomed in; otherwise; report dynamic allocation conflict; end if.

Zooming out is an action out of world applying to nothing.  Understand "zoom out" as zooming out.
Carry out zooming out:
	if there is no dynamic allocation conflict begin; say "Zooming out!"; now current zoom is map zoomed out; otherwise; report dynamic allocation conflict; end if.

Zooming away is an action out of world applying to nothing.  Understand "zoom away" as zooming away.  Carry out zooming away: say "Removing map."; now current zoom is map absent.

ZoomingMisc is an action out of world applying to nothing.  Understand "zoom" as zoomingmisc.
Carry out zoomingmisc: 
	if there is no dynamic allocation conflict begin;
		if current zoom is map zoomed in begin;
			try zooming out;
		otherwise if current zoom is map zoomed out;
			try zooming away;
		otherwise;
			try zooming in;
		end if;
	otherwise;
		report dynamic allocation conflict;
	end if.


Map displayness is a kind of value.  The map displaynesses are map display ascii, map display automatic, map display fancy, map display unicode. Current displayness is a map displayness that varies.

Map displaying unicode is an action out of world applying to nothing.  Understand "map unicode" as map displaying unicode.  Carry out map displaying unicode: now current displayness is map display unicode; say "Displaying map with unicode character set.".

Map displaying fancy is an action out of world applying to nothing.  Understand "map fancy" as map displaying fancy.  Understand "map font 3" as map displaying fancy.  Understand "map beyond zork" as map displaying fancy.  Carry out map displaying fancy: now current displayness is map display fancy; say "Displaying map with fancy character set.".

Map displaying ascii is an action out of world applying to nothing.  Understand "map simple/ascii/plain" as map displaying ascii.  Carry out map displaying ascii: now current displayness is map display ascii; say "Displaying map with simple character set.".
Gargoyle workaround is an action out of world applying to nothing.  Understand "gargoyle bug workaround" as gargoyle workaround.  Carry out gargoyle workaround: now current displayness is map display ascii; say "Activating workaround for buggy interpreter.".

Map displaying automatic is an action out of world applying to nothing.  Understand "map auto" as map displaying automatic.  Carry out map displaying automatic: now current displayness is map display automatic; say "Displaying map with automatic character set."

Automap work is an activity.  ["Catchall activity in case the author wants to do something different while doing automap related activity."]

Automap exploring is an activity.  ["Check a room, and join all adjacent rooms which are currently_mapped to its automap region."]

Automap drawing is an activity. ["writing the array that shows the automap."]

To decide whether (dir - a direction) is region preserving:
   if dir is north or dir is east or dir is west or dir is south or dir is northeast or dir is southeast or dir is northwest or dir is southwest, decide yes;
   if dir is up or dir is down or dir is inside or dir is outside, decide no;
   say "Error: Bad direction [dir]!"; decide no.

To decide what number is the delta x of (dir - a direction):
   if dir is west or dir is northwest or dir is southwest, decide on -1;
   if dir is east or dir is northeast or dir is southeast, decide on 1;
   decide on 0.

To decide what number is the delta y of (dir - a direction):
   if dir is north or dir is northwest or dir is northeast, decide on -1;
   if dir is south or dir is southwest or dir is southeast, decide on 1;
   decide on 0.


[Understand north south path as 40.]
To decide what number is automap in: decide on 3.
To decide what number is automap out: decide on 4.
To decide what number is automap inout: decide on 5.
To decide what number is automap present in: decide on 6.
To decide what number is automap present out: decide on 7.
To decide what number is automap present inout: decide on 8.
To decide what number is automap dark: decide on 9.
To decide what number is automap present dark: decide on 10.

To decide what number is north south path: decide on 2.
To decide what number is east west path: decide on 1.
To decide what number is ne sw path: decide on 35.
To decide what number is nw se path: decide on 36.
To decide what number is diagonal cross: decide on 90.
To decide what number is orthogonal cross: decide on 91. 
To decide what number is south wall: decide on 38.
To decide what number is north wall: decide on 39.
To decide what number is east wall: decide on 40.
To decide what number is west wall: decide on 41.
To decide what number is north exit: decide on 42.
To decide what number is south exit: decide on 43.
To decide what number is east exit: decide on 44.
To decide what number is west exit: decide on 45.
To decide what number is sw corner: decide on 46.
To decide what number is nw corner: decide on 47.
To decide what number is ne corner: decide on 48.
To decide what number is se corner: decide on 49.
To decide what number is sw exit: decide on 50.
To decide what number is nw exit: decide on 51.
To decide what number is ne exit: decide on 52.
To decide what number is se exit: decide on 53.
To decide what number is up arrow: decide on 92.
To decide what number is down arrow: decide on 93.
To decide what number is up down arrow: decide on 94.
To decide what number is question arrow: decide on 96.

To decide what number is empty cell: decide on 32.
To decide what number is full room: decide on 54.
To decide what number is empty room: decide on 95.

To decide what number is full south wall: decide on 55.
To decide what number is full north wall: decide on 56.
To decide what number is full east wall: decide on 57.
To decide what number is full west wall: decide on 58.
To decide what number is full north exit: decide on 59.
To decide what number is full south exit: decide on 60.
To decide what number is full east exit: decide on 61.
To decide what number is full west exit: decide on 62.
To decide what number is full sw corner: decide on 63.
To decide what number is full nw corner: decide on 64.
To decide what number is full ne corner: decide on 65.
To decide what number is full se corner: decide on 66.
To decide what number is full sw exit: decide on 67.
To decide what number is full nw exit: decide on 68.
To decide what number is full ne exit: decide on 69.
To decide what number is full se exit: decide on 70.
To decide what number is full up arrow: decide on 123.
To decide what number is full down arrow: decide on 124.
To decide what number is full up down arrow: decide on 125.
To decide what number is full question arrow: decide on 126.



To decide what number is map width:
	(- MAP_WIDTH -);
To decide what number is map height: 
	(- MAP_HEIGHT -);


Section 2 - Exploration - determining how rooms should be placed relative to each other

[ Unmap Room ]
To unmap (r - a room):
	now r is not coregional with r;
	now r is not currently_mapped.

To remap/explore (r - a room):
	unless r is explored, say "Error exploring [r] - BUG.";

[ Explore Room ]
To decide whether (r - a room) is explored:
	[say "Exploring [r].";]
	begin the automap work activity;
	begin the automap exploring activity;
	if r is a mappable room
	begin;
		if r is not currently_mapped begin;
			[say "Setting [r] to currently_mapped.";]
			now map_x of r is 0;
			now map_y of r is 0;
			now r is currently_mapped;
		end if;
		[say "mapped_room is [mapped_room].";]
		repeat with dir running through directions
		begin;
			if dir is region preserving and r has an exit to the dir
			begin;
				let next_room be the room dir from the r;
				[say "[mapped_room] : [dir] : [next_room].";]
				if next_room is a mappable room
				begin;
					[if next_room is placed 1 and 1 from r, say "Huh.";]
					let d be the distance dir from r;
					let ddx be d times (the delta x of dir);
					let ddy be d times (the delta y of dir);
					unless next_room is placed ddx and ddy from r, say "Error exploring [dir] from [r].";
				end if;
			end if;
		end repeat;
	end if;
	end the automap exploring activity;
	end the automap work activity;
	decide yes.

[ Recenter Region : Recoordinate the rooms in a region so that the minimum x and the minimum y of the region are 0. ]
To recenter the region of (r - a mappable room):
	let min_x be the map_x of r;
	let min_y be the map_y of r;
	repeat with loop_room running through all mappable rooms coregional with r begin;
		if the map_x of loop_room is less than min_x, now min_x is the map_x of loop_room;
		if the map_y of loop_room is less than min_y, now min_y is the map_y of loop_room;
	end repeat;
	repeat with loop_room running through all mappable rooms coregional with r begin;
		now the map_x of loop_room is the map_x of loop_room - min_x;
		now the map_y of loop_room is the map_y of loop_room - min_y;
	end repeat.
		

[ Join Regions : decide whether (nr - mappable room) is placed (dx - a number) and (dy - a number) from (or - mappable room):]
To decide whether (new room - mappable room) is placed (dx - a number) and (dy - a number) from (old room - mappable room):
	[ If the either room isn't currently_mapped, do nothing. ]
	if new room is not currently_mapped or old room is not currently_mapped, decide yes;
	[say "Trying to place [new room] at ([dx], [dy]) relative to [old room].";]
	[say "Normal decision.";]
	[now old room is currently_mapped;]
	[ if they're in the same region, check whether the placements are consistent. ]
	if new room is coregional with old room begin;
		[say "The coregional test.";]
		if map_x of new room is map_x of old room plus dx and map_y of new room is map_y of old room plus dy, decide yes;
		decide no;
	end if;
	[ otherwise, join the two regions ]
	let delta_x be (map_x of old room) + dx - (map_x of new room);
	let delta_y be (map_y of old room) + dy - (map_y of new room);
	repeat with loop_room running through all mappable rooms coregional with new room
	begin;
		now map_x of loop_room is (map_x of loop_room) + (delta_x);
		now map_y of loop_room is map_y of loop_room + delta_y;
	end repeat;
	now old room is coregional with new room;
	recenter the region of old room;
	decide yes.
	
To decide whether (r - a room) is not explored:
	if r is explored, decide no; decide yes.	
	
To decide whether (r - a room) has an exit to the/-- (d - a direction):
	if [using the automap hide paths through closed doors option and ]the room-or-door d from r is a closed door, decide no;
	If the room d from r is a room, decide yes; decide no.

Section 3 - Drawing the map - Writing to the character array

To place (ch - number) of (r - a room) at (x - a number) and (y - a number):
	(- if ( {x} >= 0 && {x} < MAP_WIDTH && {y} >=0 && {y} < MAP_HEIGHT) {
		Automap_Chars -> ( {y} * MAP_WIDTH + {x} ) = {ch};
		#ifdef AUTOMAP_HYPERLINKS;
			Automap_links --> ( {y} * MAP_WIDTH + {x} ) = {r};
		#endif;
	}
	-)

To place (ch - number) at (x - a number) and (y - a number):
	(- if ( {x} >= 0 && {x} < MAP_WIDTH && {y} >=0 && {y} < MAP_HEIGHT) {
		Automap_Chars -> ( {y} * MAP_WIDTH + {x} ) = {ch};
	}
	-)
	
To decide what number is the character at (sq - a number):
	(- Automap_Chars -> {sq} -);

To decide what number is room size: if current zoom is map zoomed in, decide on 4; decide on 2.

[Map drawn room is a mappable room that varies.  Map drawn direction is a direction that varies.]
Map drawn room is a room that varies.  Map drawn direction is a direction that varies.

[ Draw Path ]
To draw a path from (room x - a number) and (room y - a number) to (dir - a direction) for (dist - a number) with (ch - a number):
	[if ch is 76 begin; say "Drawing path with 76 from [map drawn room] to [map drawn direction]."; end if;]
	[say "drawing path from ([room x], [room y]) to the [dir] with [ch]:[line break]";]
	now dist is (dist - 1) times room size + 1;
	let dx be the delta x of dir;
	let dy be the delta y of dir;
	let room x be room x + dx;
	let room y be room y + dy;
	while (room x >= 0 and room x < map width and room y >= 0 and room y < map height and dist > 0) begin;
		let ch1 be ch;
		let sq be (room y * map width) + room x;
		let ch2 be the character at sq;
		if ch2 is 32 or ch2 is ch begin; do nothing; [ Drawing over a space or a matching character is normal. ]
		otherwise if ch2 is 90 or ch2 is 91; now ch1 is ch2; [ Drawing anything over an X or + is a nop. ]
		otherwise if ch1 is 35 or ch1 is 36; now ch1 is 90; [ Drawing a ne/sw over nw/se or v.v makes an X. ]
		[otherwise if ch1 is 35 or ch1 is 36; say "writing [ch] over [ch2] for X at ([room x], [room y])::[sq]."; now ch is 90;]
		otherwise if ch1 is 1 or ch1 is 2; now ch1 is 91; [ Drawing a n/s over e/w or v.v makes a +.]
		otherwise; say "Draw Path got value with [ch1] over [ch2] at ([room x], [room y]): BUG.";
		end if;
		if ch1 is not ch2, place ch1 at room x and room y;
		now dist is dist - 1;
		now room x is room x + dx;
		now room y is room y + dy;
	end while.
	
To decide what number is the maximum of (x - a number) and (y - a number): if (x < y), decide on y; decide on x.
To decide what number is the minimum of (x - a number) and (y - a number): if (x < y), decide on x; decide on y.
	
Include (-
[ ClearMap i;
	!for (i = 0: i < MAP_WIDTH * MAP_HEIGHT: ++ i)
	for (i = MAP_WIDTH * MAP_HEIGHT - 1; i >= 0; -- i)
		Automap_Chars->i = 32; ! Empty cell
	#ifdef AUTOMAP_HYPERLINKS;
	if (Automap_links ~= 0)
		for (i = MAP_WIDTH * MAP_HEIGHT - 1; i >= 0; -- i)
			Automap_links-->i = 0; ! No room
	#endif;
]; -);

To clear the map: (- ClearMap(); -);

[ Draw Map ]
To decide whether the map is drawn:
	if current zoom is map absent, decide no;
	if location is a mappable room begin;
		[start capturing text;]
		[say "location is a mappable room.";]
		begin the automap work activity;
		begin the automap drawing activity;
		let max_x be the map_x of location;
		let max_y be the map_y of location;
		repeat with loop_room running through the mappable rooms coregional with location begin;
			if the map_x of loop_room is greater than max_x, now max_x is the map_x of loop_room;
			if the map_y of loop_room is greater than max_y, now max_y is the map_y of loop_room;
		end repeat;
		let map_min_x be 0;
		[ If the width of the drawn map is no more than the width allocated, center the map horizontally.]
		[ Otherwise, place the map so as to center the location, unless that would go over the edge ]
		[  max (wmost, min (center - WIDTH/2, emost - WIDTH)) ]
		[let n1 be 2 + (room size) * (1 + max_x);]
		[say "[2 + (room size) * (1 + max_x)] ?>= [map width] :: [2 + (1 + the map_x of location) * (room size) - map width / 2] [(1 + max_x) * room size - map width].";]
		[say "Would center x at [((room size * (1 + max_x)) - map width) / 2] == ([room size] * [1 + max_x] - [map width]) / 2.";
		if 2 + (room size) * (1 + max_x) >= map width begin;
			[now map_min_x is the maximum of -2 and (the minimum of (2 + (1 + the map_x of location) * (room size) - map width / 2) and ((1 + max_x) * room size - map width));] [ I have no idea why the parens cause this line to fail.]
			now map_min_x is the maximum of -2 and (the minimum of (2 + (1 + the map_x of location) * (room size) - map width / 2) and (1 + max_x) * room size - map width); 
		otherwise;
			now map_min_x is (room size * (1 + max_x) - map width) / 2;
		end if;]
		if 1 is 1 begin;
			[say "room size = [room size], map width = [map width], max_x = [max_x], map_x = [ map_x of location ], ";]
			let shown_map_width be (room size) * (1 + max_x); increase shown_map_width by 1;
			[say "shown_map_width is [shown_map_width], ";]
			[let shown_map_start be shown_map_width - map width;]
			let center_location_start be (1 + the map_x of location) * room size; decrease center_location_start by 1; [ x coordinate of location ]
			[say "center location start is [center_location_start] ";]
			decrease center_location_start by room size / 2;
			[say " to [center_location_start], ";]
			[decrease center_location_start by map height / 2;]
			[decrease center_location_start by map width;
			now center_location_start is center_location_start / 2; [ x coordinate of start position that would center location ]]
			decrease center_location_start by (map width / 2);
			[say " to [center_location_start], ";]
			let eastmost_start be (1 + max_x) * room size; increase eastmost_start by 0; [ x coordinate of eastmost point ]
			now eastmost_start is eastmost_start - map width; [ x coordinate of start position that would be eastmost point at the edge ]
			[say "eastmost_start is [ eastmost_start ], ";]
			if shown_map_width > map width begin;
				[increase center_location_start by 2;]
				now map_min_x is the minimum of  center_location_start and eastmost_start;
				now map_min_x is the maximum of -1 and map_min_x;
			otherwise;
				[[now map_min_x is center_location_start;]
				[now map_min_x is shown_map_width;
				decrease map_min_x by ( map width / 2);]]
				now map_min_x is shown_map_width - map width;
				decrease map_min_x by 2;
				now map_min_x is map_min_x / 2;
				[decrease map_min_x by 1;] [compensate that (0,0) is a corner of a cell, not the center]
			end if;
			[say "map_min_x is [map_min_x].";]
			[say "room size = [room size], map width = [map width], max_x = [max_x], map_x = [ map_x of location ], shown_map_width is [shown_map_width], center location start is [center_location_start], eastmost_start is [ eastmost_start ], map_min_x is [map_min_x].";]
		end if;
		let map_min_y be 0;
		[ If the width of the drawn map is no more than the width allocated, center the map horizontally.]
		[ Otherwise, place the map so as to center the location, unless that would go over the edge ]
		[  max (nmost, min (center - WIDTH/2, smost - WIDTH)) ]
		[if 2 + (room size) * (1 + max_y) >= map height begin;
			now map_min_y is the maximum of -2 and (the minimum of (2 + (1 + the map_y of location) * (room size) - map height / 2) and (1 + max_y) * room size - map height); 
		otherwise;
			now map_min_y is (room size * (1 + max_y) - map height) / 2;
		end if;]
		if 1 is 1 begin; [ limiting the scope of the local variables ]
			[say "room size = [room size], map_height = [map height], max_y = [max_y], map_y = [ map_y of location ], ";]
			let shown_map_height be (room size) * (1 + max_y); increase shown_map_height by 1;
			[say "shown_map_height is [shown_map_height], ";]
			let center_location_start be (1 + map_y of location) * room size; decrease center_location_start by 1; [ y coordinate of location ]
			decrease center_location_start by room size / 2;
			[say "center location start is [center_location_start] ";]
			decrease center_location_start by map height / 2; [say "to [center_location_start], ";]
			let southmost_start be (1 + max_y) * room size; increase southmost_start by 0; [ y coordinate of southmost point ]
			decrease southmost_start by map height; [ y coordinate of start position that would be southmost point at the edge ]
			[say "southmost_start is [ southmost_start ], ";]
			if shown_map_height > map height begin;
				[decrease center_location_start by 2;]
				now map_min_y is the minimum of center_location_start and southmost_start;
				[decrease map_min_y by (map height minus 1) / 2;]
				now map_min_y is the maximum of -1 and map_min_y;
			otherwise;
				now map_min_y is shown_map_height - map height;
				decrease map_min_y by 2;
				now map_min_y is map_min_y / 2;
				[decrease map_min_y by 1;] [compensate that (0,0) is a corner of a cell, not the center]
			end if;
			[say "map_min_y is [map_min_y].";]
		end if;
		Clear the map;
		[reset 76;]
		repeat with loop_room running through the mappable rooms coregional with location begin;
			now map drawn room is loop_room;
			let temp_x be (the map_x of loop_room * room size) - map_min_x;
			let temp_y be (the map_y of loop_room * room size) - map_min_y;
			[say "Gridding [loop_room] at [temp_x], [temp_y]";]
			[if (temp_x + room size >= 0) and (temp_x < map width) and (temp_y + room size >= 0) and (temp_y < map height), begin;]
			[say "[temp_x + room size] >= 0 && [temp_x] < [map width] && [temp_y + room size] >= 0 && [temp_y] < [map height].";]
			if (temp_x + room size >= 0) and (temp_x < map width) and (temp_y + room size >= 0) and (temp_y < map height) begin;
				if the current zoom is map zoomed in begin;
					let offset be 0;
					if loop_room is location, now offset is 17; [ Difference between empty image chars and full image chars ]
					[check 76;]
					now map drawn direction is southwest;
					if loop_room has an exit to southwest begin;
						place sw exit + offset of loop_room at temp_x and temp_y + 2;
						[draw a path from temp_x and temp_y + 2 to -1 and 1 for (the distance from loop_room to the southwest) with ne sw path;]
						draw a path from temp_x and temp_y + 2 to southwest for the distance southwest from loop_room with ne sw path;				
					otherwise;
						place sw corner + offset of loop_room at temp_x and temp_y + 2;
					end if;
					[check 76;]
					now map drawn direction is northwest;
					if loop_room has an exit to northwest begin;
						place nw exit + offset of loop_room at temp_x and temp_y;
						draw a path from temp_x and temp_y to northwest for the distance northwest from loop_room with nw se path;				
					otherwise;
						place nw corner + offset of loop_room at temp_x and temp_y;
					end if;
					[check 76;]
					now map drawn direction is northeast;
					if loop_room has an exit to northeast begin;
						place ne exit + offset of loop_room at temp_x + 2 and temp_y;
						draw a path from temp_x + 2 and temp_y to northeast for the distance northeast from loop_room with ne sw path;				
					otherwise;
						place ne corner + offset of loop_room at temp_x + 2 and temp_y;
					end if;
					[check 76;]
					now map drawn direction is southeast;
					if loop_room has an exit to southeast begin;
						place se exit + offset of loop_room at temp_x + 2 and temp_y + 2;
						draw a path from temp_x + 2 and temp_y + 2 to southeast for the distance southeast from loop_room with nw se path;
					otherwise;
						place se corner + offset of loop_room at temp_x + 2 and temp_y + 2;
					end if;
					[check 76;]
					now map drawn direction is south;					
					if loop_room has an exit to south begin;
						place south exit + offset of loop_room at temp_x + 1 and temp_y + 2;
						draw a path from temp_x + 1 and temp_y + 2 to south for the distance south from loop_room with north south path;				
					otherwise;
						place south wall + offset of loop_room at temp_x + 1 and temp_y + 2;
					end if;
					[check 76;]
					now map drawn direction is north;
					if loop_room has an exit to north begin;
						place north exit + offset of loop_room at temp_x + 1 and temp_y;
						draw a path from temp_x + 1 and temp_y to north for the distance north from loop_room with north south path;				
					otherwise;
						place north wall + offset of loop_room at temp_x + 1 and temp_y;
					end if;
					[check 76;]
					now map drawn direction is west;
					if loop_room has an exit to west begin;
						place west exit + offset of loop_room at temp_x and temp_y + 1;
						draw a path from temp_x and temp_y + 1 to west for the distance west from loop_room with east west path;				
					otherwise;
						place west wall + offset of loop_room at temp_x and temp_y + 1;
					end if;
					[check 76;]
					now map drawn direction is east;
					if loop_room has an exit to east begin;
						place east exit + offset of loop_room at temp_x + 2 and temp_y + 1;
						draw a path from temp_x + 2 and temp_y + 1 to east for the distance east from loop_room with east west path;				
					otherwise;
						place east wall + offset of loop_room at temp_x + 2 and temp_y + 1;
					end if;
					[check 76;]
					[now map drawn direction is nothing;]
					[ Now, draw the central square of the room and, if needed, and up / down / questionmark arrow within ]
					place 37 + offset of loop_room at temp_x + 1 and temp_y + 1; 
					now offset is 0;
					if loop_room is location, now offset is 31; [ changes up arrow to full up arrow and the like ]
					if loop_room has an exit to up and loop_room has an exit to down begin;
						place up down arrow + offset of loop_room at temp_x + 1 and temp_y + 1;
					otherwise if loop_room has an exit to up;
						place up arrow + offset of loop_room at temp_x + 1 and temp_y + 1;
					otherwise if loop_room has an exit to down;
						place down arrow + offset of loop_room at temp_x + 1 and temp_y + 1;
					[otherwise if loop_room has an exit to inside or loop_room has an exit to outside;
						if loop_room is location begin;
							place full question arrow at temp_x + 1 and temp_y + 1;
						otherwise;
							place question arrow at temp_x + 1 and temp_y + 1;
						end if;]
					otherwise if loop_room has an exit to inside or loop_room has an exit to outside;
						let ch be automap in;
						if loop_room is location begin;
							if loop_room has an exit to inside and loop_room has an exit to outside begin;
								now ch is automap present inout;
							otherwise if loop_room has an exit to inside;
								now ch is automap present in;
							otherwise;
								now ch is automap present out;
							end if;
						otherwise;
							if loop_room has an exit to inside and loop_room has an exit to outside begin;
								now ch is automap inout;
							otherwise if loop_room has an exit to inside;
								now ch is automap in;
							otherwise;
								now ch is automap out;
							end if;
						end if;
						place ch of loop_room at temp_x + 1 and temp_y + 1;
					end if;
					[check 76;]
				otherwise; [ in zoomed out mode ]
					if loop_room has an exit to southwest, draw a path from temp_x and temp_y to southwest for the distance southwest from loop_room with ne sw path;
					if loop_room has an exit to northwest, draw a path from temp_x and temp_y to northwest for the distance northwest from loop_room with nw se path;
					if loop_room has an exit to southeast, draw a path from temp_x and temp_y to southeast for the distance southeast from loop_room with nw se path;
					if loop_room has an exit to northeast, draw a path from temp_x and temp_y to northeast for the distance northeast from loop_room with ne sw path;
					if loop_room has an exit to south, draw a path from temp_x and temp_y to south for the distance south from loop_room with north south path;
					if loop_room has an exit to north, draw a path from temp_x and temp_y to north for the distance north from loop_room with north south path;
					if loop_room has an exit to east, draw a path from temp_x and temp_y to east for the distance east from loop_room with east west path;
					if loop_room has an exit to west, draw a path from temp_x and temp_y to west for the distance west from loop_room with east west path;
					let offset be 0;
					if loop_room is location, now offset is 31;
					if loop_room has an exit to up and loop_room has an exit to down begin;
						place up down arrow + offset of loop_room at temp_x and temp_y;
					otherwise if loop_room has an exit to up;
						place up arrow + offset of loop_room at temp_x and temp_y;
					otherwise if loop_room has an exit to down;
						place down arrow + offset of loop_room at temp_x and temp_y;
					otherwise if loop_room has an exit to inside or loop_room has an exit to outside;
						[if loop_room is location begin;
							place full question arrow at temp_x and temp_y;
						otherwise;
							place question arrow at temp_x and temp_y;
						end if;]
						let ch be automap in;
						if loop_room is location begin;
							if loop_room has an exit to inside and loop_room has an exit to outside begin;
								now ch is automap present inout;
							otherwise if loop_room has an exit to inside;
								now ch is automap present in;
							otherwise;
								now ch is automap present out;
							end if;
						otherwise;
							if loop_room has an exit to inside and loop_room has an exit to outside begin;
								now ch is automap inout;
							otherwise if loop_room has an exit to inside;
								now ch is automap in;
							otherwise;
								now ch is automap out;
							end if;
						end if;
						place ch of loop_room at temp_x and temp_y;
					otherwise if loop_room is location;
						place full room of loop_room at temp_x and temp_y;
					otherwise;
						place empty room of loop_room at temp_x and temp_y;
					end if;
				end if;
				[now map drawn room is nothing;]
			end if;
		end repeat;
		end the automap drawing activity;
		end the automap work activity;
		[stop capturing text;]
		decide yes;
	end if;
	[stop capturing text;]
	decide no.					
	
Section 4 - Displaying the map
	
[ Adapted from Emily Short's Basic Screen Effects ]
To fill status bar with (selected table - a table-name) and map:
        let __n be the number of rows in the selected table;
	if the current zoom is map absent begin;
	        deepen status line to __n rows;
	otherwise;
	        deepen status line to __n + map height rows;
	end if;
	let __index be 1;
        repeat through selected table
        begin;
                move cursor to __index; 
                say "[left entry]";
                center central entry at row __index;
                right align cursor to __index;
                say "[right entry]";
                now __index is __index + 1;
        end repeat;
	if the map is drawn and the current zoom is not map absent, display the map at line __n;
	[if __b and the current zoom is not map absent, display the map at line __n + 1;]
		
[Before constructing the status line (this is the automap add adjacent rooms to map rule) : 
	if not using the automap manual exploration option:
		if the location is a mappable room:
			if the location is not explored:
				say "Error exploring [location].";
]
Rule for constructing the status line (this is the automap standard status line rule):
	fill status bar with table of ordinary status and map.

To display the map at line (n - a number):
	(- I6_Draw_Map_At ({n}); -).


Include (-


! From fizmo's _streams_z_ucs_output
Array Automap_Unicode_Conv -->
      0 $2500 $2502 63 63 63 63 63 63 63 63 11 12 13 14 15 ! 0 -  15
     16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 ! 16 -  31
     32 $2190 $2192 47 92 32 $2500 $2500 $2502 $2502 $2534 $252c $251c $2524 $2301 $2308 ! 32 -  47
!     32 $2190 $2192 $2571 $2572 32 $2500 $2500 $2502 $2502 $2534 $252c $251c $2524 $2301 $2308 ! 32 -  47
     $2309 $230b $2534 $252c $251c $2524 $2588 $2580 $2584 $258c $2590 $2584 $2580 $258c $2590 $259d ! 48 -  63
     $2597 $2596 $2598 $259d $2597 $2596 $2598 43 43 43 43 $2594 95 $23b9 $2595 32 ! 64 -  79
     $258f $258e $258d $258c $258b $258a $2589 $2588 $2595 $258f $2573 $253c $2191 $2193 $2195 $25a2 ! 80 -  95
     63 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 ! 96 -  111
     112 113 114 115 116 117 118 119 120 121 122 $2191 $2193 $2195 63 127 ! 112 -  127
     ;

Array Automap_Font_0_Conv -> 0 45 124 73 79 73 105 111 105 63 63 11 12 13 14 15 ! 0 - 15
     16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 ! 16 - 31
     32 33 34 47 92 32 45 45 124 124 43 43 43 43 111 111 ! 32 - 47
     111 111 47 92 47 92 42 42 42 42 42 42 42 42 42 42 ! 48 - 63
     42 42 42 42 42 42 42 71 72 73 74 75 76 77 78 79 ! 64 - 79
     80 81 82 83 84 85 86 87 88 89 88 43 85 68 59 111 ! 80 - 95
     96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 ! 96 - 111
     112 113 114 115 116 117 118 119 120 121 122 117 100 59 126 127 ! 112 - 127
     ;
Array Automap_Font_3_Conv -> 0 38 40 96 96 96 126 126 126 96 126 11 12 13 14 15 ! 0 -  15
     16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 ! 16 -  31
     32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 ! 32 -  47
     48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 ! 48 -  63
     64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 ! 64 -  79
     80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 ! 80 -  95
     96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 ! 96 -  111
     112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 ! 112 -  127
     ;



[ I6_Draw_Map_At line_n width posa posb ctr ch graphic_mode transform_table hyperlink_room;
	++ line_n;
	posa = line_n + 1;	
	width = VM_ScreenWidth();
	graphic_mode = 0;

	if ( (+ current displayness +) == (+ map display fancy +) or (+ map display automatic +) ) {
		#Ifdef TARGET_ZCODE;
		@set_font 3 graphic_mode; ! TODO: Make this glulx friendly
		#endif;
		if ( (+ current displayness +) == (+ map display fancy +) ) {
			graphic_mode = 3;
		}
	}
	if ( (+ current displayness +) == (+ map display unicode +) ) {
		#ifdef TARGET_ZCODE;
			graphic_mode = -1;
		#ifnot;		
			if (unicode_gestalt_ok) {
				graphic_mode = -1;
			} else {
				graphic_mode = 0;
			}
		#endif;
	}
	transform_table = Automap_Font_0_Conv;
	if (graphic_mode == 0) {
		#ifdef AUTOMAP_VISIBLE_BACKGROUND;
			transform_table->32 = '.';
		#endif;
	} else if (graphic_mode == -1) {
		transform_table = Automap_Unicode_Conv;
		#ifdef AUTOMAP_VISIBLE_BACKGROUND;
			transform_table-->32 = 71;
		#endif;		
	} else {
		transform_table = Automap_Font_3_Conv;
		#ifdef AUTOMAP_VISIBLE_BACKGROUND;
			transform_table->32 = 71;
		#endif;
	}
	#ifdef TARGET_ZCODE;
	@set_window 1;
	#ifnot;
	! TODO
	#endif;

	ctr = 0;
	for (posa = line_n: posa < MAP_HEIGHT + line_n: ++ posa) {
		posb = (width - MAP_WIDTH - 1) / 2;
		VM_MoveCursorInStatusLine (posa, posb);;

		for (posb = 0: posb < MAP_WIDTH: ++ posb) {
			#ifdef AUTOMAP_HYPERLINKS;
			hyperlink_room = Automap_links --> (ctr);
			if (hyperlink_room ~= 0) {
				! TODO copy-pasted from Basic Hyperlinks - Is there a way to call instead?
				if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_set_hyperlink(hyperlink_room);
				!	set room link to hyperlink_room;
				!	 !say "[set slink hyperlink_room]"; ;
			}
			if (graphic_mode == -1) {
				#ifdef TARGET_ZCODE;
					ch = transform_table-->(Automap_Chars->( ctr ++ ));
					@print_unicode ch;
				#ifnot;
					glk_put_char_uni (transform_table-->(Automap_Chars->( ctr ++ )));
				#endif;
			} else 
				print (char) transform_table->(Automap_Chars->( ctr ++ ));

			if (hyperlink_room ~= 0) {
				! TODO copy-pasted from Basic Hyperlinks - Is there a way to call instead?
				if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_set_hyperlink(0); 
				!end room link;
			}
			! say "[end xlink]"; ;
			#ifnot;
				if (graphic_mode == -1) {
					#ifdef TARGET_ZCODE;
						ch = transform_table-->(Automap_Chars->( ctr ++ ));
						@print_unicode ch;
					#ifnot;
						glk_put_char_uni (transform_table-->(Automap_Chars->( ctr ++ )));
					#endif;
				} else
					print (char) transform_table->(Automap_Chars->( ctr ++ ));
			#endif;						
		}
	}
	#ifdef TARGET_ZCODE;
	if (graphic_mode > 0)
		@set_font 1 posa;
	style roman;
	font on;
	#ifnot;
	! TODO
	#endif;
	#ifdef AUTOMAP_HYPERLINKS;
	glk_request_hyperlink_event(gg_statuswin);
	#endif;
];
-);


The automap size is a number that varies. The automap size is usually 9. When play begins: if automap size is at least 1, reserve automap memory of automap size rows.

To say (n - a number) blank lines:
	while n > 0:
		say "[line break]";
		decrease n by 1.

Section 5 - Hyperlink specific stuff (for use with Basic Hyperlinks by Emily Short)

[To set linked room to (x - a number):
	say "[set link x]".
	
To end linked room:
	say "[end link]".]

[copied from Safari Guide by Emily Short ch 16.10 ]
Hyperlink moving to room is an action applying to one thing.

Check hyperlink moving to room:
	if the noun is the location, say "You're already in [the location]." instead.
	
Carry out hyperlink moving to room:
	while the player is not in the noun:
		let heading be the best route from the location to the noun through visited rooms, using even locked doors;
		if heading is not a direction, say "You can't think how to get there from here." instead;
		let destination be the room heading from the location;
		say "(heading [heading])[command clarification break]";
		try going heading;
		if the player is not in the destination, rule fails.

To decide what room is the glulx equivalent of (n - a number):
	(- {n} -)
	
To decide whether (n - a number) codes a glulx object:
	(- (metaclass({n}) == Object) -)

Section 99 - Debug verbs - Not for release

[To check hyperlink availability:
	(- if (glk_gestalt(gestalt_Hyperlinks, 0))
		print "Hyperlinks supported!^";
	else 
		print "Hyperlinks not supported!^";
	-).

When play begins:
	if using the automap hyperlinks option,
		Check hyperlink availability.
]	
Map viewing is an action out of world applying to nothing.  Understand "map view" as map viewing.

Carry out map viewing:
	say "Viewing rooms coregional with [location].";
	repeat with viewed room running through all rooms coregional with location begin;
		say "[viewed room] [if viewed room is not currently_mapped](currently unmapped ???) [end if]is at [map_x of viewed room], [map_y of viewed room].";
	end repeat;
	say "[line break]Viewing rooms not coregional with [location].";
	repeat with viewed room running through all rooms not coregional with location begin;
		say "[viewed room] [if viewed room is not currently_mapped](currently unmapped) [end if]is at [map_x of viewed room], [map_y of viewed room].";
	end repeat;

Map dumping is an action out of world applying to nothing.  Understand "map dump" as map dumping.
Map link dumping is an action out of world applying to nothing.  Understand "map link dump" as map link dumping.

Include (-
[ Automap_dump i;
	for (i = 0: i < MAP_WIDTH * MAP_HEIGHT; ++ i)
		print Automap_chars->i, " ";
];

[ Automap_link_dump i j;
#ifdef AUTOMAP_HYPERLINKS;
	for (i = 0; i < MAP_WIDTH * MAP_HEIGHT; ++ i) {
		j = Automap_links --> i;
		if (j ~= 0 && glk_gestalt(gestalt_Hyperlinks, 0))
			glk_set_hyperlink(j);
		print j, " ";
		if (j ~= 0 && glk_gestalt(gestalt_Hyperlinks, 0))
			glk_set_hyperlink(0); 
	}
#endif;
];
-);


To say automap dump:
	(- Automap_dump(); -).

To say automap link dump:
	(- Automap_link_dump(); -).

Carry out map dumping:
	say "MAP DUMP:[line break][automap dump].".
	
Carry out map link dumping:
	say "MAP LINK DUMP:[line break][automap link dump].".
	
Automap ends here.

---- DOCUMENTATION ----

Automap will watch what rooms the player has visited and create a Beyond Zork style automap.

Kinds:  Mappable Room.  All rooms which are to show on the map must be of this kind.

By default, rooms will be placed one unit away in the appropriate direction.  If the path should be longer, you can manually set the distance.

It is the responsibility of the author to make the map has a consistent geography and that no two rooms overlap.

Activities:

- The "Automap work" is activity is being handled while the program is attempting to explore a room or draw the map (that is, the times when it might perform the "which room is (direction) from (room)" decision).  It is provided if you need to have anything work differently during such a test.

Use options:

- Use automap manual display:  The program will not display the map to the status line on its own.

- Use automap manual exploration:  The program will not add rooms to the map unless you explicitly run the "(room) is explored" decision.

- Use automap hide paths through closed doors:  The program will not add paths that go through closed doors.

- Use automap static allocation:  Causes a glulx game to allocate memory for the automap at compile time.  Reduces flexibility, but allows the game to run on more interpreters.  (Automatically set when compiling to zcode.)

- Use automap reserved area of at least N:  Sets the amount of memory the game will use for drawing the map.  Must be at least (map rows)*(map columns).  This option is ignored when compiling to glulx, unless the "use static allocation" option is set.

- Use automap visible background:  Spaces that would ordinarily be blank will be shown as periods.  Meant for experimenting with the size of the map while testing and is not meant for release.


New source code syntax:

	decision: "(mappable room) is placed (number) and (number) from (mappable room)":
If the player has visited both rooms, it will attempt to arrange the map so that they will appear in the given relative positions.
Returns yes unless doing so creates an inconsistency.
It will not be necessary to use this decision in your own code unless you want to have rooms that would not ordinarily be on the same map region together.  (For example, if a closet is connected to the main room by in / out, this would put it on the map with the rest of the rooms.)

	decision: "(room) is explored":
Attempts to connect (room) with any adjacent rooms.  It probably will not be necessary to use this unless you want to add rooms the player hasn't visited, or you are using the manual exploration option.
Returns no if doing so creates any inconsistencies, and yes otherwise.

	phrase: "explore (room)" / "remap (room)":
Attempt to add the room to the automap.  Prints an error if there are any problems.  Again, it probably will not be necessary to use this unless you want to add rooms the player hasn't visited, or you are using the manual exploration option.

	phrase: "unmap (mappable room)":
Removes the room from the automap.  Will be needed if you want to change its position relative to other rooms.

	phrase: "fill status bar with (selected table - a table-name) and map":
Will print the calculated automap.  Should only be necessary if you are using the manual display option.

	phrase: "reserve automap memory of (number) rows by (number) cols":
Sets the size of the displayed map.  Must be called for any map to display.  May be changed at any time.  (Maps will center better if the height and width are 1 more than a multiple of 4: 1, 5, 9, 13, 17, ...)

	phrase: "reserve automap memory of (number) rows":
Sets the size of displayed map.  Width is the current width of the status line.  If using static allocation, and this would require more memory than is allocated, width is trimmed to what will fit.  (Maps will center better if the height and width are 1 more than a multiple of 4: 1, 5, 9, 13, 17, ...)


New in-game commands:

- "zoom in": Shows the map so that rooms have 3x3 grids.

- "zoom out": Shows the map so that rooms have 1x1 grids. (the default)

- "zoom away": Removes the map entirely. 

- "zoom": Rotates through the various zoom modes.

To set the zoom manually, change the current zoom variable to map zoomed in, map zoomed out, or map absent.


- "map automatic": Try to use the font 3 characters.  If the interpreter does not support them, convert down to ASCII characters.

- "map fancy": Force using the font 3 characters, whether the interpreter supports them or not.

- "map plain": Convert down to ASCII characters.  Don't even try to use font 3. (the default)

If the game is run on a buggy interpreter, using the command "gargoyle bug workaround" should prevent problems.

- "map view" (not for release): shows information


Thanks to Jesse McGrew and Mike Talbert for help with overriding decisions.
Thanks to Cristoph Ender and Andrew Plotkin for help with Unicode.
Thanks to Andrew Plotkin and Jesse McGrew for help with joining I6 and I7. 
Thanks to S. John Ross for testing and feedback.
Thanks to Aaron Reed for feedback and a minimal example.
Lots and lots of thanks to Peter Pears for heavy testing and feedback.

Example: * "The Test" by Aaron Reed - A minimal test.

	*: "Test" by Aaron.

	Include Automap by Mark Tilford.

	Stage is west of Wings and north of Dressing Room. Booth is northwest of Wings. Closet is east of Wings.  It is unmappable.
 
Example: ** The Demonstration - A simple demonstration.

	*: "The demonstration" by Mark Tilford.

	Include Automap by Mark Tilford.
	Use automap hide paths through closed doors;
	Use automap reserved area of at least 400;
	Include Basic Hyperlinks by Emily Short;
	Use automap hyperlinks;

	When play begins:  now current zoom is map zoomed in.
	
	[The western hall is a mappable room.
	The eastern hall is a mappable room.  It is east of western hall.
	The southern hall is a mappable room.  It is southeast of western hall.  It is southwest of eastern hall.]
	The heavy door is south of the western hall and north of the office. It is a door.
	[The office is a mappable room.]
	The southern hall is southeast of western hall and southwest of eastern hall.  The eastern hall is east of western hall.
	The heavy door is a door.  It is south of the western hall and north of the office.
	
	Fooing is an action applying to nothing.  Understand "foo" as fooing.

	Before fooing when the player is in eastern hall or the player is in western hall:
		say "To make a longer path, the distance must be declared both ways."
	To decide what number is the distance (d - east) from (r - western hall): decide on 2.
	To decide what number is the distance (d - west) from (r - eastern hall): decide on 2.

	[The western balcony is a mappable room.  It is up from western hall.
	The central balcony is a mappable room.  It is east from western balcony.
	The eastern balcony is a mappable room.  It is east from central balcony.  It is up from eastern hall.]
	The western balcony is up from western hall and west from central balcony.
	The eastern balcony is east from central balcony and up from eastern hall.

	Outside Building is a mappable room.  It is west from western balcony.        

	Before fooing when the player is in western balcony or the player is in eastern balcony:
		say "By default, rooms connected with up / down / in / out are not placed on the same map.  If you want to put them on the same map, you can position them manually." 
		
	Before constructing the status line:
		unless western balcony is placed 0 and -1 from western hall, say "*** Error placing west balcony ***";
		unless eastern balcony is placed 0 and -1 from eastern hall, say "*** Error placing east balcony ***";
		unless upstairs closet is placed -1 and 0 from upstairs office, say "*** Error placing upstairs closet ***".
		
	[Upstairs office is a mappable room.  It is north of western balcony.
	Upstairs closet is a mappable room.  It is inside from upstairs office.]
	Upstairs office is north of western balcony.
	Upstairs closet is inside from upstairs office.

	Stupid room is a mappable room.  It is east from upstairs office.

	Alpha room is east of stupid room.
	Beta room is north of alpha room and northeast of stupid room.
	Gamma room is west of beta room and northwest of alpha room and north of stupid room.
	Joe's room is southeast of beta room.
	Fred's room is northeast of beta room and north of Joe's room.
	Jane's room is east of beta room and southeast of fred's room and northeast of Joe's room.
	To decide what number is the distance (d - east) from (r - beta room): decide on 2.
	To decide what number is the distance (d - west) from (r - jane's room): decide on 2.
	To decide what number is the distance (d - north) from (r - joe's room): decide on 2.
	To decide what number is the distance (d - south) from (r - fred's room): decide on 2.


	Before fooing in elevator:
		say "If you want to move a room on the map, you'll have to unmap it first."
		
	The elevator is a mappable room.  The elevator can be high or low.  It is low.
	The elevator is east of eastern hall.
	The button is in the elevator.  It is fixed in place.
	Instead of pushing the button:
		say "The doors shut; the elevator shakes briefly, then the doors open again.";
		unmap the elevator;
		If the elevator is low begin;
			now the elevator is high;
			change the east exit of eastern hall to nothing;
			change the east exit of eastern balcony to elevator;
			change the west exit of elevator to eastern balcony;
		otherwise;
			now the elevator is low;
			change the east exit of eastern hall to elevator;
			change the east exit of eastern balcony to nothing;
			change the west exit of elevator to eastern hall;
		end if.
			
	before fooing when the player is in western balcony or the player is in outside building:
		say "If you want to split rooms into separate map regions despite them being reachable from each other by compass points, you can override the decision so that it has a different value while working with the automap than when making ordinary movement."

	Phony Room is an unmappable room.  It is west of office and southwest of western hall.

	To decide what room is the room (dir - west) from (room - western balcony):
		if handling the automap work activity, decide on Phony Room.

	To decide what room is the room (dir - east) from (room - outside building):
		if handling the automap work activity, decide on Phony Room.

	To decide what number is the distance (dir - west) from (room - western balcony): decide on 3.	
	
	before fooing when the player is in western balcony or the player is in eastern balcony:
		say "(Current versions of Inform do not go through the decision mechanism when responding to the player's compass movements, so the 'if handling the automap work activity' check may not be necessary.  Something like 'decide on nothing / nowhere' end should theoretically allow hiding a passage completely, but all I got were syntax errors.)[line break]"

	before fooing the first time:
		say "You must set the displayed size of the map before it is displayed.  This can be changed at any time not during automap work.[line break]
			To fix the size at the start, use something like 'When play begins: Reserve automap memory of 13 rows by 17 cols;'.[line break]
			Omitting the columns will have it allocate memory to fill the width of the screen, but you must readjust each time the status line is rebuilt.[line break]
			In Glulx games, it will automatically allocate memory as needed.  In Zcode games, you must reserve that memory in advance:
			Use automap reserved area of at least 400.  (It's okay to put such a line in a Glulx game; it will be ignored.)[line break]
			In ZCode mode, you must print at least as many blank lines as your map is high so that the text will start out below the automap.[line break]
			Map sizes are in characters; a room is 1 character square in zoomed out mode, 3 characters square in zoomed in mode."

	Section 99Z (for Z-machine only)
	
		When play begins: say "[map height blank lines]"
	
	Section 1

	before fooing the first time: say "If you want something other than the usual line above your map, you'll need to build the status line yourself.[line break]"
	
	The first for constructing the status line rule:
		reserve automap memory of 13 rows;
		fill status bar with table of mostly ordinary status and map.

	Table of Mostly Ordinary Status
	left	central	right
	"[location]"	""	"[score]/[turn count]" 
	"---"	"---"	"---"
	
	Section 98 (for use with Basic Hyperlinks by Emily Short)

	Current autowalk destination is a room that varies.  Autowalk destination set is a truth state that varies.
	
	autowalking is an action applying to one topic.  Understand "autowalk to [text]" as autowalking.
			
	Carry out autowalking:
		if autowalk destination set is true begin;
			now autowalk destination set is false;
			try hyperlink moving to room current autowalk destination;
		otherwise;
			say "(Autowalk is meant to be generated by hyperlinks, not typed directly.)";
		end if.
	
	The first clicking hyperlink rule:
		[say "Clicked on link [current link number].";]
		if current link number codes a glulx object begin;
			[try hyperlink moving to room glulx equivalent of current link number;]
			change current autowalk destination to glulx equivalent of current link number;
			now autowalk destination set is true;
			now glulx replacement command is "autowalk to [current autowalk destination]";
			rule succeeds;
		end if;
			
			