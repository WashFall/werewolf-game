if instance_exists(oPlayer)
{
	var playerDir = point_direction(x,y,oPlayer.x, oPlayer.y);
	image_angle = 0;
	if(distance_to_object(oPlayer) > 25)
	{
		if(!place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oWall ) && !place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oFountain )) x += lengthdir_x(MoveSpeed, playerDir);
		if(!place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oWall ) && !place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oFountain )) y += lengthdir_y(MoveSpeed, playerDir);
	}
	else if(distance_to_object(oPlayer) < 15)
	{
		if(!place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oWall ) && !place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oFountain )) x += lengthdir_x(MoveSpeed, -playerDir);
		if(!place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oWall ) && !place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oFountain )) y += lengthdir_y(MoveSpeed, -playerDir);
	}
	
	image_angle = playerDir - 90;
	if(CanAttack){
		audio_play_sound(SndShoot,0,0);
		image_index = 0;
		sprite_index = spr_swat_shoot;
		CanAttack = false;
		alarm[2] = AttackSpeed * random_range(.5, 1.5);
		var inst = instance_create_depth(x ,y ,0,oBullet);
		inst.hspeed = lengthdir_x(ShotSpeed, playerDir);
		inst.vspeed = lengthdir_y(ShotSpeed, playerDir);
	}

	

	event_inherited();

	if(Hp<1){
		oScore.addScore += 100;
	}
}

if instance_exists(oDead)
{
	sprite_index = spr_swat;
}
