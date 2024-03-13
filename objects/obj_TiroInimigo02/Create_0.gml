// Inherit the parent event
event_inherited();

//Definindo a minha velocidade
speed = 6;

//Chechando se o player existe no jogo
if instance_exists(obj_Player){
	//Achando a direção para onde eu devo ir
	direction = point_direction(x,y,obj_Player.x,obj_Player.y)
}

image_angle = direction + 90; 