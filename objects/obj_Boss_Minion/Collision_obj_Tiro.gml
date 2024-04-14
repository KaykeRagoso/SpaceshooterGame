if (vida > 0){
	vida--;	
	image_alpha -= 0.08;
	
	aumento_escala *= 1.1;
}else{
	//Me matando
	instance_destroy();
}
instance_destroy(other)