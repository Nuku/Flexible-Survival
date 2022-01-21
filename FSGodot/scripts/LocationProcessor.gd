extends Node

"""
The job of the location processor is to keep track of the player and manage the transition between rooms. 
"""

signal response_generated(text_response, is_text)
signal directional_button_draw_needed

var input_processor = preload("res://scripts/InputProcessor.gd")

var location_exits: Dictionary = {}
var current_room

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#connect to room class
	self.add_to_group("room trackers")
	
	printerr("location processor ready")
	#input_processor.connect("room_switch_intended", self, "handle_room_switch")

"""
FUNCTION:
	passes the starting room from FS2_main to here so location_processor can_process()
	drop the player into the room they left off.
"""
func initialize_player_start_location(start_room: Node):                                               
	current_room = start_room
	start_room(start_room)

"""
FUNCTION:
"""

func update_current_room():
	current_room = self.get_child(0).get_child(0)

"""
INPUT:
	the room or room ID that is the room the player wants to switch to. 
FUNCTION:
	initializes the starting room, sending the room details in a poolstring 
	to FS2 handle_generated_response method to create a roomcard
OUTPUT:
	A signal that contains the room strings in an array and a boolian to tell
	the function we don't want it to be drawn in the text history field as flat
	text. 
"""
func start_room(new_room: Node) -> void: 
	var room_strings: PoolStringArray 
	#update the room. only redundant if called by initialize player start location
	current_room = new_room
	room_strings = _compile_roomcard_string(new_room)
	get_tree().call_group_flags(2, "room trackers", "update_current_room")
	#sends signal to FS2_main
	#print(room_strings)
	#send signal to FS2 to create roomcard and ad it to history
	emit_signal("response_generated", room_strings, false)
	#send signal to input processor
	emit_signal("directional_button_draw_needed")
	printerr("start room called")


"""
FUNCTION:
	simply generates a PoolStringArray using the room name and description
"""

func _compile_roomcard_string(room_param: Node):
	var room_strings: PoolStringArray 
	#update the room. only redundant if called by initialize player start location
	room_strings.append(room_param.room_name)
	room_strings.append(room_param.room_description)
	return room_strings
"""
INPUT:
	Target room identifier to switch to.
FUNCTION:
	Is called whe-e child order (index 0) which is a spot reserved for the room The
	player is currently in. 
"""
func handle_room_switch(target_room):
	var number_of_children = self.get_child(0).get_children()
	print(number_of_children)
	var debug_counter = 0
	for i in self.get_child(0).get_children():
		#print("this is an iteration")
		#debug_counter  += 1
		if target_room == i.room_name:
			print("found room")
			#moves i, the current child in the itteration, to the top of the index
			self.get_child(0).move_child(i, 0)
			#make sure to update location_processor first otherwise who knows which order they will be updated in. some may be left behind. 
			current_room = self.get_child(0).get_child(0)
			print("current room: " +current_room.room_name)
			#call the update room function for all scripts needing to tack the current room
			get_tree().call_group_flags(2, "room trackers", "update_current_room")
			var new_room_string = _compile_roomcard_string(i)
			emit_signal("response_generated", new_room_string, false)
			emit_signal("directional_button_draw_needed")
		#elif debug_counter ==  :
			#print("Room not found")
		#child_index = child_index + 1
"""			
FUNCTION:
	stores every room exit dictionary in a dictionary listed by the room name 
"""

func _on_room_information_sent(sending_room, room_exits) -> void:
	print("location_processor_recieved signal from: " + sending_room)
	location_exits[sending_room] = room_exits
	print(location_exits)

"""
FUNCTION:
	this is called whenever a room update request is sent. 
"""
func current_room_requested():
	return current_room

"""
FUNCTION:
	Used to save and load location data. 
"""
	
func save(save_data):
	var location_dictionary = {}
	location_dictionary["current_room"] = current_room
	save_data["location_data"] = location_dictionary
	return

func load_save(save_data):
	if(!save_data.has("<nyobject>_data")):
		return
	var location_dictionary = save_data["location_data"]
	current_room = location_dictionary['current_room']
	initialize_player_start_location(current_room)
	return
