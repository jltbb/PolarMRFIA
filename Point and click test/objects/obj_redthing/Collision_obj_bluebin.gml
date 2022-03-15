//If an object is not selected over a bin, destroy it and add score
if !mouse_check_button(mb_left){
	
	if instance_exists(obj_bear) and obj_bear.movingIn
	{
		extraTime *= 2
		timeLoss *= 2
	}
	
	scoreboard.player_score += blueval;
	if blueval > 0{
		scoreboard.reputationLeft += extraTime;
		scoreboard.rightStreak += 1;
		scoreboard.wrongStreak = 0;
	}else{
		scoreboard.reputationLeft -= timeLoss;
		scoreboard.wrongStreak += 1;
		scoreboard.rightStreak = 0;
	}
	instance_destroy();
	//if you get it wrong 4 times in a row, the bear checks in on you
	if scoreboard.wrongStreak >= 4 and !instance_exists(obj_bear){
		instance_create_layer(x,y,"Trash_Boy", obj_bear)
	}
}