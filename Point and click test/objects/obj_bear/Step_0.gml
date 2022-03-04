if movingIn{
	switch(side){
		//appear at top of screen
		case 0:
			if y < 50 y += 5
		break;
		//appear on side
		case 1:
			switch(spawnSide){
				//left side
				case 0:
					if x < 1 x += 10
					if image_angle > -45 image_angle -= 2
				break;
				//right side
				case 1:
					if x > room_width - 1 x -= 10
					if image_angle < 45 image_angle += 2
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
					x += 15
				break;
				//right side start
				case 1:
					x -= 15
				break;
				//dont
				default:;
			}
			break;
		default:;
	}
}else{
	switch(side){
		//appear at top of screen
		case 0:
			y -= 5
		break;
		//appear on side
		case 1:
			switch(spawnSide){
				//left side
				case 0:
					x -= 10
					if image_angle < 0 image_angle += 2
				break;
				//right side
				case 1:
					x += 10
					if image_angle > 0 image_angle -= 2
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
				break;
				//right side start
				case 1:
				break;
				//dont
				default:;
			}
			break;
		default:;
	}
}