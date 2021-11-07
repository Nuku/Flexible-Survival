extends Button


func _on_button_pressed(button_pressed: bool):
	if(button_pressed):
		emit_signal("button_pressed")
