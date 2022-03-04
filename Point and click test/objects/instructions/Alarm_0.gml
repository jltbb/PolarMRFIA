/// @description Randomizes instructions and puts them on a timer
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

newInstructions = true


//add sound for instruction change transition
audio_play_sound(snd_whoosh, 10, false)

alarm_set(0, instructionSwitchTime)
