if instance_exists(oPlayer)
{
	var playerDir = point_direction(x,y,oPlayer.x,oPlayer.y);
	image_angle = 0;
	if(!place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oWall )) x += lengthdir_x(MoveSpeed, playerDir);
	if(!place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oWall )) y += lengthdir_y(MoveSpeed,playerDir);

	image_angle = playerDir - 90;
	if(CanAttack){
		audio_play_sound(SndShoot,0,0);
		CanAttack = false;
		alarm[2] = AttackSpeed;
		var inst = instance_create_depth(x ,y ,0,oBullet);
		inst.hspeed = lengthdir_x(ShotSpeed, playerDir);
		inst.vspeed = lengthdir_y(ShotSpeed, playerDir);
	}

	if((place_meeting(x,y,oHitbox))&&!Inv){
		audio_play_sound(SndEnemyHurt,0,0);
		alarm[1] = InvTime;
		Hp--;
		Inv = true;
	
	}

	event_inherited();

	if(Hp<1){
		audio_play_sound(SndEnemyDeath,0,0);
		instance_destroy();
		
	}
}