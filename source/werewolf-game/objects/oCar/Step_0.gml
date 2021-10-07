
if(!crashed)
{
	if(!left)
	{
		if(x>200) x-=Speed;
		else
		{ 
			crashed = true;
			audio_play_sound(SndCrash,0,0);
		}
	}
	else
	{
		if(x<550) x+=Speed;
		else
		{ 
			crashed = true;
			audio_play_sound(SndCrash,0,0);
		}
	}
}
else
{
	image_alpha -= 1/FadeTime;
	if(image_alpha<=0) instance_destroy();
}