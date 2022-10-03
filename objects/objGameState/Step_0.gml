if (state == "failed" && ended == false) {
	if (objGameState.soundOn) {
		var snd = audio_play_sound(sndEnd,1,false);
		audio_sound_pitch(snd,random_range(0.9,1.1));
	}
	ended = true;
}

if (ended == true && anim != 1) {
	anim += 0.05;
	if (anim > 1) { anim = 1; }
}

if (ended == true && highScore < objBurgerOrder.orderScore) {
	newScore = true;
	highScore = objBurgerOrder.orderScore;
}

rot++;
if (rot > 360) { rot = 0 }