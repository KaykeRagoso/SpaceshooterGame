if (instance_exists(obj_Player)){
	instance_create_layer(x,y,"Tiros",obj_Tiro_minion)
	alarm[0] = room_speed / 2

	primeiro_tiro = true
}