/// @description Lowers timer
if !gameOver{
	timeLeft = clamp(timeLeft, 0, 100)
	timeLeft -= .1
}

if (timeLeft <= 0){
	gameOver = true
	room_goto_next()
}
if (player_score < 0){
	gameOver = true
	room_goto_next()
}
