draw_self();
for(var i = 0; i<hp; i++){
	draw_sprite(sHpFull,0,x+i*6-sprite_width/3,y-sprite_height);
}
for(var i = hp; i<hpMax; i++){
	draw_sprite(sHpEmpty,0,x+i*6-sprite_width/3,y-sprite_height);
}