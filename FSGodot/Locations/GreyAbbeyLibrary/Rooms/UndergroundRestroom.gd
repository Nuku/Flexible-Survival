extends Node

#create the underground_restroom
var underground_restroom = FSRoom.new()
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
var underground_restroom_exits:  Dictionary = {}

func _ready() -> void:
	update_room_object()
	#add room to group for mass information retrieval
	"""
	NOTE:
		the boolean peramerter toggles persistance. "it is only used if you pack and save the node 
		as PackedScene. Only persistent groups are saved into the file."
	"""
	self.add_to_group("rooms", false)
	#package all room information so it can be sent.

func compile_dictionaries():
	underground_restroom_exits = underground_restroom.prepare_information()
	emit_signal("room_information_sent", room_name, underground_restroom_exits)
	print("Sending underground_restroom info")


"""
FUNCTION:
	updates the game's room object with the values selected by the writer in the editor.
"""
func update_room_object():
	underground_restroom.room_name 				= room_name
	underground_restroom.room_description 		= room_description
	underground_restroom.north_exit 			= north_exit
	underground_restroom.north_room_name 		= north_room_name
	underground_restroom.south_exit 			= south_exit
	underground_restroom.south_room_name 		= south_room_name
	underground_restroom.east_exit 				= east_exit
	underground_restroom.east_room_name 		= east_room_name
	underground_restroom.west_exit				= west_exit
	underground_restroom.west_room_name			= west_room_name
	underground_restroom.northeast_exit			= northeast_exit
	underground_restroom.northeast_room_name	= northeast_room_name
	underground_restroom.northwest_exit			= northwest_exit 
	underground_restroom.northwest_room_name	= northwest_room_name
	underground_restroom.southeast_exit 		= southeast_exit
	underground_restroom.southeast_room_name	= southeast_room_name
	underground_restroom.southwest_exit			= southwest_exit
	underground_restroom.southwest_room_name	= southwest_room_name
	underground_restroom.up_exit				= up_exit
	underground_restroom.up_room_name			= up_room_name
	underground_restroom.down_exit				= down_exit
	underground_restroom.down_room_name			= down_room_name



