if (!instance_exists(obj_Player) && !gameover_seq){
	//Criando a miha sequence
	gameover_seq = layer_sequence_create("Sequences",room_width / 2, room_height / 2,sq_gameover)
}

if (gameover_seq) && gamepad_button_check_released(0,gp_start){
	room_restart();
}