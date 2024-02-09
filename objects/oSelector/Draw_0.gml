gpu_set_depth(-1600)
draw_self()
if global.state == GAMESTATES.Buy{
	if hover{

		draw_sprite_ext(sEsquilo, image_index, x, y, 1, 1, 0, c_white, .75)
	}
}
