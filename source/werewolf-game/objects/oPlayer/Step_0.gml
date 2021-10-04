var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var horizontal = right - left;
var vertical = down - up;

if (horizontal != 0 || vertical != 0)
{
    var playerSpeed = 3;
    var playerDir = point_direction(0, 0, horizontal, vertical);
    var xAdd = lengthdir_x(playerSpeed, playerDir);
    var yAdd = lengthdir_y(playerSpeed, playerDir);
    x = x + xAdd;
    y = y + yAdd;
}

image_angle = point_direction(x, y, mouse_x, mouse_y);
