

if (objGameState.musicOn == false) {
	audio_stop_sound(sndMusic);
	playing = false;
} else {
	if (!playing) {
		audio_play_sound(sndMusic,10,true,0.4,1,1);
		playing = true;
	}
}

if (objGameState.state = "playing" && objGameState.musicOn) {
	audio_sound_gain(sndMusic,0.6,60);
} else {
	audio_sound_gain(sndMusic,0.4,60);
}