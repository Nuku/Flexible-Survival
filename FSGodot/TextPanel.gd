extends PanelContainer


const LibraryScene = preload("res://LibraryScene.tscn") #create a reference to the scene

onready var text_history = $MarginContainer/ScrollContainer/TextHistory

#called when the node enters the tree for the first time.
func _ready() -> void:
	pass
	
	
var current_scenario #variable used to refrence whatever scenario is selected.
#note: the parameter should probably be a scene ID and this function should fetch the content so that it can be displayed based on the story progress signals the scene is emitting.
func _fetch_next_text(new_text: String) -> void:
	var Library_Scene = LibraryScene.instance()#create a variable that stores an instance of the library scene
	text_history.add_child(Library_Scene) #add the instance as a child of Text_history, loading the scene


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

#when the next button is pressed, fetch the next text from the current scenario
func _on_NextButton_pressed() -> void: 
	_fetch_next_text("new text")
