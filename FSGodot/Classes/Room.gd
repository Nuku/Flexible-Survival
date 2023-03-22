extends Node
"""
This is a class that can be used to create room objects that can be populated 
with information.
"""
class_name FSRoom

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
"""
ROOM PROPERTIES:
"""
var room_name = "Room Name"
var room_description = "Room Description"
var north_exit
var north_room_name 
var south_exit
var south_room_name
var east_exit
var east_room_name
var west_exit
var west_room_name
var northeast_exit
var northeast_room_name
var northwest_exit
var northwest_room_name
var southeast_exit
var southeast_room_name
var southwest_exit
var southwest_room_name
var up_exit
var up_room_name
var down_exit
var down_room_name

var room_exits:  Dictionary = {}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



"""
FUNCTION:
	constructs a dictionary of exit directions and the rooms they lead to in order 
	to send it to the location processor. 
"""
func prepare_information(): 
	print("prepare_information called successfully")
	#true if a match is found. needed because apparently 3 continues in a row makes a match statement check every sing block. including autofiring the default when it shouldn't. 
	var fixing_stupid_bug := false
	#executes each block of code if the value is true
	match true:
		north_exit:
			print("north exit found, writing to dictionary----------------------")
			room_exits["north"] = north_room_name
			#this is needed or the match statement will end on the first match
			fixing_stupid_bug = true
			continue
		south_exit:
			room_exits["south"] = south_room_name
			fixing_stupid_bug = true
			continue
		east_exit:
			room_exits["east"] = east_room_name
			fixing_stupid_bug = true
			continue
		west_exit:
			room_exits["west"] = west_room_name
			fixing_stupid_bug = true
			continue
		northeast_exit:
			room_exits["northeast"] = northeast_room_name
			fixing_stupid_bug = true
			continue
		northwest_exit:
			room_exits["northwest"] = northwest_room_name
			fixing_stupid_bug = true
			continue
		southeast_exit:
			room_exits["southeast"] = southeast_room_name
			fixing_stupid_bug = true
			continue
		southwest_exit:
			room_exits["southwest"] = southwest_room_name 
			fixing_stupid_bug = true
			continue
		up_exit:
			print("Up exit found, writing to dictionary------------------------")
			room_exits["up"] = up_room_name
			fixing_stupid_bug = true
			continue
		down_exit:
			room_exits["down"] = down_room_name
			fixing_stupid_bug = true
		_:
			if fixing_stupid_bug == false:
				printerr("Error: Room has no exits:", room_name)
	#apparently signals down work in class resources
	#emit_signal("room_information_sent", room_name, room_exits)
	
	#debug code
	#print(room_exits)
	return room_exits
