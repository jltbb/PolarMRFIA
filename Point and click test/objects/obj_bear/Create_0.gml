/// @description read comments
//All of this code is temporary, just testing out different ways to make the bear appear
side = irandom(2)
spawnSide = irandom(1)

//initialize bear position
switch(side){
	//appear at top of screen
	case 0:
		x = irandom_range(300, 1620)
		y = 0 - sprite_height/2
		image_angle = 180
	break;
	//appear on side
	case 1:
		switch(spawnSide){
			//left side
			case 0:
				x = 0 - (sprite_width/2);
				y = irandom_range(300,700);
			break;
			//right side
			case 1:
				x = room_width + (sprite_width/2)
				y = irandom_range(300,700);
			break;
			//dont
			default:;
		}
		break;
	//run across bottom
	case 2:
		switch(spawnSide){
			//left side start
			case 0:
				x = 0 - (sprite_width/2);
				y = room_height
			break;
			//right side start
			case 1:
				x = room_width + (sprite_width/2)
				y = room_height
			break;
			//dont
			default:;
		}
		break;
	default:;
}

alarm_set(0, 200)
alarm_set(1, 400)
audio_play_sound(snd_bear_growl, 10, false)
