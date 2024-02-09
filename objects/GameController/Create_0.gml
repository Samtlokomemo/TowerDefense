//GRID CREATION
for (var xx = 0; xx < room_width/32; ++xx) {
	for (var yy = 0; yy < room_height/32; ++yy) {
		instance_create_layer((xx * 32) + 16, (yy * 32) + 16, "Selector", oSelector)
	}
}

enum GAMESTATES {
	Play,
	Buy,
	Pause
}

global.state = GAMESTATES.Play
score = 100


instance_create_layer(room_width/2, room_height/2, "Player", oBase)
instance_create_layer((room_width/2), room_height/2, "Base", oPlayer)

tempo = 5 * 60

cdtexto = 1
global.currentPhase = "BuyPhase"