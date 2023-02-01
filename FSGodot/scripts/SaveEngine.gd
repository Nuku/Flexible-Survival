"""
SAVING:
	This is used to save and load game states.
"""
extends Node

#Add a button in Config to set where games are saved
var SAVE_FOLDER : String = "user://save/"
var SAVE_NAME_TEMPLATE = "game_data.save"

func save_all():
	"""
	Calls the save function of all current nodes in the 'save' group,
	and writes to file. Each 'save' group node must have a save function.
	"""
	var save_dir = Directory.new()
	if !save_dir.dir_exists(SAVE_FOLDER):
		save_dir.make_dir(SAVE_FOLDER)
	
	var save_game = File.new()
	save_game.open(str(SAVE_FOLDER, SAVE_NAME_TEMPLATE), File.WRITE)
	var save_data = {}
	#calls save function on all savable objects
	for node in get_tree().get_nodes_in_group("save"):
		node.save(save_data)
	var save_string = var2str(save_data)
	save_game.store_string(save_string)
	save_game.close()
	
func load_all():
	var save_game = File.new()
	if !save_game.file_exists(str(SAVE_FOLDER, SAVE_NAME_TEMPLATE)):
		print("No save file detected.")
		return
	
	save_game.open(str(SAVE_FOLDER, SAVE_NAME_TEMPLATE), File.READ)
	var save_string = save_game.get_as_text()
	var save_data : Dictionary = str2var(save_string)
	#load the data on each node
	for node in get_tree().get_nodes_in_group("save"):
		node.load_save(save_data)
	save_game.close()
	
	
	"""
	Node Save Function Template
	
	func save(save_data):
		var object_dictionary = {}
		object_dictionary['variable_name'] = 'variable_data'
		#repeat for each variable to save
		save_data["<myobject>_data"] = object_dictionary
		return
	"""
	
	"""
	Node Load Function Template
	
	func load_save(save_data):
		if(!save_data.has("<nyobject>_data")):
			#if no data is saved for this object
			return
		var object_dictionary = save_data["<myobject>_data"]
		variable_name = object_dictionary['variable_name']
		#repeat for each variable to load
		return
	"""
