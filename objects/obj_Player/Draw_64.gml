
var altura_gui = display_get_gui_height()


var multiplicador = 0
var espaco = 40

var altura = 8
repeat(vida){
	draw_sprite_ext(sprt_Player,0,40 + espaco * multiplicador,altura_gui/altura,0.3,0.3,0,c_white,.5)
	
	//Depois de desenhar aumente o valor do multiplicador
	multiplicador++;
}

multiplicador = 0;

repeat(escudos){
	draw_sprite_ext(sprt_Escudo,2,40 + espaco * multiplicador,altura_gui/altura + 40,0.3,0.3,0,c_white,.5)
	
	//Depois de desenhar aumente o valor do multiplicador
	multiplicador++;
}
multiplicador = 0;
repeat(level_tiro){
	draw_sprite_ext(sprt_Tiro2,2,40 + espaco * multiplicador,altura_gui/altura + 78,1,1,0,c_white,.5)
	
	multiplicador++;
}
