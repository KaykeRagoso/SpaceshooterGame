var altura_gui = display_get_gui_height()

var multiplicador = 0
var espaco = 40
repeat(vida){
	draw_sprite_ext(sprt_Player,0,40 + espaco * multiplicador,altura_gui-60,0.3,0.3,0,c_white,.5)
	
	//Depois de desenhar aumente o valor do multiplicador
	multiplicador++;
}

multiplicador = 0;

repeat(escudos){
	draw_sprite_ext(sprt_Escudo,2,40 + espaco * multiplicador,altura_gui-100,0.3,0.3,0,c_white,.5)
	
	//Depois de desenhar aumente o valor do multiplicador
	multiplicador++;
}