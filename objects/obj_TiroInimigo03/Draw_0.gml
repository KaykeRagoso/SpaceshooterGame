/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

draw_self();

/*
	Meu tiro = 16x24(Escala)
	Meu brilho = 52x97 = 
*/

//Código de desenhar o brilho
gpu_set_blendmode(bm_add)
draw_sprite_ext(sprt_Brilho_tiro2,image_index,x,y,image_xscale * .5,image_yscale * .5,image_angle,cores,0.5)
gpu_set_blendmode(bm_normal)