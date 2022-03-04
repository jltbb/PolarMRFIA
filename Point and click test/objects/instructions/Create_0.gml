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
currentNums = [irandom(array_length(possibleInstructions) - 1), irandom(array_length(possibleInstructions) - 1), irandom(array_length(possibleInstructions) - 1)]
currentItems = [irandom(array_length(currentItem) - 1), irandom(array_length(currentItem) - 1), irandom(array_length(currentItem) - 1)]
currentBins = [irandom(array_length(currentBin) - 1), irandom(array_length(currentBin) - 1), irandom(array_length(currentBin) - 1)]


// Ensure the two currentNum/currentNum2 do not have same number
currentNums[1] = EnsureNotSame(currentNums[0], currentNums[1], array_length(possibleInstructions))
currentNums[2] = EnsureNotSame(currentNums[0], currentNums[2], array_length(possibleInstructions))
currentNums[2] = EnsureNotSame(currentNums[1], currentNums[2], array_length(possibleInstructions))

// Ensure the two currentItems do not have same number
currentItems[1] = EnsureNotSame(currentItems[0], currentItems[1], array_length(possibleInstructions))
currentItems[2] = EnsureNotSame(currentItems[0], currentItems[2], array_length(possibleInstructions))
currentItems[2] = EnsureNotSame(currentItems[1], currentItems[2], array_length(possibleInstructions))

// Sanity check clamping
clamp(currentNums[0], 0, array_length(possibleInstructions) - 1)
clamp(currentNums[1], 0, array_length(possibleInstructions) - 1)

alarm[0] = instructionSwitchTime
