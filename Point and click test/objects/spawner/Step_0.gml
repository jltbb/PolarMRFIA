/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_redthing) && !instance_exists(obj_bluething) && !instance_exists(obj_yellowthing){
	spawnobj = irandom(2)
	if (spawnobj == 0){
		instance_create_layer(960,900,"Recycles", obj_redthing)
	}else if(spawnobj == 1){
		instance_create_layer(960,900,"Recycles", obj_bluething)
	}else{
		instance_create_layer(960,900,"Recycles", obj_yellowthing)
	}
}