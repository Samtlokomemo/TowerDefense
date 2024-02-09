if instance_exists(oInimigo){
	var range = point_in_circle(oInimigo.x, oInimigo.y, x, y, 100)
	cd--
	if range and cd <= 0{
		var proj = instance_create_layer(x, y, "Projeteis", oProjetil)
		proj.direction = point_direction(x, y, oInimigo.x, oInimigo.y)
		proj.speed = 12
		proj.image_angle = point_direction(x, y, oInimigo.x, oInimigo.y)
		cd = 8
	}
}