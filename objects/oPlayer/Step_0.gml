var _up = keyboard_check(ord("W")) or keyboard_check(vk_up)
var _left = keyboard_check(ord("A")) or keyboard_check(vk_left)
var _down = keyboard_check(ord("S")) or keyboard_check(vk_down)
var _right = keyboard_check(ord("D")) or keyboard_check(vk_right)

var moveX = (_right - _left) 
var moveY = (_down - _up)

var tecla = moveX != 0 || moveY != 0

dir = point_direction(0,0,moveX,moveY)

var hspd = lengthdir_x(spd * tecla, dir)
var vspd = lengthdir_y(spd * tecla, dir)

x += hspd
y += vspd

x = clamp(x, 0 + sprite_width/2, room_width - sprite_width/2)
y = clamp(y, 0 + sprite_height/2, room_height - sprite_height/2)



//Atirar
if global.state == GAMESTATES.Play{
	cd--
	if mouse_check_button(mb_left) && cd <= 0{
		var proj = instance_create_layer(x, y, "Projeteis", oProjetil)
		proj.direction = point_direction(x, y, mouse_x, mouse_y)
		proj.speed = 12
		proj.image_angle = point_direction(x, y, mouse_x, mouse_y)
		cd = 10
	}
}