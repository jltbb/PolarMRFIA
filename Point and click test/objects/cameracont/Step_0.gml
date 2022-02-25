/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

if (mouse_check_button(mb_right)){
	image_index = 1
	view_visible[1] = true
	view_xport[1] = mouse_x - 100
	view_yport[1] = mouse_y - 100
}else{
	image_index = 0
	view_visible[1] = false
}