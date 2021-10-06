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
			if(CanAttack){
				CanAttack = false;
				alarm[2] = AttackSpeed;
				var playerCenterX = x ;
				var playerCenterY = y ;
				var dir = point_direction(playerCenterX, playerCenterY, mouse_x, mouse_y);
				var LEN = 32;
				var hitboxX = lengthdir_x(LEN, dir) + playerCenterX;
				var hitboxY = lengthdir_y(LEN, dir) + playerCenterY;
	
				var hitbox = instance_create_layer(hitboxX, hitboxY, "Hidden", oHitbox);
				hitbox.creator = id;
				hitbox.damage = 1;
				sprite_index = spr_Wolf_attack;
			}
		}
	}
}