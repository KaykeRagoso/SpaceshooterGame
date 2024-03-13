image_alpha -= .10

if (image_alpha <= .3)
{
	instance_destroy(id,false)	
}

alarm[0] = room_speed