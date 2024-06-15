velocidade = 5
velocidade_maxima = 0

posso_diminuir = true


//Sistema de vida
vida = 3

espera_tiro = room_speed / 1;

level_tiro = 1
tipo_tiro = false;

escudos = 3
meu_escudo = noone

escudoPlayer = function(){
	var _shield = keyboard_check_pressed(ord("X"));
	if (_shield && escudos > 0 && !meu_escudo) && (posso_diminuir){
		var escudo = instance_create_layer(x,y,"Escudo",obj_Escudo);
		
		escudo.alvo = id
		
		meu_escudo = escudo.id;
		
		escudos--;
	}
}

rapido = function()
{
if (posso_diminuir){
	var _shift = keyboard_check_pressed(vk_shift)
	var _rapido_controle = gamepad_button_check(0,gp_face1)
	var _velocidade_max = 3
	
		if (_shift || _rapido_controle) && (!meu_escudo){
			
			posso_diminuir = false
			alarm[0] = 3 * room_speed;
			
			image_xscale = lerp(1,.70,image_xscale)
			image_yscale = lerp(1,.70,image_yscale)
			
			image_speed = 5
			
			velocidade += _velocidade_max; 
            velocidade_maxima = velocidade - _velocidade_max; 
		}
	}
}

atirando = function()
{
	var fire = keyboard_check(vk_space) 
	
	var y_tiro = y - sprite_height/3
	
	var tiro_controle = gamepad_button_check(0,gp_face3)

	if  (fire && posso_diminuir && alarm[1] == -1) && (!meu_escudo){
			//Ativando o alarme
			alarm[1] = espera_tiro;	

			//Meu Código de criar o tiro			
			if (level_tiro == 1){
				instance_create_layer(x,y_tiro,"Tiros",obj_Tiro)
			}
			
			else if (level_tiro == 2){
				tiro2();	
			}
			
			else if(level_tiro == 3){
				instance_create_layer(x,y_tiro,"Tiros",obj_Tiro);
				
				tiro2();
			}
			
			else if (level_tiro == 4){
				tiro4();
			}	
			
			else if (level_tiro == 5){
				tiro2();	
				tiro4();
			}
	}
}

tiro2 = function(){
		var y_tiro = y - sprite_height/3
		
		var tiro_1 = instance_create_layer(x - 60, y_tiro + 10, "Tiros",obj_Tiro2)
		tiro_1. hspeed = -5
	
		var tiro_2 = instance_create_layer(x + 60, y_tiro + 10, "Tiros",obj_Tiro2)
		tiro_2. hspeed = 5
}

tiro4 = function(){
	var direcao = 75
	var y_tiro = y - sprite_height/3
	repeat(3)
	{
		var meu_tiro = instance_create_layer(x,y_tiro + 10,"Tiros",obj_Tiro)
		meu_tiro.direction = direcao;
		
		meu_tiro.image_angle = meu_tiro.direction - 90
		
		direcao += 15
	}
}
///@method level_up(chance)
level_up = function(_chance)
{
	if (_chance >= 90)
	{
		show_debug_message("Tiro Melhorado")
		show_debug_message("Pegou Tiro")
		//Aumentando o level do tiro SE o level do tiro for menor do que 5
		if (level_tiro < 5)
		{
			tipo_tiro = true
			level_tiro++;
			maxTiro = level_tiro;
		}else{
			ganhando_pontos(100)
		}
	}
	else if(_chance >= 60){
		show_debug_message("Tiro mais rapido")
		//Checando se a espera do tiro é maior do que 20
		if(espera_tiro > 20){
			//Diminuindo a espera do tiro em 10%
			espera_tiro *= 0.9;
		}else{
			ganhando_pontos(10)
		}
	}
	else if (_chance >= 30)
	{
		show_debug_message("Velocidade de movimento aumentada")
		//Aumentando a velocidade me 0.5 SE ela for menor do que 10
		if(velocidade < 10)
		{
			var _pontocinco = .5
			velocidade += _pontocinco;	
			velocidade_maxima += _pontocinco;	
			
		}else{
			ganhando_pontos(5)	
		}
	}else{
		show_debug_message("Mais escudo")
		if(escudos < 5){
			escudos++;	
		}else{
			ganhando_pontos(1)	
		}
	}
}

sistema_tiro = function(){
	
	if (tipo_tiro){
		var _levelMais = keyboard_check_pressed(ord("W"))
		var _levelMenos = keyboard_check_pressed(ord("S"))
	
		if (_levelMais) level_tiro++;
		if (_levelMenos) level_tiro--;
		
		//PROGRAMAR CASO EU POSSA TROCAR O TIPO(LEVEL) DO TIRO
		//FAZER CASO POSSA TROCAR O TIPO DO TIRO
		
		// Garantir que o nível do tiro esteja dentro dos limites permitidos
		if (level_tiro > maxTiro) {
			level_tiro = maxTiro;
		} else if (level_tiro < 1) {
			level_tiro = 1;
		}
	}
	
	//show_debug_message(level_tiro)	
}

Verificar_Controle = function()
{
	// Verifique se há um controle conectado
	if (gamepad_is_connected(0)){
	    // Mapeie os controles do jogo para os botões do controle
	    var horizontal = 0;
	    var vertical = 0;
    
	    // Verifique os botões do D-pad
	    if (gamepad_button_check(0, gp_padl)) {
	        horizontal -= 1;
	    }
	    if (gamepad_button_check(0, gp_padr)) {
	        horizontal += 1;
	    }
	    if (gamepad_button_check(0, gp_padu)) {
	        vertical -= 1;
	    }
	    if (gamepad_button_check(0, gp_padd)) {
	        vertical += 1;
	    }
    
	    // Use os valores dos botões do D-pad para mover o jogador
	    x += horizontal * velocidade;
	    y += vertical * velocidade;
   
	}

}

///@method perde_vida();
perde_vida = function()
{
	if (!meu_escudo){
		if (vida > 1){
			vida--	
		
			screenshake(5)
	
		}else{
			show_debug_message("O Player morreu :( ")
			instance_destroy()	
			screenshake(20)
		}
	}
}
