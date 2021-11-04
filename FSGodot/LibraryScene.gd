extends VBoxContainer
"""
The purpose of this script is to communicate to the textpanel about which buttons the rooms have,
generating a 2darray of coordinates that make up the rooms, and sending the array to the text 
panel so it can keep track of the player. It also recieves the players position and based on that 
information controles which text is visible when the instance is created. 
"""
# Declare member variables here. Examples:


"""
This process happens every time the scene is added to the tree text panel. keep in mind it will 
need a way to tell if it has been called for the first time or if it is simply a new instance. 
"""
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#player will start on the starting room.


"""
These are functions every scene needs to have in order for it to function correctly. 
"""

