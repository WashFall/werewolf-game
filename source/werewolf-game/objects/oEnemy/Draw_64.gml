for(var i = 0; i<Hp; i++)draw_sprite(sHpFull,0,x+i*6-sprite_width/3,y-sprite_height/2);
for(var i = Hp; i<maxHp; i++)draw_sprite(sHpEmpty,0,x+i*6-sprite_width/3,y-sprite_height/2);