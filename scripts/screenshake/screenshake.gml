// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function screenshake(_shake){

	//Criando o screenshake
	var _screen = instance_create_layer(x,y,layer,obj_screenshake)
	_screen.shake = _shake

}
function ganhando_pontos(_pontos)
{
	if (instance_exists(obj_control))
	{
		obj_control.ganha_pontos(_pontos)
	}
}

function destro_seq()
{
	var elementos = layer_get_all_elements("Boss_entrada");
	layer_sequence_destroy(elementos[0]);
	
	instance_create_layer(960,256,"Boss",obj_Boss)
}