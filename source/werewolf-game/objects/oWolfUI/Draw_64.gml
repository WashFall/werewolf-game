if(instance_exists(oPlayer)){
	for(var i = 0; i<oPlayer.Hp; i++)draw_sprite_stretched(sHpFull,0,x+i*11+42,y+17,13,25);
	for(var i = oPlayer.Hp; i<oPlayer.maxHp; i++)draw_sprite_stretched(sHpEmpty,0,x+i*11+42,y+17,13,25);
}