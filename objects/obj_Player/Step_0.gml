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
sistema_tiro();


//Verificar_Controle();


x = clamp(x,64,1856)
y = clamp(y,64,1024)

/*
show_debug_message(velocidade)
show_debug_message(level_tiro)
show_debug_message(espera_tiro)
show_debug_message(velocidade)
show_debug_message(escudos)*/