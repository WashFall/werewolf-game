var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var horizontal = right - left;
var vertical = down - up;



if (horizontal != 0 || vertical != 0){
    var MoveSpeed = 3;
    var playerDir = point_direction(0, 0, horizontal, vertical);
    if(!place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oWall ) && !place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oRoundWall )) x += lengthdir_x(MoveSpeed, playerDir);
    if(!place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oWall ) && !place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oRoundWall )) y += lengthdir_y(MoveSpeed, playerDir);

}


if(AltControl){
	image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
	if(mouse_check_button_pressed(mb_left)&&CanAttack){
		CanAttack = false;
		audio_play_sound(SndHit,0,0);
				alarm[2] = AttackSpeed;
				var playerCenterX = x ;
				var playerCenterY = y ;
				var dir = point_direction(playerCenterX, playerCenterY, mouse_x, mouse_y);
				var LEN = 32;
				var hitboxX = lengthdir_x(LEN, dir) + playerCenterX;
				var hitboxY = lengthdir_y(LEN, dir) + playerCenterY;
	
				var hitbox = instance_create_layer(hitboxX, hitboxY, "Instances", oHitbox);
				hitbox.creator = id;
				hitbox.damage = 1;
				image_index = 0;
				sprite_index = spr_Wolf_attack;
	}
}
else AltControls();
	
	

if(Hp == 0)
{
	oDeadAngle.angle = image_angle;
	audio_play_sound(SndDeath,0,0);
	instance_change(oDead, true);
}
event_inherited();