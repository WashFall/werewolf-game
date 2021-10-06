/// @description Movement

if(!place_meeting(x-MoveSpeed,y,oWall)) var left = keyboard_check(ord("A"));
else var left = 0;
if(!place_meeting(x+MoveSpeed,y,oWall)) var right = keyboard_check(ord("D"));
else var right = 0;
if(!place_meeting(x,y-MoveSpeed,oWall)) var up = keyboard_check(ord("W"));
else var up = 0;
if(!place_meeting(x,y+MoveSpeed,oWall)) var down = keyboard_check(ord("S"));
else var down = 0;
var horizontal = right - left;
var vertical = down - up;

if (horizontal != 0 || vertical != 0){
    var playerDir = point_direction(0, 0, horizontal, vertical);
    x += lengthdir_x(MoveSpeed, playerDir);
    y += lengthdir_y(MoveSpeed, playerDir);
}

image_angle = point_direction(x, y, mouse_x, mouse_y);

event_inherited();