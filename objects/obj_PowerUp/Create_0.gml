chance = random(100)

speed = 2
direction = irandom(359)

alarm[0] = room_speed * 1


if (chance >= 90){
	cor = c_maroon	
}else if (chance >= 60){
	cor = c_yellow	
}else if (chance >= 30){
	cor = c_lime	
}else{
	cor = c_aqua
}
