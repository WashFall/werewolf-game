/// @description Spawn Enemies

if !instance_exists(oEnemy)
{
	repeat(wave_)
	{
		instance_create_layer(x,y,"Instances",oEnemy);
	}
	wave_ += 1;
}