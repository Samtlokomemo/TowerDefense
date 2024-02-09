alpha = lerp(alpha, 0, .1)

if instance_exists(oBase){
	dir = point_direction(x,y,oBase.x,oBase.y)

	var hspd = lengthdir_x(spd, dir)
	var vspd = lengthdir_y(spd, dir)

	x += hspd
	y += vspd
}


if life <= 0 {
	var _drop = irandom_range(1, 2)
	if _drop == 1{
		instance_create_layer(x, y, "Player", oSemenete)
	}
	instance_destroy()	
}

//Colisão com estruturas
if place_meeting(x, y, oBase){
	oBase.vida -= 5
	oBase.alpha = 1
	instance_destroy()
}