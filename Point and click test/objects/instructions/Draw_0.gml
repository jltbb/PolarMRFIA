/// @description Draw instructions onto the screen
newString1 = string_replace(possibleInstructions[currentNums[0]], "blank1", currentItem[currentItems[0]])
newString1 = string_replace(newString1, "blank2", currentBin[currentBins[0]])
newString2 = string_replace(possibleInstructions[currentNums[1]], "blank1", currentItem[currentItems[1]])
newString2 = string_replace(newString2, "blank2", currentBin[currentBins[1]])
newString3 = string_replace(possibleInstructions[currentNums[2]], "blank1", currentItem[currentItems[2]])
newString3 = string_replace(newString3, "blank2", currentBin[currentBins[2]])

draw_set_font(Font1)
draw_set_color(c_white)
draw_text_transformed(80,900,newString1,0.5,0.5,0)
draw_text_transformed(80,950,newString2,0.5,0.5,0)
draw_text_transformed(80,1000,newString3,0.5,0.5,0)