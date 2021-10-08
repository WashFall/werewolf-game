
if(keyboard_check_pressed(vk_alt))
{
	image_angle = 0;
	AltControl = !AltControl;
}
if(AltControl)AltControls();
else Controls();



var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var horizontal = right - left;
var vertical = down - up;

var _movespeed = MoveSpeed;
if(state == states.blocking) _movespeed *= 0.5;

if (horizontal != 0 || vertical != 0)
{
	var playerDir = point_direction(0, 0, horizontal, vertical);
	if(!place_meeting(x + lengthdir_x(_movespeed, playerDir), y, oWall ) && !place_meeting(x + lengthdir_x(_movespeed, playerDir), y, oFountain )) x += lengthdir_x(_movespeed, playerDir);
	if(!place_meeting(x, y + lengthdir_y(_movespeed, playerDir), oWall ) && !place_meeting(x, y + lengthdir_y(_movespeed, playerDir), oFountain )) y += lengthdir_y(_movespeed, playerDir);
}


	
	
	

	if(Hp <= 0)
	{
		oDeadAngle.angle = image_angle;
		audio_play_sound(SndDeath,0,0);
		instance_change(oDead, true);
	}
	event_inherited();
	


if(state = states.blocking)
{
	if(AltControl) AltShield();
	else Shield(); 
	
	
}