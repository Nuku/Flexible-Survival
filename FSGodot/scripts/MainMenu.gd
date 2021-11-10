extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_New_Game_Button_pressed():
	get_tree().change_scene("res://FS2_Main.tscn")


func _on_Load_Button_pressed():
	get_tree().change_scene("res://FS2_Main.tscn")
	SaveEngine.load_all()


func _on_Settings_Button_pressed():
	pass # Replace with function body.


func _on_Wiki_Button_pressed():
	OS.shell_open("https://blog.flexiblesurvival.com")


func _on_Patreon_Button_pressed():
	OS.shell_open("https://www.patreon.com/FS")
