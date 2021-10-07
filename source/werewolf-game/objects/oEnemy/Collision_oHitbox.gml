/// @description Insert description here
// You can write your code in this editor
		audio_play_sound(SndEnemyHurt,0,0);
		alarm[1] = InvTime;
		Hp--;
		Inv = true;
		sprite_index = spr_police_damage;
		if(Hp<1)
		{
			oScore.addScore += 100;
			instance_change(oPoliceDead,true);
		}
		
			