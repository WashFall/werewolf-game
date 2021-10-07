// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shield(){
	
	image_angle = point_direction(x, y, mouse_x, mouse_y) - 90
	
	if(mouse_check_button_released(mb_right) || Hp < 1)
	{
		image_speed = 1;
		image_index = 0;
		sprite_index = spr_Wolf_blockOff;
		state = states.normal;
		instance_destroy(oShieldHitbox);
	}
}

