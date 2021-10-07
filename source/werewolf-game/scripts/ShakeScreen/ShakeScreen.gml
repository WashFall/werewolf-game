// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShakeScreen(time, amount){
	with(oScreenShake){
		shake = true;
		shake_magnitude = amount;
		shake_time = time;
	}
}