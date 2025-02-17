extends Control

var fullscreen = false
var sound = true

func _on_new_game_button_pressed():
	pass # Replace with function body.


func _on_continue_button_pressed():
	pass # Replace with function body.


func _on_settings_button_pressed():
	$settings_popup.show()


func _on_about_button_pressed():
	$about_popup.show()


func _on_exit_button_pressed():
	get_tree().quit()


func _on_about_back_button_pressed():
	$about_popup.hide()


func _on_settings_back_button_pressed():
	$settings_popup.hide()


func _on_setting_fullscreen_pressed():
	fullscreen = !fullscreen
	
	if fullscreen:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		$settings_popup/settings_items/fullscreen_setting/setting_fullscreen.text = "Disabled"
	else :
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		$settings_popup/settings_items/fullscreen_setting/setting_fullscreen.text = "Enabled"


func _on_setting_sound_button_pressed():
	sound = !sound
	
	if sound:
		$settings_popup/settings_items/sound_setting/setting_sound_button.text = "On"
	else:
		$settings_popup/settings_items/sound_setting/setting_sound_button.text = "Off"
