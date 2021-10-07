/// @description 

if(spawnWave)
{
	spawn++;
	var i;
	spawnWave = false;
	alarm[0] = WaveTime;
	//if(irandom(1)==1)
	{
		i = instance_create_layer(800,400,"Instances", oPoliceCar);
		i.left = false;
	}
	//else
	//{
	//	i = instance_create_layer(0,290,"Instances", oPoliceCar);
	//	i.left = true;
	//}
	i.amount = spawn;
}
