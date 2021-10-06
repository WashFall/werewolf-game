if instance_exists(oPlayer)
{
	var playerDir = point_direction(x,y,oPlayer.x,oPlayer.y);
	x += lengthdir_x(MoveSpeed, playerDir);
	y += lengthdir_y(MoveSpeed,playerDir);

	FireTimer++;
	
	if(FireTimer>=60/FireRate){
		var inst = instance_create_depth(x,y,0,oBullet);
		inst.hspeed = lengthdir_x(ShotSpeed, playerDir);
		inst.vspeed = lengthdir_y(ShotSpeed, playerDir);
		FireTimer=0;
	}


	image_angle = playerDir - 90;
}