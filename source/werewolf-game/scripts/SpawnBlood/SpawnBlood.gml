// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnBlood(){
	var i = instance_create_layer(x,y,"Instances",oBlood);
	if(irandom(1)==1) i.sprite_index = spr_bloodstain;
	else i.sprite_index = spr_bloodstain2;
	
}