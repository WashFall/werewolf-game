// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Hurt(){
	Inv = true;
	hp--;
	sprite_index = hurtSprite;
	alarm_set(1, InvTime);
	RegenTimer = 0;
}