// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AltControls(){
	var Aleft = keyboard_check(vk_left);
	var Aright = keyboard_check(vk_right);
	var Aup = keyboard_check(vk_up);
	var Adown = keyboard_check(vk_down);
	var Arrows = [Aleft, Aright, Aup, Adown];
	
	for(var i = 0; i<4; i++){
		if(Arrows[i]){
			switch(i){
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
			if(CanAttack && state = states.blocking){
				audio_play_sound(SndHit,0,0);
				CanAttack = false;
				alarm[2] = AttackSpeed;
				
	
				var hitbox = instance_create_layer(x, y, "Instances", oHitbox);
				sprite_set_offset(hitbox.sprite_index, 40,40);
				
				hitbox.image_angle = image_angle;
				hitbox.creator = id;
				hitbox.damage = 1;
				sprite_index = spr_Wolf_attack;
			}
		}
	}
	if(keyboard_check(vk_lshift) && Hp > 0)
	{
		
		if(instance_exists(oShieldHitbox)) instance_destroy(oShieldHitbox);
		var hitbox = instance_create_layer(x, y, "Instances", oShieldHitbox);
		sprite_set_offset(hitbox.sprite_index, 40,40);
		hitbox.image_angle = image_angle;
		sprite_index = spr_Wolf_blockOn;
		state = states.blocking;
	}
}