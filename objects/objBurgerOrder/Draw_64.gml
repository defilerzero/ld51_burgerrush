
	
	draw_set_font(fntGame);
if (objGameState.state != "start") {
	
	draw_set_color(c_white);
	draw_sprite_ext(sprScoreBox,0,0,600,3,3,0,c_white,1);

	draw_set_color(c_black);
	draw_text_ext_transformed(20,502,"Score",1,1000,1.5,1.5,0);
	draw_set_color(c_white);
	draw_text_ext_transformed(20,500,"Score",1,1000,1.5,1.5,0);
	draw_text_ext_transformed(10,558,"$"+string(orderScore),1,1000,2,2,0);


	
		for (var i = 0; i < ds_list_size(textOrder); i++) {
			draw_set_color(c_green);
			draw_text(70,(i*17)+107,ds_list_find_value(textOrder,i));
			draw_set_color(c_lime);
			draw_text(70,(i*17)+105,ds_list_find_value(textOrder,i));
		
			draw_set_color(c_white);
		}
	
	draw_set_color(c_white);
	
}