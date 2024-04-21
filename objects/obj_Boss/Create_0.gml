//Iniciando o sistema de vida
vida_max = 500
vida_atual = 1

estado_atual = choose("estado 1","estado 2","estado 3")
//"estado 1","estado 2","estado 3"

delay_tiro = room_speed / 2;
espera_tiro = 0;

tempo_delay = 1.5

delay_estado = room_speed * 10;
espera_estado = delay_estado;

velocidade_horizontal = -3

criar_minions = true;

tiro_02 = function(){
	instance_create_layer(x,y+80,"Tiros",obj_TiroInimigo02)	
}
///@method tiro_01(true_direita_false_esquerda)
tiro_01 = function(_direita){
	if (_direita){
		var _posx = 160	
	}else{
		var _posx = -160	
	}
	instance_create_layer(x + _posx,y+10,"Tiros",obj_TiroInimigo01)	
}

estado_01 = function(){
	espera_tiro -=1;
	if (espera_tiro <= 0){
		instance_create_layer(x,y + 80,"Tiros",obj_TiroInimigo02)
		
		espera_tiro = delay_tiro * tempo_delay
	}
}
estado_02 = function(){

	x += velocidade_horizontal
	if (x >= 1632 || x <= 288){
		//Inverta a velocidade horinzontal
		velocidade_horizontal *= -1;
	}
	
	espera_tiro -=1;
	if (espera_tiro <= 0){
		
		tiro_01(false)
		
		tiro_01(true)
				
		espera_tiro = delay_tiro * tempo_delay;
	}
}
estado_03 = function(){
	
	espera_tiro--;
	if(espera_tiro <= 0){
		tiro_02();	
		
		espera_tiro = delay_tiro * tempo_delay; // 1 segundo
		
	}
	
	if(espera_tiro == delay_tiro) /*Meio segundo para o 0 que é quando ele cria o tiro 2*/{
		tiro_01(false);
	}
	if (espera_tiro == delay_tiro + round(delay_tiro / 2)){
		tiro_01(true);
	}	
}
estado_04 = function(){
	espera_tiro --;

	if (espera_tiro <= 0){
		instance_create_layer(x - 252,y,"Tiros",obj_TiroInimigo03)
		instance_create_layer(x + 252,y,"Tiros",obj_TiroInimigo03)
		
		espera_tiro = delay_tiro * tempo_delay;
	}
}	
estado_05 = function(){
	sprite_index = sprt_BossEscuro
	
	x += sign(room_width / 2 - x)
	
	if(criar_minions){
		var _minion = instance_create_layer(128,672,"Inimigos",obj_Boss_Minion)
		_minion.image_angle = 90;
	
		_minion = instance_create_layer(1760,672,"Inimigos",obj_Boss_Minion)
		_minion.image_angle = 270;
		
		criar_minions = false
	}
}
	
troca_estado = function(){
espera_estado--;
if(espera_estado <= 0){
		if (vida_atual > vida_max / 2){
			estado_atual = choose("estado 1","estado 2","estado 3")
		}else{
			estado_atual = choose("estado 1","estado 2","estado 3","estado 4","estado 5")
		}
	
		espera_estado = delay_estado;
	
		criar_minions = true;
	}
}
	