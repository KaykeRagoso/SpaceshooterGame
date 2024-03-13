//Se não existe objeto inimigo 01(ou qualquer filho dele)
if (!instance_exists(obj_Inimigo01)){
	var repetir = 5 * level;
	repeat(repetir)
	{
		cria_inimigo();	
		show_debug_message("Inimigo Criado")
	}
}

//Reiniciando o alarme me 5 segundos
alarm[0] = room_speed * 5;
