/// @description Lowers timer
if !gameOver{
	reputationLeft = clamp(reputationLeft, 0, 100)
	reputationLeft -= .0275
}

if (reputationLeft <= 0){
	gameOver = true
	room_goto_next()
	audio_stop_sound(snd_background)
	audio_play_sound(snd_bear_growl, 10, false)
}

if (reputationLeft >= 99){
	gameOver = true
	room_goto(Win)
	show_debug_message("SKRRR WIN")
	// TODO: add some like parade sound
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