draw_self()

var xx = x - sprite_width
var yy = y - (sprite_height / 2)
var amount = (vida/vida_max) * 100
if position_meeting(mouse_x, mouse_y, self){
	draw_healthbar(xx, yy - 5, x + sprite_width, yy - 15, amount, c_black, c_red, c_green, 0, true, true)
}

if alpha > 0{
	gpu_set_fog(true, color, 0, 0)
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, color, alpha)
	gpu_set_fog(false, color, 0, 0)
}