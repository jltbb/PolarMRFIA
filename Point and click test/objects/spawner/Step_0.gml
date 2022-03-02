///If no recycleables exist, spawn one
if !instance_exists(obj_redthing) and !scoreboard.gameOver{
	spawnobj = irandom(2)
	if (spawnobj == 0){
		instance_create_layer(960,900,"Recycles", obj_redthing)
	}else if(spawnobj == 1){
		instance_create_layer(960,900,"Recycles", obj_bluething)
	}else{
		instance_create_layer(960,900,"Recycles", obj_yellowthing)
	}
}

// Do not allow any more recycleables to exist after timer runs out
if scoreboard.gameOver and (instance_exists(obj_redthing)
						 or instance_exists(obj_bluething)
						 or instance_exists(obj_yellowthing)){
	instance_destroy(obj_redthing)
	instance_destroy(obj_bluething)
	instance_destroy(obj_yellowthing)
}