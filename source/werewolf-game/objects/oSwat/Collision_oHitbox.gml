/// @description Insert description here
// You can write your code in this editor
		audio_play_sound(SndEnemyHurt,0,0);
		alarm[1] = InvTime;
		Hp--;
		Inv = true;
		sprite_index = spr_swat_damage;
		if(Hp<1)
		{ 
			instance_change(oSwatDead,true);
			oScore.addScore += 200;
		}
		
			