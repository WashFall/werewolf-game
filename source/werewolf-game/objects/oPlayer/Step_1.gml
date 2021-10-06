/// @description Actions
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left)&&CanAttack)
{
	CanAttack = false;
	alarm_set(3, AttackTime);
	
	var playerCenterX = x + sprite_width / 2;
	var playerCenterY = y + sprite_width / 2;
	
	var dir = point_direction(playerCenterX, playerCenterY, mouse_x, mouse_y);
	
	var LEN = 32;
	var hitboxX = lengthdir_x(LEN, dir) + playerCenterX;
	var hitboxY = lengthdir_y(LEN, dir) + playerCenterY;
	
	var hitbox = instance_create_layer(hitboxX, hitboxY, "Instances", oHitbox);
	hitbox.creator = id;
	hitbox.damage = 1;
}