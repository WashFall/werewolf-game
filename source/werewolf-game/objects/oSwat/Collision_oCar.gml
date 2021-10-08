/// @description Insert description here
// You can write your code in this editor
if(!other.crashed&&!Inv)
{
	audio_play_sound(SndEnemyHurt,0,0);
	SpawnBlood();
	alarm[1] = InvTime;
	Hp--;
	Inv = true;
	sprite_index = spr_swat_damage;
	if(Hp<1)
	{ 
		instance_change(oSwatDead,true);
		if(instance_exists(oPlayer)) oScore.addScore += 200;
	}
}	
			