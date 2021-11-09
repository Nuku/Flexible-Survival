 extends Control

"""
SIGNALS:
	These are all the signals/outputs of this script to other scripts. 
"""
signal input_processors_node_references_sent
"""
Scene references
	Scenes not in the tree yet can be preloaded so they can be referenced. 
"""
const Prompt                    =   preload("res://Prompt.tscn")       #used to create text on the screen
const RoomCard                  =   preload("res://RoomCard.tscn") 

export (int) var max_lines_remembered := 30

var max_scroll_length       :=   0                                  #used to store and keep track of changes to the maximum scroll value   
var current_room = null
"""
ONREADY VARIABLES:
	These variables are created as soon as the nodes enter the tree.
	
	Many of these variables store the location of other nodes so that they can be referenced when calling
	functions. 
"""

onready var text_history       =   $MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/WindowHBoxContainer/TextPanel/MarginContainer/ScrollContainer/TextHistory
onready var scroll_container   =   $MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/WindowHBoxContainer/TextPanel/MarginContainer/ScrollContainer
onready var scrollbar          =   scroll_container.get_v_scrollbar() #used to reference the scrollbar when autoscrolling text
onready var input_processor    =   $InputProcessor
onready var location_processor =   $LocationProcessor
"""
ON STARTUP, READY . ===============================================================================================
"""
#called when the node enters the tree for the first time.
func _ready() -> void:
	self.add_to_group("room trackers")
	scrollbar.connect("changed", self, "autoscroll")
	#location_processor.connect("response_generated", self, "process_generated_response")
	input_processor.connect("response_generated", self, "process_generated_response")
	
	"""
	WARNING:
		The room and location nodes need to be added before any references to room information
		or children of location processor can occur. 
	"""
	#fetches the first child node of the location(the current room) and sends it to
	#the initialize function in location processor. 
	"""
	NOTE:
		this passes the current child node as a perameter. location processor doesn't need this since
		it keeps track of it's own children. however, this perameter is meant to be replaced by 
		a stored value representing wherever the player last left off. 
	"""
	emit_signal("input_processors_node_references_sent", location_processor)
	
	location_processor.initialize_player_start_location(location_processor.get_child(0).get_child(0))
	input_processor.initialize_player_start_location(location_processor.get_child(0).get_child(0)) 
	#Send references to nodes
	printerr("FS main ready")
	

"""
FUNCTIONS=============================================================================================================
"""

func update_current_room():
	current_room = location_processor.current_room_requested()
"""
FUNCTION:
	The scroll step needs to be adjusted every time something is added to the scrollbar. This requires 
	setting the scrollbar to the maximum value every time it's changed somehow (it emits a signal when it does so) 
	and then the changes that are not the maximum scroll value changing need to be filtered out so it can 
	still scroll.
"""
func autoscroll():
	if max_scroll_length != scrollbar.max_value:
		max_scroll_length = scrollbar.max_value              #update max value scroll tracker
		scroll_container.scroll_vertical = max_scroll_length #set the value for the scroll to maximum
	
	
#note: the parameter should probably be a scene ID and this function should fetch the content so that it can be 
#displayed based on the story progress signals the scene is emitting.

"""
FUNCTION:
	Creates a new room card instance and draws it to the text_history panel 
"""
func _create_room_card() -> void:
	var new_room_card = RoomCard.instance()                                              #create a variable that stores an instance of the library scene
	draw_prompt(new_room_card)                                                       #add the instance as a child of Text_history, loading the scene


func delete_old_text_instances():                                               #delets old children of text_history
	if text_history.get_child_count() > max_lines_remembered:
		var lines_to_forget = text_history.get_child_count() - max_lines_remembered
		for i in range(lines_to_forget):
			text_history.get_child(i).queue_free()                              #the children with the lowest values of i are the oldest ones 


"""
INPUT:
	signal containing a poolstring array and a boolian to decide if the array should be drawn as a 
	room panel or flat text. 
"""
func process_generated_response(response_text, is_text: bool):                  #creates a new instance of a text object or room, customizes the text, then draws it.
	print("preocess generated response was called with is text = " + str(is_text))
	var response
	if is_text:
		response = Prompt.instance()
		response.text = response_text
		response.add_color_override("font_color", Color8(243,137,12))
	else:
		response = RoomCard.instance()
		var RoomNameLabel = response.get_node("MarginContainer/VRoomContainer/RoomNameLabel")
		var RoomBodyLabel = response.get_node("MarginContainer/VRoomContainer/RoomBodyLabel")
		RoomNameLabel.text = response_text[0]                                
		#print("response text:") #debug code
		#print(response_text)
		RoomBodyLabel.text = response_text[1]
	draw_prompt(response)


"""
INPUT:
	control object, usually a text or a room, that needs to be drawn into the text
	history field. 
"""
func draw_prompt(prompt: Control):                                              #used for drawing new control objects, like text, to the screen
	text_history.add_child(prompt)
	delete_old_text_instances()



func _on_InputProcessor_next_button_pressed() -> void:
	_create_room_card()
	


func on_current_room_requested(node_name):
	node_name.current_room = current_room
"""
FUNCTION:
	whenever the Location changes and enters the tree for the first time, it emits
	a signal and calls for the game to update the location. 
"""




