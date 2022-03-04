/// @description Initialize instruction strings
possibleInstructions = [
    "Put blank1 in blank2 bin",
    "Do not put blank1 in blank2 bin",
	"blank1 can go in any bin except blank2"
	//"blank1 can go in any bin"
]

currentItem = [
	"Cardboard",
	"Any Bottles",
	"Red Bottles",
	"Blue Bottles",
	"Yellow Bottles",
	"Paper",
	"Garbage"
]

currentBin = [
	"Red",
	"Blue",
	"Yellow"
]

currentNum = irandom(array_length(possibleInstructions) - 1)
currentNum2 = irandom(array_length(possibleInstructions) - 1)
currentItem1 = irandom(array_length(currentItem) - 1)
currentItem2 = irandom(array_length(currentItem) - 1)
currentBin1 = irandom(array_length(currentBin) - 1)
currentBin2 = irandom(array_length(currentBin) - 1)

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
