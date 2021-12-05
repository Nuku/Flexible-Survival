extends Node

#create the grey_abbey_lobby
var grey_abbey_lobby = FSRoom.new()
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
var grey_abbey_lobby_exits:  Dictionary = {}

func _ready() -> void:
	update_room_object()
	#add room to group for mass information retrieval
	self.add_to_group("rooms", false)
	#package all room information so it can be sent.

func compile_dictionaries():
	grey_abbey_lobby_exits = grey_abbey_lobby.prepare_information()
	emit_signal("room_information_sent", room_name, grey_abbey_lobby_exits)
	print("Sending Grey_Abby_Lobby info")


"""
FUNCTION:
	updates the game's room object with the values selected by the writer in the editor.
"""
func update_room_object():
	grey_abbey_lobby.room_name 			= room_name
	grey_abbey_lobby.room_description 	= room_description
	grey_abbey_lobby.north_exit 			= north_exit
	grey_abbey_lobby.north_room_name 		= north_room_name
	grey_abbey_lobby.south_exit 			= south_exit
	grey_abbey_lobby.south_room_name 		= south_room_name
	grey_abbey_lobby.east_exit 			= east_exit
	grey_abbey_lobby.east_room_name 		= east_room_name
	grey_abbey_lobby.west_exit			= west_exit
	grey_abbey_lobby.west_room_name		= west_room_name
	grey_abbey_lobby.northeast_exit		= northeast_exit
	grey_abbey_lobby.northeast_room_name	= northeast_room_name
	grey_abbey_lobby.northwest_exit		= northwest_exit 
	grey_abbey_lobby.northwest_room_name	= northwest_room_name
	grey_abbey_lobby.southeast_exit 		= southeast_exit
	grey_abbey_lobby.southeast_room_name	= southeast_room_name
	grey_abbey_lobby.southwest_exit		= southwest_exit
	grey_abbey_lobby.southwest_room_name	= southwest_room_name
	grey_abbey_lobby.up_exit				= up_exit
	grey_abbey_lobby.up_room_name			= up_room_name
	grey_abbey_lobby.down_exit			= down_exit
	grey_abbey_lobby.down_room_name		= down_room_name



