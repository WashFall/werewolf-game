x = x + lengthdir_x(1.5, point_direction(x,y,oPlayer.x,oPlayer.y));
y = y + lengthdir_y(1.5, point_direction(x,y,oPlayer.x,oPlayer.y));

if (hp <= 0) instance_destroy();