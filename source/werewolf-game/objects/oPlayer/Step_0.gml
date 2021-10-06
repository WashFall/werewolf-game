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

if(mouse_check_button_pressed(mb_left)&&CanAttack)
{
	CanAttack = false;
	alarm[2] = AttackSpeed;
	var playerCenterX = x + sprite_width / 2;
	var playerCenterY = y + sprite_width / 2;
	
	var dir = point_direction(playerCenterX, playerCenterY, mouse_x, mouse_y);
	
	var LEN = 32;
	var hitboxX = lengthdir_x(LEN, dir) + playerCenterX;
	var hitboxY = lengthdir_y(LEN, dir) + playerCenterY;
	
	var hitbox = instance_create_layer(hitboxX, hitboxY, "Instances", oHitbox);
	hitbox.creator = id;
	hitbox.damage = 1;
}


event_inherited();