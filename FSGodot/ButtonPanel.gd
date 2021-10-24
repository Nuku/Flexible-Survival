extends PanelContainer


#the purpose of this script is to accept input from the scenario about what buttons are available in the room
#and then use that information to generate instances of buttons for the button panel to display. This script will
#need to keep track of how many buttons are visible, clear them upon leaving the room, generate more, and place
#them in the proper nodes in left to right reading order. 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
