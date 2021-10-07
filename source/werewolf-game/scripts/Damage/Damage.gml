// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Damage(){
	audio_play_sound(SndHurt,0,0);
	alarm[1] = InvTime;
	Hp--;
	SpawnBlood();
	if(state != states.blocking)
	{
		//image_index = 0;
		sprite_index = sPlayerHurt;
	}
	Inv = true;
}