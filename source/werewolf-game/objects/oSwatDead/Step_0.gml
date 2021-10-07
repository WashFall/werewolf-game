if(fade)
{
	image_alpha -= 1/FadeTime;
	if(image_alpha<=0) instance_destroy();
}