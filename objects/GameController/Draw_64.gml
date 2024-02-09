
draw_set_font(Font1)

draw_set_color(c_yellow)
draw_text_transformed(100, 20, "Sementes: " + string(score), 1, 1, 0)

draw_set_color(c_red)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(global.view_width/2, 30, round(string(tempo)/60), 2, 2, 0)

if global.currentPhase == "BuyPhase"{
	draw_text_transformed_color(global.view_width/2, (global.view_height / 2) - 50, "Buy Time", 1, 1, 0, c_white, c_white, c_white, c_white, cdtexto)	
}else if global.currentPhase == "WavePhase"{
	draw_text_transformed_color(global.view_width/2, (global.view_height / 2) - 50, "Defend The Forest", 1, 1, 0, c_white, c_white, c_white, c_white, cdtexto)	
}
 
