if (objGameState.state == "start") {
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(450,378+lengthdir_y(5,rot),"Press Enter to Start");
	draw_text(450,403+lengthdir_y(5,rot),"Press H to Learn How to Play.");
	draw_text(450,428+lengthdir_y(5,rot),"Press Esc to Quit.");
	
	draw_set_color(c_white);
	draw_text(450,375+lengthdir_y(5,rot),"Press Enter to Start");
	draw_text(450,400+lengthdir_y(5,rot),"Press H to Learn How to Play.");
	draw_text(450,425+lengthdir_y(5,rot),"Press Esc to Quit.");
	
	draw_set_halign(fa_right);
	draw_set_color(c_black);
	draw_text_ext_transformed(890,543,"Game by Kenneth Wilson",1,1000,1,1,0);
	draw_text_ext_transformed(890,563,"Music is: 'Glouglou' by Komiku",1,1000,1,1,0);
	draw_text_ext_transformed(890,583,"Made for LudumDare#51 with GameMaker Studio 2",1,1000,1,1,0);
	draw_set_color(c_white);
	draw_text_ext_transformed(890,540,"Game by Kenneth Wilson",1,1000,1,1,0);
	draw_text_ext_transformed(890,560,"Music is: 'Glouglou' by Komiku",1,1000,1,1,0);
	draw_text_ext_transformed(890,580,"Made for LudumDare#51 with GameMaker Studio 2",1,1000,1,1,0);
	
	
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_text_ext_transformed(10,583,"Ver 1.0",1,1000,1,1,0);
	draw_set_color(c_white);
	draw_text_ext_transformed(10,580,"Ver 1.0",1,1000,1,1,0);
	
	
	//Reset

	draw_set_color(c_white);
	draw_set_halign(fa_left);
	
}