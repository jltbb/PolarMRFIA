/// @description Draw instructions onto the screen
newString1 = string_replace(possibleInstructions[currentNum], "blank1", currentItem[currentItem1])
newString1 = string_replace(newString1, "blank2", currentBin[currentBin1])
newString2 = string_replace(possibleInstructions[currentNum2], "blank1", currentItem[currentItem2])
newString2 = string_replace(newString2, "blank2", currentBin[currentBin2])

draw_set_font(Font1)
draw_set_color(c_white)
draw_text_transformed(80,950,newString1,0.5,0.5,0)
draw_text_transformed(80,1000,newString2,0.5,0.5,0)
