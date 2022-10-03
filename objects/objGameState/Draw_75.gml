if (state == "failed") {
	draw_set_font(fntGame);
	
	draw_set_color(c_black);
	draw_text_ext_transformed(175,295+lengthdir_y(10,rot),"You're Fired",0,1000,3,3,15);

	draw_set_color(c_red);
	draw_text_ext_transformed(170,290+lengthdir_y(10,rot),"You're Fired",0,1000,3,3,15);

	draw_set_color(c_white);
	
	draw_text(325,325,"Press R to Restart");
	draw_text(325,350,"Press Esc for Menu");
	
	if (newScore) {
		draw_text(300,385,"New High Score: $" + string(highScore) + "!!!");
	} else {
		draw_text(300,385,"Previous High Score: $"+ string(highScore));
	}
}