/// @description Insert description here
// You can write your code in this editor
if(!Inv)
{
		Inv = true;
		alarm[1] = InvTime;
		audio_play_sound(SndEnemyHurt,0,0);
		SpawnBlood();
		alarm[1] = InvTime;
		Hp--;
		Inv = true;
		sprite_index = spr_police_damage;
		if(Hp<1)
		{
			if(instance_exists(oPlayer))oScore.addScore += 100;
			instance_change(oPoliceDead,true);
		}
}		