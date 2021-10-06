var playerDir = point_direction(x,y,oPlayer.x,oPlayer.y);
if(!place_meeting(x+lengthdir_x(MoveSpeed, playerDir)*sprite_width,y,oWall)) x += lengthdir_x(MoveSpeed, playerDir);
if(!place_meeting(x,y+lengthdir_y(MoveSpeed, playerDir)*sprite_height, oWall)) y += lengthdir_y(MoveSpeed,playerDir);

image_angle = playerDir;

if(CanAttack){
	CanAttack = false;
	alarm_set(3, AttackTime)
	var inst = instance_create_depth(x + lengthdir_x(sprite_width+5, playerDir),y + lengthdir_y(sprite_height+5, playerDir),0,oBullet);
	inst.hspeed = lengthdir_x(ShotSpeed, playerDir);
	inst.vspeed = lengthdir_y(ShotSpeed, playerDir);
}

event_inherited();
