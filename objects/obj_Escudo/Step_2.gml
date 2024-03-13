///@description Garantir que eu rodo depois

// Se o alvo for noone ou se a instancia do alvo NÂO existe se mata!
if (!alvo or !instance_exists(alvo)){
	instance_destroy();
} 


x = alvo.x
y = alvo.y
