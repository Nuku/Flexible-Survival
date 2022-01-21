extends Node



"""
These are all the signals/outputs of this script to other scripts. 
"""
signal next_button_pressed              
signal response_generated(text_response, is_text)                                        #tells the game that something triggered a text prompt that needs to be drawn on the screen.  
signal room_switch_intended(target_room)

var current_room 		
var location_processor 	

""" 
INPUT:
	A room node, supossed to be the first child of location processor and fetched
	by the invoker of the function. 
FUNCTION:
	called at the start of the game, sets the current_room to the starting room
	as recieved by FS2 and drops the player into it.
"""
func initialize_player_start_location(start_room):                                               
	current_room = start_room

"""
FUNCTION:
	called by the FS2_Main in order to pass all needed references to the node.
"""
func _on_FS2_input_processors_node_references_sent(location_processor_ref: Node) -> void:
	location_processor = location_processor_ref

func _ready() -> void:
	self.add_to_group("room trackers")
	printerr("input processor ready")

func update_current_room():
	current_room = location_processor.current_room_requested()
	printerr("input current room updated")

"""
BUTTON INPUT:
	We capture the input here from every button and relay it to the scripts that need to know. this keeps 
	all the input functions in one place and makes tracing easier, as well as providing the some opportunity 
	to use handy techniques later on. 
"""
func _on_NextButton_pressed() -> void:
	emit_signal("next_button_pressed") # Replace with function body.

func _on_Examine_pressed() -> void:
	pass

#for testing save and load
func _on_Button3_pressed():
	SaveEngine.save_all()

func _on_Button4_pressed():
	SaveEngine.load_all()



#Directional Buttons
"""
NOTE:
	.exits.keys doesn't seem to work. research this.
"""
func _on_NorthwestButton_pressed() -> void:	
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("northwest"):
		#print("room array:")
		#print(room_exits["northwest"])
		#emit signal to FS2_Main
		emit_signal("response_generated", "You move Northwest.", true)
		emit_signal("room_switch_intended", room_exits["northwest"])
	else:
		print("Exit not listed on button")


func _on_WestButton_pressed() -> void:
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("west"):
		#emit signal to FS2_Main
		emit_signal("response_generated", "You move West.", true)
		emit_signal("room_switch_intended", room_exits["west"])
	else:
		print("Exit not listed on button")


func _on_SouthwestButton_pressed() -> void:
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("southwest"):
		#emit signal to FS2_Main
		emit_signal("response_generated", "You move Southwest.", true)
		emit_signal("room_switch_intended", room_exits["southwest"])
	else:
		print("Exit not listed on button")


func _on_NorthButton_pressed() -> void:
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("north"):
		print("Exit listed on button")
		#emit signal to FS2_Main
		emit_signal("response_generated", "You move North.", true)
		emit_signal("room_switch_intended", room_exits["north"])
	else:
		print("Exit not listed on button")

func _on_UpButton_pressed() -> void:
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("up"):
		#print("room array:")
		#print(room_exits["up"])
		#emit signal to FS2_Main
		emit_signal("response_generated", "You go up.", true)
		emit_signal("room_switch_intended", room_exits["up"])
	else:
		print("Exit not listed on button")


func _on_DownButton_pressed() -> void:
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("down"):
		#emit signal to FS2_Main
		emit_signal("response_generated", "You go down.", true)
		emit_signal("room_switch_intended", room_exits["down"])
	else:
		print("Exit not listed on button")

func _on_SouthButton_pressed() -> void:
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("south"):
		#emit signal to FS2_Main
		emit_signal("response_generated", "You move South.", true)
		emit_signal("room_switch_intended", room_exits["south"])
	else:
		print("Exit not listed on button")


func _on_NortheastButton_pressed() -> void:
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("northeast"):
		#emit signal to FS2_Main
		emit_signal("response_generated", "You move Northeast.", true)
		emit_signal("room_switch_intended", room_exits["northeast"])
	else:
		print("Exit not listed on button")


func _on_EastButton_pressed() -> void:
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("east"):
		#emit signal to FS2_Main
		emit_signal("response_generated", "You move East.", true)
		emit_signal("room_switch_intended", room_exits["east"])
	else:
		print("Exit not listed on button")


func _on_SoutheastButton_pressed() -> void:
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("southeast"):
		#emit signal to FS2_Main
		emit_signal("response_generated", "You move Southeast.", true)
		emit_signal("room_switch_intended", room_exits["southeast"])
	else:
		print("Exit not listed on button")

"""
FUNCTION:
	This method disables and enables the directional buttons based on which exits 
	are available for the current room. 
"""

func _on_LocationProcessor_directional_button_draw_needed() -> void:
	var north_button 		= self.get_parent().get_node("MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/ButtonPanel/ButtonPanelOrganizer/DirectionalButtonOrganizer/DButtonColumn2/NorthButton")
	var northeast_button 	= self.get_parent().get_node("MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/ButtonPanel/ButtonPanelOrganizer/DirectionalButtonOrganizer/DButtonColumn3/NortheastButton")
	var northwest_button	= self.get_parent().get_node("MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/ButtonPanel/ButtonPanelOrganizer/DirectionalButtonOrganizer/DButtonColumn1/NorthwestButton")
	var south_button		= self.get_parent().get_node("MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/ButtonPanel/ButtonPanelOrganizer/DirectionalButtonOrganizer/DButtonColumn2/SouthButton")
	var southeast_button	= self.get_parent().get_node("MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/ButtonPanel/ButtonPanelOrganizer/DirectionalButtonOrganizer/DButtonColumn3/SoutheastButton")
	var southwest_button	= self.get_parent().get_node("MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/ButtonPanel/ButtonPanelOrganizer/DirectionalButtonOrganizer/DButtonColumn1/SouthwestButton")
	var east_button			= self.get_parent().get_node("MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/ButtonPanel/ButtonPanelOrganizer/DirectionalButtonOrganizer/DButtonColumn3/EastButton")
	var west_button			= self.get_parent().get_node("MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/ButtonPanel/ButtonPanelOrganizer/DirectionalButtonOrganizer/DButtonColumn1/WestButton")
	var up_button			= self.get_parent().get_node("MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/ButtonPanel/ButtonPanelOrganizer/DirectionalButtonOrganizer/DButtonColumn2/UpButton")
	var down_button			= self.get_parent().get_node("MainPanel/MarginContainer/HBoxContainer/CenterVBoxContainer/ButtonPanel/ButtonPanelOrganizer/DirectionalButtonOrganizer/DButtonColumn2/DownButton")

	printerr(location_processor.location_exits)
	printerr("analyzing buttons")
	
	var room_exits = location_processor.location_exits[current_room.room_name]
	if room_exits.keys().has("north") and  north_button.get("disabled") == true:
		north_button.set("disabled", false)
	elif !room_exits.keys().has("north") and north_button.get("disabled") == false:
		north_button.set("disabled", true) 
		
	if room_exits.keys().has("northeast") and  northeast_button.get("disabled") == true:
		northeast_button.set("disabled", false)
	elif !room_exits.keys().has("northeast") and northeast_button.get("disabled") == false:
		northeast_button.set("disabled", true) 
		
	if room_exits.keys().has("northwest") and  northwest_button.get("disabled") == true:
		northwest_button.set("disabled", false)
	elif !room_exits.keys().has("northwest") and northwest_button.get("disabled") == false:
		northwest_button.set("disabled", true) 
		
	if room_exits.keys().has("south") and  south_button.get("disabled") == true:
		south_button.set("disabled", false)
	elif !room_exits.keys().has("south") and south_button.get("disabled") == false:
		south_button.set("disabled", true) 
		
	if room_exits.keys().has("southeast") and  southeast_button.get("disabled") == true:
		southeast_button.set("disabled", false)
	elif !room_exits.keys().has("southeast") and southeast_button.get("disabled") == false:
		southeast_button.set("disabled", true) 
		
	if room_exits.keys().has("southwest") and  southwest_button.get("disabled") == true:
		southwest_button.set("disabled", false)
	elif !room_exits.keys().has("southwest") and southwest_button.get("disabled") == false:
		southwest_button.set("disabled", true) 
		
	if room_exits.keys().has("east") and  east_button.get("disabled") == true:
		east_button.set("disabled", false)
	elif !room_exits.keys().has("east") and east_button.get("disabled") == false:
		east_button.set("disabled", true) 
		
	if room_exits.keys().has("west") and  west_button.get("disabled") == true:
		west_button.set("disabled", false)
	elif !room_exits.keys().has("west") and west_button.get("disabled") == false:
		west_button.set("disabled", true) 
		
	if room_exits.keys().has("up") and  up_button.get("disabled") == true:
		up_button.set("disabled", false)
	elif !room_exits.keys().has("up") and up_button.get("disabled") == false:
		up_button.set("disabled", true) 
		
	if room_exits.keys().has("down") and  down_button.get("disabled") == true:
		down_button.set("disabled", false)
	elif !room_exits.keys().has("down") and down_button.get("disabled") == false:
		down_button.set("disabled", true) 
	


