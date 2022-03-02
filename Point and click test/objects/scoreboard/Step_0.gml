/// @description Lowers timer
timeLeft = clamp(timeLeft, 0, 100)
timeLeft -= .1

if (timeLeft <= 0){
	scoreboard.gameOver = true
}
