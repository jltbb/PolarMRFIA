/// @description Randomizes instructions and puts them on a timer
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

newInstructions = true

//add sound for instruction change transition
audio_play_sound(snd_whoosh, 10, false)

alarm_set(0, instructionSwitchTime)
