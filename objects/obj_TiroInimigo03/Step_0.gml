/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

//Lerp é uma função de aproximação, eu faço o meu valor chegar em outro valor por uma porcentagem
//lerp (valor que eu tenho, valor para chegar, porcentagem de aproximação)

//Step1 = 1 - 10 = 5 - 10
//Step2 = 5 - 10 = 7,5 - 10
//Step3 = 7,5 - 10 = 8,75 - 10

//Fazendo meu xscale chegar no valor original que é 1
image_xscale = lerp(image_xscale,2.5,0.5)
image_yscale = lerp(image_yscale,2.5,0.5)
