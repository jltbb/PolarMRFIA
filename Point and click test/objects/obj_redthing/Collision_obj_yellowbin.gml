//If an object is not selected over a bin, destroy it and add score
if !mouse_check_button(mb_left){
	
	scoreboard.player_score += yellowval;
	if yellowval > 0{
		scoreboard.timeLeft += extraTime;
		scoreboard.rightStreak += 1;
		scoreboard.wrongStreak = 0;
	}else{
		scoreboard.timeLeft -= timeLoss;
		scoreboard.wrongStreak += 1;
		scoreboard.rightStreak = 0;
	}
	instance_destroy();
	//if you get it wrong 2 times in a row, the bear checks in on you
	if scoreboard.wrongStreak >= 2 and !instance_exists(obj_bear){
		instance_create_layer(x,y,"Trash_Boy", obj_bear)
	}
}