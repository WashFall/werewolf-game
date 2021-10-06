var playerDir = point_direction(x,y,oPlayer.x,oPlayer.y);
image_angle = 0;
if(!place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oWall )) x += lengthdir_x(MoveSpeed, playerDir);
if(!place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oWall )) y += lengthdir_y(MoveSpeed,playerDir);

image_angle = playerDir - 90;
if(CanAttack){
	CanAttack = false;
	alarm[2] = AttackSpeed;
	var inst = instance_create_depth(x ,y ,0,oBullet);
	inst.hspeed = lengthdir_x(ShotSpeed, playerDir);
	inst.vspeed = lengthdir_y(ShotSpeed, playerDir);
}

if((place_meeting(x,y,oHitbox))&&!Inv){
	alarm[1] = InvTime;
	Hp--;
	Inv = true;
	image_blend = c_red;
	
}

event_inherited();

if(Hp<1) instance_destroy();