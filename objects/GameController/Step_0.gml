
tempo--
cdtexto = lerp(cdtexto, 0, .03)

if tempo<=0{
	if global.currentPhase == "BuyPhase"{
		global.currentPhase = "WavePhase"
	}else if global.currentPhase == "WavePhase"{
		global.currentPhase = "BuyPhase"
		//Puxa todas as sementes pro player
		if instance_exists(oSemenete){
			with oSemenete{
				move_towards_point(oPlayer.x, oPlayer.y, 3)	
			}
		}
		//Limpa todos os inimigos restantes na fase de compra
		if instance_exists(oInimigo){
			instance_destroy(oInimigo)
		}
	}
	tempo = 30 * 60
	cdtexto = 1
}


//Teclas

if keyboard_check_pressed(ord("R")){
	room_restart()
}

if keyboard_check_pressed(vk_enter) and score >= 10{
	if global.state = GAMESTATES.Buy{
		global.state = !GAMESTATES.Buy
	}else if global.state = GAMESTATES.Play{
		global.state = GAMESTATES.Buy	
	}
}