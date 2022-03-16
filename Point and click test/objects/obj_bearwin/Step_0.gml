if x >= 800{ 
	speed = 0
	if !instance_exists(obj_money)
		instance_create_layer(x+150,y+100,"Money",obj_money);
}
