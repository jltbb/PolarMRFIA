///If no recycleables exist, spawn one
if !(instance_exists(obj_bottle)or instance_exists(obj_cardboard)
						 or instance_exists(obj_paper)
						 or instance_exists(obj_garbage) ) and !scoreboard.gameOver{
	spawnobj = irandom(3)
	if (spawnobj == 0){
		instance_create_layer(960,900,"Recycles", obj_bottle)
	}else if(spawnobj == 1){
		instance_create_layer(960,900,"Recycles", obj_cardboard)
	}else if(spawnobj == 2){
		instance_create_layer(960,900,"Recycles", obj_paper)
	}else{
		instance_create_layer(960,900,"Recycles", obj_garbage)
	}
}

// Do not allow any more recycleables to exist after timer runs out
if scoreboard.gameOver and (instance_exists(obj_bottle)
						 or instance_exists(obj_cardboard)
						 or instance_exists(obj_paper)
						 or instance_exists(obj_garbage)){
	instance_destroy(obj_bottle)
	instance_destroy(obj_cardboard)
	instance_destroy(obj_paper)
	instance_destroy(obj_garbage)
}