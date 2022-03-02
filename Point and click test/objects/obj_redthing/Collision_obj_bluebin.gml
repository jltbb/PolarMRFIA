/// @description Insert description here
// You can write your code in this editor
if !mouse_check_button(mb_left){
	scoreboard.player_score += blueval;
	if blueval > 0{
		scoreboard.timeLeft = min(scoreboard.timeLeft + extraTime, scoreboard.timeLeftMax);
		scoreboard.rightStreak += 1;
		scoreboard.wrongStreak = 0;
	}else{
		scoreboard.wrongStreak += 1;
		scoreboard.rightStreak = 0;
	}
	instance_destroy();
}