if (image_index > 0){
	image_index--;
	
	image_alpha -= 0.2
}else{
	instance_destroy()	
}

alarm[0] = room_speed