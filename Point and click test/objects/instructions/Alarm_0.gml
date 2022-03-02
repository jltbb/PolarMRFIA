/// @description Randomizes instructions and puts them on a timer
currentNum = irandom(array_length(possibleInstructions) - 1)
show_debug_message("hi")
alarm_set(0, instructionSwitchTime)