
randomize()
global.timer = 90
alarm[0] = global.timer

function spawn_enemies(){
	var side = irandom(3)
	var x1, y1
	var margin = 60
	var cam_x = camera_get_view_x(view_camera[0])
	var cam_y = camera_get_view_y(view_camera[0])
	var cam_w = camera_get_view_width(view_camera[0])
	var cam_h = camera_get_view_height(view_camera[0])
	
	if side == 0{
		x1 = cam_x + cam_w + margin
		y1 = irandom_range(cam_y - margin, cam_y + cam_h + margin)
	}
	else if side == 1{
		x1 = irandom_range(cam_x - margin, cam_x + cam_w + margin)
		y1 = cam_y + cam_h + margin
	}
	else if side == 2{
		x1 = cam_x - margin
		y1 = irandom_range(cam_y - margin, cam_y + cam_h + margin)
	}
	else if side == 3{
		x1 = irandom_range(cam_x - margin, cam_x + cam_w + margin)
		y1 = cam_y - margin
	}
	
	instance_create_layer(x1, y1, "Inimigos", oInimigo)
}