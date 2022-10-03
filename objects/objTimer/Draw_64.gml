moment = (curTime/totTime)


	
if (objGameState.state != "start") {

	draw_set_font(fntGame);
	draw_set_color(c_black);
	draw_rectangle(0,0,300,35,false);

	if (moment < 0.3) {
		color = (c_red);
	} else {
		color = (c_lime);
	}
	draw_sprite_stretched_ext(sprBar,floor(frame/5),0,0,300*moment,35,color,1);
	//draw_rectangle(0,0,300*moment,35,false);



	var ran_x = 0;
	if (moment < 0.4 && objGameState.state != "failed") {
		ran_x = irandom_range(-1,1);
	} 
	draw_set_color(c_black);
	draw_text(20+ran_x,10,"Timer");

	draw_set_color(c_white);
	draw_text(20+ran_x,8,"Timer");

	draw_sprite(sprTimer,0,0,-25);

}