// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Damage(){
	alarm[1] = InvTime;
	Hp--;
	oPlayer.sprite_index = sPlayerHurt;
	Inv = true;
	RegenTimer = 0;
}