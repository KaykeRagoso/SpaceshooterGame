y = 224
show_debug_message(y)
//show_debug_message(estado_atual)

if (keyboard_check(vk_enter)) vida_atual -= 10
//show_debug_message(vida_atual)

troca_estado();
	
if (instance_exists(obj_Player)){
if (estado_atual != "estado 4") sprite_index = sprt_Boss
	if (estado_atual == "estado 1"){
		//Canhão do Meio
		estado_01();
	}else if (estado_atual == "estado 2"){
		//Canhão Lateral
		estado_02();
	}else if (estado_atual == "estado 3"){
		//Intercalando tiro lateral
		estado_03();
	}else if (estado_atual == "estado 4"){
		//Canhão de Ondas
		estado_04();
	}else if (estado_atual == "estado 5"){
		estado_05();
	}
}