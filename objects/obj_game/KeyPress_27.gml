/// @description Pause Menu
global.paused = !global.paused

if (global.paused == true) {
	pause_sprite = sprite_create_from_surface(
		application_surface, 
		0, 0, 
		view_width(), view_height(), 
		false, false, 0, 0
	)
	instance_deactivate_all(true)
}
if (global.paused == false) {
	pause_sprite = sprite_delete(pause_sprite)
	instance_activate_all()
}
