//Randomizando o jogo
randomize();


//Iniciando o sistema de pontos
pontos = 0;

level = 11;

proximo_level = 100;

criar_boss = true;
//Variavel de controle para o Game Over
gameover_seq = noone;

level_completo = false

alarm[0] = room_speed;
//Criando um método para ganhar pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos * level
	
	//Ganhando level SE os pontos forem maior do que o próximo level
	if (pontos > proximo_level){
		level++;
		
		proximo_level *= 2;
		
	}
}

//Criando método para gerar inimigos

cria_inimigo = function(){
	if !(instance_exists(obj_Boss)){
		var xx = irandom_range(32,1888)
		var yy = irandom_range(-96,-1504 - (level * 800))

		var chance = random_range(0,level);

		var inimigo = obj_Inimigo01;

		if (chance > 2){
			inimigo = obj_Inimigo02
		}

		instance_create_layer(xx,yy,"Inimigos",inimigo)

		alarm[0] = room_speed;
	}


}

