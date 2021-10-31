extends Control

"""
This is a class that can be used to create room objects that can be populated 
with information.
"""
class_name Room

"""
SIGNALS/OUTPUTS================================================================
"""
signal room_information_sent(sender_room_name, exits)

"""
EXPORT/EDITOR INPUT FIELDS====================================================
"""
export (String) var room_name = "Room Name"
export (String, MULTILINE) var location_description = "Room Description"
export (bool) var north_exit
export (String) var north_room_name 
export (bool) var south_exit
export (String) var south_room_name
export (bool) var east_exit
export (String) var east_room_name
export (bool) var west_exit
export (String) var west_room_name
export (bool) var northeast_exit
export (String) var northeast_room_name
export (bool) var northwest_exit
export (String) var northwest_room_name
export (bool) var southeast_exit
export (String) var southeast_room_name
export (bool) var southwest_exit
export (String) var southwest_room_name
export (bool) var up
export (String) var up_room_name
export (bool) var down
export (String) var down_room_name
#used to store a list of exit directions and the rooms they lead to
var exits:  Dictionary = {}
"""
INITIALIZING:
	enter tree is called the moment the node is added to the tree but before ready 
	functions are called. this is also before children nodes are added to the tree. 
	
	Ready functions are automatically called when all the nodes children are in
	the tree and ready. 
"""
func _enter_tree() -> void:
	pass

func _ready() -> void:
	#add room to group for mass information retrieval
	self.add_to_group("rooms", false)
	#package all room information so it can be sent
	prepare_information()

"""
FUNCTION:
	this is called by the parent node, location, after the ready function executes. 
"""
func fetch_room_info():
	#print(exits) #debug code
	emit_signal(room_name, exits)

"""
constructs a dictionary of exit directions and the rooms they lead to in order 
to send it to the location class. 
"""
func prepare_information(): 
	match true:
		north_exit:
			exits["north"] = north_room_name
			#this is needed or the match statement will end on the first match
			continue
		south_exit:
			exits["south"] = south_room_name
			continue
		east_exit:
			exits["east"] = east_room_name
			continue
		west_exit:
			exits["west"] = west_room_name
			continue
		northeast_exit:
			exits["northeast"] = northeast_room_name
			continue
		northwest_exit:
			exits["northwest"] = northwest_room_name
			continue
		southeast_exit:
			exits["southeast"] = southeast_room_name
			continue
		southwest_exit:
			exits["southwest"] = southwest_room_name 
			continue
		up:
			exits["up"] = up_room_name
			continue
		down:
			exits["down"] = down_room_name
		_:
			printerr("Error: Room has no exits:", room_name)
