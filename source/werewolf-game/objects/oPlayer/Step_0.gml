if(state = states.normal)
{
	var left = keyboard_check(ord("A"));
	var right = keyboard_check(ord("D"));
	var up = keyboard_check(ord("W"));
	var down = keyboard_check(ord("S"));
	var horizontal = right - left;
	var vertical = down - up;



	if (horizontal != 0 || vertical != 0)
	{
		var MoveSpeed = 3;
	    var playerDir = point_direction(0, 0, horizontal, vertical);
	    if(!place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oWall ) && !place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oRoundWall )) x += lengthdir_x(MoveSpeed, playerDir);
	    if(!place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oWall ) && !place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oRoundWall )) y += lengthdir_y(MoveSpeed, playerDir);

	}


	if(!AltControl)AltControls();
	else Controls();
	
	

	if(Hp == 0)
	{
		oDeadAngle.angle = image_angle;
		audio_play_sound(SndDeath,0,0);
		instance_change(oDead, true);
	}
	event_inherited();
	
}

if(state = states.blocking)
{
	
	image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
	
	
	if(mouse_check_button_released(mb_right))
	{
		image_speed = 1;
		image_index = 0;
		sprite_index = spr_Wolf_blockOff;
		state = states.normal;
	}
}