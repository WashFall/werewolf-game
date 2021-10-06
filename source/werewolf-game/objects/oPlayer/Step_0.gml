var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var horizontal = right - left;
var vertical = down - up;


if (horizontal != 0 || vertical != 0){
	image_angle = 0;
    var MoveSpeed = 3;
    var playerDir = point_direction(0, 0, horizontal, vertical);
    if(!place_meeting(x + lengthdir_x(MoveSpeed, playerDir), y, oWall )) x += lengthdir_x(MoveSpeed, playerDir);
    if(!place_meeting(x, y + lengthdir_y(MoveSpeed, playerDir), oWall )) y += lengthdir_y(MoveSpeed, playerDir);

}

image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;




if(Hp == 0)
{
	instance_change(oDead, true);
}

event_inherited();