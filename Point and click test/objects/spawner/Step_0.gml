///If no recycleables exist, spawn one
if !instance_exists(obj_redthing){
	spawnobj = irandom(2)
	if (spawnobj == 0){
		instance_create_layer(960,900,"Recycles", obj_redthing)
	}else if(spawnobj == 1){
		instance_create_layer(960,900,"Recycles", obj_bluething)
	}else{
		instance_create_layer(960,900,"Recycles", obj_yellowthing)
	}
}