// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Controls(){
	image_angle = point_direction(x, y, mouse_x, mouse_y)-90;
	var playerCenterX = x ;
	var playerCenterY = y ;
	var dir = point_direction(playerCenterX, playerCenterY, mouse_x, mouse_y);
	var LEN = 32;
	var hitboxX = lengthdir_x(LEN, dir) + playerCenterX;
	var hitboxY = lengthdir_y(LEN, dir) + playerCenterY;
	if(mouse_check_button_pressed(mb_left)&&CanAttack)
		{
			CanAttack = false;
			audio_play_sound(SndHit,0,0);
					alarm[2] = AttackSpeed;
					
	
					var hitbox = instance_create_layer(hitboxX, hitboxY, "Instances", oHitbox);
					hitbox.image_angle = image_angle;
					hitbox.creator = id;
					hitbox.damage = 1;
					image_index = 0;
					sprite_index = spr_Wolf_attack;
		}
	if(mouse_check_button(mb_right))
	{
		if(instance_exists(oShieldHitbox)) instance_destroy(oShieldHitbox);
		sprite_index = spr_Wolf_blockOn;
		state = states.blocking;
		var hitbox = instance_create_layer(hitboxX, hitboxY, "Instances", oShieldHitbox);
		sprite_set_offset(hitbox.sprite_index,40,10);
		hitbox.image_angle = image_angle;
	}
}