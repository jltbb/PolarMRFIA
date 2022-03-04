///If no recycleables exist,
itemNamesAllowedToSpawn = []
array_push(itemNamesAllowedToSpawn, instructions.currentItem[instructions.currentItems[0]], instructions.currentItem[instructions.currentItems[1]], instructions.currentItem[instructions.currentItems[2]])
currentInstructions = []
array_push(currentInstructions, instructions.currentNums[0], instructions.currentNums[1], instructions.currentNums[2])
itemsAllowedToSpawn = []

// Do not allow any more recycleables to exist after timer runs out
if (scoreboard.gameOver or instructions.newInstructions)
						 and (instance_exists(obj_bottle)
						 or instance_exists(obj_cardboard)
						 or instance_exists(obj_paper)
						 or instance_exists(obj_garbage)){
	instance_destroy(obj_bottle)
	instance_destroy(obj_cardboard)
	instance_destroy(obj_paper)
	instance_destroy(obj_garbage)
	
	instructions.newInstructions = false
}

if !(instance_exists(obj_bottle)or instance_exists(obj_cardboard)
						 or instance_exists(obj_paper)
						 or instance_exists(obj_garbage) ) and !scoreboard.gameOver{
	for (i = 0; i < array_length(currentInstructions); i++){
		allowedColors = []

		switch(currentInstructions[i])
		{
			case 0: // Put <> in <> bin
				array_push(allowedColors, instructions.currentBin[instructions.currentBins[i]])
				break;
			case 1: // Do not put <> in <> bin
				for (j = 0; j < array_length(instructions.currentBin); j++)
				{
					if (instructions.currentBin[instructions.currentBins[i]] != instructions.currentBin[j])
						array_push(allowedColors, instructions.currentBin[j])
				}
				break;
			case 2: // <> can go in any bin except <>
				for (j = 0; j < array_length(instructions.currentBin); j++)
				{
					if (instructions.currentBin[instructions.currentBins[i]] != instructions.currentBin[j])
						array_push(allowedColors, instructions.currentBin[j])
				}
				break;
		}
		switch (itemNamesAllowedToSpawn[i])
		{
			case "Cardboard":
				array_push(itemsAllowedToSpawn, [obj_cardboard, allowedColors])
				break;
			case "Any Bottles":
				array_push(itemsAllowedToSpawn, [obj_bottle, allowedColors])
				break;
			case "Paper":
				array_push(itemsAllowedToSpawn, [obj_paper, allowedColors])
				break;
			case "Garbage":
				array_push(itemsAllowedToSpawn, [obj_garbage, allowedColors])
				break;
		}
	}
}

if !(instance_exists(obj_bottle) or instance_exists(obj_cardboard)
						 or instance_exists(obj_paper)
						 or instance_exists(obj_garbage) ) and !scoreboard.gameOver{
	currentSpawnNum = irandom(array_length(itemsAllowedToSpawn) - 1)
	spawnobj = itemsAllowedToSpawn[currentSpawnNum][0]
	
	rval = -5
	bval = -5
	yval = -5
	for (i = 0; i < array_length(itemsAllowedToSpawn[currentSpawnNum][1]); i++)
	{
		switch itemsAllowedToSpawn[currentSpawnNum][1][i]{
			case "Red":
				rval = 10
				break;
			case "Blue":
				bval = 10
				break;
			case "Yellow":
				yval = 10
				break;
		}
	}
	instance_create_layer(960,900,"Recycles", spawnobj)
}

