// Inherit the parent event
event_inherited();

chance = 30

posso_me_mover_para_lado = true;

pontos_inimigo = 20;
atirando_inimigo = function()
{
	if (y >= -32){
		instance_create_layer(x-3,y + sprite_height / 3,"Tiros",obj_TiroInimigo02)
	}
}