/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x, mouse_y, id))
    if (mouse_check_button(mb_left)){
		isSelected = true
	}else{
		isSelected = false
	}
     
if (isSelected) {
    x = mouse_x;
    y = mouse_y;
}

if !(isSelected){
	alarm_set(0,1)
}