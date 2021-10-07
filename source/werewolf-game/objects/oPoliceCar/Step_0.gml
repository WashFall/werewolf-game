event_inherited();
if(crashed&&!spawned)
{
	spawned = true;
	instance_create_depth(x,y,0,oExplosion);
	repeat(irandom_range(1,amount))
	{
		var type = oEnemy;
		if(irandom(max(1, 10-amount))==1) type = oSwat; 
		var x1 = random(100);
		var y1 = random(100);
		var x2 = 50;
		if (left) x2 = -50
		instance_create_layer(x+x1 +x2, y+y1, "Instances", type);
	}
}