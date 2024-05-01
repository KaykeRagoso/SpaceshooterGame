vspeed = 3

chance = 20

pontos_inimigo = 10;
//Iniciando o alarme com um tempo entre 1 e 3 segundos
alarm[0] = random_range(1,3) * room_speed;

//Checando se eu estou colidindo com algum outro inimigo
//Se eu colidi com alguém eu me destruo
if (place_meeting(x,y,obj_Inimigo01)){
	//Não executando o evento destroy
	instance_destroy(id,false);	
}

atirando_inimigo = function()
{
if (instance_exists(obj_Player)){
	if (y >= -32){
		instance_create_layer(x-3,y + sprite_height / 3,"Tiros",obj_TiroInimigo01)
		}
	}
}

///@method dropa_item(chance_de_dropar_em_porcentagem)
dropa_item = function(_chance){
	var valor = random(100);
	
	if (valor < _chance && y > 96)
	{
		instance_create_layer(x,y,"Tiros",obj_PowerUp)
	}
}