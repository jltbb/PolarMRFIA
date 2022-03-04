/// @description Lowers timer
if !gameOver{
	timeLeft = clamp(timeLeft, 0, 100)
	timeLeft -= .1
}

if (timeLeft <= 0){
	gameOver = true
	room_goto_next()
	audio_play_sound(snd_bear_growl, 10, false)
}
if (player_score < 0){
	gameOver = true
	room_goto_next()
	audio_play_sound(snd_bear_growl, 10, false)
}

//make sound if item is placed in the wrong bin

if ( score_state > player_score) //wrong bin
{
	score_state = player_score
	audio_play_sound(snd_wrongBin, 10, false)
}
else if (score_state < player_score) //correct bin
{
	audio_play_sound(snd_pop, 10, false)
	score_state = player_score
}
else
{
	score_state = player_score
}