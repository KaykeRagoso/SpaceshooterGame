event_inherited();

//Checando se eu j[a passei do 1/3 da tela
if (y > room_height/3 && posso_me_mover_para_lado == true)
{
	//Checando de que lado da room eu estou
	if (x > room_width/2)
	{
		show_debug_message("Estou na direita")
		
		hspeed = -4
		
		posso_me_mover_para_lado = false
	}else{
		show_debug_message("Estou na esquerda")
		
		hspeed = 4
		
		posso_me_mover_para_lado = false
	}
}