event_inherited();
if(crashed&&!spawned)
{
	sprite_index = spr_sheepTruck_crashed
	spawned = true;
	instance_create_depth(x,y,0,oExplosion);
	repeat(irandom_range(1,5))
	{
		var x1 = random(100);
		var y1 = random(100);
		var x2 = 50;
		if (left) x2 = -50
		instance_create_layer(x+x1 +x2, y+y1, "Instances", oHealthPack);
	}
}
