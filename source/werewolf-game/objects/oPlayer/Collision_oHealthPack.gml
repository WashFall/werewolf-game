if (Hp < 5)
{
	Hp +=1;
	
	if(Hp > 5)
	{
		Hp = 5;
	}
	
	with (other)
	{
		instance_destroy()
		audio_play_sound(SndHealthpack,0,0);
	}
}