///@description Camera Variables
resolution_width = 960
resolution_height = 540
resolution_scale = 1.52
global.view_width = resolution_width / resolution_scale
global.view_height = resolution_height / resolution_scale
view_target = oPlayer
view_speed = .1
window_set_size(global.view_width * resolution_scale, global.view_height * resolution_scale)
surface_resize(application_surface, global.view_width * resolution_scale, global.view_height * resolution_scale)
display_set_gui_size(global.view_width, global.view_height)