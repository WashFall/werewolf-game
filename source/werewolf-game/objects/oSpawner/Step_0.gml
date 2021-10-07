/// @description 
SheepTime =  WaveTime+spawnWave*spawn*0.75;
if(spawnWave||spawnSheep)
{
	var type = oPoliceCar;
	if (spawnSheep) type = oSheepCar;
	spawn++;
	var i;
	if (type!=oSheepCar)
	{ 
		spawnWave = false;
		alarm[0] = WaveTime+spawnWave*spawn/2;
	}
	else 
	{
		spawnSheep = false;
		alarm[1] = SheepTime;
	}
	if(irandom(1)==1)
	{
		i = instance_create_layer(800,390,"Instances", type);
		i.left = false;
	}
	else
	{
		i = instance_create_layer(0,270,"Instances", type);
		i.left = true;
	}
	i.amount = spawn;
}
