if (objGameState.state == "start") {


	draw_sprite_ext(sprKey,0,710,35,2,2,0,c_white,1);
	draw_sprite_ext(sprKey,0,710,70,2,2,0,c_white,1);
	
			draw_set_color(c_red);
			draw_set_alpha(0.9);
			draw_text(720,41,"S");
			draw_text(720,76,"M");
			
			draw_set_color(c_black);
			draw_set_alpha(0.9);
			if (objGameState.soundOn) {
				draw_text(755,42,"Sound On");
			} else {
				draw_text(755,42,"Sound Off");
			}
			
			if (objGameState.musicOn) {
				draw_text(755,77,"Music On");
			} else {
				draw_text(755,77,"Music Off");
			}
	
			draw_set_color(c_white);
			draw_set_alpha(1);
			
			

}

	
if (objGameState.state != "start") {
	draw_set_font(fntGame);

	draw_set_color(c_white);
	draw_text_ext_transformed(695,30,"Ingredients",1,1000,1,1,0);
	draw_line_width(670,50,890,50,3);
	
	for (var i = 0; i < ds_list_size(ingredientList); i++) {
		if (i == ds_list_size(ingredientList)-1) {
			draw_sprite_ext(sprKey,0,660+anim,(i*32)+ingOffset,2,2,0,c_white,1);
		} else {
			draw_sprite_ext(sprKey,0,660,(i*32)+ingOffset,2,2,0,c_white,1);
		}
	}

	for (var i = 0; i < ds_list_size(ingredientList); i++) {
		if (i == ds_list_size(ingredientList)-1) {
			draw_set_color(c_red);
			draw_set_alpha(0.9);
			draw_text(670+anim,(i*32)+ingOffset+6,ds_list_find_value(keyBindList,i));
		
			draw_set_color(c_black);
			draw_set_alpha(0.9);
			draw_text(700+anim,(i*32)+ingOffset+8,ds_list_find_value(ingredientList,i));
		} else {
			draw_set_color(c_red);
			draw_set_alpha(0.9);
			draw_text(670,(i*32)+ingOffset+6,ds_list_find_value(keyBindList,i));
		
			draw_set_color(c_black);
			draw_set_alpha(0.9);
			draw_text(700,(i*32)+ingOffset+8,ds_list_find_value(ingredientList,i));
		}
		draw_set_alpha(1);
		draw_set_color(c_white);
	}
}
