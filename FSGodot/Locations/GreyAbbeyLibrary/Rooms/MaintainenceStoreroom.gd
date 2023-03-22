extends Node

#create the maintenence_storeroom
var maintenence_storeroom = FSRoom.new()
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
var maintenence_storeroom_exits:  Dictionary = {}

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
	maintenence_storeroom_exits = maintenence_storeroom.prepare_information()
	emit_signal("room_information_sent", room_name, maintenence_storeroom_exits)
	print("Sending Maintainence Storeroom info")


"""
FUNCTION:
	updates the game's room object with the values selected by the writer in the editor.
"""
func update_room_object():
	maintenence_storeroom.room_name 			= room_name
	maintenence_storeroom.room_description 		= room_description
	maintenence_storeroom.north_exit 			= north_exit
	maintenence_storeroom.north_room_name 		= north_room_name
	maintenence_storeroom.south_exit 			= south_exit
	maintenence_storeroom.south_room_name 		= south_room_name
	maintenence_storeroom.east_exit 			= east_exit
	maintenence_storeroom.east_room_name 		= east_room_name
	maintenence_storeroom.west_exit				= west_exit
	maintenence_storeroom.west_room_name		= west_room_name
	maintenence_storeroom.northeast_exit		= northeast_exit
	maintenence_storeroom.northeast_room_name	= northeast_room_name
	maintenence_storeroom.northwest_exit		= northwest_exit 
	maintenence_storeroom.northwest_room_name	= northwest_room_name
	maintenence_storeroom.southeast_exit 		= southeast_exit
	maintenence_storeroom.southeast_room_name	= southeast_room_name
	maintenence_storeroom.southwest_exit		= southwest_exit
	maintenence_storeroom.southwest_room_name	= southwest_room_name
	maintenence_storeroom.up_exit				= up_exit
	maintenence_storeroom.up_room_name			= up_room_name
	maintenence_storeroom.down_exit				= down_exit
	maintenence_storeroom.down_room_name		= down_room_name



