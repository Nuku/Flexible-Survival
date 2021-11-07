

signal

export (String) var Location_name = "Room Name"
export (String, MULTILINE) var Location_description = "Room Description"


#this dictionary lists all the rooms by the cardinal direction they are grouped to



"""
FUNCTION:
	All children are in the tree now and ready so we need to start the process
	of collecting their information
"""
func _enter_tree():
	
	

func _ready() -> void:
	#fetch all room information
	#get_tree().call_group("rooms", "fetch_room_info")
	pass


"""
INPUT:
	the room name of the sending room, and a dictionary containing the exit 
	directions and the rooms they lead to.
FUNCTION:
	stores the dictionary of exit directions and the rooms they lead to that was
	recieved into a new dictionary that lists all of them by the room that sent 
	it. 
"""
#func _on_Room_room_information_sent(sender_room_name, r_exits: Dictionary) -> void:
#	exits_map[sender_room_name] = r_exits




"""
INPUT:
	a direction corresponging to an exit location and a room that needs to be
	connected to that direction
FUNCTION:
	commented out until a use is determined

func connect_rooms(direction: String, room):
	match direction:
		"west":
			exits_map[direction] = room
			#also connect the other way around
			room.exits["west"] = self
		"east":
			exits[direction] = room
			#also connect the other way around
			room.exits["east"] = self
		"north":
			exits[direction] = room
			#also connect the other way around
			room.exits["north"] = self
		"south":
			exits[direction] = room
			#also connect the other way around
			room.exits["south"] = self
		"northwest":
			exits[direction] = room
			#also connect the other way around
			room.exits["northwest"] = self
		"northeast":
			exits[direction] = room
			#also connect the other way around
			room.exits["northeast"] = self
		"southwest":
			exits[direction] = room
			#also connect the other way around
			room.exits["southwest"] = self
		"southeast":
			exits[direction] = room
			#also connect the other way around
			room.exits["southeast"] = self
		"up":
			exits[direction] = room
			#also connect the other way around
			room.exits["up"] = self
		"down":
			exits[direction] = room
			#also connect the other way around
			room.exits["down"] = self
		_:
			printerr("Error: couldn't connect room to direction: %s", direction )
"""


