if global.state = GAMESTATES.Buy
{
	visible = true
	if (position_meeting(mouse_x,mouse_y, self))
	{
		hover = true
		image_alpha = 0
		if(mouse_check_button_pressed(mb_left) and score >= price)
		{
			score -= price
			BuyTower(oEsquilo)	
			global.state = GAMESTATES.Play
		}
	}
	else
	{	
		image_alpha = 1
		hover = false
	}
}else
{
	visible = false;	
}