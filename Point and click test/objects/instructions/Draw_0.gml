/// @description Draw instructions onto the screen
draw_set_font(Font1)
draw_set_color(c_white)
draw_text_transformed(80,950,possibleInstructions[currentNum],0.5,0.5,0)
draw_text_transformed(80,1000,possibleInstructions[currentNum2],0.5,0.5,0)
show_debug_message(currentNum2)
