if (!placed) {
	if (objGameState.soundOn) {
		var snd = audio_play_sound(sndPlace,1,false);
		audio_sound_pitch(snd,random_range(0.9,1.1));
	}
	placed = true;
}
