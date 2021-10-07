if(sprite_index == spr_Wolf_attack)
{
	sprite_index = spr_Wolf_walk;
}

if(sprite_index == sPlayerHurt)
{
	sprite_index = spr_Wolf_walk;
}

if(sprite_index == spr_Wolf_blockOff)
{
	sprite_index = spr_Wolf_walk;
}

if(sprite_index == spr_Wolf_blockOn)
{
	image_speed = 0;
	image_index = 4;
}
