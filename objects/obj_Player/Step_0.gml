var up, down, left, right;
up = keyboard_check(vk_up)
down = keyboard_check(vk_down)
left = keyboard_check(vk_left)
right = keyboard_check(vk_right)


y += (down - up) * velocidade;
x += (right - left) * velocidade;


atirando();
rapido();
escudoPlayer();


//Verificar_Controle();
//debugs();

x = clamp(x,64,1856)
y = clamp(y,64,1024)


/*
if (keyboard_check_pressed(vk_up)){
	if (level_tiro < 5)
	{
		level_tiro++;	
	}
}
if (keyboard_check_pressed(vk_down) && level_tiro > 1){
		level_tiro--;	
}

if (keyboard_check_pressed(vk_left) && espera_tiro > 20){
	espera_tiro *= .9
}
if (keyboard_check_pressed(vk_right)){
	espera_tiro *= 1.1
}*/