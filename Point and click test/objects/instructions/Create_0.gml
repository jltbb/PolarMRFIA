/// @description Initialize instruction strings
possibleInstructions = [
    "Example Instruction #1",
    "Example Instruction #2",
    "Example Instruction #3"
]

currentNum = irandom(array_length(possibleInstructions) - 1)
currentNum2 = irandom(array_length(possibleInstructions) - 1)

// Ensure the two currentNum/currentNum2 do not have same number
if currentNum == currentNum2{
	if currentNum == 0
	{
		currentNum2 += 1
	}
	else if currentNum < array_length(possibleInstructions) - 1
	{
		if currentNum > 1
			if current_second % 2 == 0
				currentNum2 -= 1
			else
				currentNum2 += 1
		else
			currentNum2 += 1
    }
    else{
        currentNum2 -= 1
    }
}

// Sanity check clamping
clamp(currentNum, 0, array_length(possibleInstructions) - 1)
clamp(currentNum2, 0, array_length(possibleInstructions) - 1)

alarm[0] = instructionSwitchTime
