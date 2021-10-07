// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AltShield(){
	var Aleft = keyboard_check(vk_left);
	var Aright = keyboard_check(vk_right);
	var Aup = keyboard_check(vk_up);
	var Adown = keyboard_check(vk_down);
	var Arrows = [Aleft, Aright, Aup, Adown];
	for(var i = 0; i<4; i++)
	{
		if(Arrows[i])
		{
			switch(i)
			{
				case 0:
					image_angle = 90;
					break;
				case 1:
					image_angle = 270;
					break;
				case 2:
					image_angle = 0;
					break;
				case 3:
					image_angle = 180;
					break;
			}
		}
	}
	if(!keyboard_check(vk_lshift))
	{
		image_speed = 1;
		image_index = 0;
		sprite_index = spr_Wolf_blockOff;
		state = states.normal;
		instance_destroy(oShieldHitbox);
	}
}