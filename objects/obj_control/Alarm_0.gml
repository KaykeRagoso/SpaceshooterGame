//Se não existe objeto inimigo 01(ou qualquer filho dele)
if (!instance_exists(obj_Inimigo01) || !instance_exists(obj_Inimigo02)){
	var repetir = 10 * level;
	if (level <= 9)
	{
		repeat(repetir)
		{
			cria_inimigo();	
		}
	}else{	
			if(criar_boss == true){
				var _s = layer_sequence_create("Boss_entrada",960,512,sq_boss_entrada);
				criar_boss = false
			}
			
	}
}

//Reiniciando o alarme me 5 segundos
alarm[0] = room_speed * 5;
