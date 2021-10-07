var i;
if(!crashed)
{
	if(!left)
	{
		if(x>200) x-=Speed;
		else
		{
			crashed = true;
			i = instance_create_depth(x,y,0,oExplosion);
			repeat(amount)
			{
				var type = oEnemy;
				if(irandom(max(1, 10-amount))==1) type = oSwat; 
				var _x = random(100);
				var _y = random(100);
				instance_create_layer(x+_x + 50, y+_y, "Instances", type);
			}
			
		}
	}
}
else
{
	image_alpha -= 1/FadeTime;
	if(image_alpha<=0) instance_destroy();
}