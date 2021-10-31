extends Node



"""
These are all the signals/outputs of this script to other scripts. 
"""
signal next_button_pressed              

signal response_generated(text_response, is_text)                                        #tells the game that something triggered a text prompt that needs to be drawn on the screen.  

"""
NOTE:
	I don't think we should be preloading locations. they are suppossed to
	vary. 
"""
#const Location                   =   preload("res://Location.tscn") 

var current_room = null


""" 
INPUT:
	The starting room where the player last left off. 
FUNCTION:
	called at the start of the game, sets the current_room to the starting room and drops
	the player into it.
"""
func initialize(start_room):                                                    
	current_room = start_room
	switch_room(start_room)


func _ready() -> void:
	pass


"""
These are all room based functions that are here temporarily until they can be moved elsewhere
"""

"""
INPUT:
	the room or room ID that is the room the player wants to switch to. 
FUNCTION:
	Called whenever the room is switched. updates the current room variable to 
	the new room and It sends that information in a signal to create a room card. 
OUTPUT:
	A signal that contains the room strings in an array and a boolian to tell
	the function we don't want it to be drawn in the text history field as flat
	text. 
"""
func switch_room(new_room: Room) -> void: 
	#update the room
	current_room = new_room
	#new_room.room_name = "bees" #debug code
	#new_room.room_description = "SO MANY BEEES"
	"""
	NOTE:
		This needs to be rewritten to use the new dictionaries created by 
		locations. 
	"""
	#var Room_Srings = PoolStringArray([
	#	new_room.room_name,
	#	new_room.room_description
	#])
	#print(Room_Srings)
	var Room_Strings = "this"
	emit_signal("response_generated", Room_Strings, false)

"""

BUTTON INPUT====================================================================
We capture the input here from every button and relay it to the scripts that need to know. this keeps 
all the input functions in one place and makes tracing easier, as well as providing the some opportunity 
to use handy techniques later on. 
"""
func _on_NextButton_pressed() -> void:
	emit_signal("next_button_pressed") # Replace with function body.

func _on_Examine_pressed() -> void:
	pass


#Directional Buttons
"""
NOTE:
	.exits.keys doesn't seem to work. research this.
"""
func _on_NorthwestButton_pressed() -> void:
	if current_room.exits.keys().has("northwest"):
		emit_signal("response_generated", "You move Northwest.", true)


func _on_WestButton_pressed() -> void:
	if current_room.exits.keys().has("west"):
		emit_signal("response_generated", "You move West.", true)


func _on_SouthwestButton_pressed() -> void:
	if current_room.exits.keys().has("southwest"):
		emit_signal("response_generated", "You move Southwest.", true)


func _on_NorthButton_pressed() -> void:
	if current_room.exits.keys().has("north"):
		emit_signal("response_generated", "You move North.", true)


func _on_UpButton_pressed() -> void:
	if current_room.exits.keys().has("up"):
		emit_signal("response_generated", "You go up.", true)


func _on_DownButton_pressed() -> void:
	if current_room.exits.keys().has("down"):
		emit_signal("response_generated", "You go down.", true)


func _on_SouthButton_pressed() -> void:
	if current_room.exits.keys().has("south"):
		emit_signal("response_generated", "You move South.", true)


func _on_NortheastButton_pressed() -> void:
	if current_room.exits.keys().has("northeast"):
		emit_signal("response_generated", "You move Northeast.", true)


func _on_EastButton_pressed() -> void:
	if current_room.exits.keys().has("east"):
		emit_signal("response_generated", "You move East.", true)


func _on_SoutheastButton_pressed() -> void:
	if current_room.exits.keys().has("southeast"):
		emit_signal("response_generated", "You move Southeast.", true)



