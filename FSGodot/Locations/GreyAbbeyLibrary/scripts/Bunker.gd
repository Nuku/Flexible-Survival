extends Node

#create the bunker
var bunker = FSRoom.new()
"""
SIGNALS/OUTPUTS================================================================
"""
signal room_information_sent(room_id, exit_dictionary)
"""
EXPORT/EDITOR INPUT FIELDS====================================================
"""
export (String) var room_name = "Room Name"
export (String, MULTILINE) var room_description = "Room Description"
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
export (bool) var up_exit
export (String) var up_room_name
export (bool) var down_exit
export (String) var down_room_name
#used to store a list of exit directions and the rooms they lead to
var bunker_exits:  Dictionary = {}

func _ready() -> void:
	update_room_object()
	#add room to group for mass information retrieval
	#printerr(str(up_exit)+ " object info: " + str(bunker.up_exit))
	"""
	NOTE:
		the boolean peramerter toggles persistance. "it is only used if you pack and save the node 
		as PackedScene. Only persistent groups are saved into the file."
	"""
	self.add_to_group("rooms", false)
	#package all room information so it can be sent.
	printerr("bunker ready")


func compile_dictionaries():
	printerr("Compiling dictionaries")
	update_room_object()
	bunker_exits = bunker.prepare_information()
	emit_signal("room_information_sent", room_name, bunker_exits)
	print("Sending Bunker info")


"""
FUNCTION:
	updates the game's room object with the values selected by the writer in the editor.
"""
func update_room_object():
	bunker.room_name 			= room_name
	bunker.room_description 	= room_description
	bunker.north_exit 			= north_exit
	bunker.north_room_name 		= north_room_name
	bunker.south_exit 			= south_exit
	bunker.south_room_name 		= south_room_name
	bunker.east_exit 			= east_exit
	bunker.east_room_name 		= east_room_name
	bunker.west_exit			= west_exit
	bunker.west_room_name		= west_room_name
	bunker.northeast_exit		= northeast_exit
	bunker.northeast_room_name	= northeast_room_name
	bunker.northwest_exit		= northwest_exit 
	bunker.northwest_room_name	= northwest_room_name
	bunker.southeast_exit 		= southeast_exit
	bunker.southeast_room_name	= southeast_room_name
	bunker.southwest_exit		= southwest_exit
	bunker.southwest_room_name	= southwest_room_name
	bunker.up_exit				= up_exit
	bunker.up_room_name			= up_room_name
	bunker.down_exit			= down_exit
	bunker.down_room_name		= down_room_name



