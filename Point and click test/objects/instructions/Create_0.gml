/// @description Initialize instruction strings
possibleInstructions = [
    "Put blank1 in blank2 bin",
    "Do not put blank1 in blank2 bin",
	"blank1 can go in any bin except blank2"
]

currentItem = [
	"Cardboard",
	"Any Bottles",
	"Paper",
	"Garbage"
]

currentBin = [
	"Red",
	"Blue",
	"Yellow"
]

random_set_seed(current_second);

newInstructions = false
currentNums = [irandom(array_length(possibleInstructions) - 1), irandom(array_length(possibleInstructions) - 1)]
currentItems = [irandom(array_length(currentItem) - 1), irandom(array_length(currentItem) - 1)]
currentBins = [irandom(array_length(currentBin) - 1), irandom(array_length(currentBin) - 1)]

// Ensure the two currentNum/currentNum2 do not have same number
if currentNums[0] == currentNums[1]{
	if currentNums[0] == 0
	{
		currentNums[1] += 1
	}
	else if currentNums[0] < array_length(possibleInstructions) - 1
	{
		if currentNums[0] > 1
			if current_second % 2 == 0
				currentNums[1] -= 1
			else
				currentNums[1] += 1
		else
			currentNums[1] += 1
    }
    else{
        currentNums[1] -= 1
    }
}

// Ensure the two currentItems do not have same number
if currentItems[0] == currentItems[1]{
	if currentItems[0] == 0
	{
		currentItems[1] += 1
	}
	else if currentItems[0] < array_length(possibleInstructions) - 1
	{
		if currentItems[0] > 1
			if current_second % 2 == 0
				currentItems[1] -= 1
			else
				currentItems[1] += 1
		else
			currentItems[1] += 1
    }
    else{
        currentItems[1] -= 1
    }
}

// Sanity check clamping
clamp(currentNums[0], 0, array_length(possibleInstructions) - 1)
clamp(currentNums[1], 0, array_length(possibleInstructions) - 1)

alarm[0] = instructionSwitchTime
